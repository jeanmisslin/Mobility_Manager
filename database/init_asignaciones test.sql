
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

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    7,
    'denegada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    10,
    'denegada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    11,
    'eliminada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    12,
    'descartada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    13,
    'denegada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    16,
    'eliminada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    19,
    'eliminada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    24,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    34,
    'descartada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    37,
    'eliminada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    38,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    41,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    43,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    53,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    54,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    55,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    57,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    58,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    59,
    'descartada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    63,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    5,
    'descartada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    25,
    'descartada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    66,
    'denegada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    76,
    'descartada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    77,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    79,
    'descartada'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    81,
    'concedida'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    61,
    'concedida'
);

