import pool from "../Postgresql/conexionPost.js"; // aquí
import { Router } from "express";
const router = Router();

//para obtener datos de la base de datos
router.get("/", (req, res) => {
    res.send("Welcome to the API");
});

// el siguiente es una prueba de insercion de datos en la base de datos
router.post('/idiomas', async (req, res) => {
    console.log("BODY:", req.body); // aquí
    const { nombre } = req.body;
    try {
        const result = await pool.query( // aquí
            'INSERT INTO idioma (id_idioma, nombre) VALUES ($1, $2) RETURNING *',
            [1004, nombre]
        );
        res.status(201).json(result.rows[0]);
    } catch (error) {
        console.error("Error inserting idioma:", error);
        res.status(500).json({ error: "Internal Server Error" });
    }
});
export default router;