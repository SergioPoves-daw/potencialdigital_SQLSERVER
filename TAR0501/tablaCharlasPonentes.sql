-- Crear la tabla CHARLAS PONENTES
CREATE TABLE charlas_ponentes (
	idCharla smallint NOT NULL,
	idPonente tinyint NOT NULL,
	PRIMARY KEY (idCharla, idPonente),	-- Clave compuesta
	FOREIGN KEY (idCharla) REFERENCES charlas(idCharla),	-- FK de charlas(idCharla) a charlas_ponentes(idCharla)
	FOREIGN KEY (idPonente) REFERENCES ponentes(idPonente)	-- FK de ponentes(idPonente) a charlas_ponentes(idPonente)
);