import pool from "../Postgresql/conexionPost.js";
import { Router } from "express";
const router = Router();

router.get("/", (req, res) => {
    res.send("Welcome to the API");
});

router.post('/historico-museo', async (req, res) => {
    const { descp_hechos, id_museo, fecha_anio } = req.body;
    try {
        await pool.query(
            `INSERT INTO historico_museo (fecha_anio, id_museo, descp_hechos)
             VALUES ($1, $2, $3)`,
            [fecha_anio, id_museo, descp_hechos]
        );
        res.status(201).json({ message: "Hecho histórico guardado" });
    } catch (error) {
        console.error("Error guardando hecho histórico:", error);
        res.status(500).json({ error: "Error guardando hecho histórico" });
    }
});


router.get('/idiomas', async (req, res) => {
    try {
        const result = await pool.query('SELECT id_idioma, nombre FROM idioma');
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo idiomas" });
    }
});

router.get('/colecciones', async (req, res) => {
    const { id_museo } = req.query;
    try {
        const result = await pool.query(
            'SELECT id_coleccion, id_est_o, nombre FROM coleccion WHERE id_museo = $1',
            [id_museo]
        );
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo colecciones" });
    }
});

// para cuando registre una obra, se pueda seleccionar el curador responsable
router.get('/empleados-curador', async (req, res) => {
    const { id_museo } = req.query;
    try {
        // Busca los empleados profesionales con cargo "CURADOR" activos en el museo seleccionado
        const result = await pool.query(`
            SELECT ep.expediente, ep.primer_nombre, ep.segundo_nombre, ep.primer_apellido, ep.segundo_apellido
            FROM empleado_profesional ep
            JOIN historico_trabajo ht ON ep.expediente = ht.expediente
            WHERE ht.cargo = 'C'
              AND ht.id_museo = $1
              AND ht.fecha_final_historico IS NULL
        `, [id_museo]);
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo curadores" });
    }
});

// obtener salas para registar una obra ya sea pintura o escultura
router.get('/salas', async (req, res) => {
    const { id_museo } = req.query;
    try {
        const result = await pool.query(
            'SELECT id_sala_exp, id_est_f, nombre FROM sala_exp WHERE id_museo = $1',
            [id_museo]
        );
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo salas de exposición" });
    }
});

//registrar obra, ya sea pintura o escultura
router.post('/obras', async (req, res) => {
    const {
        nombre,
        ano_creacion,
        tipo, // 'P' para pintura
        estilo_descripcion,
        material_tecnica_descripcion,
        dimensiones,
        id_museo,
        id_coleccion,
        id_est_o,
        tipo_obra,         // CO, DO, CM, DM
        destacada,         // boolean
        id_orden,          // <-- nuevo campo obligatorio para sal_col
        orden_recorrido,   // opcional
        valor_monetario,   // opcional
        expediente,        // curador responsable
        id_sala_exp,       // sala seleccionada en el frontend
        id_est_f           // estructura física seleccionada en el frontend
    } = req.body;

    try {
        // Registrar la obra
        const obraResult = await pool.query(
            `INSERT INTO obra (nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones, id_museo, id_coleccion, id_est_o)
             VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9)
             RETURNING id_obra, id_coleccion, id_est_o, id_museo`,
            [nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones, id_museo, id_coleccion, id_est_o]
        );
        const obra = obraResult.rows[0];

        // Registrar la relación en sal_col (si no existe ya)
        await pool.query(
            `INSERT INTO sal_col (id_orden, id_sala_exp, id_coleccion, id_est_f, id_est_o, id_museo)
             VALUES ($1, $2, $3, $4, $5, $6)
             ON CONFLICT (id_museo, id_sala_exp, id_coleccion, id_est_f, id_est_o)
             DO UPDATE SET id_orden = EXCLUDED.id_orden`,
            [id_orden, id_sala_exp, id_coleccion, id_est_f, id_est_o, id_museo]
        );
        // Registrar en HISTORICO_OBRA_MOV (sin id_cat_museo)
        await pool.query(
            `INSERT INTO historico_obra_mov (
                expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f,
                fecha_inicio_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario
            ) VALUES (
                $1, $2, $3, $4, $5, $6, $7, CURRENT_DATE, $8, $9, $10, $11
            )`,
            [
                expediente,            // $1
                id_coleccion,          // $2
                id_sala_exp,           // $3 (del frontend)
                obra.id_obra,          // $4
                obra.id_est_o,         // $5
                obra.id_museo,         // $6
                id_est_f,              // $7 (del frontend)
                tipo_obra,             // $8
                destacada,             // $9
                orden_recorrido || null, // $10
                valor_monetario || null  // $11
            ]
        );

        res.status(201).json(obra);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Error registrando pintura' });
    }
});

router.post('/obra-artista', async (req, res) => {
    const { id_artista, id_obra, id_coleccion, id_est_o, id_museo } = req.body;
    try {
        await pool.query(
            `INSERT INTO o_a (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
             VALUES ($1, $2, $3, $4, $5)`,
            [id_artista, id_obra, id_coleccion, id_museo, id_est_o]
        );
        res.status(201).json({ message: "Artista asociado a la obra" });
    } catch (error) {
        res.status(500).json({ error: "Error asociando artista a la obra" });
    }
});

router.get('/obras-pintura', async (req, res) => {
    const { id_museo } = req.query;
    try {
        // Trae todas las pinturas del museo, incluyendo nombre del museo y colección
        const obrasResult = await pool.query(
            `SELECT o.id_obra, o.id_coleccion, o.id_est_o, o.nombre, o.ano_creacion, o.tipo, o.estilo_descripcion, o.material_tecnica_descripcion, o.dimensiones,
                    m.nombre AS nombre_museo,
                    c.nombre AS nombre_coleccion
             FROM obra o
             JOIN museo m ON o.id_museo = m.id_museo
             JOIN coleccion c ON o.id_coleccion = c.id_coleccion AND o.id_est_o = c.id_est_o AND o.id_museo = c.id_museo
             WHERE o.tipo = 'P' AND o.id_museo = $1
             ORDER BY o.nombre`,
            [id_museo]
        );
        const obras = obrasResult.rows;

        // Para cada obra, trae su histórico de movilidad
        for (const obra of obras) {
            const movResult = await pool.query(
                `SELECT fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario
                 FROM historico_obra_mov
                 WHERE id_obra = $1 AND id_coleccion = $2 AND id_est_o = $3 AND id_museo = $4
                 ORDER BY fecha_inicio_adquisicion`,
                [obra.id_obra, obra.id_coleccion, obra.id_est_o, id_museo]
            );
            obra.movimientos = movResult.rows;

            // Trae la sala actual (fecha_final_adquisicion IS NULL)
            const salaActualResult = await pool.query(
                `SELECT se.nombre AS nombre_sala
                             FROM historico_obra_mov hom
                             JOIN sala_exp se ON hom.id_sala_exp = se.id_sala_exp AND hom.id_est_f = se.id_est_f AND hom.id_museo = se.id_museo
                             WHERE hom.id_obra = $1 AND hom.id_coleccion = $2 AND hom.id_est_o = $3 AND hom.id_museo = $4
                               AND hom.fecha_final_adquisicion IS NULL
                             LIMIT 1`,
                [obra.id_obra, obra.id_coleccion, obra.id_est_o, id_museo]
            );
            obra.nombre_sala = salaActualResult.rows.length > 0 ? salaActualResult.rows[0].nombre_sala : null;

            // Trae los artistas asociados a la obra
            const artistasResult = await pool.query(
                `SELECT a.primer_nombre, a.segundo_nombre, a.primer_apellido, a.segundo_apellido, a.apodo
                 FROM o_a oa
                 JOIN artista a ON oa.id_artista = a.id_artista
                 WHERE oa.id_obra = $1 AND oa.id_coleccion = $2 AND oa.id_est_o = $3 AND oa.id_museo = $4`,
                [obra.id_obra, obra.id_coleccion, obra.id_est_o, id_museo]
            );
            obra.artistas = artistasResult.rows;
        }

        res.json(obras);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo pinturas" });
    }
});

router.get('/obras-escultura', async (req, res) => {
    const { id_museo } = req.query;
    try {
        const obrasResult = await pool.query(
            `SELECT o.id_obra, o.id_coleccion, o.id_est_o, o.nombre, o.ano_creacion, o.tipo, o.estilo_descripcion, o.material_tecnica_descripcion, o.dimensiones,
                    m.nombre AS nombre_museo,
                    c.nombre AS nombre_coleccion
             FROM obra o
             JOIN museo m ON o.id_museo = m.id_museo
             JOIN coleccion c ON o.id_coleccion = c.id_coleccion AND o.id_est_o = c.id_est_o AND o.id_museo = c.id_museo
             WHERE o.tipo = 'E' AND o.id_museo = $1
             ORDER BY o.nombre`,
            [id_museo]
        );
        const obras = obrasResult.rows;

        // Para cada obra, trae su histórico de movilidad, su sala actual y los artistas asociados
        for (const obra of obras) {
            const movResult = await pool.query(
                `SELECT fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario
                 FROM historico_obra_mov
                 WHERE id_obra = $1 AND id_coleccion = $2 AND id_est_o = $3 AND id_museo = $4
                 ORDER BY fecha_inicio_adquisicion`,
                [obra.id_obra, obra.id_coleccion, obra.id_est_o, id_museo]
            );
            obra.movimientos = movResult.rows;

            // Trae la sala actual (fecha_final_adquisicion IS NULL)
            const salaActualResult = await pool.query(
                `SELECT se.nombre AS nombre_sala
                 FROM historico_obra_mov hom
                 JOIN sala_exp se ON hom.id_sala_exp = se.id_sala_exp AND hom.id_est_f = se.id_est_f AND hom.id_museo = se.id_museo
                 WHERE hom.id_obra = $1 AND hom.id_coleccion = $2 AND hom.id_est_o = $3 AND hom.id_museo = $4
                   AND hom.fecha_final_adquisicion IS NULL
                 LIMIT 1`,
                [obra.id_obra, obra.id_coleccion, obra.id_est_o, id_museo]
            );
            obra.nombre_sala = salaActualResult.rows.length > 0 ? salaActualResult.rows[0].nombre_sala : null;

            // Trae los artistas asociados a la obra
            const artistasResult = await pool.query(
                `SELECT a.primer_nombre, a.segundo_nombre, a.primer_apellido, a.segundo_apellido, a.apodo
                 FROM o_a oa
                 JOIN artista a ON oa.id_artista = a.id_artista
                 WHERE oa.id_obra = $1 AND oa.id_coleccion = $2 AND oa.id_est_o = $3 AND oa.id_museo = $4`,
                [obra.id_obra, obra.id_coleccion, obra.id_est_o, id_museo]
            );
            obra.artistas = artistasResult.rows;

        }

        res.json(obras);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo esculturas" });
    }
});

router.get('/artistas', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                a.id_artista,
                a.primer_nombre,
                a.segundo_nombre,
                a.primer_apellido,
                a.segundo_apellido,
                a.apodo,
                a.fecha_nacimiento,
                a.fecha_muerte,
                a.resumen_caracteristicas_arte,
                l.nombre AS nombre_lugar
            FROM artista a
            LEFT JOIN lugar l ON a.id_lugar = l.id_lugar
            ORDER BY a.primer_nombre, a.primer_apellido
        `);
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo artistas" });
    }
});

router.get('/obras-destacadas', async (req, res) => {
    const { id_museo } = req.query;
    try {
        const result = await pool.query(`
            SELECT 
                o.nombre AS nombre_obra,
                c.nombre AS nombre_coleccion,
                hom.orden_recorrido_historico,
                se.nombre AS nombre_sala
            FROM historico_obra_mov hom
            JOIN obra o ON hom.id_obra = o.id_obra 
                AND hom.id_coleccion = o.id_coleccion 
                AND hom.id_est_o = o.id_est_o 
                AND hom.id_museo = o.id_museo
            JOIN coleccion c ON o.id_coleccion = c.id_coleccion 
                AND o.id_est_o = c.id_est_o 
                AND o.id_museo = c.id_museo
            LEFT JOIN sala_exp se ON hom.id_sala_exp = se.id_sala_exp 
                AND hom.id_est_f = se.id_est_f 
                AND hom.id_museo = se.id_museo
            WHERE hom.destacada = true
              AND o.id_museo = $1
            ORDER BY hom.orden_recorrido_historico ASC NULLS LAST, o.nombre
        `, [id_museo]);
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo obras destacadas" });
    }
});

/* Obtener todas las obras de un artista (en cualquier museo)*/
router.get('/obras-por-artista', async (req, res) => {
    const { id_artista } = req.query;
    try {
        const result = await pool.query(`
            SELECT 
                o.nombre AS nombre_obra,
                o.tipo AS tipo_obra,
                m.nombre AS nombre_museo
            FROM o_a oa
            JOIN obra o ON oa.id_obra = o.id_obra 
                AND oa.id_coleccion = o.id_coleccion 
                AND oa.id_est_o = o.id_est_o 
                AND oa.id_museo = o.id_museo
            JOIN museo m ON o.id_museo = m.id_museo
            WHERE oa.id_artista = $1
            ORDER BY o.nombre
        `, [id_artista]);
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo obras del artista" });
    }
});

router.get('/lugares', async (req, res) => {
    try {
        const result = await pool.query('SELECT id_lugar, nombre FROM lugar ORDER BY nombre');
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: 'Error obteniendo lugares' });
    }
});

router.post('/artistas', async (req, res) => {
    const {
        primer_nombre,
        segundo_nombre,
        primer_apellido,
        segundo_apellido,
        apodo,
        fecha_nacimiento,
        fecha_muerte,
        resumen_caracteristicas_arte,
        id_lugar
    } = req.body;

    try {
        const result = await pool.query(
            `INSERT INTO artista (
                primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, apodo,
                fecha_nacimiento, fecha_muerte, resumen_caracteristicas_arte, id_lugar
            ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
            RETURNING *`,
            [
                primer_nombre || null,
                segundo_nombre || null,
                primer_apellido || null,
                segundo_apellido || null,
                apodo || null,
                fecha_nacimiento || null,
                fecha_muerte || null,
                resumen_caracteristicas_arte,
                id_lugar || null
            ]
        );
        res.status(201).json(result.rows[0]);
    } catch (error) {
        res.status(500).json({ error: 'Error registrando artista' });
    }
});

router.get('/colecciones-reporte', async (req, res) => {
    const { id_museo } = req.query;
    try {
        // Solo los campos necesarios
        const coleccionesResult = await pool.query(`
            SELECT id_coleccion, id_est_o, nombre, descripcion, palabra_clave, orden_recorrido
            FROM coleccion
            WHERE id_museo = $1
            ORDER BY orden_recorrido ASC
        `, [id_museo]);
        const colecciones = coleccionesResult.rows;

        // Para cada colección, trae las salas de exposición asociadas (solo nombre)
        for (const col of colecciones) {
            const salasResult = await pool.query(`
                SELECT se.nombre AS nombre_sala
                FROM sal_col sc
                JOIN sala_exp se ON sc.id_sala_exp = se.id_sala_exp
                    AND sc.id_est_f = se.id_est_f
                    AND sc.id_museo = se.id_museo
                WHERE sc.id_coleccion = $1 AND sc.id_est_o = $2 AND sc.id_museo = $3
            `, [col.id_coleccion, col.id_est_o, id_museo]);
            col.salas = salasResult.rows;
        }

        res.json(colecciones);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo colecciones" });
    }
});

//para el menú
router.get('/museo-nombre', async (req, res) => {
    const { id_museo } = req.query;
    try {
        const result = await pool.query(
            'SELECT nombre FROM museo WHERE id_museo = $1',
            [id_museo]
        );
        if (result.rows.length > 0) {
            res.json({ nombre: result.rows[0].nombre });
        } else {
            res.status(404).json({ error: "Museo no encontrado" });
        }
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo nombre del museo" });
    }
});

router.get('/estructuras-org', async (req, res) => {
    const { id_museo } = req.query;
    try {
        const result = await pool.query(
            'SELECT id_est_o, nombre FROM estructura_org WHERE id_museo = $1 ORDER BY nombre',
            [id_museo]
        );
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ error: "Error obteniendo estructuras orgánicas" });
    }
});

router.post('/empleados', async (req, res) => {
    const {
        primer_nombre,
        segundo_nombre,
        primer_apellido,
        segundo_apellido,
        fecha_nacimiento,
        genero,
        telefono,
        doc_identidad,
        cargo,
        titulo_obtenido,
        anio,
        descripcion_esp
    } = req.body;

    try {
        let result;
        if (cargo === "Vigilante" || cargo === "Mantenimiento") {
            // Insertar en EMPLEADO_MANT_VIG
            const nombre = [primer_nombre, segundo_nombre].filter(Boolean).join(' ');
            const apellido = [primer_apellido, segundo_apellido].filter(Boolean).join(' ');
            // Aquí debes enviar solo "M" o "V" en vez de "Mantenimiento" o "Vigilante"
            let tipo = null;
            if (cargo === "Mantenimiento") tipo = "M";
            else if (cargo === "Vigilante") tipo = "V";
            else tipo = null;
            if (!tipo) {
                return res.status(400).json({ error: "Cargo inválido para mantenimiento/vigilante" });
            }

            result = await pool.query(
                `INSERT INTO empleado_mant_vig 
                (nombre, apellido, doc_identidad, tipo)
                VALUES ($1, $2, $3, $4)
                RETURNING *`,
                [nombre, apellido, doc_identidad, tipo]
            );
            res.status(201).json({ empleado: result.rows[0], tipo: "mant_vig" });
        }
        else {
            // Insertar en EMPLEADO_PROFESIONAL
            result = await pool.query(
                `INSERT INTO empleado_profesional 
                (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
                VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
                RETURNING expediente`,
                [primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad]
            );
            const expediente = result.rows[0].expediente;

            // Insertar en FORMACION_PROFESIONAL
            if (titulo_obtenido && anio && descripcion_esp) {
                await pool.query(
                    `INSERT INTO formacion_profesional 
                    (expediente, titulo_obtenido, anio, descripcion_esp)
                    VALUES ($1, $2, $3, $4)`,
                    [expediente, titulo_obtenido, anio, descripcion_esp]
                );
            }

            // Insertar en EMP_ID con el id_idioma
            if (req.body.id_idioma) {
                await pool.query(
                    `INSERT INTO emp_id (expediente, id_idioma) VALUES ($1, $2)`,
                    [expediente, req.body.id_idioma]
                );
            }

            let cargo_historico = null;
            if (cargo === "Director") cargo_historico = "D";
            else if (cargo === "Administrador") cargo_historico = "A";
            else if (cargo === "Curador") cargo_historico = "C";
            else if (cargo === "Restaurador") cargo_historico = "R";

            // Insertar en HISTORICO_TRABAJO si hay cargo_historico, id_museo e id_est_o
            if (cargo_historico && req.body.id_museo && req.body.id_est_o) {
                const fecha_inicio = new Date().toISOString().slice(0, 10);
                await pool.query(
                    `INSERT INTO historico_trabajo 
                    (fecha_inicio_historico, cargo, expediente, id_est_o, id_museo)
                    VALUES ($1, $2, $3, $4, $5)`,
                    [fecha_inicio, cargo_historico, expediente, req.body.id_est_o, req.body.id_museo]
                );
            }
            res.status(201).json({ expediente, tipo: "profesional" });
        }
    } catch (error) {
        console.error("Error registrando empleado:", error);
        res.status(500).json({ error: "Error registrando empleado" });
    }
});
export default router;