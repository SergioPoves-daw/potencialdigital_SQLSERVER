CREATE TABLE colegios_actividades (
	idReserva smallint PRIMARY KEY IDENTITY,
	idColegio smallint DEFAULT 0 NOT NULL,
	idCharla smallint NULL,
	fecha smalldatetime NULL,
	numero_asistentes smallint  NULL,
	FOREIGN KEY (idColegio) REFERENCES colegios(idColegio) ON DELETE SET NULL,
	FOREIGN KEY (idCharla) REFERENCES charlas(idCharla) ON DELETE SET NULL
);