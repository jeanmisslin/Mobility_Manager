DROP TABLE IF EXISTS ofertas;

CREATE TABLE ofertas
(
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

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        1,
        1,
        '205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        2,
        2,
        '205MASE',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        3,
        1,
        '220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        4,
        1,
        '220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        5,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        6,
        2,
        '220MEI,205MASE,220MUAERON',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        7,
        2,
        '220MEI,205MASE,220MUAERON',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        8,
        1,
        '220MEI,220MUAERON,205MASE',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        9,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        10,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        11,
        1,
        '220MEI,220MUAERON,205MASE',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        11,
        2,
        '220MEI,220MUAERON,205MASE',
        10,
        10,
        0,
        0
);


INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        12,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        13,
        2,
        '220MEI,220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        14,
        2,
        '220MEI,205MASE,220MUAERON',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        15,
        2,
        '220MEI,205MASE,220MUAERON',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        16,
        1,
        '220MEI,220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        17,
        1,
        '220MEI,220MUAERON,205MASE',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        18,
        1,
        '220MEI,220MUAERON,205MASE',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        19,
        1,
        '220MEI,220MUAERON,205MASE',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        20,
        2,
        '220MEI,205MASE,220MUAERON',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        21,
        2,
        '220MUAERON,205MASE',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        22,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        23,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        24,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        25,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        26,
        2,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        27,
        2,
        '220MEI,205MASE,220MUAERON',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        28,
        1,
        '220MEI,220MUAERON,205MASE',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        28,
        2,
        '220MEI,205MASE,220MUAERON',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        29,
        1,
        '220MUESAI',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        30,
        1,
        '205MEM',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        31,
        1,
        '205MEM',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        32,
        2,
        '205MEM',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        33,
        2,
        '205MEM',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        34,
        1,
        '205MEM',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        35,
        1,
        '205MEM',
        9,
        9,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        36,
        1,
        '205MEM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        37,
        2,
        '205MEM',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        38,
        2,
        '205MEM',
        13,
        13,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        39,
        1,
        '205MEM',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        40,
        1,
        '205MEM',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        41,
        2,
        '205MEM',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        42,
        2,
        '205MEM',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        43,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        44,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        45,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        46,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        47,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        48,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        49,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        50,
        2,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        52,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        53,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        54,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        54,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        55,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        55,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        57,
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        58,
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        59,
        1,
        '320GREQUIM,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        60,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        61,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        62,
        1,
        '205METEXPA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        64,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        64,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        65,
        1,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        65,
        2,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        66,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        66,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        67,
        1,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        67,
        2,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        68,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        68,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        69,
        1,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        69,
        2,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        70,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        70,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        71,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        71,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        72,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        72,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        73,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        73,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        74,
        1,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        74,
        2,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        75,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        75,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        76,
        1,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        76,
        2,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        77,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        77,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        78,
        1,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        78,
        2,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        79,
        1,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        79,
        2,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        80,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        80,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        81,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        81,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        82,
        1,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        82,
        2,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        83,
        1,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        83,
        2,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        84,
        1,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        84,
        2,
        '220GRETAER,220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        85,
        1,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        85,
        2,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        86,
        1,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        86,
        2,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        87,
        1,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        87,
        2,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        88,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        88,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        89,
        1,
        '220GRETAER,220GREVAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        89,
        2,
        '220GRETAER,220GREVAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        90,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        90,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        91,
        1,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        91,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        92,
        1,
        '220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        93,
        1,
        '220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        93,
        2,
        '220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        94,
        1,
        '220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        94,
        2,
        '220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        95,
        1,
        '220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        95,
        2,
        '220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        96,
        1,
        '220GREVAER',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        96,
        2,
        '220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        97,
        1,
        '220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        97,
        2,
        '220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        98,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GREMECA,320GREDIDP',
        16,
        16,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        99,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        100,
        1,
        '220GRETIND,220GRETAER,220GREVAER',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        101,
        1,
        '320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT,220GRETAER,220GREVAER',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        102,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        9,
        9,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        103,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GREMECA',
        9,
        9,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        103,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GREMECA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        104,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        105,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        106,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        107,
        1,
        '220GRETAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        108,
        1,
        '220GRETAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        108,
        2,
        '220GRETAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        109,
        2,
        '220GRETAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        110,
        1,
        '220GRETAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        110,
        2,
        '220GRETAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        111,
        1,
        '220GRETAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        111,
        2,
        '220GRETAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        112,
        1,
        '220GRETAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        112,
        2,
        '220GRETAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        113,
        1,
        '220GRETAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        113,
        2,
        '220GRETAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        114,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GREQUIM',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        115,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        116,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        117,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        118,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        119,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        120,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        121,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        122,
        1,
        '220GRETIND,220GRETAER,220GREVAER',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        123,
        1,
        '220GRETIND,220GRETAER,220GREVAER',
        11,
        11,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        124,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        125,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GREELEC,320GREEIA',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        126,
        1,
        '220GRETIND,220GRETAER,220GREVAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        127,
        1,
        '220GRETIND,220GRETAER,220GREVAER',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        128,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        128,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        129,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        129,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        130,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        130,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        131,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        131,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        132,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        132,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        133,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        133,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        134,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        134,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        135,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        135,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        136,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        136,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        137,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        137,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        138,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        138,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        139,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        139,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        140,
        1,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        140,
        2,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        141,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        141,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        142,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        142,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        143,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        143,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        144,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        144,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        145,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        145,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        146,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        146,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        147,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        147,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        148,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        148,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        149,
        1,
        '220GRETIND',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        149,
        2,
        '220GRETIND',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        150,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        151,
        1,
        '220GRETIND',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        151,
        2,
        '220GRETIND',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        152,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        152,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        153,
        1,
        '220GRETIND',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        154,
        1,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        154,
        2,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        155,
        1,
        '220GRETIND',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        155,
        2,
        '220GRETIND',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        156,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        156,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        157,
        1,
        '220GRETIND',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        157,
        2,
        '220GRETIND',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        158,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        158,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        159,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        159,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        169,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        161,
        1,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        161,
        2,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        162,
        1,
        '220GRETIND',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        162,
        2,
        '220GRETIND',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        163,
        1,
        '220GRETIND',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        163,
        2,
        '220GRETIND',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        164,
        1,
        '220GRETIND',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        164,
        2,
        '220GRETIND',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        165,
        1,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        165,
        2,
        '220GRETIND',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        166,
        2,
        '220GRETIND',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        167,
        2,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        170,
        2,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        171,
        2,
        '220GRETIND',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        172,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        173,
        1,
        '220GRETIND,220GRETAER,220GREVAER',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        174,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        175,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        176,
        1,
        '220GRETIND,220GRETAER,220GREVAER',
        14,
        14,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        177,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GREQUIM',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        178,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        178,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        179,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        180,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GREMECA,320GREDIDP',
        14,
        14,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        181,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        11,
        11,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        181,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        182,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GRETDT',
        11,
        11,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        183,
        2,
        '220GRETIND,220GRETAER,220GREVAER',
        14,
        14,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        184,
        2,
        '220GRETAER,220GREVAER',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        185,
        2,
        '220GRETIND',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        186,
        2,
        '220GRETAER,220GREVAER',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        187,
        2,
        '220GRETIND',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        188,
        2,
        '220GRETAER,220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        189,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        190,
        2,
        '220GRETAER,220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        191,
        2,
        '220GRETAER,220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        192,
        2,
        '220GRETAER,220GREVAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        193,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        194,
        2,
        '220GRETAER,220GREVAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        195,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        195,
        2,
        '220MEI',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        196,
        1,
        '220MEI',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        196,
        2,
        '220MEI',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        197,
        2,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        198,
        1,
        '220MEI',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        198,
        2,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        199,
        1,
        '220MEI',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        199,
        2,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        200,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        200,
        2,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        201,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        201,
        2,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        203,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        204,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        204,
        2,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        205,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        205,
        2,
        '220MEI',
        6,
        6,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        206,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        207,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        208,
        1,
        '220MEI',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        208,
        2,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        209,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        210,
        2,
        '220MEI,220MUAERON',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        211,
        2,
        '220MEI,205MASE,220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        212,
        2,
        '220MEI,205MASE,220MUAERON',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        213,
        2,
        '220MEI,205MASE,220MUAERON',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        214,
        2,
        '220MEI,205MASE,220MUAERON',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        215,
        2,
        '220MEI,205MASE,220MUAERON',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        216,
        2,
        '220MEI,205MASE,220MUAERON',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        217,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        218,
        1,
        '220MEI',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        223,
        1,
        '220MEI',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        224,
        2,
        '220MEI,205MASE,220MUAERON',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        225,
        2,
        '220MEI,205MASE,220MUAERON',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        231,
        2,
        '220MEI,205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        234,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        235,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        239,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        240,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        241,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        242,
        1,
        '220MEI',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        244,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        245,
        1,
        '220MEI',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        246,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        247,
        1,
        '220MEI',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        248,
        1,
        '220MEI',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        249,
        1,
        '220MEI',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        250,
        1,
        '220MEI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        254,
        1,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        255,
        1,
        '220MUAERON',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        255,
        2,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        256,
        1,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        257,
        1,
        '220MUAERON',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        258,
        1,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        258,
        2,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        259,
        1,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        259,
        2,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        261,
        1,
        '220MUAERON',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        261,
        2,
        '220MUAERON',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        262,
        2,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        263,
        1,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        263,
        2,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        264,
        1,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        264,
        2,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        265,
        2,
        '205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        266,
        2,
        '205MASE,220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        267,
        2,
        '205MASE,220MUAERON',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        268,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        269,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        270,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        271,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        272,
        1,
        '220MUAERON,205MASE',
        9,
        9,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        273,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        274,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        275,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        276,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        277,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        278,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        279,
        1,
        '220MUAERON,205MASE',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        280,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        281,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        282,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        283,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        284,
        1,
        '220MUAERON,205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        285,
        1,
        '220MUAERON,205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        286,
        2,
        '220MUAERON',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        287,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        287,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        288,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        288,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        289,
        1,
        '220MEORSEM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        289,
        2,
        '220MEORSEM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        290,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        290,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        291,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        291,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        292,
        1,
        '220MEORSEM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        292,
        2,
        '220MEORSEM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        295,
        1,
        '220MEORSEM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        295,
        2,
        '220MEORSEM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        296,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        296,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        297,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        297,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        298,
        1,
        '220MEORSEM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        298,
        2,
        '220MEORSEM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        299,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        299,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        300,
        1,
        '220MEORSEM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        300,
        2,
        '220MEORSEM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        301,
        1,
        '220MEORSEM',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        301,
        2,
        '220MEORSEM',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        302,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        302,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        303,
        1,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        303,
        2,
        '220MEORSEM',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        304,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        305,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        306,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        307,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        311,
        1,
        '220MUESAI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        314,
        1,
        '220MUESAI',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        315,
        1,
        '220MUESAI',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        322,
        2,
        '220MUESAI',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        323,
        2,
        '220MUESAI',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        327,
        1,
        '220MUESAI',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        330,
        1,
        '220MUESAI',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        332,
        1,
        '220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        333,
        1,
        '220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        334,
        1,
        '220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        335,
        1,
        '220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        336,
        1,
        '220MUAERON',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        337,
        1,
        '220MEORSEM',
        11,
        11,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        338,
        2,
        '220MEORSEM',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        339,
        2,
        '220MEORSEM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        340,
        2,
        '220MEORSEM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        341,
        2,
        '220MEORSEM',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        342,
        1,
        '220MUAERON',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        342,
        2,
        '220MEORSEM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        343,
        1,
        '220MUAERON',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        344,
        2,
        '220MEORSEM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        502,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        502,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        503,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        503,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        345,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        345,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        504,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        504,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        505,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        505,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        346,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        346,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        347,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        347,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        348,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        348,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        349,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        349,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        350,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        351,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        351,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        352,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        353,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        354,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        355,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        355,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        356,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        357,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        358,
        2,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        359,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        360,
        1,
        '320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        361,
        2,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        362,
        1,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        506,
        1,
        '320GREELEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        507,
        2,
        '320GREELEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        363,
        1,
        '320GREELEC',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        364,
        1,
        '320GREELEC',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        365,
        1,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        366,
        2,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        367,
        2,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        368,
        1,
        '320GREELEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        369,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        369,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        370,
        1,
        '320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        371,
        2,
        '320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        508,
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        509,
        2,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        372,
        2,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        373,
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        374,
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        510,
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        511,
        2,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        375,
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        376,
        2,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        377,
        2,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        378,
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        379,
        2,
        '320GREEIA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        380,
        2,
        '320GREEIA',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        381,
        1,
        '320GREEIA',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        382,
        2,
        '320GREEIA',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        383,
        2,
        '320GREEIA',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        384,
        2,
        '320GREMEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        385,
        1,
        '320GREMECA',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        512,
        1,
        '320GREMECA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        513,
        2,
        '320GREMEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        514,
        1,
        '320GREMECA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        515,
        2,
        '320GREMEC',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        386,
        1,
        '320GREMECA',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        387,
        1,
        '320GREMECA',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        388,
        2,
        '320GREMEC',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        389,
        2,
        '320GREMEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        390,
        1,
        '320GREMECA',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        391,
        2,
        '320GREMEC,320GREQUIM',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        392,
        2,
        '320GREMEC,320GREQUIM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        393,
        1,
        '320GREMECA,320GREQUIM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        394,
        1,
        '320GREMECA,320GREQUIM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        395,
        2,
        '320GREQUIM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        396,
        1,
        '320GREQUIM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        397,
        1,
        '320GREQUIM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        398,
        1,
        '320GREQUIM',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        516,
        1,
        '320GREQUIM',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        517,
        2,
        '320GREQUIM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        518,
        1,
        '320GREQUIM',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        519,
        2,
        '320GREQUIM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        399,
        2,
        '320GREQUIM',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        400,
        2,
        '320GREQUIM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        401,
        1,
        '320GREQUIM',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        402,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GREQUIM',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        403,
        1,
        '320GREQUIM,320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        404,
        2,
        '320GREQUIM,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        405,
        2,
        '320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        406,
        1,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        407,
        1,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        408,
        1,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        409,
        1,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        410,
        1,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        411,
        2,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        412,
        2,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        413,
        2,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        414,
        2,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        415,
        1,
        '320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        416,
        1,
        '320GRESAUD',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        417,
        1,
        '320GRESAUD',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        418,
        1,
        '320GRESAUD',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        419,
        1,
        '320GRESAUD',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        520,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        521,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        420,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        421,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        422,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        423,
        1,
        '320GRESAUD',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        424,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        425,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        426,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        427,
        1,
        '320GRESAUD',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        428,
        1,
        '320GRESAUD',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        429,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        430,
        2,
        '320GRESAUD',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        431,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        432,
        2,
        '320GRESAUD',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        433,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        434,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        435,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        436,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        437,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        438,
        2,
        '320GRESAUD',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        439,
        1,
        '320GRESAUD',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        440,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        441,
        2,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        442,
        2,
        '320GRESAUD',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        443,
        1,
        '320GRESAUD',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        444,
        1,
        '320GRESAUD',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        445,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        446,
        1,
        '320GRESAUD',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        447,
        2,
        '320GRESAUD',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        448,
        2,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        449,
        1,
        '320GREEIA',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        450,
        2,
        '320GREMEC,320GREQUIM',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        451,
        2,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        452,
        1,
        '320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        453,
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        454,
        2,
        '320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        455,
        2,
        '320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        456,
        2,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        457,
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        458,
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        459,
        1,
        '320GREDIDP',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        460,
        1,
        '320GREDIDP',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        461,
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        462,
        2,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        463,
        2,
        '320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        464,
        2,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA,320GRETDT',
        7,
        7,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        465,
        2,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        466,
        2,
        '320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        467,
        1,
        '320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        468,
        1,
        '320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        469,
        2,
        '320GRESAUD,320GREQUIM,320GREELEC,320GREDIDP,320GREEIA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        470,
        1,
        '320GREDIDP',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        471,
        2,
        '320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        472,
        1,
        '320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        473,
        2,
        '320GREDIDP',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        474,
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        475,
        1,
        '320GREELEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        476,
        1,
        '320GREELEC',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        477,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        479,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        480,
        2,
        '320GREDIDP',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        481,
        1,
        '320GREELEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        482,
        2,
        '320GREELEC',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        483,
        2,
        '320GREELEC',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        484,
        1,
        '320GREELEC',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        485,
        2,
        '320GREELEC',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        486,
        2,
        '320GREEIA',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        487,
        2,
        '320GREMECA,320GREQUIM',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        488,
        2,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        489,
        2,
        '320GRESAUD',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        490,
        1,
        '320GREMECA,320GREQUIM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        491,
        1,
        '320GREMECA,320GREQUIM,320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        493,
        1,
        '320GREEIA',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        494,
        1,
        '320GREEIA',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        495,
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GRESAUD,320GREMECA,320GREQUIM,320GREELEC,320GREEIA,320GRETDT,320GREDIDP',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        496,
        1,
        '320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        497,
        1,
        '205METEXPA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        498,
        1,
        '205METEXPA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        499,
        1,
        '205METEXPA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        500,
        1,
        '205METEXPA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        501,
        1,
        '205METEXPA',
        4,
        4,
        0,
        0
);