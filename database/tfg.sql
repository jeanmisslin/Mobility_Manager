
DROP TABLE IF EXISTS universidades;
DROP TABLE IF EXISTS estudiantes;
DROP TABLE IF EXISTS titulaciones;
DROP TABLE IF EXISTS asignaturas;
DROP TABLE IF EXISTS periodos_academicos;
DROP TABLE IF EXISTS acuerdos_academicos;
DROP TABLE IF EXISTS ofertas;
DROP TABLE IF EXISTS asignaciones;


CREATE TABLE universidades(
    id_universidad INTEGER PRIMARY KEY,
    codigo_universidad TEXT,
    universidad TEXT,
    pais TEXT,
    UNIQUE (codigo_universidad)
);

CREATE TABLE estudiantes(
    id_estudiante INTEGER PRIMARY KEY,
    email TEXT,
    apellidos TEXT,
    nombre TEXT,
    universidad TEXT,
    FOREIGN KEY (universidad) REFERENCES universidades (id_universidad),
    UNIQUE (email)
);

CREATE TABLE titulaciones(
    codigo_titulacion TEXT PRIMARY KEY,
    titulacion_catalan TEXT,
    titulacion_castellano TEXT,
    titulacion_ingles TEXT,
    ciclo int
);

CREATE TABLE periodos_academicos(
    id_periodo INTEGER PRIMARY KEY,
    año int,
    cuatrimestre int,
    CONSTRAINT UC_PERIODO UNIQUE (año,cuatrimestre)
);

CREATE TABLE acuerdos_academicos(
    id_acuerdo INTEGER PRIMARY KEY,
    estudiante INTEGER,
    titulacion TEXT,
    periodo_academico int,
    estado TEXT,
    FOREIGN KEY (estudiante) REFERENCES estudiantes (id_estudiante),
    FOREIGN KEY (titulacion) REFERENCES titulaciones (codigo_titulacion),
    FOREIGN KEY (periodo_academico) REFERENCES periodos_academicos (id_periodo),
    CONSTRAINT UC_ACUERDO UNIQUE (estudiante,periodo_academico)
);

CREATE TABLE asignaturas(
    id_asignatura INTEGER PRIMARY KEY,
    codigo_asignatura TEXT,
    nombre_catalan TEXT,
    nombre_castellano TEXT,
    nombre_ingles TEXT,
    idioma TEXT,
    ects NUMERIC,
    plan_de_estudios_catalan TEXT,
    plan_de_estudios_castellano TEXT,
    plan_de_estudios_ingles TEXT,
    UNIQUE (codigo_asignatura)
);

CREATE TABLE ofertas(
    id_oferta INTEGER PRIMARY KEY,
    asignatura INTEGER,
    periodo_academico int,
    titulacion TEXT,
    plazas_ofertadas int,
    plazas_disponibles int,
    plazas_concedidas int,
    plazas_solicitadas int,
    FOREIGN KEY (asignatura) REFERENCES asignaturas (id_asignatura),
    FOREIGN KEY (periodo_academico) REFERENCES periodos_academicos (id_periodo),
    CONSTRAINT UC_OFERTA UNIQUE (asignatura,periodo_academico)
);

CREATE TABLE asignaciones(
    id_asignacion INTEGER PRIMARY KEY,
    acuerdo_academico int,
    oferta int,
    estado_solicitud text,
    FOREIGN KEY (acuerdo_academico) REFERENCES acuerdos_academicos (id_acuerdo),
    FOREIGN KEY (oferta) REFERENCES ofertas (id_oferta),
    CONSTRAINT UC_ASIGNACION UNIQUE (acuerdo_academico, oferta)
);
