CREATE TABLE LUGAR (
    id_lugar NUMERIC(4) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(1) NOT NULL,
    continente VARCHAR(2),
    id_padre NUMERIC(4),
	CONSTRAINT fk_padre FOREIGN KEY (id_padre) REFERENCES LUGAR(id_lugar),
    CONSTRAINT tipo_lugar CHECK (UPPER(tipo) IN ('P', 'E', 'C')), -- P: Pais, E: Estado, C: Ciudad
    CONSTRAINT continente_lugar CHECK (UPPER(continente) IN ('AM', 'AF', 'AS', 'EU', 'OC')) -- AM: America, AF: Africa, AS: Asia, EU: Europa, OC: Oceania
);

CREATE TABLE IDIOMA (
    id_idioma NUMERIC(4) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE EMPLEADO_PROFESIONAL(
    expediente NUMERIC(4) PRIMARY KEY,
    primer_nombre VARCHAR(30) NOT NULL,
    segundo_nombre VARCHAR(30),
    primer_apellido VARCHAR(30) NOT NULL,
    segundo_apellido VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero CHAR(1) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    doc_identidad VARCHAR(20) NOT NULL UNIQUE,
    CONSTRAINT chk_genero CHECK (UPPER(genero) IN ('M', 'F')) -- M: Masculino, F: Femenino
);



CREATE TABLE EMP_ID (
    expediente NUMERIC(4) NOT NULL,
    id_idioma NUMERIC(4) NOT NULL,
    CONSTRAINT FK_empleado_idioma FOREIGN KEY (expediente) REFERENCES EMPLEADO_PROFESIONAL(expediente),
    CONSTRAINT FK_idioma FOREIGN KEY (id_idioma) REFERENCES IDIOMA(id_idioma),
    CONSTRAINT PK_emp_id PRIMARY KEY (expediente, id_idioma)
);

CREATE TABLE EMPLEADO_MANT_VIG (
    id_empleado_mant_vig NUMERIC(4) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    doc_identidad VARCHAR(20) NOT NULL UNIQUE,
    tipo VARCHAR(1) NOT NULL,
    CONSTRAINT tipo_empleado CHECK (UPPER(tipo) IN ('M', 'V')) -- M: Mantenimiento, V: Vigilancia
);

CREATE TABLE MUSEO ( 
    id_museo NUMERIC(4) PRIMARY KEY,
    id_lugar NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    tipo VARCHAR(1) NOT NULL,
    fecha_fundacion DATE NOT NULL,
    mision VARCHAR(999) NOT NULL,
    CONSTRAINT FK_lugar FOREIGN KEY (id_lugar) REFERENCES LUGAR(id_lugar),
    CONSTRAINT tipo_museo CHECK (UPPER(tipo) IN ('A')) -- A: Arte
);


CREATE TABLE ARTISTA (
    id_artista NUMERIC(4) PRIMARY KEY,
    id_lugar NUMERIC(4),
    primer_nombre VARCHAR(50),
    segundo_nombre VARCHAR(50),
    primer_apellido VARCHAR(50),
    segundo_apellido VARCHAR(50),
    fecha_nacimiento DATE,
    apodo VARCHAR(50),
    fecha_muerte DATE,
    resumen_caracteristicas_arte VARCHAR(500) NOT NULL,
    CONSTRAINT FK_lugar FOREIGN KEY (id_lugar) REFERENCES LUGAR(id_lugar)
);

CREATE TABLE HISTORICO_MUSEO (
    fecha_anio DATE NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    descp_hechos VARCHAR(500) NOT NULL,
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
	CONSTRAINT PK_mus_hist PRIMARY KEY (id_museo,fecha_anio)
);


CREATE TABLE HORARIO (
    id_horario NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    hora_apertura TIME NOT NULL,
    hora_cierre TIME NOT NULL,
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_hor PRIMARY KEY (id_museo,id_horario)
); 

CREATE TABLE TIPO_TICKET(
    fecha_inicio DATE NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    fecha_final DATE,
    tipo_ticket CHAR(1) NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_tipotick PRIMARY KEY (id_museo,fecha_inicio),
    CONSTRAINT chk_tipo_ticket CHECK (UPPER(tipo_ticket) IN ('A', 'E', 'N')) -- A: Adulto, E: Estudiante, N: Niño
);


CREATE TABLE TICKET(
    id_ticket NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    fecha_emision TIMESTAMP NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_tick PRIMARY KEY (id_museo,id_ticket)
); 


CREATE TABLE ESTRUCTURA_FISICA (
    id_est_f NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipo_estructura_f VARCHAR(1) NOT NULL,
    descripcion VARCHAR(100),
    direccion VARCHAR(100),
    id_padre_fis NUMERIC(4), 
    id_padre_museo_fis NUMERIC(4), 
    CONSTRAINT FK_padre FOREIGN KEY (id_padre_fis, id_padre_museo_fis) REFERENCES ESTRUCTURA_FISICA(id_est_f, id_museo), 
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_est_fisc PRIMARY KEY (id_museo, id_est_f),
    CONSTRAINT chk_tipo_estructura CHECK (UPPER(tipo_estructura_f) IN ('E', 'P', 'A')), -- E: Edificio, P: Piso, A: Area
    CONSTRAINT chk_direccion_edificio CHECK (
        (UPPER(tipo_estructura_f) = 'E' AND direccion IS NOT NULL) OR 
        (UPPER(tipo_estructura_f) IN ('P', 'A') AND direccion IS NULL)
    ) 
);

CREATE TABLE ESTRUCTURA_ORG (
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipo_estructura_o VARCHAR(15) NOT NULL,
    nivel NUMERIC(2) NOT NULL,
    descripcion VARCHAR(500) NOT NULL,
    id_padre_org NUMERIC(4),
    id_padre_museo_org NUMERIC(4),
    CONSTRAINT FK_padre FOREIGN KEY (id_padre_org, id_padre_museo_org) REFERENCES ESTRUCTURA_ORG(id_est_o, id_museo),
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_est_org PRIMARY KEY (id_museo, id_est_o),
    CONSTRAINT chk_tipo_estructura CHECK (LOWER(tipo_estructura_o) IN ('departamento', 'direccion', 'seccion', 'subdept', 'subseccion'))
);

CREATE TABLE COLECCION (
    id_coleccion NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(500) NOT NULL,
    palabra_clave VARCHAR(50) NOT NULL,
    orden_recorrido NUMERIC(4) NOT NULL,
    CONSTRAINT FK_est_org FOREIGN KEY (id_est_o, id_museo) REFERENCES ESTRUCTURA_ORG(id_est_o, id_museo),
    CONSTRAINT PK_mus_coleccion PRIMARY KEY (id_museo, id_coleccion, id_est_o)
);

CREATE TABLE SALA_EXP(
    id_sala_exp NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_est_f NUMERIC(4) NOT NULL,
    nombre VARCHAR(50),
    descripcion VARCHAR(500),
    CONSTRAINT FK_est_f FOREIGN KEY (id_est_f, id_museo) REFERENCES ESTRUCTURA_FISICA(id_est_f, id_museo),
    CONSTRAINT PK_mus_sala PRIMARY KEY (id_museo, id_sala_exp, id_est_f)
);

CREATE TABLE SAL_COL(
    id_orden NUMERIC(4) NOT NULL,
    id_sala_exp NUMERIC(4) NOT NULL,
    id_est_f NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_coleccion NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    CONSTRAINT FK_sala FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT FK_coleccion FOREIGN KEY (id_coleccion, id_est_o, id_museo) REFERENCES COLECCION(id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_sal_col PRIMARY KEY (id_museo, id_sala_exp, id_coleccion, id_est_f, id_est_o)
);

CREATE TABLE OBRA (
    id_obra NUMERIC(4) NOT NULL,
    id_coleccion NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    ano_creacion VARCHAR(30) NOT NULL,
    tipo CHAR(1) NOT NULL,
    estilo_descripcion VARCHAR(500) NOT NULL,
    material_tecnica_descripcion VARCHAR(500) NOT NULL, 
    dimensiones VARCHAR(50) NOT NULL,
    CONSTRAINT FK_coleccion FOREIGN KEY (id_coleccion, id_est_o, id_museo) REFERENCES COLECCION(id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_obra PRIMARY KEY (id_museo, id_obra, id_coleccion, id_est_o),
    CONSTRAINT chk_tipo CHECK (UPPER(tipo) IN ('P', 'E')) -- P: Pintura, E: Escultura
);

CREATE TABLE O_A(
    id_artista NUMERIC(4) NOT NULL,
    id_obra NUMERIC(4) NOT NULL,
    id_coleccion NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    CONSTRAINT FK_artista FOREIGN KEY (id_artista) REFERENCES ARTISTA(id_artista),
    CONSTRAINT FK_obra FOREIGN KEY (id_obra, id_coleccion, id_est_o, id_museo) REFERENCES OBRA(id_obra, id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_obra_art PRIMARY KEY (id_museo, id_obra, id_coleccion, id_est_o, id_artista)
);

CREATE TABLE HISTORICO_CIERRE_TEMP(
    fecha_inicio_hist_cierre DATE NOT NULL,
    id_sala_exp NUMERIC(4) NOT NULL,
    id_est_f NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    fecha_fin_hist_cierre DATE,
    CONSTRAINT FK_sala FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT PK_mus_historico_cierre PRIMARY KEY (id_museo, id_sala_exp, id_est_f, fecha_inicio_hist_cierre)
);

CREATE TABLE ASIGNACION_MENSUAL(
    mes_anio DATE NOT NULL,
    id_empleado_mant_vig NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_est_f NUMERIC(4) NOT NULL,
    turno CHAR(1) NOT NULL,
    CONSTRAINT FK_empleado_mant_vig FOREIGN KEY (id_empleado_mant_vig) REFERENCES EMPLEADO_MANT_VIG(id_empleado_mant_vig),
    CONSTRAINT FK_est_f FOREIGN KEY (id_museo,id_est_f) REFERENCES ESTRUCTURA_FISICA(id_museo,id_est_f),
    CONSTRAINT PK_mus_asignacion_mensual PRIMARY KEY (id_museo, mes_anio, id_empleado_mant_vig, id_est_f),
    CONSTRAINT chk_turno CHECK (UPPER(turno) IN ('M', 'V', 'N')) -- M: Mañana, V: Vespertino, N: Nocturno
);

CREATE TABLE EXPOSICION_ESPECIAL_EVENTO(
    id_exposicion_especial_evento NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_sala_exp NUMERIC(4),
    id_est_f NUMERIC(4),
    titulo_nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(500) NOT NULL,
    fecha_inicio_exposicion DATE NOT NULL,
    fecha_fin_exposicion DATE NOT NULL,
    costo_persona DECIMAL(10, 2),
    cantidad_persona INT,
    colegio_institucion VARCHAR(100),
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT FK_sala_exp FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT PK_mus_expo_especial_evento PRIMARY KEY (id_museo, id_exposicion_especial_evento)
);

CREATE TABLE HISTORICO_TRABAJO(
    fecha_inicio_historico DATE NOT NULL,
    fecha_final_historico DATE,
    cargo CHAR(1) NOT NULL,
    expediente NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    CONSTRAINT FK_empleado_pro FOREIGN KEY (expediente) REFERENCES EMPLEADO_PROFESIONAL(expediente),
    CONSTRAINT FK_est_o FOREIGN KEY (id_est_o, id_museo) REFERENCES ESTRUCTURA_ORG(id_est_o, id_museo),
    CONSTRAINT PK_mus_historico_trabajo PRIMARY KEY (id_museo, expediente, id_est_o, fecha_inicio_historico),
    CONSTRAINT chk_cargo CHECK (UPPER(cargo) IN ('D', 'C', 'R', 'A')) -- D: Director, C: Curador, R:Restaurador, A:administrador
);

CREATE TABLE HISTORICO_OBRA_MOV(
    id_cat_museo NUMERIC(4) NOT NULL,
    expediente NUMERIC(4) NOT NULL,
    id_coleccion NUMERIC(4) NOT NULL,
    id_sala_exp NUMERIC(4) NOT NULL,
    id_obra NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_est_f NUMERIC(4) NOT NULL,
    fecha_inicio_adquisicion DATE NOT NULL,
    fecha_final_adquisicion DATE,
    tipo CHAR(2) NOT NULL,
    destacada BOOLEAN NOT NULL,
    orden_recorrido_historico NUMERIC(4),
    valor_monetario INT,
    CONSTRAINT FK_empleado_pro FOREIGN KEY (expediente) REFERENCES EMPLEADO_PROFESIONAL(expediente),
    CONSTRAINT FK_coleccion FOREIGN KEY (id_coleccion, id_est_o, id_museo) REFERENCES COLECCION(id_coleccion, id_est_o, id_museo),
    CONSTRAINT FK_obra FOREIGN KEY (id_obra, id_coleccion, id_est_o, id_museo) REFERENCES OBRA(id_obra, id_coleccion, id_est_o, id_museo),
    CONSTRAINT FK_sala_exp FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT PK_mus_historico_obra_mov PRIMARY KEY (id_museo, id_cat_museo, id_coleccion, id_obra, id_est_o),
    CONSTRAINT chk_tipo CHECK (UPPER(tipo) IN ('CO', 'DO', 'CM', 'DM')), -- CO: Comprada, DO: donada, CM: comprada a museo, DM: donada a museo
    CONSTRAINT chk_destacada CHECK (destacada IN (TRUE, FALSE)) -- destacada: SI o NO 
);

CREATE TABLE MANT_OBRA(
    id_mant_obra NUMERIC(4) NOT NULL,
    id_cat_museo NUMERIC(4) NOT NULL,
    id_obra NUMERIC(4) NOT NULL,
    id_coleccion NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    actividad VARCHAR(500) NOT NULL,
    frecuencia VARCHAR(50) NOT NULL,
    tipo_responsable CHAR(1) NOT NULL,
    CONSTRAINT FK_HISTORICO_OBRA_MOV FOREIGN KEY (id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo) REFERENCES HISTORICO_OBRA_MOV(id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_mant_obra PRIMARY KEY (id_museo, id_cat_museo, id_obra, id_coleccion, id_est_o, id_mant_obra),
    CONSTRAINT chk_tipo_responsable CHECK (UPPER(tipo_responsable) IN ('C', 'R')) -- C: Curador, R: Restaurador
);

CREATE TABLE ACTIVIDAD_REALIZADA(
    id_actividad NUMERIC(4) NOT NULL,
    id_mant_obra NUMERIC(4) NOT NULL,
    id_cat_museo NUMERIC(4) NOT NULL,
    id_obra NUMERIC(4) NOT NULL,
    id_coleccion NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_expediente NUMERIC(4) NOT NULL,
    fecha_inicio_actividad DATE NOT NULL,
    fecha_fin DATE,
    obvservaciones VARCHAR(500),
    CONSTRAINT FK_empleado_pro FOREIGN KEY (id_expediente) REFERENCES EMPLEADO_PROFESIONAL(expediente),
    CONSTRAINT FK_mant_obra FOREIGN KEY (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo) REFERENCES MANT_OBRA(id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_act_realizada PRIMARY KEY (id_museo, id_cat_museo, id_obra, id_coleccion, id_est_o, id_actividad, id_mant_obra)
);

-- IDIOMA
CREATE SEQUENCE IF NOT EXISTS idioma_id_idioma_seq START 1;
ALTER TABLE idioma ALTER COLUMN id_idioma SET DEFAULT nextval('idioma_id_idioma_seq');
SELECT setval('idioma_id_idioma_seq', COALESCE((SELECT MAX(id_idioma)::integer FROM idioma), 1), true);

-- EMPLEADO_PROFESIONAL
CREATE SEQUENCE IF NOT EXISTS empleado_profesional_expediente_seq START 1;
ALTER TABLE empleado_profesional ALTER COLUMN expediente SET DEFAULT nextval('empleado_profesional_expediente_seq');
SELECT setval('empleado_profesional_expediente_seq', COALESCE((SELECT MAX(expediente)::integer FROM empleado_profesional), 1), true);

-- EMPLEADO_MANT_VIG
CREATE SEQUENCE IF NOT EXISTS empleado_mant_vig_id_empleado_mant_vig_seq START 1;
ALTER TABLE empleado_mant_vig ALTER COLUMN id_empleado_mant_vig SET DEFAULT nextval('empleado_mant_vig_id_empleado_mant_vig_seq');
SELECT setval('empleado_mant_vig_id_empleado_mant_vig_seq', COALESCE((SELECT MAX(id_empleado_mant_vig)::integer FROM empleado_mant_vig), 1), true);

-- MUSEO
CREATE SEQUENCE IF NOT EXISTS museo_id_museo_seq START 1;
ALTER TABLE museo ALTER COLUMN id_museo SET DEFAULT nextval('museo_id_museo_seq');
SELECT setval('museo_id_museo_seq', COALESCE((SELECT MAX(id_museo)::integer FROM museo), 1), true);

-- ARTISTA
CREATE SEQUENCE IF NOT EXISTS artista_id_artista_seq START 1;
ALTER TABLE artista ALTER COLUMN id_artista SET DEFAULT nextval('artista_id_artista_seq');
SELECT setval('artista_id_artista_seq', COALESCE((SELECT MAX(id_artista)::integer FROM artista), 1), true);

-- LUGAR
CREATE SEQUENCE IF NOT EXISTS lugar_id_lugar_seq START 1;
ALTER TABLE lugar ALTER COLUMN id_lugar SET DEFAULT nextval('lugar_id_lugar_seq');
SELECT setval('lugar_id_lugar_seq', COALESCE((SELECT MAX(id_lugar)::integer FROM lugar), 1), true);

-- FORMACION_PROFESIONAL (id_formacion)
CREATE SEQUENCE IF NOT EXISTS formacion_profesional_id_formacion_seq START 1;
ALTER TABLE formacion_profesional ALTER COLUMN id_formacion SET DEFAULT nextval('formacion_profesional_id_formacion_seq');
SELECT setval('formacion_profesional_id_formacion_seq', COALESCE((SELECT MAX(id_formacion)::integer FROM formacion_profesional), 1), true);

-- ESTRUCTURA_FISICA (id_est_f)
CREATE SEQUENCE IF NOT EXISTS estructura_fisica_id_est_f_seq START 1;
ALTER TABLE estructura_fisica ALTER COLUMN id_est_f SET DEFAULT nextval('estructura_fisica_id_est_f_seq');
SELECT setval('estructura_fisica_id_est_f_seq', COALESCE((SELECT MAX(id_est_f)::integer FROM estructura_fisica), 1), true);

-- ESTRUCTURA_ORG (id_est_o)
CREATE SEQUENCE IF NOT EXISTS estructura_org_id_est_o_seq START 1;
ALTER TABLE estructura_org ALTER COLUMN id_est_o SET DEFAULT nextval('estructura_org_id_est_o_seq');
SELECT setval('estructura_org_id_est_o_seq', COALESCE((SELECT MAX(id_est_o)::integer FROM estructura_org), 1), true);

-- COLECCION (id_coleccion)
CREATE SEQUENCE IF NOT EXISTS coleccion_id_coleccion_seq START 1;
ALTER TABLE coleccion ALTER COLUMN id_coleccion SET DEFAULT nextval('coleccion_id_coleccion_seq');
SELECT setval('coleccion_id_coleccion_seq', COALESCE((SELECT MAX(id_coleccion)::integer FROM coleccion), 1), true);

-- SALA_EXP (id_sala_exp)
CREATE SEQUENCE IF NOT EXISTS sala_exp_id_sala_exp_seq START 1;
ALTER TABLE sala_exp ALTER COLUMN id_sala_exp SET DEFAULT nextval('sala_exp_id_sala_exp_seq');
SELECT setval('sala_exp_id_sala_exp_seq', COALESCE((SELECT MAX(id_sala_exp)::integer FROM sala_exp), 1), true);

-- OBRA (id_obra)
CREATE SEQUENCE IF NOT EXISTS obra_id_obra_seq START 1;
ALTER TABLE obra ALTER COLUMN id_obra SET DEFAULT nextval('obra_id_obra_seq');
SELECT setval('obra_id_obra_seq', COALESCE((SELECT MAX(id_obra)::integer FROM obra), 1), true);

-- TICKET (id_ticket)
CREATE SEQUENCE IF NOT EXISTS ticket_id_ticket_seq START 1;
ALTER TABLE ticket ALTER COLUMN id_ticket SET DEFAULT nextval('ticket_id_ticket_seq');
SELECT setval('ticket_id_ticket_seq', COALESCE((SELECT MAX(id_ticket)::integer FROM ticket), 1), true);

-- HORARIO (id_horario)
CREATE SEQUENCE IF NOT EXISTS horario_id_horario_seq START 1;
ALTER TABLE horario ALTER COLUMN id_horario SET DEFAULT nextval('horario_id_horario_seq');
SELECT setval('horario_id_horario_seq', COALESCE((SELECT MAX(id_horario)::integer FROM horario), 1), true);

-- EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento)
CREATE SEQUENCE IF NOT EXISTS exposicion_especial_evento_id_exposicion_especial_evento_seq START 1;
ALTER TABLE exposicion_especial_evento ALTER COLUMN id_exposicion_especial_evento SET DEFAULT nextval('exposicion_especial_evento_id_exposicion_especial_evento_seq');
SELECT setval('exposicion_especial_evento_id_exposicion_especial_evento_seq', COALESCE((SELECT MAX(id_exposicion_especial_evento)::integer FROM exposicion_especial_evento), 1), true);

-- MANT_OBRA (id_mant_obra)
CREATE SEQUENCE IF NOT EXISTS mant_obra_id_mant_obra_seq START 1;
ALTER TABLE mant_obra ALTER COLUMN id_mant_obra SET DEFAULT nextval('mant_obra_id_mant_obra_seq');
SELECT setval('mant_obra_id_mant_obra_seq', COALESCE((SELECT MAX(id_mant_obra)::integer FROM mant_obra), 1), true);

-- ACTIVIDAD_REALIZADA (id_actividad)
CREATE SEQUENCE IF NOT EXISTS actividad_realizada_id_actividad_seq START 1;
ALTER TABLE actividad_realizada ALTER COLUMN id_actividad SET DEFAULT nextval('actividad_realizada_id_actividad_seq');
SELECT setval('actividad_realizada_id_actividad_seq', COALESCE((SELECT MAX(id_actividad)::integer FROM actividad_realizada), 1), true);

-- HISTORICO_OBRA_MOV (id_cat_museo)
CREATE SEQUENCE IF NOT EXISTS historico_obra_mov_id_cat_museo_seq START 1;
ALTER TABLE historico_obra_mov ALTER COLUMN id_cat_museo SET DEFAULT nextval('historico_obra_mov_id_cat_museo_seq');
SELECT setval('historico_obra_mov_id_cat_museo_seq', COALESCE((SELECT MAX(id_cat_museo)::integer FROM historico_obra_mov), 1), true);

----------------------Triggers y programas almacenados---------------------

-- Verificar que la fecha de nacimiento del empleado no sea posterior a la fecha actual
-- empleado profesional
CREATE OR REPLACE FUNCTION check_fecha_nacimiento_empleado()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_nacimiento > CURRENT_DATE THEN
        RAISE EXCEPTION 'La fecha de nacimiento no puede ser posterior a la fecha actual.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_fecha_nacimiento_empleado_trigger
BEFORE INSERT OR UPDATE ON empleado_profesional
FOR EACH ROW
EXECUTE FUNCTION check_fecha_nacimiento_empleado();

-- Verificar que la fecha de inicio de exposicion sea anterior a la fecha de fin
-- exposicion especial evento
CREATE OR REPLACE FUNCTION check_fecha_inicio_exposicion()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_inicio_exposicion > NEW.fecha_fin_exposicion THEN
        RAISE EXCEPTION 'La fecha de inicio de la exposicion debe ser anterior a la fecha de fin';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_fecha_inicio_exposicion_trigger   
BEFORE INSERT OR UPDATE ON exposicion_especial_evento
FOR EACH ROW EXECUTE FUNCTION check_fecha_inicio_exposicion();

-- Verificar que la fecha de inicio de la actividad realizada sea anterior a la fecha de fin
-- historico trabajo
CREATE OR REPLACE FUNCTION check_fecha_inicio_historico()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_inicio_historico > COALESCE(NEW.fecha_final_historico, CURRENT_DATE) THEN
        RAISE EXCEPTION 'La fecha de inicio del historico debe ser anterior o igual a la fecha final';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_fecha_inicio_historico_trigger
BEFORE INSERT OR UPDATE ON historico_trabajo
FOR EACH ROW EXECUTE FUNCTION check_fecha_inicio_historico();

-- Verificar que la fecha de inicio de la actividad realizada sea anterior a la fecha de fin
-- actividad realizada
CREATE OR REPLACE FUNCTION check_fecha_inicio_actividad()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_inicio_actividad > COALESCE(NEW.fecha_fin, CURRENT_DATE) THEN
        RAISE EXCEPTION 'La fecha de inicio de la actividad debe ser anterior o igual a la fecha de fin';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_fecha_inicio_actividad_trigger
BEFORE INSERT OR UPDATE ON actividad_realizada
FOR EACH ROW EXECUTE FUNCTION check_fecha_inicio_actividad();

-- Verificar que la fecha de inicio de la actividad realizada sea anterior a la fecha de fin
-- historico obra mov
CREATE OR REPLACE FUNCTION check_fecha_inicio_historico_obra()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_inicio_adquisicion > COALESCE(NEW.fecha_final_adquisicion, CURRENT_DATE) THEN
        RAISE EXCEPTION 'La fecha de inicio de la adquisicion debe ser anterior o igual a la fecha final';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_fecha_inicio_historico_obra_trigger
BEFORE INSERT OR UPDATE ON historico_obra_mov
FOR EACH ROW EXECUTE FUNCTION check_fecha_inicio_historico_obra();

-- Si cambia de trabajo, se debe actualizar el historico de trabajo
-- historico trabajo
CREATE OR REPLACE FUNCTION cerrar_historico_trabajo_anterior()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE historico_trabajo
    SET fecha_final_historico = NEW.fecha_inicio_historico
    WHERE expediente = NEW.expediente
      AND id_est_o = NEW.id_est_o
      AND id_museo = NEW.id_museo
      AND fecha_final_historico IS NULL
      AND fecha_inicio_historico < NEW.fecha_inicio_historico
      AND cargo <> NEW.cargo;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER cerrar_historico_trabajo_anterior_trigger
BEFORE INSERT OR UPDATE ON historico_trabajo
FOR EACH ROW
EXECUTE FUNCTION cerrar_historico_trabajo_anterior();

-- Si cambia de ubicacion, se debe cerrar el historico de obra mov
-- historico obra mov
CREATE OR REPLACE FUNCTION cerrar_ubicacion_obra_anterior()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.id_sala_exp IS DISTINCT FROM OLD.id_sala_exp OR
        NEW.id_est_f IS DISTINCT FROM OLD.id_est_f) THEN
        UPDATE historico_obra_mov
        SET fecha_final_adquisicion = NEW.fecha_inicio_adquisicion
        WHERE id_obra = NEW.id_obra
          AND id_coleccion = NEW.id_coleccion
          AND id_est_o = NEW.id_est_o
          AND id_museo = NEW.id_museo
          AND fecha_final_adquisicion IS NULL
          AND id_sala_exp = OLD.id_sala_exp
          AND id_est_f = OLD.id_est_f
          AND fecha_inicio_adquisicion < NEW.fecha_inicio_adquisicion;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER cerrar_ubicacion_obra_anterior_trigger
BEFORE UPDATE ON historico_obra_mov
FOR EACH ROW
EXECUTE FUNCTION cerrar_ubicacion_obra_anterior();

--verificacion de que el ticket no se emita fuera del horario del museo
-- ticket
CREATE OR REPLACE FUNCTION check_ticket_horario()
RETURNS TRIGGER AS $$
DECLARE
    horario_inicio TIME;
    horario_fin TIME;
BEGIN
    SELECT hora_apertura, hora_cierre INTO horario_inicio, horario_fin
    FROM horario
    WHERE id_museo = NEW.id_museo;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'No se encontró horario para el museo con id: %', NEW.id_museo;
    END IF;

    IF NEW.fecha_emision::time < horario_inicio OR NEW.fecha_emision::time > horario_fin THEN
        RAISE EXCEPTION 'El ticket no puede ser emitido fuera del horario del museo: % a %', horario_inicio, horario_fin;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_ticket_horario_trigger
BEFORE INSERT ON ticket
FOR EACH ROW
EXECUTE FUNCTION check_ticket_horario();

-- verificar horario hora apertura y hora cierre
-- horario
CREATE OR REPLACE FUNCTION check_horario_apertura_cierre()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.hora_apertura >= NEW.hora_cierre THEN
        RAISE EXCEPTION 'La hora de apertura debe ser anterior a la hora de cierre';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_horario_apertura_cierre_trigger
BEFORE INSERT OR UPDATE ON horario
FOR EACH ROW
EXECUTE FUNCTION check_horario_apertura_cierre();

-- Verificar que la fecha de fundacion del museo sea anterior a la fecha actual
-- museo
CREATE OR REPLACE FUNCTION check_fecha_fundacion_museo()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_fundacion > CURRENT_DATE THEN
        RAISE EXCEPTION 'La fecha de fundacion del museo debe ser anterior a la fecha actual';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_fecha_fundacion_museo_trigger
BEFORE INSERT OR UPDATE ON museo
FOR EACH ROW    
EXECUTE FUNCTION check_fecha_fundacion_museo();

--verificacion fecha inicio cierre temporal
-- historico cierre temp
CREATE OR REPLACE FUNCTION check_fecha_inicio_cierre_temp()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_fin_hist_cierre IS NOT NULL AND NEW.fecha_inicio_hist_cierre > NEW.fecha_fin_hist_cierre THEN
        RAISE EXCEPTION 'La fecha de inicio del cierre temporal debe ser anterior o igual a la fecha final';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_fecha_inicio_cierre_temp_trigger
BEFORE INSERT OR UPDATE ON historico_cierre_temp
FOR EACH ROW
EXECUTE FUNCTION check_fecha_inicio_cierre_temp();

-- cerrar si se cambia de sala, el historico de cierre temporal
-- historico cierre temp
CREATE OR REPLACE FUNCTION cerrar_historico_cierre_temp_anterior()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.id_sala_exp IS DISTINCT FROM OLD.id_sala_exp OR
        NEW.id_est_f IS DISTINCT FROM OLD.id_est_f) THEN
        UPDATE historico_cierre_temp
        SET fecha_fin_hist_cierre = NEW.fecha_inicio_hist_cierre
        WHERE id_sala_exp = OLD.id_sala_exp
          AND id_est_f = OLD.id_est_f
          AND id_museo = NEW.id_museo
          AND fecha_fin_hist_cierre IS NULL
          AND fecha_inicio_hist_cierre < NEW.fecha_inicio_hist_cierre;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER cerrar_historico_cierre_temp_anterior_trigger
BEFORE UPDATE ON historico_cierre_temp
FOR EACH ROW
EXECUTE FUNCTION cerrar_historico_cierre_temp_anterior();

-- Verificar que el tipo de estructura fisica sea correcto
-- estructura fisica
CREATE OR REPLACE FUNCTION check_tipo_estructura_fisica()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (UPPER(NEW.tipo_estructura_f) IN ('E', 'P', 'A')) THEN
        RAISE EXCEPTION 'Tipo de estructura fisica no valido: %', NEW.tipo_estructura_f;
    END IF;

    IF (UPPER(NEW.tipo_estructura_f) = 'E' AND NEW.direccion IS NULL) THEN
        RAISE EXCEPTION 'La direccion es obligatoria para edificios';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_tipo_estructura_fisica_trigger
BEFORE INSERT OR UPDATE ON estructura_fisica
FOR EACH ROW
EXECUTE FUNCTION check_tipo_estructura_fisica();

-- Verificar que el tipo de estructura organizacional sea correcto
-- estructura organizacional
CREATE OR REPLACE FUNCTION check_tipo_estructura_organizacional()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (LOWER(NEW.tipo_estructura_o) IN ('departamento', 'direccion', 'seccion', 'subdept', 'subseccion')) THEN
        RAISE EXCEPTION 'Tipo de estructura organizacional no valido: %', NEW.tipo_estructura_o;
    END IF;

    IF (LOWER(NEW.tipo_estructura_o) IN ('subdept', 'subseccion') AND NEW.id_padre_org IS NULL) THEN
        RAISE EXCEPTION 'El id_padre_org es obligatorio para subdepartamentos y subsecciones';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_tipo_estructura_organizacional_trigger
BEFORE INSERT OR UPDATE ON estructura_org
FOR EACH ROW
EXECUTE FUNCTION check_tipo_estructura_organizacional();

-- Verificar tipo lugar
-- lugar
CREATE OR REPLACE FUNCTION check_tipo_lugar()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (UPPER(NEW.tipo) IN ('P', 'E', 'C')) THEN
        RAISE EXCEPTION 'Tipo de lugar no valido: %', NEW.tipo;
    END IF;

    IF (UPPER(NEW.tipo) = 'C' AND NEW.nombre IS NULL) THEN
        RAISE EXCEPTION 'El nombre es obligatorio para los lugares de tipo Ciudad';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_tipo_lugar_trigger
BEFORE INSERT OR UPDATE ON lugar
FOR EACH ROW
EXECUTE FUNCTION check_tipo_lugar();

--verificar cerrar actividad realizada
-- actividad realizada
CREATE OR REPLACE FUNCTION cerrar_actividad_realizada_anterior()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE actividad_realizada
    SET fecha_fin = NEW.fecha_inicio_actividad
    WHERE id_obra = NEW.id_obra
      AND id_coleccion = NEW.id_coleccion
      AND id_est_o = NEW.id_est_o
      AND id_museo = NEW.id_museo
      AND id_cat_museo = NEW.id_cat_museo
      AND id_mant_obra = NEW.id_mant_obra
      AND fecha_fin IS NULL
      AND fecha_inicio_actividad < NEW.fecha_inicio_actividad;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER cerrar_actividad_realizada_anterior_trigger
BEFORE INSERT OR UPDATE ON actividad_realizada
FOR EACH ROW
EXECUTE FUNCTION cerrar_actividad_realizada_anterior();

--verificar cerrar expocion especial evento
-- exposicion especial evento
CREATE OR REPLACE FUNCTION cerrar_exposicion_especial_anterior()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE exposicion_especial_evento
    SET fecha_fin_exposicion = NEW.fecha_inicio_exposicion
    WHERE id_museo = NEW.id_museo
      AND id_sala_exp = NEW.id_sala_exp
      AND id_est_f = NEW.id_est_f
      AND fecha_fin_exposicion IS NULL
      AND fecha_inicio_exposicion < NEW.fecha_inicio_exposicion;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER cerrar_exposicion_especial_anterior_trigger
BEFORE INSERT OR UPDATE ON exposicion_especial_evento
FOR EACH ROW
EXECUTE FUNCTION cerrar_exposicion_especial_anterior();

--calculo precio de ticket

CREATE OR REPLACE FUNCTION set_ticket_monto()
RETURNS TRIGGER AS $$
BEGIN
    IF UPPER(NEW.tipo) = 'ADULTO' THEN
        NEW.monto := 15.00;
    ELSIF UPPER(NEW.tipo) = 'ESTUDIANTE' OR UPPER(NEW.tipo) = 'TERCERA EDAD' THEN
        NEW.monto := 7.00;
    ELSIF UPPER(NEW.tipo) = 'NIÑO' OR UPPER(NEW.tipo) = 'NINO' THEN
        NEW.monto := 0.00;
    ELSE
        RAISE EXCEPTION 'Tipo de visitante no válido para ticket: %', NEW.tipo;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_ticket_monto_trigger
BEFORE INSERT OR UPDATE ON ticket
FOR EACH ROW
EXECUTE FUNCTION set_ticket_monto();

------------------------- PROGRAMAS ALMACENADOS -------------------------

-- programa calcular ranking de museo
-- el programa hace el ranking del 0 al 100, el 100 significa que es el museo con mayor ranking, que es el número 1.

CREATE OR REPLACE FUNCTION calcular_ranking_internacional(id_museo_consulta NUMERIC)
RETURNS NUMERIC AS $$
DECLARE
    promedio_anios NUMERIC := 0;
    rotacion_score INT := 0;
    total_ingresos_museo NUMERIC := 0;
    total_visitantes_museo INT := 0;
    max_ingresos NUMERIC := 0;
    max_visitantes INT := 0;
    ranking_anterior NUMERIC := 0;
    ranking_final NUMERIC := 0;
BEGIN

    SELECT COALESCE(AVG(EXTRACT(YEAR FROM AGE(COALESCE(fecha_final_historico, CURRENT_DATE), fecha_inicio_historico))),0)
    INTO promedio_anios
    FROM historico_trabajo
    WHERE id_museo = id_museo_consulta;


    IF promedio_anios > 10 THEN
        rotacion_score := 1;
    ELSIF promedio_anios >= 5 THEN
        rotacion_score := 2;
    ELSE
        rotacion_score := 3;
    END IF;

    SELECT COALESCE(SUM(monto),0), COUNT(*) INTO total_ingresos_museo, total_visitantes_museo
    FROM ticket
    WHERE id_museo = id_museo_consulta;

    SELECT COALESCE(MAX(ingresos),0), COALESCE(MAX(visitantes),0)
    INTO max_ingresos, max_visitantes
    FROM (
        SELECT id_museo, SUM(monto) AS ingresos, COUNT(*) AS visitantes
        FROM ticket
        GROUP BY id_museo
    ) t;

    IF max_ingresos = 0 OR max_visitantes = 0 THEN
        ranking_anterior := 0;
    ELSE
        ranking_anterior := ((total_ingresos_museo / max_ingresos) * 0.5 + (total_visitantes_museo::NUMERIC / max_visitantes) * 0.5) * 100;
    END IF;

    -- Ranking final: pondera 70% el ranking anterior y 30% la rotación (1=100, 2=70, 3=40)
    ranking_final := ranking_anterior * 0.7 +
        (CASE rotacion_score WHEN 1 THEN 100 WHEN 2 THEN 70 ELSE 40 END) * 0.3;

    RETURN ROUND(ranking_final,2);
END;
$$ LANGUAGE plpgsql;

-- Calcular ranking de museo nacional

CREATE OR REPLACE FUNCTION calcular_ranking_nacional(id_museo_consulta NUMERIC)
RETURNS NUMERIC AS $$
DECLARE
    pais_museo NUMERIC;
    promedio_anios NUMERIC := 0;
    rotacion_score INT := 0;
    total_ingresos_museo NUMERIC := 0;
    total_visitantes_museo INT := 0;
    max_ingresos NUMERIC := 0;
    max_visitantes INT := 0;
    ranking_anterior NUMERIC := 0;
    ranking_final NUMERIC := 0;
BEGIN

SELECT CASE
         WHEN l.tipo = 'P' THEN l.id_lugar
         WHEN l.tipo = 'E' OR l.tipo = 'C' THEN l.id_padre
         ELSE NULL
       END INTO pais_museo
FROM museo m
JOIN lugar l ON m.id_lugar = l.id_lugar
WHERE m.id_museo = id_museo_consulta;

-- Solo los tickets del museo consultado
SELECT COALESCE(SUM(monto),0), COUNT(*) INTO total_ingresos_museo, total_visitantes_museo
FROM ticket
WHERE id_museo = id_museo_consulta;

SELECT COALESCE(MAX(ingresos),0), COALESCE(MAX(visitantes),0)
INTO max_ingresos, max_visitantes
FROM (
    SELECT t.id_museo, SUM(t.monto) AS ingresos, COUNT(*) AS visitantes
    FROM ticket t
    JOIN museo m ON t.id_museo = m.id_museo
    JOIN lugar l ON m.id_lugar = l.id_lugar
    WHERE (CASE
             WHEN l.tipo = 'P' THEN l.id_lugar
             WHEN l.tipo = 'E' OR l.tipo = 'C' THEN l.id_padre
             ELSE NULL
           END) = pais_museo
    GROUP BY t.id_museo
) t;

    IF max_ingresos = 0 OR max_visitantes = 0 THEN
        ranking_anterior := 0;
    ELSE
        ranking_anterior := ((total_ingresos_museo / max_ingresos) * 0.5 + (total_visitantes_museo::NUMERIC / max_visitantes) * 0.5) * 100;
    END IF;

    -- Ranking final: pondera 70% el ranking anterior y 30% la rotación (1=100, 2=70, 3=40)
    ranking_final := ranking_anterior * 0.7 +
        (CASE rotacion_score WHEN 1 THEN 100 WHEN 2 THEN 70 ELSE 40 END) * 0.3;

    RETURN ROUND(ranking_final,2);
END;
$$ LANGUAGE plpgsql;

-- Programa para administrar obras y colecciones
-- Este programa inserta una obra y registra su movimiento histórico en la colección del museo.

CREATE OR REPLACE FUNCTION administrar_obra_y_coleccion(
    p_nombre VARCHAR,
    p_ano_creacion VARCHAR,
    p_tipo CHAR(1),
    p_estilo_descripcion VARCHAR,
    p_material_tecnica_descripcion VARCHAR,
    p_dimensiones VARCHAR,
    p_id_museo NUMERIC,
    p_id_coleccion NUMERIC,
    p_id_est_o NUMERIC,
    p_expediente NUMERIC,
    p_id_sala_exp NUMERIC,
    p_id_est_f NUMERIC,
    p_tipo_obra CHAR(2),
    p_destacada BOOLEAN DEFAULT FALSE,
    p_orden_recorrido NUMERIC DEFAULT NULL,
    p_valor_monetario NUMERIC DEFAULT NULL
)
RETURNS TEXT AS $$
DECLARE
    v_id_obra NUMERIC;
    v_id_cat_museo NUMERIC;
BEGIN
    INSERT INTO obra (
        nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones,
        id_museo, id_coleccion, id_est_o
    ) VALUES (
        p_nombre, p_ano_creacion, p_tipo, p_estilo_descripcion, p_material_tecnica_descripcion, p_dimensiones,
        p_id_museo, p_id_coleccion, p_id_est_o
    )
    RETURNING id_obra INTO v_id_obra;

    INSERT INTO historico_obra_mov (
        expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f,
        fecha_inicio_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario
    ) VALUES (
        p_expediente, p_id_coleccion, p_id_sala_exp, v_id_obra, p_id_est_o, p_id_museo, p_id_est_f,
        CURRENT_DATE, p_tipo_obra, p_destacada, p_orden_recorrido, p_valor_monetario
    )
    RETURNING id_cat_museo INTO v_id_cat_museo;

    RETURN format('Obra %s agregada a la colección %s y movimiento histórico registrado.', v_id_obra, p_id_coleccion);
END;
$$ LANGUAGE plpgsql;

-- Programa para mantener la estructura organizacional o física
-- Este programa inserta o actualiza una estructura organizacional o física en el museo.

CREATE OR REPLACE FUNCTION mantener_estructura_org_fisica(
    p_tipo VARCHAR, -- 'ORG' para organizacional, 'FIS' para física
    p_id NUMERIC,
    p_id_museo NUMERIC,
    p_nombre VARCHAR,
    p_tipo_estructura VARCHAR,
    p_nivel NUMERIC DEFAULT NULL,
    p_descripcion VARCHAR DEFAULT NULL,
    p_direccion VARCHAR DEFAULT NULL
)
RETURNS TEXT AS $$
BEGIN
    IF UPPER(p_tipo) = 'ORG' THEN
        IF EXISTS (SELECT 1 FROM estructura_org WHERE id_est_o = p_id AND id_museo = p_id_museo) THEN
            UPDATE estructura_org
            SET nombre = p_nombre,
                tipo_estructura_o = p_tipo_estructura,
                nivel = COALESCE(p_nivel, nivel),
                descripcion = COALESCE(p_descripcion, descripcion)
            WHERE id_est_o = p_id AND id_museo = p_id_museo;
            RETURN 'Estructura organizacional actualizada';
        ELSE
            INSERT INTO estructura_org (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion)
            VALUES (p_id, p_id_museo, p_nombre, p_tipo_estructura, p_nivel, p_descripcion);
            RETURN 'Estructura organizacional insertada';
        END IF;
    ELSIF UPPER(p_tipo) = 'FIS' THEN
        IF EXISTS (SELECT 1 FROM estructura_fisica WHERE id_est_f = p_id AND id_museo = p_id_museo) THEN
            UPDATE estructura_fisica
            SET nombre = p_nombre,
                tipo_estructura_f = p_tipo_estructura,
                descripcion = COALESCE(p_descripcion, descripcion),
                direccion = COALESCE(p_direccion, direccion)
            WHERE id_est_f = p_id AND id_museo = p_id_museo;
            RETURN 'Estructura física actualizada';
        ELSE
            INSERT INTO estructura_fisica (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion)
            VALUES (p_id, p_id_museo, p_nombre, p_tipo_estructura, p_descripcion, p_direccion);
            RETURN 'Estructura física insertada';
        END IF;
    ELSE
        RETURN 'Tipo no válido. Use ORG o FIS';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Programa para planificar una exposición o evento especial
-- Este programa inserta una exposición especial o evento en el museo.

CREATE OR REPLACE FUNCTION planificar_exposicion_especial(
    p_id_museo NUMERIC,
    p_id_sala_exp NUMERIC,
    p_id_est_f NUMERIC,
    p_titulo_nombre VARCHAR,
    p_descripcion VARCHAR,
    p_fecha_inicio DATE,
    p_fecha_fin DATE,
    p_costo_persona DECIMAL,
    p_cantidad_persona INT,
    p_colegio_institucion VARCHAR
)
RETURNS TEXT AS $$
DECLARE
    v_id_exposicion NUMERIC;
BEGIN
    INSERT INTO exposicion_especial_evento (
        id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion,
        fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona,
        cantidad_persona, colegio_institucion
    ) VALUES (
        p_id_museo, p_id_sala_exp, p_id_est_f, p_titulo_nombre, p_descripcion,
        p_fecha_inicio, p_fecha_fin, p_costo_persona,
        p_cantidad_persona, p_colegio_institucion
    )
    RETURNING id_exposicion_especial_evento INTO v_id_exposicion;

    RETURN format('Exposición/Evento %s planificada exitosamente.', v_id_exposicion);
END;
$$ LANGUAGE plpgsql;

-- Programa para generar un ticket de admisión
-- Este programa inserta un ticket de admisión en el museo y retorna un mensaje de confirmación.

CREATE OR REPLACE FUNCTION generar_ticket_admision(
    p_id_museo NUMERIC,
    p_fecha_emision TIMESTAMP,
    p_tipo VARCHAR
)
RETURNS TEXT AS $$
DECLARE
    v_id_ticket NUMERIC;
    v_monto DECIMAL(10,2);
BEGIN
    
    IF UPPER(p_tipo) = 'ADULTO' THEN
        v_monto := 15.00;
    ELSIF UPPER(p_tipo) = 'ESTUDIANTE' OR UPPER(p_tipo) = 'TERCERA EDAD' THEN
        v_monto := 7.00;
    ELSIF UPPER(p_tipo) = 'NIÑO' OR UPPER(p_tipo) = 'NINO' THEN
        v_monto := 0.00;
    ELSE
        RAISE EXCEPTION 'Tipo de visitante no válido para ticket: %', p_tipo;
    END IF;

    SELECT COALESCE(MAX(id_ticket),0)+1 INTO v_id_ticket FROM ticket WHERE id_museo = p_id_museo;

    INSERT INTO ticket (
        id_ticket, id_museo, fecha_emision, tipo, monto
    ) VALUES (
        v_id_ticket, p_id_museo, p_fecha_emision, p_tipo, v_monto
    );

    RETURN format('Ticket de admisión generado con número %s para el museo %s.', v_id_ticket, p_id_museo);
END;
$$ LANGUAGE plpgsql;

-- Programa para calcular el tiempo de trabajo de un empleado
-- Este programa calcula el tiempo total de trabajo de un empleado en años y meses.

CREATE OR REPLACE FUNCTION tiempo_trabajo_empleado(
    p_expediente NUMERIC
)
RETURNS TEXT AS $$
DECLARE
    total_meses INT := 0;
    total_anios INT := 0;
    meses INT := 0;
    rec RECORD;
BEGIN
    IF EXISTS (SELECT 1 FROM empleado_profesional WHERE expediente = p_expediente) THEN
        FOR rec IN
            SELECT fecha_inicio_historico AS inicio, COALESCE(fecha_final_historico, CURRENT_DATE) AS fin
            FROM historico_trabajo
            WHERE expediente = p_expediente
        LOOP
            total_meses := total_meses + (EXTRACT(YEAR FROM age(rec.fin, rec.inicio)) * 12 + EXTRACT(MONTH FROM age(rec.fin, rec.inicio)));
        END LOOP;
    ELSE
        RETURN 'No existe empleado profesional con ese expediente.';
    END IF;
    total_anios := total_meses / 12;
    meses := total_meses % 12;
    RETURN format('El empleado con expediente %s lleva %s años y %s meses trabajando en el museo.', p_expediente, total_anios, meses);
END;
$$ LANGUAGE plpgsql;

-- Programa para calcular los ingresos totales de un museo
-- Este programa suma los ingresos por tickets más exposiciones/eventos especiales de un museo.

CREATE OR REPLACE FUNCTION ingresos_totales_museo(p_id_museo NUMERIC)
RETURNS NUMERIC AS $$
DECLARE
    total_tickets NUMERIC := 0;
    total_eventos NUMERIC := 0;
    total NUMERIC := 0;
BEGIN
    SELECT COALESCE(SUM(monto), 0)
    INTO total_tickets
    FROM ticket
    WHERE id_museo = p_id_museo;

    SELECT COALESCE(SUM(COALESCE(costo_persona,0) * COALESCE(cantidad_persona,0)), 0)
    INTO total_eventos
    FROM exposicion_especial_evento
    WHERE id_museo = p_id_museo;

    total := total_tickets + total_eventos;
    RETURN total;
END;
$$ LANGUAGE plpgsql;

--------------------------------------------------------------------------
-------------------------REQUERIMENTOS ENTREGA 3--------------------------
---------------------------------------------------------------------------

--- Programa para calcular ingresos por tickets  1

CREATE OR REPLACE FUNCTION ingresos_por_tickets(p_id_museo NUMERIC)
RETURNS NUMERIC AS $$
DECLARE
    total_tickets NUMERIC := 0;
BEGIN
    SELECT COALESCE(SUM(monto), 0)
    INTO total_tickets
    FROM ticket
    WHERE id_museo = p_id_museo;

    RETURN total_tickets;
END;
$$ LANGUAGE plpgsql;

--- Programa para calcular ingresos por exposiciones y eventos especiales 2

CREATE OR REPLACE FUNCTION ingresos_por_exposiciones(p_id_museo NUMERIC)
RETURNS NUMERIC AS $$
DECLARE
    total_eventos NUMERIC := 0;
BEGIN
    SELECT COALESCE(SUM(COALESCE(costo_persona,0) * COALESCE(cantidad_persona,0)), 0)
    INTO total_eventos
    FROM exposicion_especial_evento
    WHERE id_museo = p_id_museo;

    RETURN total_eventos;
END;
$$ LANGUAGE plpgsql;

--- FUNCIONES NECESARIAS PARA LOS ROLES 

CREATE OR REPLACE FUNCTION asignacion_recorrido()
RETURNS NUMERIC AS $$
BEGIN
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION asignacion_mensual()
RETURNS NUMERIC AS $$
BEGIN
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION Generacion_ticket()
RETURNS NUMERIC AS $$
BEGIN
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION mantener_historico_trabajo()
RETURNS NUMERIC AS $$
BEGIN
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION mantener_movimiento_obra()
RETURNS NUMERIC AS $$
BEGIN
END;
$$ LANGUAGE plpgsql;


--- VISTAS

CREATE OR REPLACE VIEW UBICACION_OBRA AS
SELECT 
    h.id_cat_museo,
    h.expediente,
    h.id_coleccion,
    h.id_sala_exp,
    h.id_obra,
    h.id_est_o,
    h.id_museo,
    h.id_est_f,
    h.fecha_inicio_adquisicion,
    h.fecha_final_adquisicion,
    h.tipo,
    h.destacada,
    h.orden_recorrido_historico
FROM 
    historico_obra_mov h