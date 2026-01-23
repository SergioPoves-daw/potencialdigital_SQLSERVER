CREATE TABLE colegio_actividades (
	idReserva smallint PRIMARY KEY IDENTITY,
	idColegio smallint DEFAULT 0 NOT NULL,
	idCharla smallint NULL,
	fecha smalldatetime NULL,
	numero_asistentes tinyint NULL,
	FOREIGN KEY (idColegio) REFERENCES colegio(idColegio),
	FOREIGN KEY (idCharla) REFERENCES charlas(idCharla)
);