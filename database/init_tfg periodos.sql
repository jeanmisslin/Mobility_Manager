
DROP TABLE IF EXISTS periodos_academicos;

CREATE TABLE periodos_academicos(
    id_periodo INTEGER PRIMARY KEY,
    año int,
    cuatrimestre int,
    CONSTRAINT UC_PERIODO UNIQUE (año,cuatrimestre)
);

INSERT INTO periodos_academicos (año, cuatrimestre) VALUES(
    2019,
    1
);

INSERT INTO periodos_academicos (año, cuatrimestre) VALUES(
    2019,
    2
);
