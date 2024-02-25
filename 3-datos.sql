--Script de inserción de datos en las tablas de la base de datos biblioteca_escolar.
USE biblioteca_escolar;

-- Insertar datos en la tabla 'autor':
INSERT INTO autor (id, nombre, apellido, fecha_nac) VALUES
(1, 'Gabriel', 'García Márquez', '1927-03-06'),
(2, 'Isabel', 'Allende', '1942-08-02'),
(3, 'Julio', 'Cortázar', '1914-08-26'),
(4, 'Pablo', 'Neruda', '1904-07-12'),
(5, 'Jorge Luis', 'Borges', '1899-08-24'), -- Corrige este ID a un valor único
(6, 'Miguel de', 'Cervantes', '1547-09-29'),
(7, 'William', 'Shakespeare', '1564-04-23'),
(8, 'Jane', 'Austen', '1775-12-16'),
(9, 'Charles', 'Dickens', '1812-02-07');


-- Insertar datos en la tabla 'generos':
INSERT INTO generos (id, tipo) VALUES
(1, 'Ficción'),
(2, 'Fantasía'),
(3, 'Poesía'),
(4, 'Drama'),
(5, 'Novela'),
(6, 'Cuento'),
(7, 'Ensayo'),
(8, 'Teatro'),
(9, 'Romance'),
(10, 'Aventura');

-- Insertar datos en la tabla 'editorial':
INSERT INTO editorial (id, nombre, ciudad, pais) VALUES
(1, 'Penguin Books', 'Londres', 'Reino Unido'),
(2, 'National Geographic', 'Washington D.C.', 'Estados Unidos'),
(3, 'Planeta', 'Barcelona', 'España'),
(4, 'Santillana', 'Bogotá', 'Colombia'),
(5, 'Minotauro', 'Barcelona', 'España'),
(6, 'Oxford University Press', 'Oxford', 'Reino Unido'),
(7, 'Random House', 'Nueva York', 'Estados Unidos'),
(8, 'HarperCollins', 'Nueva York', 'Estados Unidos');


-- Insertar datos en la tabla 'tema_materia':
INSERT INTO tema_materia (id, tema_materia) VALUES
(1, 'Literatura'),
(2, 'Historia'),
(3, 'Ciencia'),
(4, 'Geografía'),
(5, 'Arte'),
(6, 'Filosofía'),
(7, 'Matemáticas'),
(8, 'Idiomas'),
(9, 'Música'),
(10, 'Deportes');

-- Insertar datos en la tabla 'libro':
INSERT INTO libro (ISBN, titulo, idioma, año_publicacion, ID_genero, ID_autor, ID_editorial, ID_tema_materia) VALUES
(97882, 'Cien años de soledad', 'Español', 1967, 1, 1, 1, 4),
(97883, 'La casa de los espíritus', 'Español', 1982, 1, 2, 2, 4),
(97884, 'Rayuela', 'Español', 1963, 1, 3, 5, 4),
(97885, 'Veinte poemas de amor y una canción desesperada', 'Español', 1924, 3, 4, 3, 4),
(97886, 'Cien sonetos de amor', 'Español', 1959, 3, 5, 3, 4),
(97887, 'Don Quijote de la Mancha', 'Español', 1605, 1, 6, 6, 1),
(97808, 'Romeo y Julieta', 'Inglés', 1597, 9, 7, 8, 4),
(97809, 'Orgullo y prejuicio', 'Inglés', 1813, 9, 8, 8, 4),
(97810, 'Grandes esperanzas', 'Inglés', 1861, 9, 9, 8, 4);


-- Insertar datos en la tabla 'mapa':
INSERT INTO mapa (id, titulo, formato, area_representacion, tipo, anio_publicacion, ID_editorial) VALUES
(1, 'Mapa de la Tierra Media', 'Papel', 'Fantasía', 'Ficción', 1954, 5),
(2, 'Mapa de la Argentina', 'Papel', 'Geografía', 'Realidad', 2010, 3),
(3, 'Mapa de la Ciudad de México', 'Papel', 'Geografía', 'Realidad', 2015, 7),
(4, 'Mapa de la Luna', 'Papel', 'Astronomía', 'Realidad', 1969, 7),
(5, 'Mapa de la Tierra', 'Papel', 'Geografía', 'Realidad', 2019, 6),
(6, 'Mapa de la Brasil', 'Papel', 'Geografía', 'Realidad', 2018, 4),
(7, 'Mapa de la Antártida', 'Papel', 'Geografía', 'Realidad', 2017, 2),
(8, 'Mapa de la Europa', 'Papel', 'Geografía', 'Realidad', 2016, 1);

-- Insertar datos en la tabla 'usuario':
-- en rol de tipo varchar se puede ingresar 'alumno' o 'docente'
INSERT INTO usuario (dni, nombre, apellido, correo_electronico, curso, division, rol) VALUES
(12345678, 'Juan', 'Pérez', 'juan_perez@gmail.com', 5, 'A', 'profesor'),
(23456789, 'María', 'González', 'maria_gonzalez@gmail.com', 6, 'B', 'alumno'),
(34567890, 'Carlos', 'López', 'carlos_lopez@gmail.com', 2, 'C', 'profesor'),
(45678901, 'Ana', 'Martínez', 'mariana_martinez@gmail.com', 3, 'A', 'alumno'),
(56789012, 'Luis', 'Rodríguez', 'luis_rodriguez@gmail.com', 4, 'B', 'alumno'),
(67890123, 'Laura', 'Fernández', 'laura_fernandez@gmail.com', 5, 'C', 'alumno'),
(78901234, 'Diego', 'Díaz', 'diego_diaz@gmail.com', 6, 'A', 'alumno'),
(89012345, 'Sofía', 'Suárez', 'sofia_suarez@gmail.com', 7, 'B', 'alumno'),
(90123456, 'Lucía', 'Gómez', 'lucia_gomez@gmail.com', 8, 'C', 'alumno');



-- Insertar datos en la tabla telefono:
INSERT INTO telefono (id, numero, dni_usuario) VALUES
(1, 123456789, 12345678),
(2, 234567890, 23456789),
(3, 345678901, 34567890),
(4, 456789012, 45678901),
(5, 567890123, 56789012),
(6, 678901234, 67890123),
(7, 789012345, 78901234),
(8, 890123456, 89012345),
(9, 901234567, 90123456);

-- Insertar datos en la tabla 'prestamo_libro':
-- En estado 1 es true (devuelto) y 0 es false (no devuelto)
INSERT INTO prestamo_libro (id, fecha_de_retiro, fecha_de_devolucion, estado, dni_usuario, ISBN_libro, observaciones) VALUES
(1, '2021-05-01', '2021-05-15', 1, 12345678, 97882, 'Libro en buen estado'),
(2, '2021-05-01', '2021-05-15', 1, 23456789, 97883, 'Libro en buen estado'),
(3, '2021-05-01', '2021-05-15', 1, 34567890, 97884, 'Libro en buen estado'),
(4, '2021-05-01', '2021-05-15', 1, 45678901, 97885, 'Libro en buen estado'),
(5, '2021-05-01', '2021-05-15', 1, 56789012, 97886, 'Libro en buen estado'),
(6, '2021-05-01', '2021-05-15', 1, 67890123, 97887, 'Libro en buen estado'),
(7, '2021-05-01', '2021-05-15', 1, 78901234, 97808, 'Libro en buen estado'),
(8, '2021-05-01', '2021-05-15', 1, 89012345, 97809, 'Libro en buen estado'),
(9, '2021-05-01', '2021-05-15', 1, 90123456, 97810, 'Libro en buen estado');

-- Insertar datos en la tabla 'prestamo_mapa':
-- En estado 1 es true (devuelto) y 0 es false (no devuelto)
INSERT INTO prestamo_mapa (id, fecha_de_retiro, fecha_de_devolucion, estado, DNI_usuario, ID_mapa, observaciones) VALUES
(1, '2021-05-01', '2021-05-15', 1, 12345678, 1, 'Mapa en buen estado'),
(2, '2021-05-01', '2021-05-15', 1, 23456789, 2, 'Mapa en buen estado'),
(3, '2021-05-01', '2021-05-15', 1, 34567890, 3, 'Mapa en buen estado'),
(4, '2021-05-01', '2021-05-15', 1, 45678901, 4, 'Mapa en buen estado'),
(5, '2021-05-01', '2021-05-15', 1, 56789012, 5, 'Mapa en buen estado'),
(6, '2021-05-01', '2021-05-15', 1, 67890123, 6, 'Mapa en buen estado'),
(7, '2021-05-01', '2021-05-15', 1, 78901234, 7, 'Mapa en buen estado'),
(8, '2021-05-01', '2021-05-15', 1, 89012345, 8, 'Mapa en buen estado');
