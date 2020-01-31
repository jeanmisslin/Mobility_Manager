
DROP TABLE IF EXISTS asignaturas;

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

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320020',
        'Control i Automatització Industrial Avançats',
        'Control y Automatización Industrial Avanzados',
        'Advanced Industrial Control and Automation',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320020',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320020',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320020'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320022',
        "Transport d'Energia Elèctrica",
        'Transporte de Energía Eléctrica',
        'Transport of Electric Power',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320022',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320022',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320022'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320023',
        'Centrals Elèctriques i Energies Renovables',
        'Centrales Eléctricas y Energías Renovables',
        'Power Plants and Renewable Energies',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320023',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320023',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320023'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320024',
        'Processament Electrònic de Potència',
        'Procesado Electrónico de Potencia',
        'Power Electronics Processing',
        'CAT/CAST/ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320024',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320024',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320024'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320027',
        'Control i Accionaments de Màquines',
        'Control y Accionamientos de Máquinas',
        'Machine Control and Operation',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320027',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320027',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320027'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320029',
        "Mètode dels Elements Finits per a l'Enginyeria",
        'Método de los Elementos Fínitos para Ingeniería',
        'Numerical Methods for Engineers',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320029',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320029',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320029'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320162',
        "Integració en la Xarxa Elèctrica de Sistemes d'Energia Renovable",
        'Integración en la Red Eléctrica de Sistemas de Energía Renovable',
        'Grid Integration of Renewable Energy Systems',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320162',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320162',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320162'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320163',
        'Tecnologia de Control per a Sistemes Electromecànics',
        'Tecnología de Control para Sistemas Electromecánicos',
        'Control Technology for Electromechanical Systems',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320163',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320163',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320163'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320168',
        'Càlcul i Construcció de Màquines Elèctriques',
        'Cálculo y Construcción de Máquinas Eléctricas',
        'Calculation and Construction of Electrical Machines',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320168',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320168',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320168'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320171',
        'Energia i Canvi Climàtic',
        'Energía y Cambio Climático',
        'Energy and Climate Change',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320171',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320171',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320171'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200211',
        'Màquines Elèctriques I',
        'Máquinas Eléctricas I',
        'Electrical Machines I',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200211',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200211',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200211'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220051',
        'Mecànica II',
        'Mecánica II',
        'Mechanics II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220051',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220051',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220051'
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220052'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220054',
        'Enginyeria Aeroportuària',
        'Ingeniería Aeroportuaria',
        'Airport Engineering',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220054',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220054',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220054'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220055',
        "Disseny d'Aeronaus",
        'Diseño de Aeronaves',
        'Aircraft Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220055',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220055',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220055'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220056',
        'Enginyeria Aeroespacial Computacional',
        'Ingeniería Aeroespacial Computacional',
        'Computational Aerospace Engineering',
        'CAST',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220056',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220056',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220056'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220001',
        'Àlgebra',
        'Álgebra',
        'Algebra',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220001',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220001',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220001'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220002',
        'Càlcul I',
        'Cálculo I',
        'Calculus I',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220002',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220002',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220002'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220003',
        'Empresa',
        'Empresa',
        'Business',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220003',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220003',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220003'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220004',
        'Física I',
        'Física I',
        'Physics I',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220004',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220004',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220004'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220005',
        'Informàtica',
        'Informática',
        'Fundamentals of Programming',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220005',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220005',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220005'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220006',
        'Química',
        'Química',
        'Chemistry',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220006',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220006',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220006'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220007',
        'Càlcul II',
        'Cálculo II',
        'Calculus II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220007',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220007',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220007'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220008',
        'Espai Aeri, Navegació i Infraestructures',
        'Espacio Aéreo, Navegación e Infraestructuras',
        'Airspace, Air Navigation and Infrastructure',
        'CAT/CAST',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220008',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220008',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220008'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220009',
        'Física II',
        'Física II',
        'Physics II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220009',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220009',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220009'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220010',
        'Expressió Gràfica',
        'Expresión Gráfica',
        'Graphic Expression',
        'CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220010',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220010',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220010'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220011',
        'Estadística',
        'Estadística',
        'Statistics',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220011'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220012',
        'Ampliació de Matemàtiques',
        'Ampliación de Matemáticas',
        'Further Mathematics',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220012',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220012',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220012'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220013',
        'Vehicles Aeroespacials',
        'Vehículos Aeroespaciales',
        'Aerospace Vehicles',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220013',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220013',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220013'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220014',
        'Física III',
        'Física III',
        'Physics III',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220014',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220014',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220014'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220015',
        'Termodinàmica',
        'Termodinámica',
        'Thermodynamics',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220015',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220015',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220015'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220016',
        'Mecànica',
        'Mecánica',
        'Mechanics',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220016',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220016',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220016'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220017',
        'Ciència de Materials',
        'Ciencia de Materiales',
        'Materials Science',
        'CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220017',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220017',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220017'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220018',
        'Sistemes Propulsius',
        'Sistemas Propulsivos',
        'Propulsion Systems',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220018',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220018',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220018'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220019',
        'Circuits Elèctrics',
        'Circuitos Eléctricos',
        'Electrical Circuits',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220019',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220019',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220019'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220020',
        'Mecànica de Fluids',
        'Mecánica de Fluidos',
        'Fluid Mechanics',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220020',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220020',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220020'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220021',
        'Control Automàtic',
        'Control Automático',
        'Automatic Control',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220021',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220021',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220021'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220022',
        "Teoria d'Estructures",
        'Teoría de Estructuras',
        'Structural Theory',
        'CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220022',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220022',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220022'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220024',
        'Aerodinàmica',
        'Aerodinámica',
        'Aerodynamics',
        'CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220024',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220024',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220024'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220025',
        'Estructures Aeroespacials',
        'Estructuras Aeroespaciales',
        'Aerospace Structures',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220025',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220025',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220025'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220026',
        'Dinàmica de Gasos i Transferència de Calor i Massa',
        'Dinámica de Gases y Transferencia de Calor y Masa',
        'Gas Dynamics and Heat and Mass Transfer',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220026',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220026',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220026'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205201',
        'Robòtica i Automatització',
        'Robótoca y Automatización',
        'Robotics and Automation',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205201',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205201',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205201'
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205202',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205202',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205202'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220080',
        'Àlgebra',
        'Álgebra',
        'Algebra',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220080',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220080',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220080'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220081',
        'Càlcul I',
        'Cálculo I',
        'Calculus I',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220081',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220081',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220081'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220082',
        'Química I',
        'Química I',
        'Chemistry I',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220082',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220082',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220082'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220083',
        'Física I',
        'Física I',
        'Physics I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220083',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220083',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220083'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220084',
        'Expressió Gràfica I',
        'Expresión Gráfica I',
        'Graphic Expression I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220084',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220084',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220084'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220085',
        'Informàtica',
        'Informática',
        'Fundamentals of Programming',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220085',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220085',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220085'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220086',
        'Càlcul II',
        'Cálculo II',
        'Calculus II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220086',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220086',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220086'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220087',
        'Química II',
        'Química II',
        'Chemistry II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220087',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220087',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220087'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220088',
        'Física II',
        'Física II',
        'Physics II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220088',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220088',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220088'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220089',
        'Expressió Gràfica II',
        'Expresión Gráfica II',
        'Graphic Expression II',
        'CAST',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220089',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220089',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220089'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220090',
        'Tecnologies Industrials',
        'Tecnologías Industriales',
        'Industrial Technologies',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220090',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220090',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220090'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220091',
        'Mecànica',
        'Mecánica',
        'Mechanics',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220091',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220091',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220091'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220092',
        'Ciència de Materials',
        'Ciencia de Materiales',
        'Materials Science',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220092',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220092',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220092'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220093',
        'Equacions Diferencials',
        'Ecuaciones Diferenciales',
        'Differential Equations',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220093',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220093',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220093'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220094',
        'Ampliació de Física',
        'Ampliación de Física',
        'Advanced Physics',
        'CAT',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220094',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220094',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220094'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220095',
        'Empresa',
        'Empresa',
        'Business',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220095',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220095',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220095'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220096',
        'Estadística',
        'Estadística',
        'Statistics',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220096',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220096',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220096'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220097',
        'Automàtica',
        'Automática',
        'Automatic Control',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220097',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220097',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220097'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220098',
        'Termodinàmica',
        'Termodinámica',
        'Thermodynamics',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220098',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220098',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220098'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220099',
        'Teoria de Circuits',
        'Teoría de Circuitos',
        'Circuit Theory',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220099',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220099',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220099'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220100',
        'Medis Continus i Resistència de Materials',
        'Medios Continuos y Resistencia de Materiales',
        'Continuum Mechanics and Strength of Materials',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220100',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220100',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220100'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220101',
        'Electrònica',
        'Electrónica',
        'Electronics',
        'CAT/CAST/ING',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220101',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220101',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220101'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220102',
        'Electrotècnia i Màquines Elèctriques',
        'Electrotecnia y Máquinas Eléctricas',
        'Electrotechnics and Electrical Machines',
        'CAT',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220102',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220102',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220102'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220103',
        'Mecànica de Fluids',
        'Mecánica de Fluidos',
        'Fluid Mechanics',
        'CAT/CAST/ING',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220103',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220103',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220103'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220104',
        'Mètodes Numèrics i Quantitatius de Gestió',
        'Métodos Numéricos y Cuantitativos de Gestión',
        'Numerical and Quantitative Methods',
        'CAT',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220104',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220104',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220104'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220105',
        'Teoria de Màquines i Mecanismes',
        'Teoría de Máquinas y Mecanismos',
        'Machine and Mechanism Theory',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220105',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220105',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220105'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220106',
        'Tecnologia de Materials',
        'Tecnología de Materiales',
        'Materials Technology',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220106',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220106',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220106'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220107',
        'Modelat i Simulació de Sistemes',
        'Modelado y Simulación de Sistemas',
        'Systems Modelling and Simulation',
        'CAT/CAST/ING',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220107',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220107',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220107'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220108',
        'Convertidors',
        'Convertidores',
        'Power Converters',
        'CAT/CAST/ING',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220108',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220108',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220108'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220109',
        "Disseny d'Experiments i Control de Qualitat",
        'Diseño de Experimentos y Control de Calidad',
        'Experimental Designs and Quality Control',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220109',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220109',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220109'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220110',
        'Organització de la Producció',
        'Organización de la Producción',
        'Manufacturing Organization',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220110',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220110',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220110'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220111',
        'Termotècnia',
        'Termotecnia',
        'Heat Technology',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220111',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220111',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220111'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220112',
        'Fluidotècnia',
        'Fluidotecnia',
        'Fluid Technology',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220112',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220112',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220112'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220113',
        "Teoria d'Estructures i Construccions Industrials",
        'Teoría de Estructuras y Construcciones Industriales',
        'Structural Theory and Industrial Construction',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220113',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220113',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220113'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220114',
        'Ciència i Tecnologia del Medi Ambient',
        'Ciencia y Tecnología del Medio Ambiente',
        'Environmental Science and Technology',
        'CAT/CAST/ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220114',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220114',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220114'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220115',
        'Projectes',
        'Proyectos',
        'Projects',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220115',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220115',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220115'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220116',
        "Creació i Organització d'Empreses",
        'Creación y Organización de Empresas',
        'Business Start-Up and Organisation',
        'CAT/CAST',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220116',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220116',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220116'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220117',
        'Electrònica Digital',
        'Electrónica Digital',
        'Digital Electronics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220117',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220117',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220117'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220040',
        'Programació en Temps Real i Bases de Dades',
        'Electrónica Digital',
        'Digital Electronics',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220040',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220040',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220040'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220043',
        "Sostenibilitat en l'Entorn Construït",
        'Sostenibilidad en el Entorno Construido',
        'Greening the Built Environment',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220043',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220043',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220043'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220066',
        "Models Matemàtics en l'Enginyeria",
        'Modelos Matemáticos en la Ingeniería',
        'Mathematical Models in Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220066',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220066',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220066'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220069',
        "Aplicació de Codi Obert Cfd a Problemes d'Enginyeria",
        'Aplicación de Código Abierto Cfd a Problemas de Ingeniería',
        'Application of Open-Source Cfd to Engineering Problems',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220069',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220069',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220069'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220073',
        'Mecànica de Manipulació Robòtica',
        'Mecánica de Manipulación Robótica',
        'Mechanics of Robotic Manipulation',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220073',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220073',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220073'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220074',
        'Biorefineries Lignocel·lulòsics',
        'Biorefinerías Lignocelulósicos',
        'Lignocellulosic Biorefineries',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220074',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220074',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220074'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220126',
        'Termodinàmica dels Materials',
        'Termodinámica de los Materiales',
        'Thermodynamics of Materials',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220126',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220126',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220126'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220128',
        "Sistemes d'Eficiència Energètica",
        'Sistemas de Eficiencia Energética',
        'Energy Efficiency Systems',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220128',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220128',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220128'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220129',
        'Motos. Disseny i Secrets',
        'Motos. Diseño y Secretos',
        'Motorbikes Design and Secrets',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220129',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220129',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220129'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220130',
        'Química Orgànica Industrial',
        'Química Orgánica Industrial',
        'Industrial Organic Chemistry',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220130',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220130',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220130'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220131',
        "Habilitats Acadèmiques Escrites per a l'Enginyeria",
        'Habilidades Académicas Escritas para la Ingeniería',
        'Written Academic Skills for Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220131',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220131',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220131'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220134',
        "Criteris de Decisió - l'Enginyer/A com a Treballador/A o l'Enginyer/A com a Emprenedor/A",
        'Criterios de Decisión - El/La Ingeniero/A como Trabajador/A o El/La Ingeniero/A como Emprendedor/A',
        'Decision Criteria - Engineer as Employee or Engineer as Entrepreneur',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220134',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220134',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220134'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220135',
        'Fonaments de Robòtica',
        'Fundamentos de Robótica',
        'Fundamentals of Robotics',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220135',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220135',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220135'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220029',
        'Sistemes Mecànics',
        'Sistemas Mecánicos',
        'Mechanical Systems',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220029',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220029',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220029'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220030',
        'Sistemes i Instruments',
        'Sistemas e Instrumentos',
        'Systems and Instruments',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220030',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220030',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220030'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220031',
        "Disseny d'Helicòpters i Aeronaus Diverses",
        'Diseño de Helicópteros y Aeronaves Diversas',
        'Helicopter and Aircraft Design',
        'CAT/CAST/ING',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220031'
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220032',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220032',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220032'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220033',
        'Tecnologia de Fabricació i Manteniment',
        'Tecnología de Fabricación y Mantenimiento',
        'Manufacturing Technology and Maintenance',
        'CAT/CAST',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220033',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220033',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220033'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220034',
        'Sistemes Hidràulics',
        'Sistemas Hidráulicos',
        'Hydraulic Systems',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220034',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220034',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220034'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320063',
        'Anàlisi Química',
        'Análisis Químico',
        'Chemical Analysis',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320063',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320063',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320063'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320064',
        'Química Orgànica i Bioquímica Aplicada',
        'Química Orgánica y Bioquímica Aplicada',
        'Organic Chemistry and Applied Biochemistry',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320064',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320064',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320064'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320065',
        'Enginyeria de la Reacció Química',
        'Ingeniería de la Reacción Química',
        'Chemical Reaction Engineering',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320065',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320065',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320065'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320070',
        'Enginyeria de Processos Químics i Biotecnològics',
        'Ingeniería de Procesos Químicos y Biotecnológicos',
        'Chemical and Biotechnological Process Engineering',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320070',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320070',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320070'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200661',
        'Experimentació en Enginyeria Química I',
        'Experimentación en Ingeniería Química I',
        'Experimentation on Chemical Engineering I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200661',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200661',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200661'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200671',
        'Operacions Bàsiques I',
        'Operaciones Básicas I',
        'Basic Operations I',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200671',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200671',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200671'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320072',
        "Tractament i Reutilització d'Aigües Residuals",
        'Tratamiento y Reutilización de Aguas Residuales',
        'Treatment and Reuse of Blackwater',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320072',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320072',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320072'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320165',
        "Polímers a l'Enginyeria",
        'Polímeros en la Ingeniería',
        'Polymers in Engineering',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320165',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320165',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320165'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320181',
        'Disseny Jaqcuard',
        'Diseño Jaqcuard',
        'Jacquard Design',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320181',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320181',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320181'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320077',
        "Disseny d'Estructures Lineals i Laminars No Teixides",
        'Diseño de Estructuras Lineales y Laminares No Tejidas',
        'Design of Non-Woven Linear and Laminar Structures',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320077',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320077',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320077'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320078',
        'Materials Colorants i Productes Auxiliars',
        'Materiales Colorantes y Productos Auxiliares',
        'Colouring Agents and Auxiliary Materials',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320078',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320078',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320078'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320079',
        "Disseny d'Estructures Laminars de Malla",
        'Diseño de Estructuras Laminares de Malla',
        'Design of Laminar Mesh Structures',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320079',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320079',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320079'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320080',
        "Disseny d'Estructures Laminars de Calada",
        'Diseño de Estructuras Laminares de Calada',
        'Design of Laminar Net Structures',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320080',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320080',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320080'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320081',
        'Disseny en Blanqueig i Tintura. Colorimetria',
        'Diseño en Blanqueo y Tintura. Colorimetría',
        'Bleaching and Dyeing Design Colorimetry',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320081',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320081',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320081'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320086',
        "Gestió de Projectes d'Innovació",
        'Gestión de Proyectos de Innovación',
        'Innovation Project Management',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320086',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320086',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320086'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320092',
        'Àlgebra',
        'Álgebra',
        'Algebra',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320092',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320092',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320092'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320093',
        'Càlcul',
        'Cálculo',
        'Calculus',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320093',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320093',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320093'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320094',
        'Tecnologies Ambientals i Sostenibilitat',
        'Tecnologías Ambientales y Sostenibilidad',
        'Environmental Technologies and Sustainability',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320094',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320094',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320094'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320095',
        "Fonaments d'Informàtica",
        'Fundamentos de Informática',
        'Foundations of Computing',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320095',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320095',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320095'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320101',
        "Economia i Gestió d'Empresa",
        'Economía y Gestión de Empresa',
        'Economics and Business Administration',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320101',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320101',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320101'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320102',
        'Senyals i Sistemes',
        'Señales y Sistemas',
        'Signals and Systems',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320102',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320102',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320102'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320103',
        'Bases de Dades',
        'Bases de Datos',
        'Data Bases',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320103',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320103',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320103'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320105',
        'Electrònica Analògica',
        'Electrónica Analógica',
        'Analogue Electronics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320105',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320105',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320105'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320106',
        'Probabilitat i Processos Estocàstics',
        'Probabilidad y Procesos Estocásticos',
        'Probability and Stochastic Processes',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320106',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320106',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320106'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320111',
        "Processament Digital d'Àudio",
        'Procesado Digital de Audio',
        'Digital Audio Processing',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320111',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320111',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320111'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320113',
        'Serveis i Aplicacions Telemàtiques',
        'Servicios y Aplicaciones Telemáticas',
        'Telematic Applications and Services',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320113',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320113',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320113'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320114',
        "Processament Digital d'Imatge",
        'Procesamiento Digital de Imagen',
        'Digital Image Processing',
        'CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320114',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320114',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320114'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320115',
        'Gestió i Distribució de Senyals Audiovisuals',
        'Gestión y Distribución de Señales Audiovisuales',
        'Audiovisual Signal Management and Distribution',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320115',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320115',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320115'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320117',
        'Equips de So',
        'Equipos de Sonido',
        'Sound Equipment',
        'CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320117',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320117',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320117'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320121',
        'Continguts Multimèdia',
        'Contenidos Multimedia',
        'Multimedia Content',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320121',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320121',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320121'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320123',
        'Tecnologia de la Parla',
        'Tecnología del Habla',
        'Speech Technology',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320123',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320123',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320123'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320124',
        'Instrumentació i Mesura de Qualitat del Senyal Audiovisual',
        'Instrumentación y Medida de la Calidad de la Señal Audiovisual',
        'Quality Measurement of Audio-Visual Signals',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320124',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320124',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320124'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320125',
        "Projectes d'Enginyeria",
        'Proyectos de Ingeniería',
        'Engineering Project Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320125',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320125',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320125'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200961',
        'Física I',
        'Física I',
        'Physics I',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200961',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200961',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200961'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205253',
        "Producció d'Àudio i Vídeo",
        'Producción de Audio y Video',
        'Audio and Video Production',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205253',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205253',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205253'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320049',
        'Resistència dels Materials',
        'Resistencia de los Materiales',
        'Strength of Materials',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320049',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320049',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320049'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320052',
        'Enginyeria de Fluids',
        'Ingeniería de Fluidos',
        'Fluid Engineering',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320052',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320052'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320053',
        'Ciència i Enginyeria de Materials',
        'Ciencia e Ingeniería de Materiales',
        'Science and Engineering of Materials',
        'CAT/CAST/ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320053',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320053',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320053'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320056',
        'Enginyeria de Processos de Fabricació',
        'Ingeniería de Procesos de Fabricación',
        'Engineering of Manufacturing Processes',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320056',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320056',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320056'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320059',
        'Projecte de Màquines i Mecanismes',
        'Proyecto de Máquinas y Mecanismos',
        'Project of Machines and Mechanisms',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320059',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320059',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320059'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320060',
        'Ajustos i Control Numèric',
        'Ajustes y Control Numérico',
        'Adjustments and Numerical Control',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320060',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320060',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320060'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320179',
        'Mecànica Experimental de Materials i Estructures Avançades',
        'Mecánica Experimental de Materiales y Estructuras Avanzadas',
        'Experimental Mechanics of Advanced Materials and Structures',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320179',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320179',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320179'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320180',
        'Industrialització de Projectes Mecànics',
        'Industrialización de Proyectos Mecánicos',
        'Industrialization of Mechanical Projects',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320180',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320180',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320180'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200501',
        'Sistemes Tèrmics I',
        'Sistemas Térmicos I',
        'Thermal Systems I',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200501',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200501',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200501'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200511',
        'Teoria i Disseny de Màquines i Mecanismes I',
        'Teoria y Diseño de Máquinas y Mecanismos I',
        'Theory and Design of Machines and Mechanisms I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200511',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200511',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200511'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205017',
        'Mètodes Numèrics en Transferència de Calor i Massa',
        'Métodos Numéricos en Transferencia de Calor y Masa',
        'Numerical Methods in Heat and Mass Transfer',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205017',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205017',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205017'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205104',
        'Finances i Comptabilitat',
        'Finanzas y Contabilidad',
        'Finance and Accounting',
        'ING',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205104',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205104',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205104'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205105',
        'Eines per a la Presa de Decisions',
        'Herramientas para la Toma de Decisiones',
        'Tools for Decision Making',
        'ING',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205105',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205105',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205105'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205108',
        "Gestió d'Actius i Instal·lacions",
        'Gestión de Activos e Instalaciones',
        'Asset and Facility Management',
        'ING',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205108',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205108',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205108'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205109',
        'Tecnologies de la Informació i Anàlisi de Dades',
        'Tecnologías de la Información Y Análisis de Datos',
        'Information Technologies & Data Analysis',
        'ING',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205109',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205109',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205109'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205110',
        'Teoria de Jocs',
        'Teoría de Juegos',
        'Game Theory',
        'ING',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205110',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205110',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205110'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205113',
        'Liderant Equips',
        'Liderando Equipos',
        'Leading Teams',
        'ING',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205113',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205113',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205113'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320505',
        'Avenços en Fibres Tèxtils',
        'Avances en Fibras Textiles',
        'Advances in Textile Fibres',
        'CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320505',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320505',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320505'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320506',
        'Filats, Filaments i Teles No Teixides',
        'Hilados, Filamentos y Telas No Tejidas',
        'Yarns, Filaments and Nonwoven Textiles',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320506',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320506',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320506'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320507',
        'Colorimetria, Colorants i Pigments',
        'Colorimetría, Colorantes y Pigmentos',
        'Colorimetry, Dyes and Pigments',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320507',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320507',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320507'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320516',
        'Materials Fibrosos per a la Fabricació de Productes Paperers',
        'Materiales Fibrosos para la Fabricación de Productos Papeleros',
        'Fibrous Materials for Manufacture of Paper Products',
        'CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320516',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320516',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320516'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320524',
        'Tecnologia de la Impressió',
        'Tecnología de la Impresión',
        'Printing Technology',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320524',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320524',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320524'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205354',
        'Tecnologia de la Fabricació de Productes Paperers',
        'Tecnología de la Fabricación de Productos Papeleros',
        'Technology of Paper Products Manufacture',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205354',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205354',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205354'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220301',
        'Aerodinàmica, Mecànica de Vol i Orbital',
        'Aerodinámica, Mecánica de Vuelo y Orbital',
        'Aerodynamics, Flight Mechanics and Orbital Mechanics',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220301',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220301',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220301'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220302',
        'Producció i Disseny Aeroespacial',
        'Producción y Diseño Aeroespacial',
        'Production and Design Aerospace',
        'CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220302',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220302',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220302'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220303',
        'Materials Aeroespacials',
        'Materiales Aeroespaciales',
        'Aerospace Materials',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220303',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220303',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220303'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220304',
        "Disseny i Construcció d'Aeroports",
        'Diseño y Construcción de Aeropuertos',
        'Design and Construction of Airports',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220304',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220304',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220304'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220305',
        'Combustió i Propulsió de Coets',
        'Combustión y Propulsión de Cohetes',
        'Rockets Combustion and Propulsion',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220305',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220305',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220305'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220306',
        'Vehicles Aeroespacials',
        'Vehículos Aeroespaciales',
        'Aerospace Vehicles',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220306',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220306',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220306'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220307',
        'Sistemes de Radiofreqüència i Comunicació',
        'Sistemas de Radiofrecuencia y Comunicación',
        'Radiofrequency and Communication Systems',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220307',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220307',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220307'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220308',
        "Sistemes de Propulsió d'Aeronaus",
        'Sistemas de Propulsión de Aeronaves',
        "(Ang) Sistemes de Propulsius d'Aeronaus",
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220308',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220308',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220308'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220309',
        'Transport Aeri i Sistemes de Navegació',
        'Transporte Aéreo y Sistemas de Navegación',
        'Air Transport and Navigation Systems',
        'CAT',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220309',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220309',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220309'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220310',
        "Direcció de Projectes d'Aeronaus i Vehicles Aeroespacials",
        'Dirección de Proyectos de Aeronaves y Vehículos Aeroespaciales',
        "(Ang) Direcció de Projectes d'Aeronaus i Vehicles Aeroespacials",
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220310',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220310',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220310'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220311',
        'Enginyeria Computacional',
        'Ingeniería Computacional',
        'Computational Engineering',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220311',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220311',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220311'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205015',
        'Turbulència: Fenomenologia, Simulació i Aerodinàmica',
        'Turbulencia: Fenomenología, Simulación y  Aerodinámica',
        'Turbulence: Phenomenology, Simulation, Aerodynamics',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205015',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205015',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205015'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205016',
        'Curs Avançat en Transferència de Calor i Massa',
        'Curso Avanzado en Transferencia de Calor y Masa',
        'Advance Course Heat and Mass Transfer',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205016',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205016',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205016'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220321',
        'Operacions Aeroportuàries',
        'Operaciones Aeroportuarias',
        'Airport Operations',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220321',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220321',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220321'
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220322',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220322',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220322'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220323',
        'Instal·lacions Aeroportuàries',
        'Instalaciones Aeroportuarias',
        'Airport Building Systems',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220323',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220323',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220323'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220324',
        "Gestió d'Infraestructures Aeroportuàries",
        'Gestión de Infraestructuras Aeroportuarias',
        'Airport Infrastructure Management',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220324',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220324',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220324'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220325',
        'Transport Aeri',
        'Transporte Aéreo',
        'Air Transport',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220325',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220325',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220325'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220334',
        'Propulsió Espacial',
        'Propulsión Espacial',
        'Space Propulsion',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220334',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220334',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220334'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220340',
        'Ampliació de Motors de Coet',
        'Ampliación de Motores de Cohete',
        'Extension of Rocket Engines',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220340',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220340',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220340'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220341',
        'Aerodinàmica Interna i Aeroelasticitat de Turbomàquines',
        'Aerodinámica Interna y Aeroelasticidad de Turbomáquinas',
        'Internal Aerodynamics and Aeroelasticity of Turbomachines',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220341',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220341',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220341'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220342',
        'Ampliació de Motors a Reacció',
        'Ampliación de Motores a Reacción',
        'Extension of Jet Engines',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220342',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220342',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220342'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220343',
        'Propulsió Avançada',
        'Propulsión Avanzada',
        'Advanced Propulsion',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220343',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220343',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220343'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220350',
        'Laboratoris Aeroespacials',
        'Laboratorios Aeroespaciales',
        'Aerospace Laboratories',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220350',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220350',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220350'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220351',
        'Aeroelasticitat Avançada',
        'Aeroelasticidad Avanzada',
        'Advanced Aeroelasticity',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220351',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220351',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220351'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205400',
        'Gestió Ambiental i Sostenibilitat en la Indústria Tèxtil',
        'Gestión Ambiental y Sostenibilidad en la Industria Textil',
        'Environmental Management and Sustainability in the Textile Industry',
        'CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205400',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205400',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205400'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205060',
        'Instrumentació Biomèdica',
        'Instrumentación Biomédica',
        'Biomedical Instrumentation',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205060',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205060',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205060'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205061',
        'Introducció al Control de Flux Actiu',
        'Introducción al Control de Flujo Activo',
        'Introduction to Active Flow Control',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205061',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205061',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205061'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205062',
        'Dissenyant Productes Innovadors i de Negocis',
        'Diseñando Productos Innovadores y de Negocios',
        'Designing Innovative Products and Business',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205062',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205062',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205062'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205063',
        "Anàlisi Dinàmic d'Estructures",
        'Análisis Dinámico de Estructuras',
        'Dynamic Analysis of Structures',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205063',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205063',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205063'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205079',
        'Metodologies i Processos Agile per a la Creació de Solucions Innovadores',
        'Metodologías y Procesos Agile para la Creación de Soluciones Innovadoras',
        'Agile Methodologies and Processes for the Creation of InnovativeSolutions',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205079',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205079',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205079'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205252',
        'Avaluació de la Qualitat dels Teixits',
        'Evaluación de la Calidad de los Tejidos',
        'Evaluation of Tissue Quality',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205252',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205252',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205252'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220203',
        'Instrumentació Bàsica',
        'Instrumentación Básica',
        'Basic Instrumentation',
        'CAT',
        2.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220203',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220203',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220203'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220204',
        'Producció Automatitzada i Control Avançat de Processos',
        'Producción Automatizada y Control Avanzado de Procesos',
        'Advanced Automation and Control of Industrial Processes',
        'CAT',
        2.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220204',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220204',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220204'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220205',
        'Disseny i Construcció de Plantes Industrials i Serveis Complementaris',
        'Diseño y Construcción de Plantas Industriales y Servicios Complementarios',
        'Design and Construction on Industrial Plants and Related Facilities',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220205',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220205',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220205'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220206',
        "Direcció d'Operacions",
        'Dirección de Operaciones',
        'Operations Management',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220206',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220206',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220206'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220207',
        'Disseny de Màquines i Tecnologia de la Fabricació',
        'Diseño de Máquinas y Tecnología de la Fabricación',
        'Machine Design and Manufacturing Technologies',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220207',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220207',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220207'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220208',
        'Enginyeria Tèrmica i de Fluids',
        'Ingeniería Térmica y de Fluidos',
        'Engineering of Thermal and Fluids Systems',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220208',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220208',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220208'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220209',
        "Sistemes de Generació, Transport i Distribució d'Energia Elèctrica",
        'Sistemas de Generación, Transporte y Distribución de Energía Eléctrica',
        'Power Generation, Transmission and Distribution',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220209',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220209',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220209'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220210',
        'Anàlisi i Disseny de Processos Químics',
        'Análisis y Diseño de Procesos Químicos',
        'Analysis and Design of Chemical Processes',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220210',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220210',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220210'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220211',
        'Tecnologia Energètica',
        'Tecnología Energética',
        'Energy Technology',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220211',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220211',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220211'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220212',
        'Arquitectura, Construcció Industrial i Instal·lacions',
        'Arquitectura, Construcción Industrial e Instalaciones',
        'Architecture of Industrial Plants and Building Services',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220212',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220212',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220212'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220213',
        'Direcció Integrada de Projectes',
        'Dirección Integrada de Proyectos',
        'Project Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220213',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220213',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220213'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220214',
        "Càlcul i Disseny d'Estructures",
        'Cálculo y Diseño de Estructuras',
        'Project Management',
        'CAT/CAST',
        2.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220214',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220214',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220214'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220215',
        'Enginyeria del Transport i Manutenció Industrial',
        'Ingeniería del Transporte y Manutención Industrial',
        'Transportation and Materials Handling Engineering',
        'CAT',
        2.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220215',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220215',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220215'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220216',
        "Direcció d'Empreses",
        'Dirección de Empresas',
        'Business Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220216',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220216',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220216'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220230',
        'Caracterització Física de Biomaterials i Paper',
        'Caracterización Física de Biomateriales y Papel',
        'Physical Characterization of Biomaterials and Paper Products',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220230',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220230',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220230'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220231',
        'Materials Fibrosos per a la Fabricació de Productes Lignocel·lulòsics',
        'Materiales Fibrosos para la Fabricación de Productos Lignocelulósicos',
        'Fibrous Materials for Lignocellulosic Products Manufacturing',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220231',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220231',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220231'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220232',
        'Tecnologia de la Fabricació de Productes Paperers i Derivats',
        'Tecnología de la Fabricación de Productos Papeleros y Derivados',
        'Paper Manufacturing Technology and Derivatives',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220232',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220232',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220232'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220233',
        'Simulació i Fisicoquímica en la Fabricació de Biomaterials, Polpa i Paper',
        'Simulación y Fisicoquímica en la Fabricación de Biomateriales, Pulpa y Papel',
        'Simulation and Physicochemical Technology for the Manufacturing of Biomaterials, Pulp and Paper Products',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220233',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220233',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220233'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220234',
        "Tècniques d'Impressió i Transformació de Productes Paperers",
        'Técnicas de Impresión y Transformación de Productos Papeleros',
        'Printing and Converting Technologies of Paper Products',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220234',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220234',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220234'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220236',
        "Disseny d'Experiments",
        'Diseño de Experimentos',
        'Design of Experiments',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220236',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220236',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220236'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220240',
        'Estructures de Formigó',
        'Estructuras de Hormigón',
        'Concrete Structures',
        'CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220240',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220240',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220240'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220241',
        'Estructures Metàl·liques',
        'Estructuras Metálicas',
        'Steel Structures',
        'CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220241',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220241',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220241'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220242',
        'Estructures Avançades',
        'Estructuras Avanzadas',
        'Advanced Structures',
        'CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220242',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220242',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220242'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220243',
        'Edificis Intel·ligents',
        'Edificios Inteligentes',
        'Smart Buildings',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220243',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220243',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220243'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220244',
        'Gestió de Projectes de Construcció',
        'Gestión de Proyectos de Construcción',
        'Management of Construction Projects',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220244',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220244',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220244'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220250',
        'Sistemes Elèctrics de Potència',
        'Sistemas Eléctricos de Potencia',
        'Electrical Power Systems',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220250',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220250',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220250'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220251',
        'Càlcul i Disseny de Màquines i Actuadors Elèctrics',
        'Càlcul i Disseny de Màquines i Actuadors Elèctrics',
        'Design of Electrical Machines and Actuators',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220251',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220251',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220251'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220252',
        'Control de Màquines Elèctriques',
        'Control de Máquinas Eléctricas',
        'Control of Electrical Machines',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220252',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220252',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220252'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220253',
        'Projecte de Sistemes Elèctrics amb Energies Renovables',
        'Proyecto de Sistemas Eléctricos con Energías Renovables',
        'Design of Electric Systems with Renewable Energy',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220253',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220253',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220253'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220254',
        'Instrumentació Avançada',
        'Instrumentación Avanzada',
        'Advanced Instrumentation',
        'CAST',
        2.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220254',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220254',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220254'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220255',
        'Control, Gestió i Supervisió de Processos',
        'Control, Gestión y Supervisión de Procesos',
        'Control, Management and Monitoring of Processes',
        'CAST',
        2.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220255',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220255',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220255'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220260',
        'Sistemes de Transmissió de Potència',
        'Sistemas de Transmisión de Potencia',
        'Power Transmission Systems',
        'CAT/CAST',
        10,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220260',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220260',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220260'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220261',
        'Sistemes de Fabricació Avançada',
        'Sistemas de Fabricación Avanzada',
        'Advanced Machining Systems',
        'CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220261',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220261',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220261'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220262',
        'Disseny de Màquines i Vibracions Mecàniques',
        'Diseño de Máquinas y Vibraciones Mecánicas',
        'Machine Design and Mechanical Vibrations',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220262',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220262',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220262'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220263',
        'Disseny Fluidodinàmic Avançat',
        'Diseño Fluidodinámico Avanzado',
        'Fluid Systems Design',
        'ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220263',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220263',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220263'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220270',
        "Estadística Aplicada a l'Organització Industrial",
        'Estadística Aplicada a la Organización Industrial',
        'Applied Statistics in Industrial Engineering',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220270',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220270',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220270'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220271',
        "Mètodes Quantitatius d'Organització Industrial",
        'Métodos Cuantitativos de Organización Industrial',
        'Quantitative Methods in Industrial Scheduling',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220271',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220271',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220271'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220272',
        'Disseny de la Cadena de Subministrament',
        'Diseño de la Cadena de Suministro',
        'Supply Chain Management',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220272',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220272',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220272'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220273',
        'Re-Enginyeria de Processos',
        'Re-Ingeniería de Procesos',
        'Business Process Reengineering',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220273',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220273',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220273'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220274',
        'Models i Eines de Decisió',
        'Modelos y Herramientas de Decisión',
        'Tools for Decision Analysis',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220274',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220274',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220274'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220280',
        'Transferència de Calor i Massa',
        'Transferencia de Calor y Masa',
        'Heat and Mass Transfer',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220280',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220280',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220280'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220281',
        'Refrigeració i Climatització',
        'Refrigeration and Air Conditioning',
        'Refrigeration and Air Conditioning',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220281',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220281',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220281'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220282',
        'Tecnologies de Màquines i Motors Tèrmics',
        'Tecnologías de Máquinas y Motores Térmicos',
        'Heat Engines Technology',
        'CAT',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220282',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220282',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220282'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220283',
        'Alternatives Energètiques',
        'Alternativas Energéticas',
        'Renewable Energy',
        'CAT/CAST',
        7.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220283',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220283',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220283'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220291',
        'Avenços en Fibres Tèxtils',
        'Avances en Fibras Textiles',
        'Advances in Textile Fibers',
        'CAT/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220291',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220291',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220291'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220292',
        'Filats, Filaments i Teles No Teixides',
        'Hilados, Filamentos y Telas No Tejidas',
        'Yarns, Filaments and Nonwoven Textiles',
        'CAT',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220292',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220292',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220292'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220293',
        'Colorimetria, Colorants i Pigments',
        'Colorimetría, Colorantes y Pigmentos',
        'Colorimetry, Dyes and Pigments',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220293',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220293',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220293'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205300',
        'Gestió de la Qualitat: Tècniques Estadístiques',
        'Gestión de la Calidad: Técnicas Estadísticas',
        'Quality Management: Statistics Methods',
        'CAT/CAST',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205300',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205300',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205300'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220550',
        'Complexos Industrials',
        'Complejos Industriales',
        'Industrial Plants',
        'CAT/CAST',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220550&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220550&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220550&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220551',
        'Gestió de la Innovació i la Tecnologia',
        'Gestión de la Innovación y la Tecnología',
        'Innovation and Technology Policy',
        'CAT/CAST',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220551&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220551&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220551&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220552',
        'Mètodes Quantitatius en Organització',
        'Métodos Cuantitativos en Organización',
        'Quantitative Methods in Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220552&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220552&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220552&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220553',
        'Direcció Comercial',
        'Dirección Comercial',
        'Marketing Management',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220553&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220553&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220553&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220554',
        'Direcció de Persones',
        'Dirección de Personas',
        'People Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220554&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220554&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220554&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220555',
        'Automatització de Processos',
        'Automatización de Procesos',
        'Process Automation',
        'CAT/ING',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220555&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220555&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220555&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220556',
        'Direcció Financera',
        'Dirección Financiera',
        'Financial Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220556&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220556&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220556&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220557',
        'Estadística Aplicada',
        'Estadística Aplicada',
        'Applied Statistics',
        'CAT',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220557&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220557&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220557&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220558',
        'Control de Gestió i Costos',
        'Control de Gestión y Costes',
        'Management Accounting',
        'CAT/CAST',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220558&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220558&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220558&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220559',
        "Direcció d'Operacions",
        'Dirección de Operaciones',
        'Operations Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220559&curs=2015&lang=ca',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220559&curs=2015&lang=es',
        'https://www.upc.edu/estudispdf/guia_docent.php?codi=220559&curs=2015&lang=ang'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220560',
        "Gestió Ambiental i Energètica en l'Empresa",
        'Gestión Ambiental y Energética en la Empresa',
        'Environmental and Energy Management',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220560',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220560',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220560'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220561',
        'Models i Eines de Decisió',
        'Modelos y Herramientas de Decisión',
        'Tools for Decision Analysis',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220561',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220561',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220561'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220562',
        "Direcció d'Empreses",
        'Dirección de Empresas',
        'Business Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220562',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220562',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220562'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220563',
        "Disseny de la Cadena d'Aprovisionament",
        'Diseño de la Cadena de Suministro',
        'Supply Chain Management',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220563',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220563',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220563'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220564',
        'Emprenedoria Tècnica',
        'Emprendeduría Técnica',
        'Technical Entrepreneurship',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220564',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220564',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220564'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220565',
        "Sistemes d'Informació",
        'Sistemas de Información',
        'Information System',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220565',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220565',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220565'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220566',
        "Direcció de Projectes d'Organització",
        'Dirección de Proyectos de Organización',
        'Project Management',
        'CAT/CAST',
        7,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220566',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220566',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220566'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220567',
        "Seminaris de Recerca a l'Enginyeria d'Organització",
        'Seminarios de Investigación en la Ingeniería de Organización',
        'Research Seminars on Management Engineering',
        'CAT/CAST',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220567',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220567',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220567'
);