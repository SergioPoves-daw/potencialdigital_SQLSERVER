-- Crear la tabla CHARLAS
CREATE TABLE charlas (
	idCharla smallint PRIMARY KEY IDENTITY,	-- No hace falta especificar NOT NULL porque es PK
	nombre varchar(255) UNIQUE NOT NULL,
	info_adicional varchar(8000) NULL,
	puntuacion_media decimal(4,2) NOT NULL DEFAULT 0.0,	-- Cambiado a NOT NULL con puntuación (valor) 0.0 por defecto, para que no de error NULL
);