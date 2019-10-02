
DROP TABLE IF EXISTS paises;
DROP TABLE IF EXISTS universidades;
DROP TABLE IF EXISTS estudiantes;
DROP TABLE IF EXISTS ciclos;
DROP TABLE IF EXISTS titulaciones;
DROP TABLE IF EXISTS idiomas;
DROP TABLE IF EXISTS asignaturas;
DROP TABLE IF EXISTS periodos_academicos;
DROP TABLE IF EXISTS estados;
DROP TABLE IF EXISTS acuerdos_academicos;
DROP TABLE IF EXISTS ofertas;
DROP TABLE IF EXISTS asignaciones;


CREATE TABLE universidades(
    codigo TEXT PRIMARY KEY,
    universidad TEXT,
    pais TEXT
);

CREATE TABLE estudiantes(
    email TEXT PRIMARY KEY,
    apellidos TEXT,
    nombre TEXT,
    universidad TEXT,
    FOREIGN KEY (universidad) REFERENCES universidades (codigo)
);

CREATE TABLE titulaciones(
    codigo TEXT PRIMARY KEY,
    nombre_catalan TEXT,
    nombre_castellano TEXT,
    nombre_ingles TEXT,
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
    estudiante TEXT,
    titulacion TEXT,
    periodo_academico int,
    estado TEXT,
    FOREIGN KEY (estudiante) REFERENCES estudiantes (email),
    FOREIGN KEY (titulacion) REFERENCES titulaciones (codigo),
    FOREIGN KEY (periodo_academico) REFERENCES periodos_academicos (id_periodo)
);

CREATE TABLE asignaturas(
    codigo TEXT PRIMARY KEY,
    nombre_catalan TEXT,
    nombre_castellano TEXT,
    nombre_ingles TEXT,
    idioma TEXT,
    ects NUMERIC,
    plan_de_estudios_catalan TEXT,
    plan_de_estudios_castellano TEXT,
    plan_de_estudios_ingles TEXT
);

CREATE TABLE ofertas(
    id_oferta INTEGER PRIMARY KEY,
    asignatura TEXT,
    periodo_academico int,
    titulacion TEXT,
    plazas_ofertadas int,
    plazas_disponibles int,
    plazas_concedidas int,
    FOREIGN KEY (asignatura) REFERENCES asignaturas (codigo),
    FOREIGN KEY (periodo_academico) REFERENCES periodos_academicos (id_periodo),
    FOREIGN KEY (titulacion) REFERENCES titulaciones (codigo),
    CONSTRAINT UC_OFERTA UNIQUE (asignatura,periodo_academico,titulacion)
);

CREATE TABLE asignaciones(
    id_asignacion INTEGER PRIMARY KEY,
    acuerdo_academico int,
    oferta int,
    FOREIGN KEY (acuerdo_academico) REFERENCES acuerdos_academicos (id_acuerdo),
    FOREIGN KEY (oferta) REFERENCES ofertas (id_oferta)
);
