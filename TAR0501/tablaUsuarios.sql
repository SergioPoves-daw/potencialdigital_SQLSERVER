-- Crear la tabla USUARIOS
CREATE TABLE usuarios (
	idUsuario int PRIMARY KEY IDENTITY,
	nombre varchar(40) NOT NULL,
	telefono char(13) NOT NULL UNIQUE
);