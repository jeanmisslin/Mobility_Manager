
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