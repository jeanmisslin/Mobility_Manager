
DROP TABLE IF EXISTS asignaturas;
DROP TABLE IF EXISTS ofertas;

CREATE TABLE asignaturas
(
    codigo_asignatura TEXT PRIMARY KEY,
    nombre_catalan TEXT,
    nombre_castellano TEXT,
    nombre_ingles TEXT,
    idioma TEXT,
    ects NUMERIC,
    plan_de_estudios_catalan TEXT,
    plan_de_estudios_castellano TEXT,
    plan_de_estudios_ingles TEXT
);

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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220322',
        "Gestió d'Empreses Aeronàutiques",
        'Gestión de Empresas Aeronáuticas',
        'Business Management Aeronautics',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220322',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220322',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220322'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220322',
        1,
        '220MUAERON',
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
        '205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220331',
        'Materials Compostos',
        'Materiales Compuestos',
        'Composite Materials',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220331',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220331',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220331'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220331',
        1,
        '220MUAERON',
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
        '205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220353',
        "Arquitectura i Sistemes d'Aeronaus",
        'Arquitectura y Sistemas de Aeronaves',
        'Architecture and Aircraft Systems',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220353',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220353',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220353'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220353',
        1,
        '220MUAERON',
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
        '205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205001',
        "Mètodes Computacionals en l'Enginyeria Aeroespacial",
        'Métodos Computacionales en la Ingeniería Aeroespacial',
        'Computational Engineering',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205001',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205001',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205001'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220332',
        'Astrodinàmica',
        'Astrodinámica',
        'Astrodynamics',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220332',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220332',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220332'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220332',
        1,
        '220MUAERON',
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
        '205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220625',
        'Microxarxes',
        'Microredes',
        'Microgrids',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220625',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220625',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220625'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220669',
        "Anglès Aplicat a la Gestió d'Empreses",
        'Inglés Aplicado a la Gestión de Empresas',
        'English for Management',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220669',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220669',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220669'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220683',
        'Eines de Recerca',
        'Herramientas de Investigación',
        'Research Tools',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220683',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220683',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220683'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205055',
        'Gestió de Projectes: Acords Claus i Ofertes',
        'Gestión de Proyectos: Acuerdos Clave y Ofertas',
        'Project Management Key Agreements & Deals',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205055',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205055',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205055'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205055',
        1,
        '220MEI',
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
        1,
        '220MUAERON',
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
        1,
        '205MASE',
        10,
        10,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220070',
        "Materials d'Enginyeria: Aprendre dels Desastres",
        'Materiales de Ingeniería: Aprender de los Desastres',
        'Materials Engineering: Learning From Disasters',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220070',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220070',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220070'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220070',
        1,
        '220GRETIND',
        11,
        11,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220070',
        1,
        '220GRETAER',
        11,
        11,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220070',
        1,
        '220GREVAER',
        11,
        11,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220072',
        'Sistemes Avançats de Control',
        'Sistemas Avanzados de Control',
        'Advanced Control Systems',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220072',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220072',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220072'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220072',
        1,
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
        '220072',
        1,
        '220GRETAER',
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
        '220GREVAER',
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
        '320GREELEC',
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
        '320GREEIA',
        10,
        10,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220142',
        'Uav Investigació i Desenvolupament',
        'Uav Investigación y Desarrollo',
        'Uav Research & Development',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220142',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220142',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220142'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220142',
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
        '220142',
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
        '220142',
        1,
        '220GREVAER',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220142',
        1,
        '320GRESAUD',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220142',
        1,
        '320GREMECA',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220142',
        1,
        '320GREQUIM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220142',
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
        '220142',
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
        '220142',
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
        '220142',
        1,
        '320GRETDT',
        5,
        5,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220038',
        "Disseny d'Aerogeneradors",
        'Diseño de Aerogeneradores',
        'Wind Turbines Design',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220038',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220038',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220038'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220038',
        1,
        '220GRETIND',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220038',
        1,
        '220GRETAER',
        12,
        12,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220038',
        1,
        '220GREVAER',
        12,
        12,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205086',
        'Smart grids and data analytics',
        'Smart grids and data analytics',
        'Smart grids and data analytics',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205086',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205086',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205086'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205052',
        "Disseny i Comportament d'Estructures Especials",
        'Diseño y Comportamiento de Estructuras Especiales',
        'Design and Behavior of Special Structures',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205052'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205052',
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
        '205052',
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
        '205052',
        1,
        '205MASE',
        5,
        5,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220333',
        'Disseny de Vehicles Espacials',
        'Diseño de Vehículos Espaciales',
        'Spacecraft Design',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220333',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220333',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220333'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220333',
        1,
        '220MUAERON',
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
        '205MASE',
        8,
        8,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220146',
        "UAV Projecte d'Investigació i Desenvolupament",
        'UAV Proyecto de Investigación y Desarrollo',
        'UAV Research & Development Project',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220146',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220146',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220146'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220146',
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
        '220146',
        1,
        '220GRETAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220146',
        1,
        '220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220146',
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
        '220146',
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
        '220146',
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
        '220146',
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
        '220146',
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
        '220146',
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
        '220146',
        1,
        '320GRETDT',
        1,
        1,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205114',
        'Gestió del Mediambient, la Seguretat i Salud Laboral i la Qualitat',
        'Gestión del Medioambiente, la Seguridad y Salud Laboral y la Calida',
        'Environment, Health and Safety, and Quality Management',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205114',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205114',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205114'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220330',
        'Aerodinàmica Hipersònica',
        'Aerodinámica Hipersónica',
        'Hypersonic Aerodynamics',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220330',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220330',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220330'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220023',
        'Circuits Electrònics',
        'Circuitos Electrónicos',
        'Electronic Circuits',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220023',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220023',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220023'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220023',
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
        '220023',
        1,
        '220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220032',
        "Disseny d'Avions",
        'Diseño de Aviones',
        'Aeroplane Design',
        'CAT/CAST',
        4.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220032',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220032',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220032'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220057',
        'Enginyeria Espacial',
        'Ingeniería Espacial',
        'Space Engineering',
        'CAST/ING',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220057',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220057',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220057'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220028',
        'Projectes',
        'Proyectos',
        'Projects',
        'ING',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220028',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220028',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220028'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220028',
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
        '220028',
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
        '220028',
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
        '220028',
        2,
        '220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220352',
        'Aerodinàmica Avançada',
        'Aerodinámica Avanzada',
        'Advanced Aerodynamics',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220352',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220352',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220352'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220352',
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
        '220352',
        1,
        '205MASE',
        0,
        0,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205202',
        'Sistemes de Producció Altament Automatitzats',
        'Sistemas de Producción Altamente Automatizados',
        'Highly Automated Production Systems',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205202',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205202',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205202'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205202',
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
        '205202',
        1,
        '220GRETAER',
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
        '220GREVAER',
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
        '320GRESAUD',
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
        '320GREMECA',
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
        '320GREQUIM',
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
        '320GREELEC',
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
        '320GREDIDP',
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
        '320GREEIA',
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
        '320GRETDT',
        7,
        7,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220053',
        'Aviònica',
        'Aviónica',
        'Avionics',
        'CAT/CAST',
        4.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220053',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220053',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220053'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220052',
        'Propulsió',
        'Propulsión',
        'Propulsion',
        'CAT/CAST/ING',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220052'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220027',
        'Mecànica de Vol',
        'Mecánica de Vuelo',
        'Flight Mechanics',
        'CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220027',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220027',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220027'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220027',
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
        '220GREVAER',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220143',
        'Uav Hardware i Programació',
        'Uav Hardware y Programación',
        'Uav Hardware & Programming',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220143',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220143',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220143'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220143',
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
        '220143',
        2,
        '220GREVAER',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320174',
        'CAD Mecànic',
        'CAD Mecánico',
        'Mechanical CAD',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320174',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320174',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320174'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320174',
        2,
        '320GREMECA',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320174',
        2,
        '320GREQUIM',
        3,
        3,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220039',
        'Disseny Experimental',
        'Diseño Experimental',
        'Experimental Design',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220039',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220039',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220039'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '320GRESAUD',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '320GREMECA',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '320GREQUIM',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '320GREELEC',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '320GREDIDP',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '320GREEIA',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '320GRETDT',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '220GRETAER',
        10,
        10,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '220039',
        1,
        '220GREVAER',
        10,
        10,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320004',
        "Expressió Gràfica a l'Enginyeria",
        'Expresión Gráfica en la Ingeniería',
        'Graphic Expression in Engineering',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320004',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320004',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320004'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320004',
        1,
        '320GREMECA',
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
        '320GREQUIM',
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
        '320GREELEC',
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
        '320004',
        1,
        '320GREEIA',
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
        '320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320005',
        'Química',
        'Química',
        'Chemistry',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320005',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320005',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320005'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320005',
        1,
        '320GREMECA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320005',
        1,
        '320GREQUIM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320005',
        1,
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
        '320005',
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
        '320005',
        1,
        '320GREEIA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320005',
        1,
        '320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320006',
        'Tecnologies Ambientals i Sostenibilitat',
        'Tecnologías Ambientales y Sostenibilidad',
        'Environmental Technologies and Sustainability',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320006',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320006',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320006'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320006',
        1,
        '320GREMECA',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320006',
        1,
        '320GREQUIM',
        5,
        5,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320006',
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
        '320006',
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
        '320006',
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
        '320006',
        1,
        '320GRETDT',
        5,
        5,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320008',
        'Mètodes Matemàtics III',
        'Métodos Matemáticos III',
        'Mathematical Methods III',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320008',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320008',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320008'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320008',
        1,
        '320GREMECA',
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
        '320008',
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
        '320008',
        1,
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
        '320008',
        1,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320010',
        'Sistemes Mecànics',
        'Sistemas Mecánicos',
        'Mechanical Systems',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320010',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320010',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320010'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320010',
        1,
        '320GREMECA',
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
        '320010',
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
        '320010',
        1,
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
        '320010',
        1,
        '320GRETDT',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320011',
        'Sistemes Elèctrics',
        'Sistemas Eléctricos',
        'Electric Systems',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320011'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320011',
        1,
        '320GREMECA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320011',
        1,
        '320GREQUIM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320011',
        1,
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
        '320011',
        1,
        '320GREEIA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320011',
        1,
        '320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320012',
        'Mecànica de Fluids',
        'Mecánica de Fluidos',
        'Fluid Mechanics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320012',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320012',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320012'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320012',
        1,
        '320GREMECA',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320012',
        1,
        '320GREQUIM',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320012',
        1,
        '320GREELEC',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320012',
        1,
        '320GREEIA',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320012',
        1,
        '320GRETDT',
        3,
        3,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320013',
        'Probabilitat i Estadística',
        'Probabilidad y Estadística',
        'Probability and Statistics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320013',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320013',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320013'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320013',
        1,
        '320GREMECA',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320013',
        1,
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
        '320013',
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
        '320013',
        1,
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
        '320013',
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
        '320013',
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320017',
        'Organització de la Producció',
        'Organización de la Producción',
        'Production Organisation',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320017',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320017',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320017'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320017',
        1,
        '320GREMECA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320017',
        1,
        '320GREQUIM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320017',
        1,
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
        '320017',
        1,
        '320GREEIA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320017',
        1,
        '320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320018',
        'Metodologia i Orientació de Projectes',
        'Metodología y Orientación de Proyectos',
        'Project Oriented Methodology',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320018',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320018',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320018'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320018',
        1,
        '320GREMECA',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320018',
        1,
        '320GREQUIM',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320018',
        1,
        '320GREELEC',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320018',
        1,
        '320GREEIA',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320018',
        1,
        '320GRETDT',
        8,
        8,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320018',
        1,
        '320GREDIDP',
        8,
        8,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320030',
        'Complements de Programació',
        'Complementos de Programación',
        'Advanced Programming',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320030',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320030',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320030'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320030',
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
        '320030',
        1,
        '320GREMECA',
        2,
        2,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320030',
        1,
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
        '320030',
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
        '320030',
        1,
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
        '320030',
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
        '320030',
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320164',
        'Modelització, Complexitat i Sostenibilitat',
        'Modelización, Complejidad y Sostenibilidad',
        'Modelisation, Complexity and Sustainability',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320164',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320164',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320164'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320164',
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
        '320164',
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
        '320164',
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
        '320164',
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
        '320164',
        1,
        '320GREMECA',
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
        '320164',
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
        '320164',
        1,
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
        '320164',
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
        '320164',
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320166',
        'Programació de Mòbils Android',
        'Programación de Móviles Android',
        'Programming of Mobiles Android',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320166',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320166',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320166'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320166',
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
        '320166',
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
        '320166',
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
        '320166',
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
        '320166',
        1,
        '320GREMECA',
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
        '320166',
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
        '320166',
        1,
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
        '320166',
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
        '320166',
        1,
        '320GREDIDP',
        2,
        2,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320192',
        'Iniciació a les Tecnologies Industrials Paperera i Gràfica',
        'Iniciación a las Tecnologías Industriales Papelera y Gráfica',
        'Initiation to Paper and Graphic Industrial Tecnologies',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320192',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320192',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320192'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320192',
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
        '320192',
        1,
        '220GRETAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320192',
        1,
        '220GREVAER',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320192',
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
        '320192',
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
        '320192',
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
        '320192',
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
        '320192',
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
        '320192',
        1,
        '320GRETDT',
        1,
        1,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320192',
        1,
        '320GREDIDP',
        1,
        1,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200011',
        'Mètodes Matemàtics I',
        'Métodos Matemáticos I',
        'Mathematical Methods I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/3200011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200011'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '3200011',
        1,
        '320GREMECA',
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
        '320GREQUIM',
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
        '3200011',
        1,
        '320GREEIA',
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
        '320GRETDT',
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
        '320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200031',
        'Física I',
        'Física I',
        'Physics I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/3200031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200031'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '3200031',
        1,
        '320GREMECA',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '3200031',
        1,
        '320GREQUIM',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '3200031',
        1,
        '320GREELEC',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '3200031',
        1,
        '320GREEIA',
        3,
        3,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '3200031',
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
        '3200031',
        1,
        '320GREDIDP',
        3,
        3,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205220',
        'Programació Avançada Orientada a Objectes',
        'Programación Avanzada Orientada a Objetos',
        'Advanced Object-Oriented Programming',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205220',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205220',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205220'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205220',
        1,
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
        '205220',
        1,
        '220GRETAER',
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
        1,
        '220GREVAER',
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
        '205220',
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
        '205220',
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
        '205220',
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
        '205220',
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
        '205220',
        1,
        '320GRETDT',
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
        1,
        '320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205219',
        'Introducció a la Programació Orientada a Objectes',
        'Introducción a la Programación Orientada a Objetos',
        'Introduction to Object-Oriented Programming',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205219',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205219',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205219'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205219',
        1,
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
        '205219',
        1,
        '220GRETAER',
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
        '220GREVAER',
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
        '205219',
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
        '205219',
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
        '205219',
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
        '205219',
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
        '205219',
        1,
        '320GRETDT',
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
        '320GREDIDP',
        0,
        0,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205214',
        'Seguretat Robòtica i Automatització per a la Indústria 4.0',
        'Seguridad Robótica  y Automatización para la Industria 4.0',
        'Safety Robotics and Automation for Industry 4.0',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205214',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205214',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205214'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205214',
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
        '205214',
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
        '205214',
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
        '205214',
        1,
        '320GREMECA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205214',
        1,
        '320GREQUIM',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205214',
        1,
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
        '205214',
        1,
        '320GREEIA',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205214',
        1,
        '320GRETDT',
        4,
        4,
        0,
        0
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205214',
        1,
        '320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205215',
        'Programació Creativa amb Processing',
        'Programación Creativa con Processing',
        'Creative Programming with Processing',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205215',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205215',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205215'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '205215',
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
        '205215',
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
        '205215',
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
        '205215',
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
        '205215',
        1,
        '320GREMECA',
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
        '320GREQUIM',
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
        '205215',
        1,
        '320GREEIA',
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
        '320GRETDT',
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
        '320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320009',
        "Economia i Gestió d'Empresa",
        'Economía y Gestión de Empresa',
        'Economics and Business Administration',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320009',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320009',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320009'
);

INSERT INTO ofertas
    (asignatura, periodo_academico, titulacion, plazas_ofertadas,
    plazas_disponibles, plazas_concedidas, plazas_solicitadas)
VALUES(
        '320009',
        1,
        '320GREMECA',
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
        '320GREQUIM',
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
        '320009',
        1,
        '320GREEIA',
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
        '320GRETDT',
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
        '320GREDIDP',
        4,
        4,
        0,
        0
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205251',
        'Selecció de Materials en el Disseny Industrial',
        'Selección de Materiales en el Diseño Industrial',
        'Material Selection in Industrial Design',
        'CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205251',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205251',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205251'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320134',
        'Tècniques de Representació Gràfica',
        'Técnicas de Representación Gráfica',
        'Graphic Representation Techniques',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320134',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320134',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320134'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320135',
        'Disseny Bàsic',
        'Diseño Básico',
        'Basic Design',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320135',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320135',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320135'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320140',
        'Disseny de Mecanismes',
        'Diseño de Mecanismos',
        'Mechanism Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320140',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320140',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320140'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320141',
        'Expressió Artística',
        'Expresión Artística',
        'Artistic Expression',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320141',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320141',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320141'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320142',
        'Disseny i Producte I',
        'Diseño y Producto I',
        'Product Design I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320142',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320142',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320142'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320143',
        'Disseny Assistit per Ordinador',
        'Diseño Asistido por Ordenador',
        'Computer-Aided Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320143',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320143',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320143'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320144',
        'Disseny Gràfic i Comunicació',
        'Diseño Gráfico y Comunicación',
        'Graphic Design and Communication',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320144',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320144',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320144'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320151',
        'Gestió Integral del Disseny',
        'Gestión Integral del Diseño',
        'Integral Design Management',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320151',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320151',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320151'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320152',
        "Taller de Disseny d'Objectes de Plàstic",
        'Taller de Diseño de Objetos de Plástico',
        'Workshop in Plastic Objects Design',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320152',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320152',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320152'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320154',
        'Disseny Pràctic de Béns i Equipaments',
        'Diseño Práctico de Bienes y Equipamientos',
        'Practical Design of Goods and Equipment',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320154',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320154',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320154'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320157',
        'Sistemes Elèctrics',
        'Sistemas Eléctricos',
        'Electric Systems',
        'CAT/CAST/ING',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320157',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320157',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320157'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320159',
        'Sistemes Mecànics',
        'Sistemas Mecánicos',
        'Mechanical Systems',
        'CAT',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320159',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320159',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320159'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320194',
        'Tèxtils Pel Disseny de Productes',
        'Textiles para el Diseño de Productos',
        'Textiles for Product Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320194',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320194',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320194'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205250',
        'Robòtica Avançada i Sistemes de Producció Altament Automatitzats',
        'Robótica Avanzada y Sistemas de Producción Altamente Automatizados',
        'Advanced Robotics & Highly Automation Production Systems',
        'ING',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205250',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205250',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205250'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320035',
        'Automatització Industrial',
        'Automatización Industrial',
        'Industrial Automation',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320035',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320035',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320035'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320036',
        'Electrònica Digital',
        'Electrónica Digital',
        'Digital Electronics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/320036',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320036',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320036'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320038',
        'Electrònica Analògica',
        'Electrónica Analógica',
        'Analogue Electronics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320038',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320038',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320038'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320041',
        'Instrumentació Electrònica',
        'Instrumentación Electrónica',
        'Electronic Instrumentation',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320041',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320041',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320041'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320044',
        'Control i Guiatge de Robots Mòbils',
        'Control y Guiado de Robots Móviles',
        'Control and Guidance of Mobile Robots',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320044',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320044',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320044'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320129',
        'Aplicacions i Control de Sistemes Electrònics de Potència',
        'Aplicaciones y Control de Sistemas Electrónicos de Potencia',
        'Applications and Control of Power Electronic Systems',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320129',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320129',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320129'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320182',
        'Accionament i Control de Vehicles Elèctrics',
        'Accionamiento y Control de Vehículos Eléctricos',
        'Operation and Control of Electric Vehicles',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320182',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320182',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320182'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320183',
        'Introducció als Sistemes de Control Avançats',
        'Introducción a los Sistemas de Control Avanzados',
        'Introduction to Advanced Control Systems',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320183',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320183',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320183'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200331',
        'Modelització i Anàlisi de Sistemes Dinàmics I',
        'Modelización y Análisis de los Sistemas Dinámicos I',
        'Modelling and Analysis of Dinamic Systems I',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200331',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200331',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200331'
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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200371',
        'Electrònica de Potència I',
        'Electrónica de Potencia I',
        'Power Electronics I',
        'CAT/CAST',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200371',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200371',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200371'
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