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