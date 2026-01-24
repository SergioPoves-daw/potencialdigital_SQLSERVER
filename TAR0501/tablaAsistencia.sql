-- Crear la tabla ASISTENCIA
CREATE TABLE asistencia (
	idCharla smallint NOT NULL,
	idUsuario int NOT NULL,
	PRIMARY KEY (idCharla, idUsuario),	-- Clave compuesta
	FOREIGN KEY (idCharla) REFERENCES charlas(idCharla),	-- FK de charlas(idCharla) a asistencia(idCharla)
	FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)	-- FK de usuarios(idUsuario) a asistencia(idUsuario)
);