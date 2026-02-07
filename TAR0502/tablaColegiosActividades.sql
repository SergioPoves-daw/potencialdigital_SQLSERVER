-- Crear la tabla Colegios_Actividades
CREATE TABLE colegios_actividades (
	idReserva smallint PRIMARY KEY IDENTITY,
	idColegio smallint DEFAULT 0 NOT NULL,
	idCharla smallint NULL,
	fecha smalldatetime NULL,
	numero_asistentes smallint  NULL,
);