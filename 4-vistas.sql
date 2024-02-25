--Listado de Vistas que permitan obtener la siguiente información:
-- 1 Listado de libros con su autor, género, editorial y tema de materia.
-- 2 Listado de mapas con su editorial.
-- 3 Listado de usuarios con su teléfono.
-- 4 Listado de la cantidad de libros por género.
-- 5 Listado de la cantidad de mapas por editorial.

-- 1 Listado de libros con su autor, género, editorial y tema de materia.
CREATE VIEW libros_con_autor_genero_editorial_tema AS
SELECT l.titulo AS 'Libro', a.nombre AS 'Autor', g.tipo AS 'Género', e.nombre AS 'Editorial', tm.tema_materia AS 'Tema de Materia'
FROM libro l
JOIN autor a ON l.ID_autor = a.id
JOIN generos g ON l.ID_genero = g.id
JOIN editorial e ON l.ID_editorial = e.id
JOIN tema_materia tm ON l.ID_tema_materia = tm.id;

-- 2 Listado de mapas con su editorial.
CREATE VIEW mapas_con_editorial AS
SELECT m.titulo AS 'Mapa', e.nombre AS 'Editorial'
FROM mapa m
JOIN editorial e ON m.ID_editorial = e.id;

-- 3 Listado de usuarios con su teléfono.
CREATE VIEW usuarios_con_telefono AS
SELECT u.nombre AS 'Usuario', u.apellido AS 'Apellido', t.numero AS 'Teléfono'
FROM usuario u
JOIN telefono t ON u.dni = t.dni_usuario;

-- 4 Listado de la cantidad de libros por género.
CREATE VIEW cantidad_libros_por_genero AS
SELECT g.tipo AS 'Género', COUNT(l.ISBN) AS 'Cantidad de Libros'
FROM libro l
JOIN generos g ON l.ID_genero = g.id
GROUP BY g.tipo;

-- 5 Listado de la cantidad de mapas por editorial.
CREATE VIEW cantidad_mapas_por_editorial AS
SELECT e.nombre AS 'Editorial', COUNT(m.id) AS 'Cantidad de Mapas'
FROM mapa m
JOIN editorial e ON m.ID_editorial = e.id
GROUP BY e.nombre;



