
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
    'D'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    10,
    'D'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    11,
    'EDM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    12,
    'EAM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    13,
    'D'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    16,
    'EDM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    19,
    'EDM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    24,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    34,
    'EAM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    37,
    'EDM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    38,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    41,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    43,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    53,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    1,
    54,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    55,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    57,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    58,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    59,
    'EAM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    63,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    5,
    'EAM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    25,
    'EAM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    2,
    66,
    'D'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    76,
    'EAM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    77,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    79,
    'EAM'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    81,
    'C'
);

INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud) VALUES( 
    3,
    61,
    'C'
);

