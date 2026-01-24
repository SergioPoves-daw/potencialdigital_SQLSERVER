-- Crear la BD
CREATE DATABASE Potencial_Digital_SQL;
USE Potencial_Digital_SQL

-- Crear la tabla CHARLAS
CREATE TABLE charlas (
	idCharla smallint PRIMARY KEY IDENTITY,	-- No hace falta especificar NOT NULL porque es PK
	nombre varchar(255) UNIQUE NOT NULL,
	info_adicional varchar(8000) NULL,
	puntuacion_media decimal(4,2) NOT NULL DEFAULT 0.0,	-- Cambiado a NOT NULL con puntuación (valor) 0.0 por defecto, para que no de error NULL
);

-- Crear la tabla USUARIOS
CREATE TABLE usuarios (
	idUsuario int PRIMARY KEY IDENTITY,
	nombre varchar(40) NOT NULL,
	telefono char(13) NOT NULL UNIQUE
);

-- Crear la tabla ASISTENCIA
CREATE TABLE asistencia (
	idCharla smallint NOT NULL,
	idUsuario int NOT NULL,
	PRIMARY KEY (idCharla, idUsuario),	-- Clave compuesta
	FOREIGN KEY (idCharla) REFERENCES charlas(idCharla),	-- FK de charlas(idCharla) a asistencia(idCharla)
	FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)	-- FK de usuarios(idUsuario) a asistencia(idUsuario)
);

-- Crear la tabla PONENTES
CREATE TABLE ponentes (
	idPonente tinyint PRIMARY KEY IDENTITY,
	nombre varchar(100) NOT NULL,
	gasto_total smallmoney NULL CHECK (gasto_total >= 0)	-- Comprobar que el gasto no sea un número negativo
);

-- Crear la tabla CHARLAS PONENTES
CREATE TABLE charlas_ponentes (
	idCharla smallint NOT NULL,
	idPonente tinyint NOT NULL,
	PRIMARY KEY (idCharla, idPonente),	-- Clave compuesta
	FOREIGN KEY (idCharla) REFERENCES charlas(idCharla),	-- FK de charlas(idCharla) a charlas_ponentes(idCharla)
	FOREIGN KEY (idPonente) REFERENCES ponentes(idPonente)	-- FK de ponentes(idPonente) a charlas_ponentes(idPonente)
);

-- Crear la tabla FECHAS y FECHAS CHARLAS (fecha y hora juntos)
CREATE TABLE fechas (
	fechahora smalldatetime PRIMARY KEY
);

CREATE TABLE fechas_charlas (
	idCharla smallint NOT NULL,
	fechahora smalldatetime NOT NULL,
	PRIMARY KEY (idCharla, fechahora), -- Clave compuesta
	FOREIGN KEY (idCharla) REFERENCES charlas(idCharla),	-- FK de charlas(idCharla) a fechas_charlas(idCharla)
	FOREIGN KEY (fechahora) REFERENCES fechas(fechahora)	-- FK de fechas(fechahora) a fechas_charlas(fechahora)
);