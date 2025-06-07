/* CREATE TYPE tipo_lugar AS ENUM ('P', 'E', 'C');
CREATE TYPE continente_t AS ENUM ('AM', 'AF', 'AS', 'EU', 'OC');
CREATE TYPE genero_t AS ENUM ('M', 'F'); */

CREATE TABLE LUGAR (
    id_lugar NUMERIC(4) PRIMARY KEY,
    nombre VARCHAR(15) NOT NULL,
    tipo VARCHAR(3) NOT NULL,
    continente VARCHAR(2),
    id_padre INT,
	CONSTRAINT fk_padre FOREIGN KEY (id_padre) REFERENCES LUGAR(id_lugar),
    CONSTRAINT tipo_lugar CHECK (tipo IN ('P','CIU','EST')),
    CONSTRAINT continente_lugar CHECK (continente IN ('AM','AF','AS','EU','OC'))
);

CREATE TABLE IDIOMA (
    id_idioma NUMERIC(4) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE EMPLEADO_PROFESIONAL(
    expediente NUMERIC(4) PRIMARY KEY,
    primer_nombre VARCHAR(20) NOT NULL,
    segundo_nombre VARCHAR(20),
    primer_apellido VARCHAR(20) NOT NULL,
    segundo_apellido VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero CHAR(1) CHECK (genero IN ('M', 'F')),
    telefono VARCHAR(15),
    doc_identidad VARCHAR(20) NOT NULL
);

CREATE TABLE FORMACION_PROFESIONAL(
    id_formacion NUMERIC(4) NOT NULL,
    expediente NUMERIC(4) NOT NULL,
	titulo_obtenido VARCHAR(20) NOT NULL,
	anio DATE NOT NULL,
	descripcion_esp VARCHAR(100) NOT NULL,
	CONSTRAINT FK_empleado FOREIGN KEY (expediente) REFERENCES EMPLEADO_PROFESIONAL(expediente),
	CONSTRAINT PK_formacion PRIMARY KEY (expediente,id_formacion)
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
    tipo VARCHAR(30) NOT NULL
);

CREATE TABLE MUSEO ( 
    id_museo NUMERIC(4) PRIMARY KEY,
    id_lugar NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    tipo VARCHAR(30) NOT NULL,
    fecha_fundacion DATE NOT NULL,
    mision VARCHAR(999),
    CONSTRAINT FK_lugar FOREIGN KEY (id_lugar) REFERENCES LUGAR(id_lugar)
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
    resumen_caracteristicas_arte VARCHAR(500),
    CONSTRAINT FK_lugar FOREIGN KEY (id_lugar) REFERENCES LUGAR(id_lugar)
);

CREATE TABLE HISTORICO_MUSEO (
    fecha_anio DATE NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    descp_hechos VARCHAR(500),
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
	CONSTRAINT PK_mus_hist PRIMARY KEY (id_museo,fecha_anio)
);


CREATE TABLE HORARIO (
    id_horario NUMERIC(4),
    id_museo NUMERIC(4) NOT NULL,
    hora_apertura TIME NOT NULL,
    hora_cierre TIME NOT NULL,
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_hor PRIMARY KEY (id_museo,id_horario)
); 


CREATE TABLE TICKET(
    id_ticket NUMERIC(4),
    id_museo NUMERIC(4) NOT NULL,
    fecha_emision TIME NOT NULL,
    tipo INT NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_tick PRIMARY KEY (id_museo,id_ticket)
); 

CREATE TABLE TIPO_TICKET(
    fecha_inicio DATE NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    fecha_final DATE,
    /* tipo_ticket // ponerle la ref */
    monto DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_tipotick PRIMARY KEY (id_museo,fecha_inicio)
);

CREATE TABLE ESTRUCTURA_FISICA (
    id_est_f NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipo_estructura_f VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50),
    direccion VARCHAR(50),
    id_padre_fis NUMERIC(4),
    id_padre_museo_fis INT, 
    CONSTRAINT FK_padre FOREIGN KEY (id_padre_fis, id_padre_museo_fis) REFERENCES ESTRUCTURA_FISICA(id_est_f, id_museo), 
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_est_fisc PRIMARY KEY (id_museo, id_est_f)
);

CREATE TABLE ESTRUCTURA_ORG (
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipo_estructura_o VARCHAR(30) NOT NULL,
    nivel INT NOT NULL,
    descripcion VARCHAR(500),
    id_padre_org NUMERIC(4),
    id_padre_museo_org INT,
    CONSTRAINT FK_padre FOREIGN KEY (id_padre_org, id_padre_museo_org) REFERENCES ESTRUCTURA_ORG(id_est_o, id_museo),
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT PK_mus_est_org PRIMARY KEY (id_museo, id_est_o)
);

CREATE TABLE COLECCION (
    id_coleccion NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(500) NOT NULL,
    palabra_clave VARCHAR(50) NOT NULL,
    orden_recorrido INT NOT NULL,
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
    id_coleccion NUMERIC(4)T NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    CONSTRAINT FK_sala FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT FK_coleccion FOREIGN KEY (id_coleccion, id_est_o, id_museo) REFERENCES COLECCION(id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_sal_col PRIMARY KEY (id_museo, id_sala_exp, id_coleccion, id_est_f, id_est_o, id_orden)
);

CREATE TABLE OBRA (
    id_obra NUMERIC(4) NOT NULL,
    id_coleccion NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    ano_creacion DATE NOT NULL,
    /*tipo VARCHAR(30) NOT NULL, */
    estilo_descripcion VARCHAR(500) NOT NULL,
    material_tecnica_descripcion VARCHAR(500) NOT NULL,
    dimensiones VARCHAR(50) NOT NULL,
    CONSTRAINT FK_coleccion FOREIGN KEY (id_coleccion, id_est_o, id_museo) REFERENCES COLECCION(id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_obra PRIMARY KEY (id_museo, id_obra, id_coleccion, id_est_o)
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
    id_historico_cierre NUMERIC(4) NOT NULL,
    id_sala_exp NUMERIC(4) NOT NULL,
    id_est_f NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    nombre VARCHAR(50),
    descripcion VARCHAR(500),
    CONSTRAINT FK_sala FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT PK_mus_historico_cierre PRIMARY KEY (id_museo, id_sala_exp, id_est_f, id_historico_cierre)
);

CREATE TABLE ASIGNACION_MENSUAL(
    mes_anio DATE NOT NULL,
    id_empleado_mant_vig NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    id_est_f NUMERIC(4) NOT NULL,
    /*turno*/
    CONSTRAINT FK_empleado_mant_vig FOREIGN KEY (id_empleado_mant_vig) REFERENCES EMPLEADO_MANT_VIG(id_empleado_mant_vig),
    CONSTRAINT FK_est_f FOREIGN KEY (id_museo,id_est_f) REFERENCES ESTRUCTURA_FISICA(id_museo,id_est_f),
    CONSTRAINT PK_mus_asignacion_mensual PRIMARY KEY (id_museo, mes_anio, id_empleado_mant_vig, id_est_f)
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
    colegio_institucion VARCHAR(50),
    CONSTRAINT FK_museo FOREIGN KEY (id_museo) REFERENCES MUSEO(id_museo),
    CONSTRAINT FK_sala_exp FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT PK_mus_expo_especial_evento PRIMARY KEY (id_museo, id_exposicion_especial_evento)
);

CREATE TABLE HISTORICO_TRABAJO(
    fecha_inicio_historico DATE NOT NULL,
    fecha_final_historico DATE,
    /*cargo*/
    expediente NUMERIC(4) NOT NULL,
    id_est_o NUMERIC(4) NOT NULL,
    id_museo NUMERIC(4) NOT NULL,
    CONSTRAINT FK_empleado_pro FOREIGN KEY (expediente) REFERENCES EMPLEADO_PROFESIONAL(expediente),
    CONSTRAINT FK_est_o FOREIGN KEY (id_est_o, id_museo) REFERENCES ESTRUCTURA_ORG(id_est_o, id_museo),
    CONSTRAINT PK_mus_historico_trabajo PRIMARY KEY (id_museo, expediente, id_est_o, fecha_inicio_historico)
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
    /*tipo*/
    /*destacada*/
    orden_recorrido_historico INT NOT NULL,
    valor_monetario INT NOT NULL,
    CONSTRAINT FK_empleado_pro FOREIGN KEY (expediente) REFERENCES EMPLEADO_PROFESIONAL(expediente),
    CONSTRAINT FK_coleccion FOREIGN KEY (id_coleccion, id_est_o, id_museo) REFERENCES COLECCION(id_coleccion, id_est_o, id_museo),
    CONSTRAINT FK_obra FOREIGN KEY (id_obra, id_coleccion, id_est_o, id_museo) REFERENCES OBRA(id_obra, id_coleccion, id_est_o, id_museo),
    CONSTRAINT FK_sala_exp FOREIGN KEY (id_museo, id_sala_exp, id_est_f) REFERENCES SALA_EXP(id_museo, id_sala_exp, id_est_f),
    CONSTRAINT PK_mus_historico_obra_mov PRIMARY KEY (id_museo, id_cat_museo, id_coleccion, id_obra, id_est_o)
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
    /*tipo responsable*/
    CONSTRAINT FK_HISTORICO_OBRA_MOV FOREIGN KEY (id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo) REFERENCES HISTORICO_OBRA_MOV(id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo),
    CONSTRAINT PK_mus_mant_obra PRIMARY KEY (id_museo, id_cat_museo, id_obra, id_coleccion, id_est_o, id_mant_obra)
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
SELECT setval('idioma_id_idioma_seq', COALESCE((SELECT MAX(id_idioma) FROM idioma), 1));

-- EMPLEADO_PROFESIONAL
CREATE SEQUENCE IF NOT EXISTS empleado_profesional_expediente_seq START 1;
ALTER TABLE empleado_profesional ALTER COLUMN expediente SET DEFAULT nextval('empleado_profesional_expediente_seq');
SELECT setval('empleado_profesional_expediente_seq', COALESCE((SELECT MAX(expediente) FROM empleado_profesional), 1));

-- EMPLEADO_MANT_VIG
CREATE SEQUENCE IF NOT EXISTS empleado_mant_vig_id_empleado_mant_vig_seq START 1;
ALTER TABLE empleado_mant_vig ALTER COLUMN id_empleado_mant_vig SET DEFAULT nextval('empleado_mant_vig_id_empleado_mant_vig_seq');
SELECT setval('empleado_mant_vig_id_empleado_mant_vig_seq', COALESCE((SELECT MAX(id_empleado_mant_vig) FROM empleado_mant_vig), 1));

-- MUSEO
CREATE SEQUENCE IF NOT EXISTS museo_id_museo_seq START 1;
ALTER TABLE museo ALTER COLUMN id_museo SET DEFAULT nextval('museo_id_museo_seq');
SELECT setval('museo_id_museo_seq', COALESCE((SELECT MAX(id_museo) FROM museo), 1));

-- ARTISTA
CREATE SEQUENCE IF NOT EXISTS artista_id_artista_seq START 1;
ALTER TABLE artista ALTER COLUMN id_artista SET DEFAULT nextval('artista_id_artista_seq');
SELECT setval('artista_id_artista_seq', COALESCE((SELECT MAX(id_artista) FROM artista), 1));

-- LUGAR
CREATE SEQUENCE IF NOT EXISTS lugar_id_lugar_seq START 1;
ALTER TABLE lugar ALTER COLUMN id_lugar SET DEFAULT nextval('lugar_id_lugar_seq');
SELECT setval('lugar_id_lugar_seq', COALESCE((SELECT MAX(id_lugar) FROM lugar), 1));

-- FORMACION_PROFESIONAL (id_formacion)
CREATE SEQUENCE IF NOT EXISTS formacion_profesional_id_formacion_seq START 1;
ALTER TABLE formacion_profesional ALTER COLUMN id_formacion SET DEFAULT nextval('formacion_profesional_id_formacion_seq');
SELECT setval('formacion_profesional_id_formacion_seq', COALESCE((SELECT MAX(id_formacion) FROM formacion_profesional), 1));

-- ESTRUCTURA_FISICA (id_est_f)
CREATE SEQUENCE IF NOT EXISTS estructura_fisica_id_est_f_seq START 1;
ALTER TABLE estructura_fisica ALTER COLUMN id_est_f SET DEFAULT nextval('estructura_fisica_id_est_f_seq');
SELECT setval('estructura_fisica_id_est_f_seq', COALESCE((SELECT MAX(id_est_f) FROM estructura_fisica), 1));

-- ESTRUCTURA_ORG (id_est_o)
CREATE SEQUENCE IF NOT EXISTS estructura_org_id_est_o_seq START 1;
ALTER TABLE estructura_org ALTER COLUMN id_est_o SET DEFAULT nextval('estructura_org_id_est_o_seq');
SELECT setval('estructura_org_id_est_o_seq', COALESCE((SELECT MAX(id_est_o) FROM estructura_org), 1));

-- COLECCION (id_coleccion)
CREATE SEQUENCE IF NOT EXISTS coleccion_id_coleccion_seq START 1;
ALTER TABLE coleccion ALTER COLUMN id_coleccion SET DEFAULT nextval('coleccion_id_coleccion_seq');
SELECT setval('coleccion_id_coleccion_seq', COALESCE((SELECT MAX(id_coleccion) FROM coleccion), 1));

-- SALA_EXP (id_sala_exp)
CREATE SEQUENCE IF NOT EXISTS sala_exp_id_sala_exp_seq START 1;
ALTER TABLE sala_exp ALTER COLUMN id_sala_exp SET DEFAULT nextval('sala_exp_id_sala_exp_seq');
SELECT setval('sala_exp_id_sala_exp_seq', COALESCE((SELECT MAX(id_sala_exp) FROM sala_exp), 1));

-- OBRA (id_obra)
CREATE SEQUENCE IF NOT EXISTS obra_id_obra_seq START 1;
ALTER TABLE obra ALTER COLUMN id_obra SET DEFAULT nextval('obra_id_obra_seq');
SELECT setval('obra_id_obra_seq', COALESCE((SELECT MAX(id_obra) FROM obra), 1));

-- HISTORICO_CIERRE_TEMP (id_historico_cierre)
CREATE SEQUENCE IF NOT EXISTS historico_cierre_temp_id_historico_cierre_seq START 1;
ALTER TABLE historico_cierre_temp ALTER COLUMN id_historico_cierre SET DEFAULT nextval('historico_cierre_temp_id_historico_cierre_seq');
SELECT setval('historico_cierre_temp_id_historico_cierre_seq', COALESCE((SELECT MAX(id_historico_cierre) FROM historico_cierre_temp), 1));

-- TICKET (id_ticket)
CREATE SEQUENCE IF NOT EXISTS ticket_id_ticket_seq START 1;
ALTER TABLE ticket ALTER COLUMN id_ticket SET DEFAULT nextval('ticket_id_ticket_seq');
SELECT setval('ticket_id_ticket_seq', COALESCE((SELECT MAX(id_ticket) FROM ticket), 1));

-- HORARIO (id_horario)
CREATE SEQUENCE IF NOT EXISTS horario_id_horario_seq START 1;
ALTER TABLE horario ALTER COLUMN id_horario SET DEFAULT nextval('horario_id_horario_seq');
SELECT setval('horario_id_horario_seq', COALESCE((SELECT MAX(id_horario) FROM horario), 1));

-- EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento)
CREATE SEQUENCE IF NOT EXISTS exposicion_especial_evento_id_exposicion_especial_evento_seq START 1;
ALTER TABLE exposicion_especial_evento ALTER COLUMN id_exposicion_especial_evento SET DEFAULT nextval('exposicion_especial_evento_id_exposicion_especial_evento_seq');
SELECT setval('exposicion_especial_evento_id_exposicion_especial_evento_seq', COALESCE((SELECT MAX(id_exposicion_especial_evento) FROM exposicion_especial_evento), 1));

-- MANT_OBRA (id_mant_obra)
CREATE SEQUENCE IF NOT EXISTS mant_obra_id_mant_obra_seq START 1;
ALTER TABLE mant_obra ALTER COLUMN id_mant_obra SET DEFAULT nextval('mant_obra_id_mant_obra_seq');
SELECT setval('mant_obra_id_mant_obra_seq', COALESCE((SELECT MAX(id_mant_obra) FROM mant_obra), 1));

-- ACTIVIDAD_REALIZADA (id_actividad)
CREATE SEQUENCE IF NOT EXISTS actividad_realizada_id_actividad_seq START 1;
ALTER TABLE actividad_realizada ALTER COLUMN id_actividad SET DEFAULT nextval('actividad_realizada_id_actividad_seq');
SELECT setval('actividad_realizada_id_actividad_seq', COALESCE((SELECT MAX(id_actividad) FROM actividad_realizada), 1));

-- SAL_COL (id_orden)
CREATE SEQUENCE IF NOT EXISTS sal_col_id_orden_seq START 1;
ALTER TABLE sal_col ALTER COLUMN id_orden SET DEFAULT nextval('sal_col_id_orden_seq');
SELECT setval('sal_col_id_orden_seq', COALESCE((SELECT MAX(id_orden) FROM sal_col), 1));