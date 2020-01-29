
DROP TABLE IF EXISTS titulaciones;

CREATE TABLE titulaciones(
    codigo_titulacion TEXT PRIMARY KEY,
    titulacion_catalan TEXT,
    titulacion_castellano TEXT,
    titulacion_ingles TEXT,
    ciclo int
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    'GRESEIAAT',
    'Graus',
    'Grados',
    'Bachelors',
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '320GRESAUD',
    'Grau en Enginyeria de Sistemes Audiovisuals',
    'Grado en Ingeniería de Sistemas Audiovisuales',
    "Bachelor's degree in Audiovisual Systems",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '320GREMECA',
    'Grau en Enginyeria Mecànica',
    'Grado en Ingeniería Mecánica',
    "Bachelor's degree in Mechanical Engineering",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '320GREQUIM',
    'Grau en Enginyeria Química',
    'Grado en Ingeniería Química',
    "Bachelor's degree in Chemical Engineering",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '320GREELEC',
    'Grau en Enginyeria Elèctrica',
    'Grado en Ingeniería Eléctrica',
    "Bachelor's degree in Electrical Engineering",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '320GREDIDP',
    'Grau en Enginyeria de Disseny Industrial i Desenvolupament del Producte',
    'Grado en Ingeniería de Diseño Industrial y Desarrollo del Producto',
    "Bachelor's degree in Industrial Design and Product Development",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '320GREEIA',
    'Grau en Enginyeria en Electrònica Industrial i Automàtica',
    'Grado en Ingeniería Electrónica Industrial y Automática',
    "Bachelor's degree in Industrial Electronics and Automatic Control Engineering",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '320GRETDT',
    'Grau en Enginyeria de Tecnologia i Disseny Tèxtil',
    'Grado en Ingeniería de Tecnología y Diseño Textil',
    "Bachelor's degree in Textile Technology and Design",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '220GRETIND',
    'Grau en Enginyeria en Tecnologies Industrials',
    'Grado en Ingeniería en Tecnologías Industriales',
    "Bachelor's degree in Industrial Techology Engineering",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '220GRETAER',
    'Grau en Enginyeria en Tecnologies Aeroespacials',
    'Grado en Ingeniería en Tecnologías Aeroespaciales',
    "Bachelor's degree in Aerospace Techology Engineering",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '220GREVAER',
    'Grau en Enginyeria en Vehicles Aeroespacials',
    'Grado en Ingeniería en Vehículos Aeroespaciales',
    "Bachelor's degree in Aerospace Vehicle Engineering",
    1
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    'MUESEIAAT',
    'Màsters',
    'Másters',
    'Masters',
    2
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '220MEI',
    'Màster Universitari en Enginyeria Industrial',
    'Máster Universitario en Ingeniería Industrial',
    "Master's degree in Industrial Engineering",
    2
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '220MUESAI',
    'Màster Universitari en Enginyeria de Sistemes Automàtics i Electrònica Industrial',
    'Máster universitario en Ingeniería de Sistemas Automáticos y Electrónica Industrial',
    "Master's degree in Automatic Systems and Industrial Electronics Engineering",
    2
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '220MUAERON',
    'Màster Universitari en Enginyeria Aeronàutica',
    'Máster Universitario en Ingeniería Aeronáutica',
    "Master's degree in Aerospace Engineering",
    2
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '220MEORSEM',
    "Màster Universitari en Enginyeria d'Organització",
    'Máster Universitario en Ingeniería de Organización',
    "Master's degree in Management Engineering",
    2
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '205MEM',
    "Master's Degree in Technology and Engineering Management",
    "Master's Degree in Technology and Engineering Management",
    "Master's Degree in Technology and Engineering Management",
    2
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '205MASE',
    "Master's degree in Space and Aeronautical Engineering",
    "Master's degree in Space and Aeronautical Engineering",
    "Master's degree in Space and Aeronautical Engineering",
    2
);

INSERT INTO titulaciones (codigo_titulacion, titulacion_catalan, titulacion_castellano, titulacion_ingles, ciclo) VALUES(
    '205METEXPA',
    'Màster Universitari en Enginyeria Tèxtil i Paperera',
    'Máster Universitario en Ingeniería Textil y Papelera',
    "Master's degree in Textile and Paper Engineering",
    2
);
