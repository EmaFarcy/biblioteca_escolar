DROP DATABASE IF EXISTS biblioteca_escolar;
CREATE DATABASE biblioteca_escolar CHARACTER SET utf8mb4;
USE biblioteca_escolar;

-- Crear la tabla 'autor' con los siguientes campos:
CREATE TABLE autor (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nac DATE
);

-- Crear la tabla 'generos' con los siguientes campos:
CREATE TABLE generos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

-- Crear la tabla 'editorial' con los siguientes campos:
CREATE TABLE editorial (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL
);

-- Crear la tabla 'tema_materia' con los siguientes campos:
CREATE TABLE tema_materia (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tema_materia INT UNIQUE NOT NULL
);

-- Crear la tabla 'libro' con los siguientes campos:
CREATE TABLE libro (
    ISBN INT PRIMARY KEY NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    idioma VARCHAR(30) NOT NULL,
    año_publicacion INT NOT NULL,
    ID_genero INT,
    ID_autor INT,
    ID_editorial INT,
    ID_tema_materia INT,
    FOREIGN KEY (ID_genero) REFERENCES generos(id),
    FOREIGN KEY (ID_autor) REFERENCES autor(id),
    FOREIGN KEY (ID_editorial) REFERENCES editorial(id),
    FOREIGN KEY (ID_tema_materia) REFERENCES tema_materia(id)
);

-- Crear la tabla 'mapa' con los siguientes campos:
CREATE TABLE mapa (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    formato VARCHAR(50) NOT NULL,
    area_representacion VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    anio_publicacion INT NOT NULL,
    ID_editorial INT,
    FOREIGN KEY (ID_editorial) REFERENCES editorial(id)
);

-- Crear la tabla 'usuario' con los siguientes campos:
CREATE TABLE usuario (
    dni INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo_electronico VARCHAR(100),
    curso INT,
    division VARCHAR(50),
    rol VARCHAR(30) NOT NULL
);

-- Crear la tabla 'telefono' con los siguientes campos:
CREATE TABLE telefono (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    numero INT NOT NULL,
    dni_usuario INT,
    FOREIGN KEY (dni_usuario) REFERENCES usuario(dni)
);

-- Crear la tabla 'prestamo_libro' con los siguientes campos:
CREATE TABLE prestamo_libro (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fecha_de_retiro DATE NOT NULL,
    fecha_de_devolucion DATE NOT NULL,
    estado BOOLEAN NOT NULL,
    ISBN_libro INT,
    DNI_usuario INT,
    observaciones VARCHAR(100),
    FOREIGN KEY (ISBN_libro) REFERENCES libro(ISBN),
    FOREIGN KEY (DNI_usuario) REFERENCES usuario(dni)
);

-- Crear la tabla 'prestamo_mapa' con los siguientes campos:
CREATE TABLE prestamo_mapa (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fecha_de_retiro DATE NOT NULL,
    fecha_de_devolucion DATE NOT NULL,
    estado BOOLEAN NOT NULL,
    ID_mapa INT,
    DNI_usuario INT,
    observaciones VARCHAR(100),
    FOREIGN KEY (ID_mapa) REFERENCES mapa(id),
    FOREIGN KEY (DNI_usuario) REFERENCES usuario(dni)
);
