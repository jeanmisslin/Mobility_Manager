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
    FOREIGN KEY (titulacion) REFERENCES titulaciones (codigo_titulacion),
    CONSTRAINT UC_OFERTA UNIQUE (asignatura,periodo_academico,titulacion)
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
        '220330',
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
        '220143',
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
        '320174',
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
        '3200371',
        1,
        '320GREEIA',
        0,
        0,
        0,
        0
);