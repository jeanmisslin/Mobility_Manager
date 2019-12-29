
DROP TABLE IF EXISTS asignaciones;

CREATE TABLE asignaciones(
    id_asignacion INTEGER PRIMARY KEY,
    acuerdo_academico int,
    oferta int,
    estado_solicitud text,
    FOREIGN KEY (acuerdo_academico) REFERENCES acuerdos_academicos (id_acuerdo),
    FOREIGN KEY (oferta) REFERENCES ofertas (id_oferta),
    CONSTRAINT UC_ASIGNACION UNIQUE (acuerdo_academico, oferta)
);