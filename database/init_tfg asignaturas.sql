
DROP TABLE IF EXISTS asignaturas;

CREATE TABLE asignaturas(
    id_asignatura INTEGER PRIMARY KEY,
    codigo_asignatura TEXT,
    nombre_catalan TEXT,
    nombre_castellano TEXT,
    nombre_ingles TEXT,
    idioma TEXT,
    ects NUMERIC,
    plan_de_estudios_catalan TEXT,
    plan_de_estudios_castellano TEXT,
    plan_de_estudios_ingles TEXT,
    UNIQUE (codigo_asignatura)
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205001',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205001',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205001'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205002',
        'Gestió de la Investigació i de Projectes Aeroespacials',
        'Gestión de la Investigación y de Proyectos Aeroespaciales',
        'Research Management and Aerospace Projects',
        'ING',
        10,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205002',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205002',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205002'
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
        '205050',
        "Termografia Infraroja per al Diagnòstic d'Edificis",
        'Termografía Infrarroja para el Diagnóstico de Edificios',
        'Infrared Thermography for Building Diagnostics',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205050',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205050',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205050'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205051',
        'Facilities Management',
        'Facilities Management',
        'Facilities Management',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205051',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205051',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205051'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205052',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205052'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205053',
        "Introducció a les Metaheurístiques per a Problemes d'Optimització",
        'Introducción a las Metaheurísticas para Problemas de Optimización',
        'Introduction to Metaheuristics for Optimization Problems',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205053',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205053',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205053'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205054',
        "Implementació i Prova de Metaheurístiques per a Problemes d'Optimització",
        'Implementación y Prueba de Metaheurísticas para Problemas de Optimización',
        'Implementation and Testing of Metaheuristics for Optimization Problems',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205054',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205054',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205054'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205055',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205055'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205056',
        "Disseny Avançat de l'Àrea de Moviment",
        'Diseño Avanzado del Área de Movimiento',
        'Advanced Design of the Movement Area',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205056',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205056',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205056'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205057',
        "Gestió i Operació d'Edificis de Terminals",
        'Gestión y Operación de Edificios de Terminales',
        'Management and Operation of Terminal Buildings',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205057',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205057',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205057'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205058',
        'Demolicions i Preparació del Sòl',
        'Demoliciones y Preparación del Suelo',
        'Demolitions and Soil Preparation',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205058',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205058',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205058'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205059',
        'Robots Mòbils',
        'Robots Móviles',
        'Mobile Robots',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205059',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205059',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205059'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205060',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205060',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205060'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205061',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205061',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205061'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205062',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205062',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205062'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205063',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205063',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205063'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205064',
        'Interfícies de Programació i Aplicacions',
        'Interfaces de Programación y Aplicaciones',
        'Programming Interfaces and Applications',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205064',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205064',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205064'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205065',
        'Espaiports, Aeroports per a Vols Espacials',
        'Espaciopuertos, Aeropuertos para Vuelos Espaciales',
        'Spaceports, Airports for Spaceflights',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205065',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205065',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205065'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205066',
        "Taller d'Innovació en la Indústria Automotriu",
        'Taller de Innovación en la Industria Automotriz',
        'Innovation Workshop on Automotive Industry',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205066',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205066',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205066'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205068',
        'Tèxtils Intel·ligents',
        'Textiles Inteligentes',
        'Smart Textiles',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205068',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205068',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205068'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205069',
        'Tecnologia de Sensors Fotònics i Làser',
        'Tecnología de Sensores Fotónicos y Láser',
        'Photonics Sensors and Laser Technology',
        'CAT/CAST/ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205069',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205069',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205069'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205070',
        "Projectes de Computació d'Alt Rendiment per a l'Enginyeria Aeroespacial",
        'Proyectos de Computación de Alto Rendimiento para la Ingeniería Aeroespacial',
        'High Performance Computing Projects for Aerospace Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205070',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205070',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205070'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205071',
        'Introducció a les Atmosferes Planetàries',
        'Introducción a las Atmósferas Planetarias',
        'Introduction to Planetary Atmospheres',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205071',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205071',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205071'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205077',
        'Mineria de Dades i Aprenentatge Automàtic per a Enginyers',
        'Minería de Datos y Aprendizaje Automático para Ingenieros',
        'Data Mining and Machine Learning for Engineers',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205077',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205077',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205077'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205079',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205079',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205079'
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
        '205104',
        'Finances i Comptabilitat',
        'Finanzas y Contabilidad',
        'Finance and Accounting',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205104',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205104',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205104'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205105',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205105',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205105'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205106',
        'Producció i Logística',
        'Producción y Logística',
        'Production and Logistics',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205106',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205106',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205106'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205107',
        'Negocis Internacionals',
        'Negocios Internacionales',
        'International Business',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205107',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205107',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205107'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205108',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205108',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205108'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205109',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205109',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205109'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205110',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205110',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205110'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205111',
        'Gestió Estratègica i de Màrqueting',
        'Gestión Estratégica y de Marketing',
        'Strategy and Marketing',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205111',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205111',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205111'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205112',
        'Gestió Avançada de Projectes',
        'Gestión Avanzada de Proyectos',
        'Advanced Project Management',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205112',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205112',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205112'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205113',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205113',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205113'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205114',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205114'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205115',
        'Optimització Combinatòria en Logística',
        'Optimització Combinatòria en Logística',
        'Combinatorial Optimization in Logistics',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205115',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205115',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205115'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205116',
        'Simulació de Sistemes Industrials i Logístics',
        'Simulación de Sistemas Industriales y Logísticos',
        'Simulation of Industrial and Logistic Systems',
        'ING',
        7.5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205116',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/205116',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/205116'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205200',
        'Bim per a Enginyers',
        'Bim para Ingenieros',
        'Bim for Engineers',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205200',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205200',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205200'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205201',
        'Robòtica i Automatització',
        'Robótica y Automatización',
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
        '205203',
        'Introducció als Coets',
        'Introducción a los Cohetes',
        'Introduction to Rockets',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205203',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205203',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205203'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205204',
        "Computació d'Altes Prestacions per a l'Enginyeria Aeroespacial",
        'Computación de Altas Prestaciones para la Ingeniería Aeroespacial',
        'High Performance Computing for Aerospace Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205204',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205204',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205204'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205205',
        'Fonaments de la Missió i el Disseny de Cubesats',
        'Fundamentos de la Misión y el Diseño de Cubesats',
        'Fundamentals of Cubesat Mission Design',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205205',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205205',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205205'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205207',
        'Millora de Processos Aeroportuaris',
        'Mejora de Procesos Aeroportuarios',
        'Airport Process Rethinking',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205207',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205207',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205207'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205208',
        'Aerodinàmica Experimental',
        'Aerodinámica Experimental',
        'Experimental Aerodynamics',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205208',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205208',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205208'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205209',
        "Materials Intel·ligents i Experiència d'Usuari",
        'Materiales Inteligentes y Experiencia de Usuario',
        'Smart Materials and User Experience',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/205209',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205209',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205209'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '205214',
        'Seguretat Robòtica i Automatització per a la Indústria 4.0',
        'Seguridad Robótica y Automatización para la Industria 4.0',
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
        '205221',
        'Big Data i Xarxes Intel·ligents',
        'Big Data y Redes Inteligentes',
        'Big Data and Smart Grids',
        'ING',
        6,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/205221',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/205221',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/205221'
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
        '220036',
        "Materials Lleugers per Aplicacions d'Enginyeria",
        'Materiales Ligeros para Aplicaciones de Ingeniería',
        'Lightweight Materials for Engineering Applications',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220036',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220036',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220036'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220037',
        "Aprendre de la Fallada Mecànica a l'Enginyeria",
        'Aprender de los Fallos Mecánicos en Ingeniería',
        'Learning From Mechanical Failure in Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220037',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220037',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220037'
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
        '220044',
        'Optimització de Processos Industrials',
        'Optimización de Procesos Industriales',
        'Optimization of Industrial Processes',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220044',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220044',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220044'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220045',
        'Plug-In de Vehicles Elèctrics Híbrids. Concepte, Disseny i Projecte de Sistemes de Propulsió Elèctrica',
        'Plug-In de Vehículos Eléctricos Híbridos. Concepto, Diseño y Proyecto de Sistemas de Propulsión Eléctrica',
        'Plug-In Hybrid Electric Vehicles. Concept, Design and Project of ElectricPropulsion Systems',
        'CAT/CAST/ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220045',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220045',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220045'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220047',
        'Tecnologies de la Producció Sostenible',
        'Tecnologías de la Producción Sostenible',
        'Sustainable Manufacturing Technologies',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220047',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220047',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220047'
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
        '220059',
        'Química de Materials',
        'Química de Materiales',
        'Materials Chemistry',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220059',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220059',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220059'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220060',
        'Operacions Unitàries en Enginyeria',
        'Operaciones Unitarias en Ingeniería',
        'Unit Operation in Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220060',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220060',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220060'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220061',
        "Làsers i Tecnologies Fotòniques a l'Enginyeria",
        'Láseres y Tecnologías Fotónicas en la Ingeniería',
        'Lasers and Photonic Technologies for Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220061',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220061',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220061'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220062',
        "Aplicació de Matlab-Octave a Problemes d'Enginyeria Tèrmica",
        'Aplicación de Matlab-Octave a los Problemas de la Ingeniería Térmica',
        'Application of Matlab-Octave to Thermal Engineering Problems',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220062',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220062',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220062'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220063',
        "Introducció a l'Enginyeria Inversa",
        'Introducción a la Ingeniería Inversa',
        'Introduction to Reverse Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220063',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220063',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220063'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220065',
        'Introducció als Planadors',
        'Introducción a los Planeadores',
        'Introduction to Sailplanes',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220065',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220065',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220065'
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
        '220067',
        "Resolució d'Aspectes Termo-Fluídics en Equips Industrials i/o",
        'Resolución de Aspectos Termo-Fluídicos en Equipos Industriales y/o Aeronáuticos',
        'Analysis of Thermal and Fluid Dynamics Issues in Industrial And/Or Aeronautical Systems and Equipment',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220067',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220067',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220067'
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
        '220071',
        "Tècniques de Caracterització d'Aliatges Metàl·liques",
        'Técnicas de Caracterización de Aleaciones Metálicas',
        'Characterization Techniques for Metallic Alloys',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220071',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220071',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220071'
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
        '220119',
        'Vehicles de Propulsió Alternativa',
        'Vehículos de Propulsión Alternativos',
        'Alternative Propulsion Vehicles',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220119',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220119',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220119'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220120',
        "Electrònica de l'Automòbil",
        'Electrónica del Automóvil',
        'Automobile Electronics',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220120',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220120',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220120'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220121',
        'Optimització Mecànica i Fabricació en Automoció',
        'Optimización Mecánica y Fabricación en Automoción',
        'Mechanical Design and Manufacturing',
        'CAST',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220121',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220121',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220121'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220122',
        'Dinàmica de Vehicles',
        'Dinámica de Vehículos',
        'Vehicle Dynamics',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220122',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220122',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220122'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220123',
        'Motors i Transmissions',
        'Motores y Transmisiones',
        'Engines and Powertrains',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220123',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220123',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220123'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220124',
        'Tecnologia Fluidodinàmica als Vehicles',
        'Tecnología Fluidodinámica en Vehículos',
        'Fluid Dynamic Technologies in Vehicles',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220124',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220124',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220124'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220125',
        "Els Sistemes No Lineals, el Caos i el Control en l'Enginyeria",
        'Los Sistemas No Lineales, el Caos y el Control en la Ingeniería',
        'Nonlinear Systems, Chaos and Control in Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220125',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220125',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220125'
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
        '220127',
        'Matemàtiques i Enginyeria Informàtica',
        'Matemáticas e Ingeniería Informática',
        'Mathematics and Computing Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220127',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220127',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220127'
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
        '220132',
        'Mecànica de Fluids II',
        'Mecánica de Fluidos II',
        'Fluid Mechanics II',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220132',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220132',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220132'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220133',
        "Elements Finits en l'Anàlisi Estructural",
        'Elementos Finitos en el Análisis Estructural',
        'Finite Elements in Structural Analysis',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220133',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220133',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220133'
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
        '220136',
        "Innovació i Creativitat: Eines per a l'Enginyeria",
        'Innovación y Creatividad: Herramientas para la Ingeniería',
        'Innovation and Creativity: Tools for Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220136',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220136',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220136'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220137',
        'Una Introducció als Sistemes Espacials',
        'Una Introducción a los Sistemas Espaciales',
        'An Introduction to Space Systems',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220137',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220137',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220137'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220138',
        "Coneixement de l'Empresa Industrial i Exercici Professional",
        'Conocimiento de la Empresa Industrial y Ejercicio Profesional',
        'Knowledge of Industrial Companies and Professional Practice',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220138',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220138',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220138'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220139',
        "Coneixement de l'Empresa Aeroespacial i Exercici Professional",
        'Conocimiento de la Empresa Aeroespacial y Ejercicio Profesional',
        'Knowledge of Aerospace Companies and Professional Practice',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220139',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220139',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220139'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220140',
        'Urbanisme i Ordenació del Territori',
        'Urbanismo y Ordenación del Territorio',
        'Urban and Regional Planning',
        'CAT',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220140',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220140',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220140'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220141',
        'Uav Orientació i Control Autònom',
        'Uav Orientación y Control Autónomo',
        'Uav Guidance & Autonomous Control',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220141',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220141',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220141'
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
        '220143',
        'Uav Hardware i Programació',
        'Uav Hardware y Programación',
        'Uav Hardware & Programming',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220143',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220143',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220143'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220144',
        'Uav Sensors i Aplicacions',
        'Uav Sensores y Aplicaciones',
        'Uav Sensors & Applications',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220144',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220144',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220144'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220145',
        'Uav Fonaments i Operacions',
        'Uav Fundamentos y Operaciones',
        'Uav Fundamentals & Operations',
        'ING',
        3,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/220145',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220145',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220145'
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
        '220147',
        'Tecnologies de la Informació i la Comunicació',
        'Tecnologías de la Información y la Comunicación',
        'Information and Communication Technology',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220147',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/220147',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/220147'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220210',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220210',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220210'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220211',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220211',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220211'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220212',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220212',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220212'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220213',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220213',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220213'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220214',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220214',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220214'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220215',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220215',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220215'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220216',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220216',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220216'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220218',
        'Teoria de Jocs',
        'Teoría de Juegos',
        'Game Theory',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220218',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220218',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220218'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220219',
        "Fonaments d'Enginyeria Nuclear",
        'Fundamentos de Ingeniería Nuclear',
        'Fundamentals of Nuclear Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220219',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220219',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220219'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220220',
        'Gestió de la Qualitat',
        'Gestión de la Calidad',
        'Quality Management',
        'CAT/CAST',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220220',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220220',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220220'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220221',
        'Sistemes Ferroviaris',
        'Sistemas Ferroviarios',
        'Railway Systems',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220221',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220221',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220221'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220222',
        'Turbomàquines Tèrmiques i Combustió',
        'Turbomáquinas Térmicas y Combustión',
        'Thermal Turbomachinery and Combustion',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220222',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220222',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220222'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220223',
        'Acústica',
        'Acústica',
        'Acoustics',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220223',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220223',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220223'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220224',
        'Estructures de Materials de Nova Generació',
        'Estructuras de Materiales de Nueva Generación',
        'Structures of New Generation Materials',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220224',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220224',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220224'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220225',
        'Enginyeria de Superfícies',
        'Ingeniería de Superficies',
        'Surface Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220225',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220225',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220225'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220226',
        'Seminaris de Recerca',
        'Seminarios de Investigación',
        'Research Seminars',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220226',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220226',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220226'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220230',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220230',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220230'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220231',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220231',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220231'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220232',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220232',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220232'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220233',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220233',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220233'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220234',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220234',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220234'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220236',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220236',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220236'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220238',
        'Robòtica Aplicada',
        'Robótica Aplicada',
        'Applied Robotics',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220238',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220238',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220238'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220239',
        'Enginyeria del Terreny',
        'Ingeniería del Terreno',
        'Geotechnical Engineering',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220239',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220239',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220239'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220240',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220240',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220240'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220241',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220241',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220241'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220242',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220242',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220242'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220243',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220243',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220243'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220244',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220244',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220244'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220245',
        'Ciència i Tecnologia de la Comunicació a Través dels Mitjans',
        'Ciencia y Tecnología de la Comunicación a Través de los Medios',
        'Science and Technology Communication Through Media',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220245',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220245',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220245'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220250',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220250',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220250'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220251',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220251',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220251'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220252',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220252',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220252'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220253',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220253',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220253'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220254',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220254',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220254'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220255',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220255',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220255'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220260',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220260',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220260'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220261',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220261',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220261'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220262',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220262',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220262'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220263',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220263',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220263'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220270',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220270',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220270'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220271',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220271',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220271'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220272',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220272',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220272'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220273',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220273',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220273'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220274',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220274',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220274'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220280',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220280',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220280'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220281',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220281',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220281'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220282',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220282',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220282'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220283',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220283',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220283'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220291',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220291',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220291'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220292',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220292',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220292'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220293',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220293',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220293'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220301',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220301',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220301'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220302',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220302',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220302'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220303',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220303',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220303'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220304',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220304',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220304'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220305',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220305',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220305'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220306',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220306',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220306'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220307',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220307',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220307'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220308',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220308',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220308'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220309',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220309',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220309'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220310',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220310',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220310'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220311',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220311',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220311'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220313',
        'Ampliació de Propulsió Espacial',
        'Ampliación de Propulsión Espacial',
        'Extension of Space Propulsion',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220313',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220313',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220313'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220314',
        "Aplicacions per a l'Exploració Planetària",
        'Aplicaciones para la Exploración Planetaria',
        'Applications for Planetary Exploration',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220314',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220314',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220314'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220315',
        'Disseny i Ús de Uavs per Teledetecció',
        'Diseño y Uso de Uavs para Teledetección',
        'Design and Use of Uav for Remote Sensing of the Environment',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220315',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220315',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220315'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220321',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220321',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220321'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220322',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220322'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220323',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220323',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220323'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220324',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220324',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220324'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220325',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220325',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220325'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220330',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220330'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220331',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220331'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220332',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220332'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220333',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220333'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220334',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220334',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220334'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220340',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220340',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220340'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220341',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220341',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220341'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220342',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220342',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220342'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220343',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220343',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220343'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220350',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220350',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220350'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220351',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220351',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220351'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220352',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220352'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220353',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220353'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220373',
        "Fonaments de Disseny d'Aeronaus",
        'Fundamentos de Diseño de Aeronaves',
        'Fundamentals of Aircraft Design',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220373',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220373',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220373'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220560',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220560',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220560'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220561',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220561',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220561'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220562',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220562',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220562'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220563',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220563',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220563'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220564',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220564',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220564'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220565',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220565',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220565'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220566',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220566',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220566'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220567',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220567',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220567'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220576',
        'Tecnologia Elèctrica',
        'Tecnología Eléctrica',
        'Electrical Technology',
        'CAT/CAST',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220576',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220576',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220576'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220577',
        'Tecnologia Energètica',
        'Tecnología Energética',
        'Energy Technology',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220577',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220577',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220577'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220578',
        'Tecnologia Mecànica',
        'Tecnología Mecánica',
        'Mechanics Technology',
        'CAST',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220578',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220578',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220578'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220580',
        "Dret d'Empresa",
        'Derecho de Empresa',
        'Business Law',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220580',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220580',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220580'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220582',
        'Prevenció de Riscos Laborals',
        'Prevención de Riesgos Laborales',
        'Workplace Risks Prevention',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220582',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220582',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220582'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220600',
        'Simulació i Optimització',
        'Simulación y Optimización',
        'Optimization and Simulation',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220600',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220600',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220600'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220601',
        'Modelat i Control de Màquines Elèctriques',
        'Modelado y Control de Máquinas Eléctricas',
        'Modelling and Control of Electrical Machines',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220601',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220601',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220601'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220602',
        "Sistemes Electrònics Avançats i Integració de Fonts d'Energia Elèctrica",
        'Sistemas Electrónicos Avanzados e Integración de Fuentes de Energía Eléctrica',
        'Advanced Electronic Systems and Integration of Electrical Energy Sources',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220602',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220602',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220602'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220603',
        'Sistemes Avançats de Control',
        'Sistemas Avanzados de Control',
        'Advanced Control Systems',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220603',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220603',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220603'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220604',
        'Dinàmica Aplicada',
        'Dinámica Aplicada',
        'Applied Dynamics',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220604',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220604',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220604'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220605',
        'Automatització Avançada per Fluids',
        'Automatización Avanzada por Fluidos',
        'Modelling and Control of Fluid Power Systems',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220605',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220605',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220605'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220606',
        'Processos Robotitzats',
        'Procesos Robotizados',
        'Robotized Processes',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220606',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220606',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220606'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220607',
        'Sistemes Integrats de Producció',
        'Sistemas Integrados de Producción',
        'Integrated Production Systems',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220607',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220607',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220607'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220608',
        "Tècniques d'Intel·ligència Artificial i Aplicacions per a l'Automatització",
        'Técnicas de Inteligencia Artificial y Aplicaciones para la Automatización',
        'Artificial Intelligence Techniques and Automation Applications',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220608',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220608',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220608'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220609',
        'Logística de Transport i Emmagatzematge',
        'Logística de Transporte y Almacenaje',
        'Transport Logistics and Storage',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220609',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220609',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220609'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220610',
        'Microxarxes i Optimització Energètica',
        'Microredes y Optimización Energética',
        'Microgrids and Energy Optimization',
        'CAST',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220610',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220610',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220610'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220611',
        'Qualitat del Subministrament Elèctric i Emc',
        'Calidad del Suministro Eléctrico y Emc',
        'Emc and Power Quality',
        'CAST',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220611',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220611',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220611'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220612',
        "Mesura, Supervisió i Control de l'Eficiència Energètica",
        'Medida, Supervisión y Control de la Eficiencia Energética',
        'Energy Efficiency Supervision and Control',
        'CAT/CAST',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220612',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220612',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220612'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220613',
        "Control d'Accionaments i Tracció Elèctrica",
        'Control de Accionamientos y Tracción Eléctrica',
        'Drive Control and Electric Drive Train',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220613',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220613',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220613'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220614',
        'Gestió de Projectes',
        'Gestión de Proyectos',
        'Project Management',
        'ING',
        10,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220614',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220614',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220614'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220615',
        'Tractament, Emmagatzematge, Validació de Dades i Gestió Automatitzada de la Producció',
        'Tratamiento, Almacenaje, Validación de Datos y Gestión Automatizada de la Producción',
        'Data Processing, Storage, Validation and Automated Production Management',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220615',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220615',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220615'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220617',
        "Diagnosi i Emmagatzematge d'Energia",
        'Diagnosis y Almacenaje de Energía',
        'Diagnosis and Power Storage',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220617',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220617',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220617'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220621',
        'Nano&Microtecnologia',
        'Nano&Microtecnología',
        'Nano&Microtechnology',
        'CAST/ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220621',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220621',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220621'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220622',
        'Sistemes Encastats de Temps Real',
        'Sistemas Empotrados de Tiempo Real',
        'Real-Time Embedded Systems',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220622',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220622',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220622'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220624',
        'Tecnologia de Sensors Fotònics i Làsers',
        'Tecnología de Sensores Fotónicos y Láseres',
        'Photonics Sensors and Laser Technology',
        'CAT/CAST/ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220624',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220624',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220624'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220625',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220625'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220626',
        'Tallers Tecnològics',
        'Talleres Tecnológicos',
        'Technological Workshops',
        'CAT',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220626',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220626',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220626'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220658',
        'Control de Gestió i Costos',
        'Control de Gestión y Costes',
        'Management Accounting',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220658',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220658',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220658'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220659',
        "Direcció de Projectes d'Organització",
        'Dirección de Proyectos de Organización',
        'Project Management',
        'ING',
        7,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220659',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220659',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220659'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220660',
        "Direcció d'Operacions",
        'Dirección de Operaciones',
        'Operations Management',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220660',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220660',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220660'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220661',
        "Gestió Ambiental i Energètica en l'Empresa",
        'Gestión Ambiental y Energética en la Empresa',
        'Environmental and Energy Management',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220661',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220661',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220661'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220662',
        "Models i Eines de Decisió",
        'Modelos y Herramientas de Decisión',
        'Tools for Decision Analysis',
        'ING',
        5,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220662',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220662',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220662'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220669',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220669'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220671',
        "Tècniques d'Optimització Combinatòria per a la Investigació",
        'Técnicas de Optimización Combinatoria para la Investigación',
        'Combinatorial Optimisation Methods',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220671',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220671',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220671'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220672',
        'Tecnologies de la Informació i la Comunicació',
        'Tecnologías de la Información y la Comunicación',
        'Information and Communication Technology',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220672',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220672',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220672'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220673',
        'Matemàtiques per a la Gestió',
        'Matemáticas para la Gestión',
        'Mathematics for Management',
        'CAT/CAST',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220673',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220673',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220673'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220674',
        "Tècniques Quantitatives d'Investigació",
        'Técnicas Cuantitativas de Investigación',
        'Quantitative Research Methods',
        'ING',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220674',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220674',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220674'
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
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220683',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220683'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220685',
        'Teoria de Jocs: Jocs Cooperatius',
        'Teoría de Juegos: Juegos Cooperativos',
        'Game Theory: Cooperative Games',
        'CAT/CAST',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220685',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220685',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220685'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '220686',
        'Teoria de Jocs: Jocs No Cooperatius',
        'Teoría de Juegos: Juegos No Cooperativos',
        'Game Theory: Non-Cooperative Games',
        'CAT',
        3,
        'https://www.upc.edu/content/master/guiadocent/pdf/cat/220686',
        'https://www.upc.edu/content/master/guiadocent/pdf/esp/220686',
        'https://www.upc.edu/content/master/guiadocent/pdf/ing/220686'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320002',
        "Fonaments d'Informàtica",
        'Fundamentos de Informática',
        'Foundations of Computing',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320002',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320002',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320002'
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
        '320007',
        'Ciència i Tecnologia dels Materials',
        'Ciencia y Tecnología de los Materiales',
        'Materials Science and Technology',
        'CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320007',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320007',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320007'
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
        '320009',
        "Economia i Gestió d'Empresa",
        'Economía y Gestión de Empresa',
        'Economics and Business Administration',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320009',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320009',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320009'
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
        '320014',
        'Sistemes Electrònics',
        'Sistemas Electrónicos',
        'Electronic Systems',
        'CAT/ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320014',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320014',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320014'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320015',
        'Control i Automatització Industrial',
        'Control y Automatización Industrial',
        'Industrial Automation and Control',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320015',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320015',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320015'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320016',
        'Enginyeria Tèrmica',
        'Ingeniería Térmica',
        'Thermal Engineering',
        'CAT/ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320016',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320016',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320016'
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
        '320019',
        'Ampliació de Circuits',
        'Ampliación de Circuitos',
        'Advanced Circuits',
        'CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320019',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320019',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320019'
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
        '320025',
        'Eficiència i Qualitat en Sistemes Elèctrics',
        'Eficiencia y Calidad en Sistemas Eléctricos',
        'Efficiency and Quality in Electrical Systems',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320025',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320025',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320025'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320026',
        'Instal·lacions Elèctriques de Baixa Tensió',
        'Instalaciones Eléctricas de Baja Tensión',
        'Low Tension Industrial Installations',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320026',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320026',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320026'
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
        '320031',
        "Fotònica. Òptica Aplicada a l'Enginyeria",
        'Fotónica. Óptica Aplicada a la Ingeniería',
        'Photonics. Optics Applied to Engineering',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320031'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320034',
        'Enginyeria de Control',
        'Ingeniería de Control',
        'Control Engineering',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320034',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320034',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320034'
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
        '320039',
        'Informàtica Industrial',
        'Informática Industrial',
        'Industrial Informatics',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320039',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320039',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320039'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320040',
        'Fabricació Automatitzada i Robòtica Industrial',
        'Fabricación Automatizada y Robótica Industrial',
        'Automated Manufacture and Industrial Robotics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320040',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320040',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320040'
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
        '320042',
        'Dispositius Programables',
        'Dispositivos Programables',
        'Programmable Devices',
        'CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320042',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320042',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320042'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320043',
        'Programació de Sistemes de Control en Temps Real',
        'Programación de Sistemas de Control en Tiempo Real',
        'Control System Programming in Real-Time',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320043',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320043',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320043'
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
        '320045',
        'Planificació, Simulació i Supervisió de Processos',
        'Planificación, Simulación y Supervisión de Procesos',
        'Planning, Simulation and Supervision of Industrial Processes',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320045',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320045',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320045'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320046',
        'Disseny de Sistemes Fotovoltaics',
        'Diseño de Sistemas Fotovoltaicos',
        'Photovoltaic System Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320046',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320046',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320046'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320048',
        'Elasticitat',
        'Elasticidad',
        'Elasticity',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320048',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320048',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320048'
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
        '320054',
        'Estructures i Construcció Industrial',
        'Estructuras y Construcción Industrial',
        'Structures and Industrial Construction',
        'CAT/CAST',
        9,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320054',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320054',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320054'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320055',
        'Enginyeria Gràfica',
        'Ingeniería Gráfica',
        'Engineering Graphics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320055',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320055',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320055'
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
        '320057',
        'Accionaments i Transmissions',
        'Accionamientos y Transmisiones',
        'Drives and Transmissions',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320057',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320057',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320057'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320058',
        'Tecnologia de Materials Plàstics',
        'Tecnología de Materiales Plásticos',
        'Plastic Materials Technology',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320058',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320058',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320058'
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
        '320062',
        "Fonaments d'Enginyeria Química",
        'Fundamentos de Ingeniería Química',
        'Foundations of Chemical Engineering',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320062',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320062',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320062'
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
        '320068',
        'Riscos, Seguretat i Tecnologia Mediambiental',
        'Riesgos, Seguridad y Tecnología Medioambiental',
        'Environmental Risk, Safety and Technology',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320068',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320068',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320068'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320069',
        'Simulació, Optimització i Control de Processos Químics',
        'Simulación, Optimización y Control de Procesos Químicos',
        'Simulation, Optimization and Control of Chemical Processes',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320069',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320069',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320069'
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
        '320071',
        'Contaminació Atmosfèrica i Tecnologies de Tractament',
        'Contaminación Atmosférica y Tecnologías de Tratamiento',
        'Air Pollution and Treatment Technologies',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320071',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320071',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320071'
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
        '320073',
        'Gestió i Tractament de Residus',
        'Gestión y Tratamiento de Residuos',
        'Waste Management and Treatment',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320073',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320073',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320073'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320076',
        'Materials per al Disseny de Productes Tèxtils',
        'Materiales para el Diseño de Productos Textiles',
        'Materials for Textile Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320076',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320076',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320076'
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
        '320082',
        "Processos d'Aprestos i Acabats",
        'Procesos de Aprestos y Acabados',
        'Dressing and Finishing Processes',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320082',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320082',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320082'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320083',
        "Confeccionabilitat d'Estructures Tèxtils",
        'Confeccionabilidad de Estructuras Textiles',
        'Clothesmaking with Textile Structures',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320083',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320083',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320083'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320084',
        'Desenvolupament Integral de Productes Tèxtils',
        'Desarrollo Integral de Productos Textiles',
        'Integral Development of Textile Products',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320084',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320084',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320084'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320085',
        'Disseny en Processos de Tintura, Estampació i Recobriment',
        'Diseño en Procesos de Tintura, Estampación y Recubrimiento',
        'Design of Dyeing, Printing and Coating Processes',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320085',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320085',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320085'
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
        '320097',
        'Anàlisi de Fourier i Equacions Diferencials',
        'Análisis de Fourier y Ecuaciones Diferenciales',
        'Fourier Analysis and Differencial Equations',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320097',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320097',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320097'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320098',
        'Electrònica Digital',
        'Electrónica Digital',
        'Digital Electronics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320098',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320098',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320098'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320100',
        'Circuits i Dispositius Electrònics',
        'Circuitos y Dispositivos Electrónicos',
        'Electronic Devices and Circuits',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320100',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320100',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320100'
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
        '320104',
        'Implementació de Sistemes Audiovisuals',
        'Implementación en Sistemas Audiovisuales',
        'Implementation of Audiovisual Systems',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320104',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320104',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320104'
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
        '320107',
        'Comunicacions Analògiques i Digitals',
        'Comunicaciones Analógicas y Digitales',
        'Analogue and Digital Communications',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320107',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320107',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320107'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320108',
        'Fonaments de Xarxes Telemàtiques',
        'Fundamentos de Redes Telemáticas',
        'Foundations of Telematic Networks',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320108',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320108',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320108'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320109',
        'Processadors Digitals',
        'Procesadores Digitales',
        'Digital Processors',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320109',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320109',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320109'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320110',
        'Acústica',
        'Acústica',
        'Acoustics I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320110',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320110',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320110'
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
        '320112',
        'Emissors i Receptors',
        'Emisores y Receptores',
        'Transmitters and Receivers',
        'CAT/CAST/ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320112',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320112',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320112'
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
        '320116',
        'Algorísmia i Programació Audiovisual',
        'Algoritmia y Programación Audiovisual',
        'Algorithms and Audiovisual Programming',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320116',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320116',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320116'
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
        '320118',
        'Equips de Vídeo',
        'Equipos de Vídeo',
        'Video Equipment',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320118',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320118',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320118'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320119',
        'Codificació Multimèdia',
        'Codificación Multimedia',
        'Multimedia Encoding',
        'CAT/CAST/ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320119',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320119',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320119'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320120',
        'Acústica 2',
        'Acústica 2',
        'Acoustics II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320120',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320120',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320120'
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
        '320126',
        'Sistemes Electrònics Musicals Interactius',
        'Sistemas Electrónicos Musicales Interactivos',
        'Interactive Electronic Musical Systems',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320126',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320126',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320126'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320128',
        "Instal·lacions Elèctriques d'Alta Tensió",
        'Instalaciones Eléctricas de Alta Tensión',
        'High Voltage Electrical Installations',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320128',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320128',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320128'
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
        '320130',
        'Climatització i Instrumentació',
        'Climatización e Instrumentación',
        'Air Conditioning Systems and Instrumentation',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320130',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320130',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320130'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320133',
        "Càlcul i Disseny de Línies Elèctriques d'Alta Tensió",
        'Cálculo y Diseño de Líneas Eléctricas de Alta Tensión',
        'Calculus and Design of High Voltage Power Lines',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320133',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320133',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320133'
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
        '320136',
        'Enginyeria Gràfica',
        'Ingeniería Gráfica',
        'Engineering Graphics',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320136',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320136',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320136'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320138',
        'Estètica i Disseny',
        'Estética y Diseño',
        'Aesthetics and Design',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320138',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320138',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320138'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320139',
        'Metodologia del Disseny',
        'Metodología del Diseño',
        'Design Methodology',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320139',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320139',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320139'
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
        '320145',
        'Disseny i Producte II',
        'Diseño y Producto II',
        'Product Design II',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320145',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320145',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320145'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320146',
        'Processos de Fabricació',
        'Procesos de Fabricación',
        'Manufacturing Processes',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320146',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320146',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320146'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320147',
        'Presentació del Producte',
        'Presentación del Producto',
        'Product Presentation',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320147',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320147',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320147'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320148',
        'Aspectes Econòmics i Màrqueting',
        'Aspectos Económicos y Marketing',
        'Economic Factors and Marketing',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320148',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320148',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320148'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320149',
        'Taller de Disseny Experimental del Producte',
        'Taller de Diseño Experimental de Producto',
        'Experimental Design Workshop Product',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320149',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320149',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320149'
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
        '320153',
        'Projecció Internacional de Disseny',
        'Proyección Internacional de Diseño',
        'International Projection of Design',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320153',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320153',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320153'
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
        '320155',
        'Disseny Integral del Producte',
        'Diseño Integral del Producto',
        'Integral Design of Product',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320155',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320155',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320155'
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
        '320158',
        'Sistemes Electrònics',
        'Sistemas Electrónicos',
        'Electronic Systems',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320158',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320158',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320158'
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
        '320167',
        'Elasticitat i Resistència dels Materials',
        'Elasticidad y Resistencia de los Materiales',
        'Elasticity and Strength of Materials',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320167',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320167',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320167'
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
        '320169',
        'Vehicles Elèctrics',
        'Vehículos Eléctricos',
        'Electric Vehicles',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320169',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320169',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320169'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320170',
        'Supervisió de Sistemes Elèctrics',
        'Supervisión de Sistemas Eléctricos',
        'Supervision of Electrical Systems',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320170',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320170',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320170'
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
        '320172',
        'Disseny de Sistemes Solars i Eòlics',
        'Diseño de Sistemas Solares y Eólicos',
        'Design of Solar and Eolic Systems',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320172',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320172',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320172'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320173',
        'Projecte de Sistemes Electrònics Aplicats a Energies Renovables i Eficiència Energètica',
        'Proyecto de Sistemas Electrónicos Aplicados a Energías Renovables y Eficiencia Energética',
        'Electronic System Design Applied to Renewable Energy and Energy Efficiency',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320173',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320173',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320173'
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320174',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320174',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320174'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320175',
        'Ecodisseny',
        'Ecodiseño',
        'Ecodesign',
        'ING',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320175',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320175',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320175'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '320176',
        'Comunicacions Multimèdia',
        'Comunicaciones Multimedia',
        'Multimedia Communications',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320176',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320176',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320176'
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
        '320192',
        'Iniciació a les Tecnologies Industrials Paperera i Gràfica',
        'Iniciación a las Tecnologías Industriales Papelera y Gráfica',
        'Initiation to Paper and Graphic Industrial Tecnologies',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320192',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320192',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320192'
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/320194',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/320194',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/320194'
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
        '3200011',
        'Mètodes Matemàtics I',
        'Métodos Matemáticos I',
        'Mathematical Methods I',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200011',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200011'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200012',
        'Mètodes Matemàtics II',
        'Métodos Matemáticos II',
        'Mathematical Methods II',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200012',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200012',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200012'
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
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200031',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200031'
);

INSERT INTO asignaturas
    (codigo_asignatura, nombre_catalan,
    nombre_castellano, nombre_ingles, idioma, ects, plan_de_estudios_catalan,
    plan_de_estudios_castellano, plan_de_estudios_ingles)
VALUES(
        '3200032',
        'Física II',
        'Física II',
        'Physics II',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200032',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200032',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200032'
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
        '3200212',
        'Màquines Elèctriques II',
        'Máquinas Eléctricas II',
        'Electrical Machines II',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200212',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200212',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200212'
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
        '3200332',
        'Modelització i Anàlisi de Sistemes Dinàmics II',
        'Modelización y Análisis de los Sistemas Dinámicos II',
        'Modelling and Analysis of Dinamic Systems II',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200332',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200332',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200332'
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
        '3200372',
        'Electrònica de Potència II',
        'Electrónica de Potencia II',
        'Power Electronics II',
        'CAT/CAST',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200372',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200372',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200372'
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
        '3200502',
        'Sistemes Tèrmics II',
        'Sistemas Térmicos II',
        'Thermal Systems II',
        'CAT',
        4.5,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200502',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200502',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200502'
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
        '3200512',
        'Teoria i Disseny de Màquines i Mecanismes II',
        'Teoria y Diseño de Máquinas y Mecanismos II',
        'Theory and Design of Machines and Mechanisms II',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200512',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200512',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200512'
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
        '3200662',
        'Experimentació en Enginyeria Química II',
        'Experimentación en Ingeniería Química II',
        'Experimentation on Chemical Engineering II',
        'CAT/CAST',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200662',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200662',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200662'
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
        '3200672',
        'Operacions Bàsiques II',
        'Operaciones Básicas II',
        'Basic Operations II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200672',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200672',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200672'
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
        '3200962',
        'Física II',
        'Física II',
        'Physics II',
        'CAT',
        6,
        'https://www.upc.edu/content/grau/guiadocent/pdf/cat/3200962',
        'https://www.upc.edu/content/grau/guiadocent/pdf/esp/3200962',
        'https://www.upc.edu/content/grau/guiadocent/pdf/ing/3200962'
);