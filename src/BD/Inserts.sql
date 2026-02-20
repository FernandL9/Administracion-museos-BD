-- Inserts de LUGAR

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (1, 'Estados Unidos', 'P', 'AM', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (2, 'Uruguay', 'P', 'AM', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (3, 'Inglaterra', 'P', 'EU', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (4, 'España', 'P', 'EU', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, id_padre)
VALUES (5, 'Ohio', 'E', 1); 

INSERT INTO LUGAR (id_lugar, nombre, tipo, id_padre)
VALUES (6, 'Indiana', 'E', 1);

INSERT INTO LUGAR (id_lugar, nombre, tipo, id_padre)
VALUES (7, 'Montevideo', 'E', 2);

INSERT INTO LUGAR (id_lugar, nombre, tipo, id_padre)
VALUES (8, 'Londres', 'E', 3);

INSERT INTO LUGAR (id_lugar, nombre, tipo, id_padre)
VALUES (9, 'Oxfordshire', 'E', 3);

INSERT INTO LUGAR (id_lugar, nombre, tipo, id_padre)
VALUES (10, 'Provincia de Sevilla', 'E', 4);

INSERT INTO LUGAR (id_lugar, nombre, tipo, id_padre)
VALUES (11, 'Comunidad de Madrid', 'E', 4);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (12, 'Francia', 'P', 'EU', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (13, 'Italia', 'P', 'EU', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (14, 'Países Bajos', 'P', 'EU', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (15, 'India', 'P', 'AS', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (16, 'Egipto', 'P', 'AF', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (17, 'China', 'P', 'AS', NULL);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (18, 'Nariño', 'E', 'AM', 2);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (19, 'Tamil Nadu', 'E', 'AS', 15);

INSERT INTO LUGAR (id_lugar, nombre, tipo, continente, id_padre)
VALUES (20, 'Valencia', 'E', 'EU', 4);



-- Inserts de IDIOMA 

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (1, 'Español');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (2, 'Inglés');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (3, 'Francés');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (4, 'Italiano');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (5, 'Portugués');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (6, 'Chino');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (7, 'Polaco');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (8, 'Alemán');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (9, 'Ruso');

INSERT INTO IDIOMA (id_idioma, nombre)
VALUES (10, 'Japonés');


-- Inserts de EMPLEADO_PROFESIONAL 

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (1, 'Michael', 'James', 'Smith', 'Johnson', '1987-04-12', 'M', '0015551234567', 'US12345678');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (2, 'Emily', 'Grace', 'Williams', 'Brown', '1991-09-23', 'F', '0015559876543', 'US87654321');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (3, 'David', 'Alexander', 'Miller', 'Davis', '1984-02-17', 'M', '0015552468135', 'US24681357');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (4, 'Juan', 'Carlos', 'Pérez', 'Gómez', '1985-05-10', 'M', '344141234567', '12345678Z');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (5, 'María', NULL, 'Rodríguez', 'Fernández', '1990-08-15', 'F', '344141234568', '87654321F');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (6, 'Luis', 'Alberto', 'García', 'Ramírez', '1982-03-22', 'M', '344141234569', '23456789N');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (7, 'Ana', 'Isabel', 'Martínez', 'López', '1995-07-30', 'F', '344141234570', '34567890F');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (8, 'Sofía', 'Lucía', 'Silva', 'Pereira', '1988-11-05', 'F', '59891234567', 'UY1234567');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (9, 'Martín', 'Andrés', 'Fernández', 'García', '1992-03-18', 'M', '59898765432', 'UY2345678');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (10, 'Valentina', NULL, 'Rodríguez', 'López', '1995-07-22', 'F', '59899887766', 'UY3456789');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (11, 'Oliver', 'George', 'Taylor', 'Evans', '1986-12-03', 'M', '4407912345678', 'UK1234567');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (12, 'Charlotte', 'Rose', 'Walker', 'Harris', '1993-05-19', 'F', '4407923456789', 'UK2345678');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (13, 'Giulia', NULL, 'Bianchi', 'Rossi', '1989-10-14', 'F', '390612345678', 'IT1234567');

INSERT INTO EMPLEADO_PROFESIONAL (expediente, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, genero, telefono, doc_identidad)
VALUES (14, 'Pierre', 'Louis', 'Dubois', 'Lefevre', '1983-03-27', 'M', '330145678912', 'FR9876543');


-- Inserts de FORMACIÓN_PROFESIONAL 

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (1, 1, 'Licenciado en Historia', '2008-06-15', 'Especialización en historia del arte y conservación de patrimonio.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (2, 2, 'Licenciado en Bellas Artes', '2012-07-20', 'Especialización en técnicas de pintura y restauración.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (3, 3, 'Ingeniero en Diseño Industrial', '2005-11-10', 'Diseño y fabricación de estructuras para exposiciones.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (4, 4, 'Licenciado en Gestión Cultural', '2018-03-25', 'Gestión de eventos culturales y administración de museos.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (5, 5, 'Licenciado en Conservación y Restauración', '2010-09-30', 'Especialización en conservación de obras de arte y patrimonio cultural.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (6, 6, 'Licenciado en Arqueología', '2015-05-18', 'Especialización en arqueología y conservación de artefactos históricos.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (7, 7, 'Licenciado en Museología', '2013-08-22', 'Especialización en teoría y práctica de la museología y gestión de colecciones.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (8, 8, 'Licenciado en Historia del Arte', '2016-12-05', 'Especialización en historia del arte contemporáneo y curaduría.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (9, 9, 'Licenciado en Patrimonio Cultural', '2011-04-15', 'Especialización en gestión y conservación del patrimonio cultural material e inmaterial.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (10, 10, 'Licenciada en Historia del Arte', '2017-06-20', 'Especialización en museología y gestión de colecciones artísticas.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (11, 11, 'Licenciado en Conservación de Patrimonio', '2009-10-10', 'Conservación y restauración de obras en museos históricos.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (12, 12, 'Licenciada en Gestión de Museos', '2014-12-15', 'Gestión de exposiciones y administración de museos internacionales.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (13, 13, 'Licenciada en Historia del Arte', '2011-07-10', 'Especialización en arte renacentista italiano y gestión de museos.');

INSERT INTO FORMACION_PROFESIONAL (id_formacion, expediente, titulo_obtenido, anio, descripcion_esp)
VALUES (14, 14, 'Licenciado en Conservación de Patrimonio', '2007-06-15', 'Especialización en conservación de arte francés y restauración de pinturas.');


-- Inserts de EMP_ID 

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (1, 2);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (2, 2);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (3, 2);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (3, 4);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (4, 1);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (5, 1);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (6, 1);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (6, 8);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (7, 1);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (8, 1);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (9, 1);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (10, 1);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (11, 2);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (11, 3);

INSERT INTO EMP_ID (expediente, id_idioma) 
VALUES (12, 2);

INSERT INTO EMP_ID (expediente, id_idioma)
VALUES (13, 4); 

INSERT INTO EMP_ID (expediente, id_idioma)
VALUES (13, 2); 

INSERT INTO EMP_ID (expediente, id_idioma)
VALUES (14, 3);

INSERT INTO EMP_ID (expediente, id_idioma)
VALUES (14, 2); 


-- Inserts de EMPLEADO_MANT_VIG 

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (1, 'Pedro', 'González', '12345678', 'M');

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (2, 'Luisa', 'Martínez', '87654321', 'V'); 

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (3, 'Carlos', 'Ramírez', '23456789', 'M'); 

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (4, 'Ana', 'López', '34567890', 'V'); 

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (5, 'Javier', 'Hernández', '45678901', 'M'); 

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (6, 'John', 'Williams', 'US99887766', 'V');

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (7, 'Jessica', 'Smith', 'US11223344', 'M');

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (8, 'William', 'Clark', 'UK99887711', 'M');

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (9, 'Elizabeth', 'Baker', 'UK22334455', 'M');

INSERT INTO EMPLEADO_MANT_VIG (id_empleado_mant_vig, nombre, apellido, doc_identidad, tipo)
VALUES (10, 'Thomas', 'Wright', 'UK55667788', 'V');


-- Inserts de MUSEO 

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (1, 1, 'Museo de Arte Memorial Allen', 'A', '1917-01-01', 'El Museo de Arte Allen Memorial en Oberlin College inspira curiosidad, investigación, aprendizaje y conexión a través de experiencias con obras de arte originales para el público más amplio posible, tanto en el campus como fuera del campus.');

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (2, 1, 'David Owsley Museum of Art', 'A', '1936-01-01', 'The David Owsley Museum of Art cultivates lifelong learning and recreation in the visual arts through its collection of original works of art, engaging exhibitions, and educational programs for the University community and other diverse audiences.');

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (3, 2, 'Museo Torres García', 'A', '1955-07-28', 'Propiciar el encuentro del legado de Joaquín Torres García con la sociedad toda.');

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (4, 2, 'Museo de Arte Precolombino e Indígena', 'A', '2004-09-17', 'Preservar, investigar y difundir el patrimonio cultural de estos pueblos, fomentando el diálogo intercultural y la comprensión de su legado.');

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (5, 3, 'Museo Británico', 'A', '1753-01-01', 'Cuidar, exhibir y promover el conocimiento de la colección.');

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (6, 3, 'Museo Ashmolean', 'A', '1683-01-01', 'Trabajar para aumentar el conocimiento y la comprensión, ofreciendo, fomentando y facilitando investigación y docencia de primer nivel. Ampliar nuestro alcance, fortalecer nuestra reputación y dar a conocer la marca Ashmolean, a la vez que promocionamos la Universidad de Oxford.');

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (7, 4, 'Museo de Bellas Artes de Sevilla', 'A', '1835-09-16', 'Conservar, estudiar, difundir y proteger el patrimonio artístico y cultural de la ciudad de Sevilla y Andalucía.');

INSERT INTO MUSEO (id_museo, id_lugar, nombre, tipo, fecha_fundacion, mision)
VALUES (8, 4, 'Museo Sorolla', 'A', '1932-06-11', 'Conservar el legado de Joaquín Sorolla. Documentar y catalogar sus colecciones como medio para su conservación y conocimiento. Investigar y promover la investigación sobre la obra de Joaquín Sorolla y su contexto desde todos los puntos de vista. Exponer las colecciones en las mejores condiciones para su contemplación y su interpretación. Difundir el legado de Sorolla a todos los niveles y hacerlo accesible al mayor número posible de públicos. Incrementar las colecciones de pintura para completar la representación de todas las fases de su producción.');


-- Inserts de ARTISTA 

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (1, 4, 'Joaquín', NULL, 'Sorolla', 'Bastida', '1863-02-27', NULL, '1923-08-10', 'Pintor español conocido por su dominio de la luz y el color, especialmente en escenas costumbristas y paisajes mediterráneos.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (2, 14, NULL, NULL, 'Anónimo', NULL, NULL, NULL, NULL, 'Escultor clásico cuya obra refleja el dramatismo y energía del arte antiguo, como en "Lion Attacking a Bull".');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (3, 14, NULL, NULL, 'Anónimo', NULL, NULL, NULL, NULL, 'Artista especializado en la creación de bustos decorativos, como "Decorative Bust of a Silenus", utilizando técnicas de cera perdida.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (4, 4, 'Pablo', NULL, 'Picasso', NULL, '1881-10-25', NULL, '1973-04-08', 'Pintor y escultor español conocido por ser uno de los fundadores del cubismo y su influencia en el arte moderno.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (5, 4, 'Salvador', NULL, 'Dalí', NULL, '1904-05-11', NULL, '1989-01-23', 'Pintor surrealista español conocido por su estilo único y obras como "La persistencia de la memoria", que exploran el subconsciente y los sueños.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (6, 12, 'Claude', NULL, 'Monet', NULL, '1840-11-14', NULL, '1926-12-05', 'Pintor francés conocido por ser uno de los fundadores del impresionismo.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (7, 13, 'Leonardo', NULL, 'da Vinci', NULL, '1452-04-15', NULL, '1519-05-02', 'Artista italiano conocido por sus obras maestras como "La Mona Lisa" y "La Última Cena".');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (8, 1, 'Andy', NULL, 'Warhol', NULL, '1928-08-06', NULL, '1987-02-22', 'Artista estadounidense conocido por ser una figura clave en el movimiento del arte pop.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (9, 1, 'John', NULL, 'Singer', 'Sargent', '1856-01-12', NULL, '1925-04-14', 'Pintor estadounidense conocido por sus retratos y paisajes impresionistas, destacando por su técnica suelta y su manejo de la luz.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (10, 1, 'Charles', NULL, 'Sheeler', NULL, '1883-07-16', NULL, '1965-05-07', 'Pintor y fotógrafo estadounidense, pionero del precisionismo, conocido por sus naturalezas muertas y paisajes urbanos.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (11, 2, 'Joaquín', NULL, 'Torres', 'García', '1874-07-28', NULL, '1949-08-08', 'Artista uruguayo, creador del Universalismo Constructivo, integrando geometría y simbolismo en sus obras.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (12, 3, 'Jean-Baptiste', NULL, 'Camille', 'Corot', '1796-07-16', NULL, '1875-02-22', 'Pintor francés, precursor del impresionismo, conocido por sus paisajes poéticos y su tratamiento atmosférico de la luz.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (13, 4, 'Bartolomé', NULL, 'Esteban', 'Murillo', '1617-12-31', NULL, '1682-04-03', 'Pintor barroco español, célebre por sus obras religiosas y escenas costumbristas, con un estilo suave y luminoso.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (14, 5, 'Edgar', NULL, 'Degas', NULL, '1834-07-19', NULL, '1917-09-27', 'Pintor y escultor francés, destacado por sus escenas de ballet y su exploración del movimiento y la luz.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (15, 6, 'Rachel', NULL, 'Ruysch', NULL, '1664-06-03', NULL, '1750-08-12', 'Pintora neerlandesa especializada en bodegones florales, reconocida por su detallismo y composición naturalista.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (16, 15, 'Raja', NULL, 'Ravi', 'Varma', '1848-04-29', 'El Rafael de la India', '1906-10-02', 'Pintor indio célebre por fusionar estilos europeos con temas y mitología hindú, considerado uno de los más grandes artistas de la India.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (17, 17, 'Wu', NULL, 'Daozi', NULL, '0680-01-01', NULL, '0759-01-01', 'Pintor chino de la dinastía Tang, célebre por sus esculturas y pinturas budistas, considerado el "Sabio del Pincel".');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (18, 18, NULL, NULL, 'Anónimo', NULL, NULL, 'Cultura Nariño', NULL, 'Artista anónimo de la Cultura Nariño, región andina de Colombia y Ecuador, conocido por la elaboración de figuras cerámicas policromadas representando prácticas culturales como el masticado de coca.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (19, 19, NULL, NULL, 'Anónimo', NULL, NULL, 'Chola', NULL, 'Artista anónimo de la dinastía Chola, célebre por la creación de esculturas de bronce hindúes en el sur de la India, especialmente figuras religiosas como Chandikeshvara, Shiva y Parvati, caracterizadas por su refinamiento técnico y expresividad.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (22, 10, 'Pedro', NULL, 'Millán', NULL, NULL, NULL, NULL, 'Escultor español del gótico tardío, activo en Sevilla a finales del siglo XV, conocido por sus obras religiosas en barro cocido y policromado, destacando por su realismo y expresividad.');

INSERT INTO ARTISTA (id_artista, id_lugar, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, apodo, fecha_muerte, resumen_caracteristicas_arte)
VALUES (21, 20, 'Mariano', NULL, 'Benlliure', 'Gil', '1862-09-08', NULL, '1947-11-09', 'Escultor español destacado por su realismo y maestría en el modelado, autor de numerosos monumentos y retratos, especialmente en bronce y mármol.');



-- Inserts de HISTORICO_MUSEO 

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('1917-01-01', 1, 'Fundación del Museo de Arte Memorial Allen en Oberlin College.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('1936-01-01', 2, 'Fundación del David Owsley Museum of Art, dedicado a la promoción del aprendizaje visual.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('1955-07-28', 3, 'Inauguración del Museo Torres García en Uruguay, dedicado al legado del artista Joaquín Torres García.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('2004-09-17', 4, 'Apertura del Museo de Arte Precolombino e Indígena, enfocado en la preservación del patrimonio cultural indígena.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('1753-01-01', 5, 'Fundación del Museo Británico, uno de los museos más antiguos del mundo.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('1683-01-01', 6, 'Inauguración del Museo Ashmolean, el primer museo universitario del mundo.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('1835-09-16', 7, 'Apertura del Museo de Bellas Artes de Sevilla, dedicado al arte andaluz.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('1932-06-11', 8, 'Inauguración del Museo Sorolla, dedicado a la vida y obra del pintor Joaquín Sorolla.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('2020-03-15', 5, 'El Museo Británico cerró temporalmente debido a la pandemia de COVID-19, marcando un evento histórico en su operación.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('2017-01-01', 1, 'Celebración del centenario del Museo de Arte Memorial Allen con una exposición especial de arte moderno.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('2010-05-15', 2, 'Renovación de las salas principales del David Owsley Museum of Art para mejorar la experiencia del visitante.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('2000-06-10', 5, 'El Museo Británico inaugura una nueva ala dedicada al arte asiático.');

INSERT INTO HISTORICO_MUSEO (fecha_anio, id_museo, descp_hechos)
VALUES ('2015-09-16', 7, 'El Museo de Bellas Artes de Sevilla recibe una donación significativa de obras barrocas.');


-- Inserts de HORARIO 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (1, 1, '09:00:00', '17:00:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (2, 2, '10:00:00', '18:00:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (3, 3, '08:30:00', '16:30:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (4, 4, '09:30:00', '17:30:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (5, 5, '10:00:00', '18:00:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (6, 6, '09:00:00', '17:00:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (7, 7, '09:00:00', '15:00:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (8, 8, '10:00:00', '18:00:00'); 

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (9, 5, '11:00:00', '19:00:00');

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (10, 2, '18:00:00', '23:00:00');

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (11, 4, '19:30:00', '23:59:00');

INSERT INTO HORARIO (id_horario, id_museo, hora_apertura, hora_cierre)
VALUES (12, 7, '20:00:00', '23:00:00');


-- Inserts de TIPO_TICKET

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-01-01', 1, '2025-12-31', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-02-15', 1, '2025-11-30', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-03-10', 1, '2025-10-31', 'N', 0.00);

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-04-01', 2, '2025-09-30', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-05-20', 2, '2025-08-31', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-06-05', 2, '2025-07-31', 'N', 0.00);

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-07-01', 3, '2025-06-30', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-08-10', 3, '2025-05-31', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-09-15', 3, '2025-04-30', 'N', 0.00);

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-10-01', 4, '2025-03-31', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-11-20', 4, '2025-02-28', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2023-12-05', 4, '2025-01-31', 'N', 0.00);

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-01-01', 5, '2025-12-31', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-02-15', 5, '2025-11-30', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-03-10', 5, '2025-10-31', 'N', 0.00);

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-04-01', 6, '2025-09-30', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-05-20', 6, '2025-08-31', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-06-05', 6, '2025-07-31', 'N', 0.00);

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-07-01', 7, '2025-06-30', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-08-10', 7, '2025-05-31', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-09-15', 7, '2025-04-30', 'N', 0.00);

INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-10-01', 8, '2025-03-31', 'A', 15.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-11-20', 8, '2025-02-28', 'E', 7.00);
INSERT INTO TIPO_TICKET (fecha_inicio, id_museo, fecha_final, tipo_ticket, monto)
VALUES ('2024-12-05', 8, '2025-01-31', 'N', 0.00);


-- Inserts de TICKET

INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (1, 1, '2025-06-12 09:15:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (2, 1, '2025-06-13 10:30:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (3, 1, '2025-06-14 11:45:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (4, 1, '2025-07-01 12:00:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (5, 1, '2025-07-02 13:20:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (6, 1, '2025-07-03 14:10:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (45, 1, '2025-07-04 12:00:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (46, 1, '2025-07-05 13:20:00', 'Estudiante', 7.00);

INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (7, 2, '2025-06-15 11:00:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (8, 2, '2025-06-16 11:30:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (9, 2, '2025-06-17 12:45:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (10, 2, '2025-07-05 13:00:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (11, 2, '2025-07-06 14:20:00', 'Estudiante', 7.00);

INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (12, 3, '2025-06-18 09:30:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (13, 3, '2025-06-19 10:45:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (14, 3, '2025-06-20 11:50:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (15, 3, '2025-07-10 12:30:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (16, 3, '2025-07-11 13:40:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (17, 3, '2025-07-12 15:00:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (47, 3, '2025-07-06 11:50:00', 'Estudiante', 7.00);


INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (18, 4, '2025-06-21 10:10:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (19, 4, '2025-06-22 11:25:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (20, 4, '2025-06-23 12:35:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (21, 4, '2025-07-15 13:50:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (22, 4, '2025-07-16 14:55:00', 'Niño', 0.00);


INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (23, 5, '2025-06-24 10:20:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (24, 5, '2025-06-25 10:35:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (25, 5, '2025-06-26 11:40:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (26, 5, '2025-07-20 12:55:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (27, 5, '2025-07-21 13:30:00', 'Estudiante', 7.00);


INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (28, 6, '2025-06-27 10:05:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (29, 6, '2025-06-28 11:15:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (30, 6, '2025-06-29 12:25:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (31, 6, '2025-07-25 13:35:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (32, 6, '2025-07-26 14:45:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (33, 6, '2025-07-27 15:30:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (48, 6, '2025-07-28 11:15:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (49, 6, '2025-07-28 12:30:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (50, 6, '2025-07-29 13:00:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (51, 6, '2025-07-29 11:45:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (52, 6, '2025-07-30 13:55:00', 'Estudiante', 7.00);


INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (34, 7, '2025-06-30 09:50:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (35, 7, '2025-07-01 10:55:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (36, 7, '2025-07-02 12:05:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (37, 7, '2025-07-27 13:15:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (38, 7, '2025-07-28 14:25:00', 'Estudiante', 7.00);


INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (39, 8, '2025-07-03 10:20:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (40, 8, '2025-07-04 11:30:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (41, 8, '2025-07-05 12:40:00', 'Niño', 0.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (42, 8, '2025-07-29 13:50:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (43, 8, '2025-07-30 14:55:00', 'Estudiante', 7.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (44, 8, '2025-07-31 16:00:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (53, 8, '2025-08-01 10:10:00', 'Adulto', 15.00);
INSERT INTO TICKET (id_ticket, id_museo, fecha_emision, tipo, monto)
VALUES (54, 8, '2025-08-02 11:20:00', 'Adulto', 15.00);


-- Inserts de ESTRUCTURA_FISICA 

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (1, 1, 'Edificio Principal', 'E', 'Edificio principal del museo', '87 N Main St, Oberlin, OH 44074, Estados Unidos', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (2, 1, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 1, 1);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (3, 1, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones temporales', NULL, 2, 1);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (4, 1, 'Área de Colecciones', 'A', 'Área dedicada a la colección permanente', NULL, 2, 1);

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (5, 2, 'Edificio Principal', 'E', 'Edificio principal del museo', '2021 W Riverside Ave, Muncie, IN 47306, Estados Unidos', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (6, 2, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 5, 2);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (7, 2, 'Área de Investigación', 'A', 'Área dedicada a la investigación', NULL, 6, 2);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (8, 2, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones temporales', NULL, 6, 2);

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (9, 3, 'Edificio Principal', 'E', 'Edificio principal del museo', '25 de Mayo 192, 11000 Montevideo, Uruguay', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (10, 3, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 9, 3);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (11, 3, 'Área de Restauración', 'A', 'Área dedicada a la restauración de obras', NULL, 10, 3);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (12, 3, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones temporales', NULL, 10, 3);

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (13, 4, 'Edificio Principal', 'E', 'Edificio principal del museo', '25 de Mayo 279, 11000 Montevideo, Uruguay', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (14, 4, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 13, 4);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (15, 4, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones permanentes', NULL, 14, 4);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (16, 4, 'Área de Colecciones', 'A', 'Área dedicada a la colección permanente', NULL, 14, 4);

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (17, 5, 'Edificio Principal', 'E', 'Edificio principal del museo', 'Great Russell St, London WC1B 3DG, Reino Unido', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (18, 5, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 17, 5);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (19, 5, 'Área de Conservación', 'A', 'Área dedicada a la conservación de obras', NULL, 18, 5);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (20, 5, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones temporales', NULL, 18, 5);

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (21, 6, 'Edificio Principal', 'E', 'Edificio principal del museo', 'Beaumont St, Oxford OX1 2PH, Reino Unido', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (22, 6, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 21, 6);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (23, 6, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones temporales', NULL, 22, 6);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (24, 6, 'Área de Colecciones', 'A', 'Área dedicada a la colección permanente', NULL, 22, 6);

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (25, 7, 'Edificio Principal', 'E', 'Edificio principal del museo', 'Pl. del Museo, 9, 41001 Sevilla, España', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (26, 7, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 25, 7);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (27, 7, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones temporales', NULL, 26, 7);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (28, 7, 'Área de Colecciones', 'A', 'Área dedicada a la colección permanente', NULL, 26, 7);

INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (29, 8, 'Edificio Principal', 'E', 'Edificio principal del museo', 'Paseo del General Martínez Campos, 37, 28010 Madrid, España', NULL, NULL);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (30, 8, 'Piso 1', 'P', 'Primer piso del edificio principal', NULL, 29, 8);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (31, 8, 'Área de Exposiciones', 'A', 'Área dedicada a exposiciones temporales', NULL, 30, 8);
INSERT INTO ESTRUCTURA_FISICA (id_est_f, id_museo, nombre, tipo_estructura_f, descripcion, direccion, id_padre_fis, id_padre_museo_fis)
VALUES (32, 8, 'Área de Colecciones', 'A', 'Área dedicada a la colección permanente', NULL, 30, 8);


-- Inserts de ESTRUCTURA_ORG 

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (1, 1, 'Departamento de Administración', 'departamento', 1, 'Encargado de la administración general del museo.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (2, 1, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 1, 1);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (3, 1, 'Sección de Conservación', 'seccion', 3, 'Responsable de la conservación de las obras.', 2, 1);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (4, 1, 'Subdepartamento de Restauración', 'subdept', 4, 'Encargado de restaurar obras dañadas.', 3, 1);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (5, 1, 'Subsección de Documentación', 'subseccion', 5, 'Encargada de documentar las restauraciones.', 4, 1);

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (6, 2, 'Departamento de Arte Precolombino', 'departamento', 1, 'Encargado de la preservación del arte precolombino.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (7, 2, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 6, 2);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (8, 2, 'Sección de Investigación', 'seccion', 3, 'Responsable de investigar las colecciones.', 7, 2);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (9, 2, 'Subdepartamento de Publicaciones', 'subdept', 4, 'Encargado de publicar investigaciones.', 8, 2);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (10, 2, 'Subsección de Difusión', 'subseccion', 5, 'Promueve las actividades del museo.', 9, 2);

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (11, 3, 'Departamento de Arte Moderno', 'departamento', 1, 'Encargado de la preservación del arte moderno.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (12, 3, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 11, 3);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (13, 3, 'Sección de Exposiciones', 'seccion', 3, 'Responsable de organizar exposiciones.', 12, 3);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (14, 3, 'Subdepartamento de Logística', 'subdept', 4, 'Encargado de la logística de las exposiciones.', 13, 3);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (15, 3, 'Subsección de Transporte', 'subseccion', 5, 'Encargada del transporte de las obras.', 14, 3);

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (16, 4, 'Departamento de Arte Indígena', 'departamento', 1, 'Encargado de la preservación del arte indígena.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (17, 4, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 16, 4);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (18, 4, 'Sección de Investigación', 'seccion', 3, 'Responsable de investigar las colecciones.', 17, 4);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (19, 4, 'Subdepartamento de Publicaciones', 'subdept', 4, 'Encargado de publicar investigaciones.', 18, 4);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (20, 4, 'Subsección de Difusión', 'subseccion', 5, 'Promueve las actividades del museo.', 19, 4);

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (21, 5, 'Departamento de Historia', 'departamento', 1, 'Encargado de la preservación de la historia.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (22, 5, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 21, 5);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (23, 5, 'Sección de Conservación', 'seccion', 3, 'Responsable de la conservación de las obras.', 22, 5);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (24, 5, 'Subdepartamento de Restauración', 'subdept', 4, 'Encargado de restaurar obras dañadas.', 23, 5);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (25, 5, 'Subsección de Documentación', 'subseccion', 5, 'Encargada de documentar las restauraciones.', 24, 5);

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (26, 6, 'Departamento de Arte Clásico', 'departamento', 1, 'Encargado de la preservación del arte clásico.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (27, 6, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 26, 6);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (28, 6, 'Sección de Exposiciones', 'seccion', 3, 'Responsable de organizar exposiciones.', 27, 6);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (29, 6, 'Subdepartamento de Logística', 'subdept', 4, 'Encargado de la logística de las exposiciones.', 28, 6);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (30, 6, 'Subsección de Transporte', 'subseccion', 5, 'Encargada del transporte de las obras.', 29, 6);

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (31, 7, 'Departamento de Bellas Artes', 'departamento', 1, 'Encargado de la preservación y difusión de las bellas artes.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (32, 7, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 31, 7);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (33, 7, 'Sección de Exposiciones', 'seccion', 3, 'Responsable de organizar exposiciones y eventos.', 32, 7);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (34, 7, 'Subdepartamento de Logística', 'subdept', 4, 'Encargado de la logística de las exposiciones.', 33, 7);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (35, 7, 'Subsección de Transporte', 'subseccion', 5, 'Encargada del transporte de las obras.', 34, 7);

INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (36, 8, 'Departamento de Arte Contemporáneo', 'departamento', 1, 'Encargado de la preservación del arte contemporáneo.', NULL, NULL);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (37, 8, 'Dirección General', 'direccion', 2, 'Encargada de la gestión general del museo.', 36, 8);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (38, 8, 'Sección de Investigación', 'seccion', 3, 'Responsable de investigar las colecciones.', 37, 8);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (39, 8, 'Subdepartamento de Publicaciones', 'subdept', 4, 'Encargado de publicar investigaciones.', 38, 8);
INSERT INTO ESTRUCTURA_ORG (id_est_o, id_museo, nombre, tipo_estructura_o, nivel, descripcion, id_padre_org, id_padre_museo_org)
VALUES (40, 8, 'Subsección de Difusión', 'subseccion', 5, 'Promueve las actividades del museo.', 39, 8);


-- Inserts de COLECCIÓN 


INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (1, 1, 1, 'Colección de Pinturas Modernas', 'Colección dedicada a pinturas modernas de artistas internacionales.', 'pintura,moderno', 1);
INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (2, 2, 1, 'Colección de Esculturas Modernas', 'Colección de esculturas modernas y contemporáneas.', 'escultura,moderno', 2);


INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (3, 6, 2, 'Colección de Pinturas Clásicas', 'Colección de pinturas clásicas y obras maestras de diferentes épocas.', 'pintura,clásico', 1);
INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (4, 7, 2, 'Colección de Esculturas Clásicas', 'Colección de esculturas clásicas y antiguas.', 'escultura,clásico', 2);

INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (5, 11, 3, 'Colección de Pinturas Torres García', 'Colección dedicada a las pinturas y obras pictóricas de Joaquín Torres García.', 'pintura,torres garcía', 1);

INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (6, 16, 4, 'Colección de Esculturas Precolombinas', 'Colección de esculturas y objetos tridimensionales de culturas precolombinas.', 'escultura,precolombino', 1);

INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (7, 21, 5, 'Colección de Pinturas Europeas', 'Colección de pinturas europeas de diferentes siglos.', 'pintura,europeo', 1);
INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (8, 22, 5, 'Colección de Esculturas Europeas', 'Colección de esculturas europeas y arte tridimensional.', 'escultura,europeo', 2);

INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (9, 26, 6, 'Colección de Pinturas Clásicas', 'Colección de pinturas clásicas y renacentistas.', 'pintura,clásico', 1);
INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (10, 27, 6, 'Colección de Esculturas Clásicas', 'Colección de esculturas clásicas y antiguas.', 'escultura,clásico', 2);

INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (11, 31, 7, 'Colección de Pinturas Andaluzas', 'Colección de pinturas andaluzas y españolas.', 'pintura,andaluz', 1);
INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (12, 32, 7, 'Colección de Esculturas Andaluzas', 'Colección de esculturas andaluzas y españolas.', 'escultura,andaluz', 2);

INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (13, 36, 8, 'Colección de Pinturas Sorolla', 'Colección de pinturas de Joaquín Sorolla y su círculo.', 'pintura,sorolla', 1);
INSERT INTO COLECCION (id_coleccion, id_est_o, id_museo, nombre, descripcion, palabra_clave, orden_recorrido)
VALUES (14, 37, 8, 'Colección de Esculturas Sorolla', 'Colección de esculturas y bustos relacionados con Sorolla.', 'escultura,sorolla', 2);


-- Inserts de SALA_EXP 

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (1, 1, 3, 'Sala Principal de Exposiciones', 'Área dedicada a exposiciones temporales del museo Allen Memorial.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (2, 1, 4, 'Sala de Colección Permanente', 'Área dedicada a la colección permanente del museo Allen Memorial.');

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (3, 2, 7, 'Sala de Investigación', 'Área dedicada a la investigación en el David Owsley Museum of Art.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (4, 2, 8, 'Sala de Exposiciones Temporales', 'Área dedicada a exposiciones temporales en el David Owsley Museum of Art.');

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (5, 3, 11, 'Sala de Restauración', 'Área dedicada a la restauración de obras en el Museo Torres García.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (6, 3, 12, 'Sala de Exposiciones Itinerantes', 'Área dedicada a exposiciones temporales en el Museo Torres García.');

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (7, 4, 15, 'Sala de Arte Indígena', 'Área dedicada a exposiciones permanentes en el Museo de Arte Precolombino e Indígena.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (8, 4, 16, 'Sala de Arte Funerario', 'Área dedicada a la colección permanente en el Museo de Arte Precolombino e Indígena.');

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (9, 5, 19, 'Sala de Conservación', 'Área dedicada a la conservación de obras en el Museo Británico.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (10, 5, 20, 'Sala de Exposiciones Especiales', 'Área dedicada a exposiciones temporales en el Museo Británico.');

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (11, 6, 23, 'Sala de Arte Clásico', 'Área dedicada a exposiciones temporales en el Museo Ashmolean.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (12, 6, 24, 'Sala de Obras Destacadas', 'Área dedicada a la colección permanente en el Museo Ashmolean.');

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (13, 7, 27, 'Sala de Arte Barroco', 'Área dedicada a exposiciones temporales en el Museo de Bellas Artes de Sevilla.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (14, 7, 28, 'Sala de Arte Religioso', 'Área dedicada a la colección permanente en el Museo de Bellas Artes de Sevilla.');

INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (15, 8, 31, 'Sala de Arte Contemporáneo', 'Área dedicada a exposiciones temporales en el Museo Sorolla.');
INSERT INTO SALA_EXP (id_sala_exp, id_museo, id_est_f, nombre, descripcion)
VALUES (16, 8, 32, 'Sala de Obras Maestras', 'Área dedicada a la colección permanente en el Museo Sorolla.');


-- Inserts de SAL_COL 


INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (1, 1, 3, 1, 1, 1); 
INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (2, 2, 4, 2, 2, 1); 

INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (1, 3, 7, 6, 3, 2); 
INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (2, 4, 8, 7, 4, 2); 

INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (1, 5, 11, 11, 5, 3);

INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (2, 7, 15, 16, 6, 4); 

INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (1, 9, 19, 21, 7, 5);
INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (2, 10, 20, 22, 8, 5);

INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (1, 11, 23, 26, 9, 6); 
INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (3, 12, 24, 27, 10, 6); 

INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (1, 13, 27, 31, 11, 7); 
INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (2, 14, 28, 32, 12, 7);

INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (1, 15, 31, 36, 13, 8);
INSERT INTO SAL_COL (id_orden, id_sala_exp, id_est_f, id_est_o, id_coleccion, id_museo)
VALUES (3, 16, 32, 37, 14, 8);


-- Inserts de OBRA


INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (1, 1, 1, 1, 'Grand Canal, Venice', '1880', 'P', 'Caracterizado por su enfoque en la luz atmosférica, el uso vibrante del color y una calidad soñadora que transporta al espectador a una Venecia idealizada.', 'Oil on canvas', '40 × 41.9 × 3.8 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (2, 1, 1, 1, 'Flower Still Life', '1917', 'P', 'Representa un arreglo de flores, típicamente en un jarrón, junto con otros objetos inanimados como frutas, jarrones o libros.', 'Oil on canvas on board', '79.4 × 61.9 × 5.1 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (3, 2, 1, 2, 'Decorative Bust of a Silenus', 'siglo 1 D.C', 'E', 'Este pequeño pero elaborado busto representa a un sileno, un anciano jovial y corpulento que suele acompañar a Baco en escenas de banquete y bebida. La riqueza de detalles de la obra se logró mediante el complejo método de la cera perdida.', 'Bronze with silver and copper inlay', '15.9 × 10.6 × 7 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (4, 2, 1, 2, 'Palace Guard, from Persepolis', '485–480 A.C', 'E', 'Este fragmento de relieve escultórico decoraba el Apadana, una enorme sala de recepción en el complejo palaciego de Persépolis, la capital del Imperio Persa Aqueménida. Esta escultura representa a un guardia del palacio imperial y, junto con muchas otras similares, adornaba las paredes de dos grandes escaleras, “escoltando” a los invitados hacia la sala.', 'Limestone relief', '47 × 30.5 × 11 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (5, 2, 1, 2, 'Lion Attacking a Bull', '200 años A.C', 'E', 'Esta escultura, notable por su dramatismo y energía, retoma un tema frecuente en el arte antiguo: el de un león que ataca y mata a un toro. Con el rostro fruncido por la concentración, el león hunde sus dientes en el carnoso cuello del toro, que se encabrita en agonía, intentando zafarse de su atacante.', 'Pentelic marble', '44.5 × 71.1 × 17.8 cm');


INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (6, 3, 2, 6, 'A Grey Thaw', '1923', 'P', 'Impressionism, landscape, New England, rural landscape, snow, Vermont, water, winter landscape', 'Oil on canvas', '66.04 x 73.66 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (7, 3, 2, 6, 'Alaska Railroad, Anchorage Station', '1937', 'P', 'Alaska, Anchorage, landscape, mountains, railroad cars, railroad engines, railroads, train stations, trains', 'Watercolor', '39.37 x 69.22 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (8, 3, 2, 6, 'Adirondacks On York River', '1924', 'P', 'Adirondacks, American landscape, boats, landscape, river, river paddler, sailor', 'Watercolor on paper', '36.2 x 53.04 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (9, 4, 2, 7, 'Bodhisattva', '618-907', 'E', 'Asians, Buddha, Buddhism, ceremonial object, Chinese, Chinese religion, civilization, cult, culture, demi-god, demi-goddess, goddess, gods, hero, heroine, human being, Mongolians, nationality, non-Christian religion, occupations, race (human), religion, religious object, rite, sculpture, society, statue, supernatural', 'Carved limestone', '85.09 x 26.67 x 12.7 cm');


INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (10, 5, 3, 11, 'Detalle de El canto de la montaña Lu', '2016', 'P', 'Pintura melancólica poesías que se vinculan profundamente con la narración, siguiendo la tradición de la poesía (shanshui shi, poesía de montaña y río, nombre que se da a la poesía que se inscribe en la obra).', 'Tinta sobre papel de arroz', '430 x 162 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (11, 5, 3, 11, 'Síntesis de ciudad', '2023', 'P', 'Pintura urbana contemporánea que fusiona la solidez y la pátina del fresco sobre placa cementicia. Es representación semi-abstracta y sintética de paisajes urbanos, donde la arquitectura y los elementos icónicos de la ciudad son simplificados a sus formas esenciales.', 'Fresco y técnica mixta sobre placa cementicia', '120 x 180 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (12, 5, 3, 11, 'La colada', '1903', 'P', 'Universalismo Constructivo. Este estilo combina elementos del constructivismo con una visión universal y metafísica del arte, integrando la razón geométrica con la intuición espiritual.', 'Óleo sobre tela', '69.5 x 95 cm');

INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (13, 6, 4, 16, 'Coquero', 'entre 500 a.C. y 1500 d.C', 'E', 'Las figuras humanas denominadas coqueros -masticadores de coca (Erythroxylum coca)-, fueron elaboradas por grupos serranos de la región del Carchi en Ecuador y Nariño en Colombia. En su mejilla se representa un bulto formado por el bolo de hojas de coca.', 'Cerámica/ Modelado-Pintado polícromo', '16 x 11.3 x 14.7 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (14, 6, 4, 16, 'Máscara mortuoria antropomorfa', 'entre el 200 d.C. y el 900 d.C', 'E', 'Aparecen vinculadas a contextos funerarios y rituales en la denominada cultura teotihuacana correspondiente al clásico y se fabricaban para ser colocadas sobre el rostro de difuntos de linaje noble.', 'Piedras semipreciosas de jade', '16.6 x 14.9 x 4.6 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (15, 6, 4, 16, 'Elipsoide con mamelones', 'época precolombina', 'E', 'Artefacto formado por una esfera con puntas o protuberancias, con forma estrellada. Fue utilizado por los indígenas de distintas partes de América.', 'Piedra/ Tallado-Pulido', '8.63 x 7.49 x 2.66 cm');


INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (16, 7, 5, 21, 'Bailarinas en la barra', '1876', 'P', 'Bailarín estirándose en la barra; el superior está dibujado a gran velocidad y con gran economía.', 'Óleo diluido con trementina sobre papel verde preparado', '47.2 x 62.5 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (17, 7, 5, 21, 'Libertad francesa: Esclavitud británica', '1792', 'P', 'Diseño en dos compartimentos. A la izquierda, un sans-culotte delgado y harapiento, sentado en un taburete frente a unos palos que arden en un hogar abierto (derecha), come vorazmente cebollas crudas mientras se calienta los pies desnudos en el fuego.', 'Papel. Coloreado a mano, aguafuerte', '25 x 35 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (18, 8, 5, 22, 'Esfinge del rey Taharqo, de Kawa', '680 a. C.', 'E', 'Esfinge de granito (probablemente gneis de granito) de Taharqo con solideo y doble uraeus; cartucho en el pecho.', 'Gneis de granito', '40.6 x 73 cm');


INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (19, 9, 6, 26, 'Landscape with Ascanius shooting the Stag of Sylvia', '1681–1682', 'P', 'This poetic landscape is his last painting. The subject is derived from Virgil’s Aeneid which describes Ascanius, the son of the Trojan hero Aeneas, hunting in the countryside of Latium with his companions.', 'Oil on canvas', '120 x 150 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (20, 9, 6, 26, 'A "Forest Floor" still life of Flowers', '1679–1750', 'P', 'Ruysch painted a long succession of flower paintings, several fruit pieces, and a number of "forest floors".', 'Oil on canvas', '47 x 40 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (21, 10, 6, 27, 'Figure of Saint Chandikeshvara', '1150–1200', 'E', 'South Indian bronze sculpture reached its highpoint of artistic and technical achievement under the Chola dynasty (9th–14th centuries).', 'Bronze', '58 cm');


INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (22, 11, 7, 31, 'Santa Catalina de Alejandría', '1650', 'P', 'La santa es representada de medio cuerpo, aislada y recortada sobre un fondo oscuro, fuertemente iluminada desde la izquierda, sin elementos secundarios que completen la escena.', 'Óleo sobre lienzo', '75 x 58.2 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (23, 11, 7, 31, 'Santa Ana enseñando a leer a la Virgen', '1610', 'P', 'El esquema compositivo en diagonal presenta la figura sedente de Santa Ana de edad madura presentando un libro a la Virgen que se inclina atenta para su lectura.', 'Óleo sobre lienzo', '230 x 170 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (24, 12, 7, 32, 'Cristo Varón de Dolores', '1485 - 1503', 'E', 'Supone ser una prefiguración de la venida del Mesías, fusionando su Pasión y Resurrección. Se presenta en el centro a Cristo, de pie y vivo, a partir de una anatomía esbelta, pudiendo apreciarse en el modelado del torso desnudo cierto realismo, acentuado por las huellas de la Pasión, como la llaga abierta del costado o los agujeros de los clavos que muestra en las manos.', 'Barro cocido y policromado', '161 x 108.5 x 50 cm');


INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (25, 13, 8, 36, 'Almendro en flor', '1888', 'P', 'Almendro en flor es un pequeño apunte que Sorolla realiza durante su estancia en la ciudad italiana de Asís, en un momento en el que intenta cambiar el rumbo de su pintura.', 'Óleo sobre tabla', '15.5 x 25.3 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (26, 13, 8, 36, 'Paseo a la orilla del mar', '1909', 'P', 'El agua y la arena de la orilla, resueltos en largas pinceladas azules, malvas y turquesa, se convierten en un abstracto telón de fondo para las refinadas figuras de su esposa y su hija María.', 'Óleo sobre lienzo', '205 x 200 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (27, 14, 8, 37, 'Dintel', 'Siglo XV', 'E', 'Pieza arquitectónica en la que se representa la escena de la “Visitación”, tema bíblico del Nuevo Testamento, que recoge el momento en el que la Virgen María embarazada de Jesús, visita a su prima Santa Isabel también embarazada, en su caso, de San Juan Bautista.', 'Tallado', '53 x 33 x 18 cm');
INSERT INTO OBRA (id_obra, id_coleccion, id_museo, id_est_o, nombre, ano_creacion, tipo, estilo_descripcion, material_tecnica_descripcion, dimensiones)
VALUES (28, 14, 8, 37, 'Joaquín Sorolla y Bastida', '1932', 'E', 'Busto en el que el prolífico escultor representa a Joaquín Sorolla en plena acción pictórica: vestido con una amplia bata abierta, sosteniendo con el brazo izquierdo una gran paleta, mientras que con la mano derecha mezcla la pintura con un pincel.', 'Tallado', '70 x 98 x 58 cm');


-- Inserts de O_A 

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (9, 1, 1, 1, 1);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (15, 2, 1, 1, 1);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (3, 3, 2, 1, 2);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (2, 4, 2, 1, 2);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (2, 5, 2, 1, 2);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (2, 9, 4, 2, 7);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (11, 11, 5, 3, 11);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (11, 12, 5, 3, 11);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (13, 22, 11, 7, 31);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (13, 23, 11, 7, 31);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (12, 19, 9, 6, 26);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (15, 20, 9, 6, 26);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (14, 16, 7, 5, 21);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (1, 25, 13, 8, 36);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (1, 26, 13, 8, 36);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (17, 9, 4, 2, 7);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (18, 13, 6, 4, 16);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (19, 21, 10, 6, 27);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (22, 24, 12, 7, 32);

INSERT INTO O_A (id_artista, id_obra, id_coleccion, id_museo, id_est_o)
VALUES (21, 28, 14, 8, 37);

-- Inserts de HIST_CIERRE_TEMPORAL 

INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-06-01', 1, 3, 1, '2025-06-10');
INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-07-01', 2, 4, 1, '2025-07-08');

INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-06-15', 3, 7, 2, '2025-06-20');
INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-07-10', 4, 8, 2, '2025-07-15');

INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-08-01', 5, 11, 3, '2025-08-10');

INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-08-15', 6, 12, 3, '2025-08-20');

INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-09-01', 7, 15, 4, '2025-09-12');
INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-09-20', 8, 16, 4, '2025-09-30');

INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-10-01', 9, 19, 5, '2025-10-10');
INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-10-15', 10, 20, 5, '2025-10-25');

INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-11-01', 11, 23, 6, '2025-11-08');
INSERT INTO HISTORICO_CIERRE_TEMP (fecha_inicio_hist_cierre, id_sala_exp, id_est_f, id_museo, fecha_fin_hist_cierre)
VALUES ('2025-11-15', 12, 24, 6, '2025-11-22');


-- Inserts de ASIGNACIÓN_MENSUAL 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-06-01', 1, 1, 1, 'M'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-07-01', 2, 2, 5, 'V'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-08-01', 3, 3, 9, 'N'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-09-01', 4, 4, 13, 'V'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-10-01', 5, 5, 17, 'M'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-11-01', 6, 6, 21, 'N'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-12-01', 7, 7, 25, 'M'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2026-01-01', 8, 8, 29, 'V'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-07-01', 9, 1, 2, 'V'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-08-01', 10, 2, 6, 'N'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-09-01', 1, 3, 10, 'V'); 

INSERT INTO ASIGNACION_MENSUAL (mes_anio, id_empleado_mant_vig, id_museo, id_est_f, turno)
VALUES ('2025-10-01', 2, 4, 14, 'M'); 


-- Inserts de EXPOSICION_ESPECIAL_EVENTO 

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (1, 1, 1, 3, 'Impresionismo Moderno', 'Exposición dedicada a las obras más representativas del impresionismo moderno.', '2025-06-01', '2025-06-30', 7.50, 800, 'Colegio Moderno');
INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (2, 1, 2, 4, 'Colección Permanente Allen', 'Exposición especial de la colección permanente del museo Allen Memorial.', '2025-07-01', '2025-07-31', 8.00, 850, 'Instituto Allen');

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (3, 2, 3, 7, 'Arte Clásico', 'Exposición de esculturas y pinturas de la antigüedad clásica.', '2025-08-01', '2025-08-31', 9.00, 950, 'Academia Clásica');
INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (4, 2, 4, 8, 'Exposiciones Temporales Owsley', 'Exposición especial de obras temporales en el David Owsley Museum of Art.', '2025-09-01', '2025-09-30', 7.00, 700, 'Colegio Owsley');

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (5, 3, 5, 11, 'Arte Latinoamericano', 'Exposición de obras de artistas latinoamericanos del siglo XIX y XX.', '2025-10-01', '2025-10-31', 6.00, 700, 'Universidad de las Artes');

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (6, 4, 7, 15, 'Arte Precolombino', 'Exposición de arte y artefactos de culturas precolombinas.', '2025-11-01', '2025-11-30', 8.50, 900, 'Colegio Precolombino');

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (7, 5, 9, 19, 'Arte Europeo', 'Exposición de obras maestras de artistas europeos.', '2025-12-01', '2025-12-31', 10.00, 1000, 'Universidad Europea');
INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (8, 5, 10, 20, 'Exposiciones Temporales Británico', 'Exposición especial de obras temporales en el Museo Británico.', '2026-01-01', '2026-01-31', 9.50, 950, 'Colegio Británico');

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (9, 6, 11, 23, 'Arte Clásico Indio', 'Exposición de esculturas y pinturas clásicas de la India.', '2026-02-01', '2026-02-28', 5.00, 600, 'Instituto Indio');
INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (10, 6, 12, 24, 'Colección Permanente Ashmolean', 'Exposición especial de la colección permanente del Museo Ashmolean.', '2026-03-01', '2026-03-31', 6.50, 650, 'Colegio Ashmolean');

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (11, 7, 13, 27, 'Arte Andaluz', 'Exposición de arte y cultura andaluza.', '2026-04-01', '2026-04-30', 7.00, 850, 'Colegio Andalucía');
INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (12, 7, 14, 28, 'Colección Permanente Bellas Artes Sevilla', 'Exposición especial de la colección permanente del Museo de Bellas Artes de Sevilla.', '2026-05-01', '2026-05-31', 8.00, 900, 'Instituto Sevilla');

INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (13, 8, 15, 31, 'Arte Sorolla', 'Exposición dedicada a la obra de Joaquín Sorolla.', '2026-06-01', '2026-06-30', 8.00, 750, 'Academia Sorolla');
INSERT INTO EXPOSICION_ESPECIAL_EVENTO (id_exposicion_especial_evento, id_museo, id_sala_exp, id_est_f, titulo_nombre, descripcion, fecha_inicio_exposicion, fecha_fin_exposicion, costo_persona, cantidad_persona, colegio_institucion)
VALUES (14, 8, 16, 32, 'Colección Permanente Sorolla', 'Exposición especial de la colección permanente del Museo Sorolla.', '2026-07-01', '2026-07-31', 7.50, 800, 'Colegio Sorolla');


-- Inserts de HIST_TRABAJO 

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2020-01-01', '2024-12-31', 'D', 1, 1, 1);
INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2021-02-01', NULL, 'C', 2, 2, 1);

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2019-06-01', NULL, 'R', 3, 6, 2);
INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2023-01-01', NULL, 'C', 4, 7, 2);

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2022-03-01', NULL, 'C', 5, 11, 3);
INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2020-05-01', '2023-05-01', 'R', 6, 12, 3);

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2021-07-01', NULL, 'c', 7, 16, 4);
INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2020-09-01', '2023-09-01', 'A', 8, 17, 4);

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2018-01-01', NULL, 'C', 9, 21, 5);
INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2023-02-01', '2024-06-30', 'A', 10, 22, 5);

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2022-01-01', '2023-12-31', 'R', 11, 26, 6);
INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2024-01-01', NULL, 'C', 12, 27, 6);

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2025-01-01', NULL, 'C', 13, 31, 7);

INSERT INTO HISTORICO_TRABAJO (fecha_inicio_historico, fecha_final_historico, cargo, expediente, id_est_o, id_museo)
VALUES ('2025-01-01', NULL, 'C', 14, 36, 8);


-- Inserts de HIST_OBRA_MOV 


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (1, 1, 1, 1, 1, 1, 1, 3, '2020-01-01', NULL, 'CO', TRUE, 1, 120000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (2, 2, 1, 1, 2, 1, 1, 3, '2020-02-01', NULL, 'CO', FALSE, 2, 95000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (3, 3, 2, 2, 3, 2, 1, 4, '2020-03-01', NULL, 'DO', FALSE, 3, 78000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (4, 4, 2, 2, 4, 2, 1, 4, '2020-04-01', NULL, 'DO', FALSE, 4, 110000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (5, 5, 2, 2, 5, 2, 1, 4, '2020-05-01', NULL, 'DO', FALSE, 5, 57000);


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (6, 3, 3, 3, 6, 6, 2, 7, '2019-03-10', NULL, 'CM', TRUE, 1, 250000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (7, 4, 3, 3, 7, 6, 2, 7, '2019-04-01', NULL, 'CM', FALSE, 2, 67000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (8, 2, 3, 3, 8, 6, 2, 7, '2019-05-01', NULL, 'CM', FALSE, 3, 54000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (9, 1, 4, 4, 9, 7, 2, 8, '2019-06-01', NULL, 'DM', FALSE, 4, 80000);


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (10, 5, 5, 5, 10, 11, 3, 11, '2022-01-01', NULL, 'CO', TRUE, 1, 310000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (11, 6, 5, 5, 11, 11, 3, 11, '2022-02-01', NULL, 'CO', FALSE, 2, 59000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (12, 7, 5, 5, 12, 11, 3, 11, '2022-03-01', NULL, 'CO', FALSE, 3, 52000);


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (13, 7, 6, 7, 13, 16, 4, 15, '2021-01-01', NULL, 'CO', TRUE, 1, 180000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (14, 8, 6, 7, 14, 16, 4, 15, '2021-02-01', NULL, 'CO', FALSE, 2, 51000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (15, 7, 6, 7, 15, 16, 4, 15, '2021-03-01', NULL, 'CO', FALSE, 3, 53000);


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (16, 9, 7, 9, 16, 21, 5, 19, '2020-01-01', NULL, 'CO', TRUE, 1, 600000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (17, 10, 7, 9, 17, 21, 5, 19, '2020-02-01', NULL, 'CO', FALSE, 2, 90000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (18, 10, 8, 10, 18, 22, 5, 20, '2020-03-01', NULL, 'DO', FALSE, 3, 105000);


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (19, 11, 9, 11, 19, 26, 6, 23, '2021-01-01', NULL, 'CO', TRUE, 1, 210000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (20, 12, 9, 11, 20, 26, 6, 23, '2021-02-01', NULL, 'CO', FALSE, 2, 57000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (21, 12, 10, 12, 21, 27, 6, 24, '2021-03-01', NULL, 'DO', FALSE, 3, 52000);


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (22, 1, 11, 13, 22, 31, 7, 27, '2022-01-01', NULL, 'CO', TRUE, 1, 175000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (23, 2, 11, 13, 23, 31, 7, 27, '2022-02-01', NULL, 'CO', FALSE, 2, 54000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (24, 2, 12, 14, 24, 32, 7, 28, '2022-03-01', NULL, 'DO', FALSE, 3, 58000);


INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (25, 2, 13, 15, 25, 36, 8, 31, '2023-01-01', NULL, 'CO', TRUE, 1, 95000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (26, 1, 13, 15, 26, 36, 8, 31, '2023-02-01', NULL, 'CO', FALSE, 2, 51000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (27, 2, 14, 16, 27, 37, 8, 32, '2023-03-01', NULL, 'DO', FALSE, 3, 53000);
INSERT INTO HISTORICO_OBRA_MOV (id_cat_museo, expediente, id_coleccion, id_sala_exp, id_obra, id_est_o, id_museo, id_est_f, fecha_inicio_adquisicion, fecha_final_adquisicion, tipo, destacada, orden_recorrido_historico, valor_monetario)
VALUES (28, 1, 14, 16, 28, 37, 8, 32, '2023-04-01', NULL, 'DO', FALSE, 4, 56000);


-- Inserts de MANT_OBRA 

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (1, 1, 1, 1, 1, 1, 'Limpieza superficial de la obra', 'Mensual', 'C');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (2, 2, 2, 1, 1, 1, 'Revisión de barniz y limpieza de marco', 'Trimestral', 'C');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (3, 3, 3, 2, 2, 1, 'Limpieza de escultura y control de grietas', 'Semestral', 'R');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (4, 6, 6, 3, 6, 2, 'Revisión de pintura y limpieza', 'Trimestral', 'R');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (5, 7, 7, 3, 6, 2, 'Limpieza de superficie y control de humedad', 'Mensual', 'C');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (6, 10, 10, 5, 11, 3, 'Limpieza de superficie y control de humedad', 'Mensual', 'C');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (7, 13, 13, 6, 16, 4, 'Inspección de cerámica y limpieza', 'Semestral', 'R');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (8, 16, 16, 7, 21, 5, 'Limpieza de superficie y revisión de marco', 'Trimestral', 'C');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (9, 19, 19, 9, 26, 6, 'Control de humedad y limpieza de lienzo', 'Mensual', 'R');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (10, 22, 22, 11, 31, 7, 'Limpieza de pintura y revisión de bastidor', 'Anual', 'C');

INSERT INTO MANT_OBRA (id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, actividad, frecuencia, tipo_responsable)
VALUES (11, 25, 25, 13, 36, 8, 'Limpieza de superficie y control de luz', 'Semestral', 'R');



-- Inserts de ACT_REALIZADA 

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (1, 1, 1, 1, 1, 1, 1, 1, '2025-06-01', '2025-06-02', 'Limpieza realizada correctamente.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (2, 2, 2, 2, 1, 1, 1, 2, '2025-06-03', '2025-06-04', 'Revisión de barniz y limpieza de marco completada.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (3, 3, 3, 3, 2, 2, 1, 3, '2025-06-05', '2025-06-06', 'Limpieza de escultura y control de grietas realizada.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (4, 4, 6, 6, 3, 6, 2, 4, '2025-06-07', '2025-06-08', 'Revisión de pintura y limpieza completada.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (5, 5, 7, 7, 3, 6, 2, 5, '2025-06-09', '2025-06-10', 'Limpieza de superficie y control de humedad realizada.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (6, 6, 10, 10, 5, 11, 3, 6, '2025-06-11', '2025-06-12', 'Limpieza de superficie y control de humedad realizada.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (7, 7, 13, 13, 6, 16, 4, 7, '2025-06-13', '2025-06-14', 'Inspección de cerámica y limpieza realizada.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (8, 8, 16, 16, 7, 21, 5, 8, '2025-06-15', '2025-06-16', 'Limpieza de superficie y revisión de marco realizada.');

INSERT INTO ACTIVIDAD_REALIZADA (id_actividad, id_mant_obra, id_cat_museo, id_obra, id_coleccion, id_est_o, id_museo, id_expediente, fecha_inicio_actividad, fecha_fin, obvservaciones)
VALUES (9, 9, 19, 19, 9, 26, 6, 9, '2025-06-17', '2025-06-18', 'Control de humedad y limpieza de lienzo realizada.');


--- Iniciar secuencias

SELECT setval('idioma_id_idioma_seq', COALESCE((SELECT MAX(id_idioma)::integer FROM idioma), 1), true);
SELECT setval('empleado_profesional_expediente_seq', COALESCE((SELECT MAX(expediente)::integer FROM empleado_profesional), 1), true);
SELECT setval('empleado_mant_vig_id_empleado_mant_vig_seq', COALESCE((SELECT MAX(id_empleado_mant_vig)::integer FROM empleado_mant_vig), 1), true);
SELECT setval('museo_id_museo_seq', COALESCE((SELECT MAX(id_museo)::integer FROM museo), 1), true);
SELECT setval('artista_id_artista_seq', COALESCE((SELECT MAX(id_artista)::integer FROM artista), 1), true);
SELECT setval('lugar_id_lugar_seq', COALESCE((SELECT MAX(id_lugar)::integer FROM lugar), 1), true);
SELECT setval('formacion_profesional_id_formacion_seq', COALESCE((SELECT MAX(id_formacion)::integer FROM formacion_profesional), 1), true);
SELECT setval('estructura_fisica_id_est_f_seq', COALESCE((SELECT MAX(id_est_f)::integer FROM estructura_fisica), 1), true);
SELECT setval('estructura_org_id_est_o_seq', COALESCE((SELECT MAX(id_est_o)::integer FROM estructura_org), 1), true);
SELECT setval('coleccion_id_coleccion_seq', COALESCE((SELECT MAX(id_coleccion)::integer FROM coleccion), 1), true);
SELECT setval('sala_exp_id_sala_exp_seq', COALESCE((SELECT MAX(id_sala_exp)::integer FROM sala_exp), 1), true);
SELECT setval('obra_id_obra_seq', COALESCE((SELECT MAX(id_obra)::integer FROM obra), 1), true);
SELECT setval('ticket_id_ticket_seq', COALESCE((SELECT MAX(id_ticket)::integer FROM ticket), 1), true);
SELECT setval('horario_id_horario_seq', COALESCE((SELECT MAX(id_horario)::integer FROM horario), 1), true);
SELECT setval('exposicion_especial_evento_id_exposicion_especial_evento_seq', COALESCE((SELECT MAX(id_exposicion_especial_evento)::integer FROM exposicion_especial_evento), 1), true);
SELECT setval('mant_obra_id_mant_obra_seq', COALESCE((SELECT MAX(id_mant_obra)::integer FROM mant_obra), 1), true);
SELECT setval('actividad_realizada_id_actividad_seq', COALESCE((SELECT MAX(id_actividad)::integer FROM actividad_realizada), 1), true);
SELECT setval('historico_obra_mov_id_cat_museo_seq',COALESCE((SELECT MAX(id_cat_museo)::integer FROM historico_obra_mov), 1),true);