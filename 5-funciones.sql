--Listado de funciones que permitan obtener la siguiente información:
-- 1 Listado de libros que se encuentran en devuelto.
-- 2 Listado de usuarios que son alumnos.
-- 3 Listado de teléfonos de usuarios que son profesores.
-- Cantidad de mapas donde la area de representación es 'Geografía'.

-- 1 Listado de libros que se encuentran en devuelto.
DELIMITER //

CREATE FUNCTION libros_devueltos() 
RETURNS VARCHAR(1000) 
DETERMINISTIC
BEGIN 
    DECLARE resultados VARCHAR(1000); 
    SELECT GROUP_CONCAT(CONCAT(l.titulo, ' - ', pl.estado) SEPARATOR '\n') INTO resultados 
    FROM libro l 
    JOIN prestamo_libro pl ON l.ISBN = pl.ISBN_libro 
    WHERE pl.estado = 1; 
    RETURN resultados; 
END //

DELIMITER ;

-- 2 Listado de usuarios que son alumnos.
DELIMITER //

CREATE FUNCTION usuarios_alumnos()
RETURNS VARCHAR(1000)
DETERMINISTIC
BEGIN
    DECLARE resultados VARCHAR(1000);
    SELECT GROUP_CONCAT(CONCAT(u.nombre, ' ', u.apellido) SEPARATOR '\n') INTO resultados
    FROM usuario u
    WHERE u.rol = 'alumno';
    RETURN resultados;
END //

DELIMITER ;

-- 3 Listado de teléfonos de usuarios que son profesores.
DELIMITER //

CREATE FUNCTION telefonos_profesores()
RETURNS VARCHAR(1000)
DETERMINISTIC
BEGIN
    DECLARE resultados VARCHAR(1000);
    SELECT GROUP_CONCAT(CONCAT(t.numero, ' - ', u.nombre, ' ', u.apellido) SEPARATOR '\n') INTO resultados
    FROM telefono t
    JOIN usuario u ON t.dni_usuario = u.dni
    WHERE u.rol = 'profesor';
    RETURN resultados;
END //

DELIMITER ;

-- 4 Cantidad de mapas donde la area de representación es 'Geografía'.

DELIMITER //

CREATE FUNCTION cantidad_mapas_geografia()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad INT;
    SELECT COUNT(*) INTO cantidad
    FROM mapa
    WHERE area_representacion = 'Geografía';
    RETURN cantidad;
END //

DELIMITER ;
