CREATE TABLE colegios (
	idColegio smallint PRIMARY KEY,
	nombre varchar(120) UNIQUE NOT NULL,
	persona_contacto varchar(50) NOT NULL DEFAULT 'no procede',
	tlfno_contacto char(13) NOT NULL DEFAULT 'no procede'
);