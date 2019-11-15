
DROP TABLE IF EXISTS asignaturas;
DROP TABLE IF EXISTS ofertas;

CREATE TABLE asignaturas(
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

CREATE TABLE ofertas(
    id_oferta INTEGER PRIMARY KEY,
    asignatura TEXT,
    periodo_academico int,
    titulacion TEXT,
    plazas_ofertadas int,
    plazas_disponibles int,
    plazas_concedidas int,
    FOREIGN KEY (asignatura) REFERENCES asignaturas (codigo_asignatura),
    FOREIGN KEY (periodo_academico) REFERENCES periodos_academicos (id_periodo),
    FOREIGN KEY (titulacion) REFERENCES titulaciones (codigo_titulacion),
    CONSTRAINT UC_OFERTA UNIQUE (asignatura,periodo_academico,titulacion)
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220322',
    1,
    '220MUAERON',
    8,
    8,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220322',
    1,
    '205MASE',
    8,
    8,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220331',
    1,
    '220MUAERON',
    8,
    8,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220331',
    1,
    '205MASE',
    8,
    8,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220353',
    1,
    '220MUAERON',
    8,
    8,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220353',
    1,
    '205MASE',
    8,
    8,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205001',
    1,
    '205MASE',
    8,
    8,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220332',
    1,
    '220MUAERON',
    8,
    8,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220332',
    1,
    '205MASE',
    8,
    8,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220625',
    1,
    '220MUESAI',
    0,
    0,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220669',
    1,
    '220MEORSEM',
    11,
    11,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220683',
    1,
    '220MEORSEM',
    11,
    11,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205055',
    1,
    '220MEI',
    10,
    10,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205055',
    1,
    '220MUAERON',
    10,
    10,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205055',
    1,
    '205MASE',
    10,
    10,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220070',
    1,
    '220GRETIND',
    11,
    11,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220070',
    1,
    '220GRETAER',
    11,
    11,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220070',
    1,
    '220GREVAER',
    11,
    11,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220072',
    1,
    '220GRETIND',
    10,
    10,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220072',
    1,
    '220GRETAER',
    10,
    10,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220072',
    1,
    '220GREVAER',
    10,
    10,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220072',
    1,
    '320GREELEC',
    10,
    10,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220072',
    1,
    '320GREEIA',
    10,
    10,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '220GRETIND',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '220GRETAER',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '220GREVAER',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '320GRESAUD',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '320GREMECA',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '320GREQUIM',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '320GREELEC',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '320GREDIDP',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '320GREEIA',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220142',
    1,
    '320GRETDT',
    5,
    5,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220038',
    1,
    '220GRETIND',
    12,
    12,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220038',
    1,
    '220GRETAER',
    12,
    12,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220038',
    1,
    '220GREVAER',
    12,
    12,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205086',
    1,
    '220MUESAI',
    3,
    3,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205052',
    1,
    '220MEI',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205052',
    1,
    '220MUAERON',
    5,
    5,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205052',
    1,
    '205MASE',
    5,
    5,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220333',
    1,
    '220MUAERON',
    8,
    8,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220333',
    1,
    '205MASE',
    8,
    8,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '220GRETIND',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '220GRETAER',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '220GREVAER',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '320GRESAUD',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '320GREMECA',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '320GREQUIM',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '320GREELEC',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '320GREDIDP',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '320GREEIA',
    1,
    1,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220146',
    1,
    '320GRETDT',
    1,
    1,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205114',
    1,
    '205MEM',
    6,
    6,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220330',
    1,
    '205MEM',
    0,
    0,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220023',
    1,
    '220GRETAER',
    4,
    4,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220023',
    1,
    '220GREVAER',
    4,
    4,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220032',
    1,
    '220GREVAER',
    4,
    4,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220057',
    1,
    '220GRETAER',
    5,
    5,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220028',
    1,
    '220GRETAER',
    2,
    2,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220028',
    1,
    '220GREVAER',
    2,
    2,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220028',
    2,
    '220GRETAER',
    2,
    2,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220028',
    2,
    '220GREVAER',
    2,
    2,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220352',
    1,
    '220MUAERON',
    0,
    0,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220352',
    1,
    '205MASE',
    0,
    0,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '220GRETIND',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '220GRETAER',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '220GREVAER',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '320GRESAUD',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '320GREMECA',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '320GREQUIM',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '320GREELEC',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '320GREDIDP',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '320GREEIA',
    7,
    7,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '205202',
    1,
    '320GRETDT',
    7,
    7,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220053',
    2,
    '220GRETAER',
    4,
    4,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220052',
    2,
    '220GRETAER',
    2,
    2,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220027',
    2,
    '220GRETAER',
    2,
    2,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220027',
    2,
    '220GREVAER',
    2,
    2,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220143',
    2,
    '220GRETAER',
    4,
    4,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '220143',
    2,
    '220GREVAER',
    4,
    4,
    0
);

INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, 
nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan, 
plan_de_estudios_castellano, plan_de_estudios_ingles) VALUES(
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

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '320174',
    2,
    '320GREMECA',
    3,
    3,
    0
);

INSERT INTO ofertas (asignatura, periodo_academico, titulacion, plazas_ofertadas, plazas_disponibles, plazas_concedidas)
VALUES(
    '320174',
    2,
    '320GREQUIM',
    3,
    3,
    0
);