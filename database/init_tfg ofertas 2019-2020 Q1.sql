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
        '320181',
        1,
        '320GREQUIM,320GRETDT',
        0,
        0,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320165',
        1,
        '220GRETIND,220GRETAER,220GREVAER,320GREQUIM,320GRETDT',
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