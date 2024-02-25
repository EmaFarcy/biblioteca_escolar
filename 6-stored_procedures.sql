--1 Listado de usuarios que pueden realizar préstamos.
DELIMITER //
CREATE PROCEDURE usuarios_prestamos()
BEGIN
    SELECT u.nombre, u.apellido, u.rol
    FROM usuario u
    WHERE u.rol = 'alumno' OR u.rol = 'profesor';
END //

DELIMITER ;

--2 Listado de libros que están prestados.
DELIMITER //
CREATE PROCEDURE libros_prestados()
BEGIN
    SELECT l.titulo, pl.estado
    FROM libro l
    JOIN prestamo_libro pl ON l.ISBN = pl.ISBN_libro
    WHERE pl.estado = 0;
END //






