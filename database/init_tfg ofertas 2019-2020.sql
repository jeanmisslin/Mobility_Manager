DROP TABLE IF EXISTS ofertas;

CREATE TABLE ofertas
(
    id_oferta INTEGER PRIMARY KEY,
    asignatura TEXT,
    periodo_academico int,
    titulacion TEXT,
    plazas_ofertadas int,
    plazas_disponibles int,
    plazas_concedidas int,
    plazas_solicitadas int,
    FOREIGN KEY (asignatura) REFERENCES asignaturas (codigo_asignatura),
    FOREIGN KEY (periodo_academico) REFERENCES periodos_academicos (id_periodo),
    CONSTRAINT UC_OFERTA UNIQUE (asignatura,periodo_academico)
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205001',
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
        '205002',
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
        '205015',
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
        '205016',
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
        '205017',
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
        '205050',
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
        '205051',
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
        '205052',
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
        '205053',
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
        '205054',
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
        '205055',
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
        '205055',
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
        '205056',
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
        '205057',
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
        '205058',
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
        '205059',
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
        '205060',
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
        '205061',
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
        '205062',
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
        '205063',
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
        '205064',
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
        '205065',
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
        '205066',
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
        '205068',
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
        '205069',
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
        '205070',
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
        '205071',
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
        '205077',
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
        '205079',
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
        '205079',
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
        '205086',
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
        '205104',
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
        '205105',
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
        '205106',
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
        '205107',
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
        '205108',
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
        '205109',
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
        '205110',
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
        '205111',
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
        '205112',
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
        '205113',
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
        '205114',
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
        '205115',
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
        '205116',
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
        '205200',
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
        '205201',
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
        '205202',
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
        '205203',
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
        '205204',
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
        '205205',
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
        '205207',
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
        '205208',
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
        '205214',
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
        '205215',
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
        '205219',
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
        '205219',
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
        '205220',
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
        '205220',
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
        '205250',
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
        '205251',
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
        '205252',
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
        '205253',
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
        '205300',
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
        '205354',
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
        '220001',
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
        '220001',
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
        '220002',
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
        '220002',
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
        '220003',
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
        '220003',
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
        '220004',
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
        '220004',
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
        '220005',
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
        '220005',
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
        '220006',
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
        '220006',
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
        '220007',
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
        '220007',
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
        '220008',
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
        '220008',
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
        '220009',
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
        '220009',
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
        '220010',
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
        '220010',
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
        '220011',
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
        '220011',
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
        '220012',
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
        '220012',
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
        '220013',
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
        '220013',
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
        '220014',
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
        '220014',
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
        '220015',
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
        '220015',
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
        '220016',
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
        '220016',
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
        '220017',
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
        '220017',
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
        '220018',
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
        '220018',
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
        '220019',
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
        '220019',
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
        '220020',
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
        '220020',
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
        '220021',
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
        '220021',
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
        '220022',
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
        '220022',
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
        '220023',
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
        '220023',
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
        '220024',
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
        '220024',
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
        '220025',
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
        '220025',
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
        '220026',
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
        '220026',
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
        '220027',
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
        '220027',
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
        '220028',
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
        '220028',
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
        '220029',
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
        '220030',
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
        '220030',
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
        '220031',
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
        '220031',
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
        '220032',
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
        '220032',
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
        '220033',
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
        '220033',
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
        '220034',
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
        '220034',
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
        '220036',
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
        '220037',
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
        '220038',
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
        '220039',
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
        '220040',
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
        '220043',
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
        '220043',
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
        '220044',
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
        '220045',
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
        '220047',
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
        '220051',
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
        '220052',
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
        '220052',
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
        '220053',
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
        '220054',
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
        '220054',
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
        '220055',
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
        '220055',
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
        '220056',
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
        '220056',
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
        '220057',
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
        '220057',
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
        '220059',
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
        '220060',
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
        '220061',
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
        '220062',
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
        '220063',
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
        '220065',
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
        '220066',
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
        '220067',
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
        '220069',
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
        '220070',
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
        '220071',
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
        '220072',
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
        '220073',
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
        '220074',
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
        '220080',
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
        '220080',
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
        '220081',
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
        '220081',
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
        '220082',
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
        '220082',
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
        '220083',
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
        '220083',
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
        '220084',
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
        '220084',
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
        '220085',
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
        '220085',
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
        '220086',
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
        '220086',
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
        '220087',
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
        '220087',
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
        '220088',
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
        '220088',
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
        '220089',
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
        '220089',
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
        '220090',
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
        '220090',
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
        '220091',
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
        '220091',
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
        '220092',
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
        '220092',
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
        '220093',
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
        '220094',
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
        '220095',
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
        '220096',
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
        '220097',
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
        '220098',
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
        '220099',
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
        '220100',
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
        '220101',
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
        '220102',
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
        '220103',
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
        '220104',
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
        '220105',
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
        '220106',
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
        '220107',
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
        '220108',
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
        '220109',
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
        '220110',
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
        '220111',
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
        '220112',
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
        '220113',
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
        '220114',
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
        '220115',
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
        '220116',
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
        '220117',
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
        '220126',
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
        '220128',
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
        '220129',
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
        '220130',
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
        '220131',
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
        '220134',
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
        '220135',
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
        '220142',
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
        '220146',
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
        '220203',
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
        '220204',
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
        '220206',
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
        '220207',
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
        '220208',
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
        '220209',
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
        '220211',
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
        '220212',
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
        '220213',
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
        '220214',
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
        '220215',
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
        '220216',
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
        '220230',
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
        '220236',
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
        '220252',
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
        '220253',
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
        '220261',
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
        '220262',
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
        '220263',
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
        '220270',
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
        '220272',
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
        '220273',
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
        '220274',
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
        '220280',
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
        '220281',
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
        '220282',
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
        '220283',
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
        '220301',
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
        '220302',
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
        '220303',
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
        '220304',
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
        '220305',
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
        '220306',
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
        '220308',
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
        '220310',
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
        '220311',
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
        '220321',
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
        '220322',
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
        '220323',
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
        '220324',
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
        '220325',
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
        '220330',
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
        '220331',
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
        '220332',
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
        '220333',
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
        '220334',
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
        '220340',
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
        '220341',
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
        '220342',
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
        '220343',
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
        '220344',
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
        '220350',
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
        '220351',
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
        '220352',
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
        '220353',
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
        '220550',
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
        '220551',
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
        '220552',
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
        '220553',
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
        '220554',
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
        '220555',
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
        '220558',
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
        '220559',
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
        '220560',
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
        '220561',
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
        '220562',
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
        '220563',
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
        '220564',
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
        '220565',
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
        '220566',
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
        '220601',
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
        '220604',
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
        '220605',
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
        '220621',
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
        '220625',
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
        '220658',
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
        '220659',
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
        '220660',
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
        '220661',
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
        '220662',
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
        '220669',
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
        '220683',
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
        '220685',
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
        '3200011',
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
        '3200012',
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
        '320002',
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
        '3200031',
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
        '3200032',
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
        '320004',
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
        '320005',
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
        '320006',
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
        '320007',
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
        '320008',
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
        '320009',
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
        '320010',
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
        '320011',
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
        '320012',
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
        '320013',
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
        '320017',
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
        '320018',
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
        '320020',
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
        '3200211',
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
        '320022',
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
        '320023',
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
        '320024',
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
        '320027',
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
        '320029',
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
        '320030',
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
        '3200331',
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
        '320035',
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
        '320036',
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
        '3200371',
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
        '320038',
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
        '320041',
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
        '320044',
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
        '320049',
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
        '3200501',
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
        '3200511',
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
        '320052',
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
        '320053',
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
        '320056',
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
        '320059',
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
        '320060',
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
        '320063',
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
        '320064',
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
        '320065',
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
        '3200661',
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
        '3200671',
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
        '320070',
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
        '320072',
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
        '320077',
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
        '320078',
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
        '320079',
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
        '320080',
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
        '320081',
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
        '320086',
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
        '320092',
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
        '320093',
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
        '320094',
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
        '320095',
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
        '3200961',
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
        '320101',
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
        '320102',
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
        '320103',
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
        '320105',
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
        '320106',
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
        '320111',
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
        '320113',
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
        '320114',
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
        '320115',
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
        '320117',
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
        '320121',
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
        '320123',
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
        '320124',
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
        '320125',
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
        '320129',
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
        '320134',
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
        '320135',
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
        '320140',
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
        '320141',
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
        '320142',
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
        '320143',
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
        '320144',
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
        '320151',
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
        '320152',
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
        '320154',
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
        '320157',
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
        '320159',
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
        '320162',
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
        '320163',
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
        '320164',
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
        '320166',
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
        '320168',
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
        '320171',
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
        '320179',
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
        '320180',
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
        '320182',
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
        '320183',
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
        '320192',
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
        '320194',
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
        '320505',
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
        '320506',
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
        '320507',
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
        '320516',
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
        '320524',
        1,
        '205METEXPA',
        4,
        4,
        0,
        0
);