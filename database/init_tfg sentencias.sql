
DROP TABLE IF EXISTS estudiantes;

CREATE TABLE estudiantes(
    id_estudiante INTEGER PRIMARY KEY,
    email TEXT,
    apellidos TEXT,
    nombre TEXT,
    universidad TEXT,
    FOREIGN KEY (universidad) REFERENCES universidades (id_universidad)
);

DROP TABLE IF EXISTS acuerdos_academicos;

CREATE TABLE acuerdos_academicos(
    id_acuerdo INTEGER PRIMARY KEY,
    estudiante INTEGER,
    titulacion TEXT,
    periodo_academico int,
    estado TEXT,
    FOREIGN KEY (estudiante) REFERENCES estudiantes (id_estudiante),
    FOREIGN KEY (titulacion) REFERENCES titulaciones (codigo_titulacion),
    FOREIGN KEY (periodo_academico) REFERENCES periodos_academicos (id_periodo)
);