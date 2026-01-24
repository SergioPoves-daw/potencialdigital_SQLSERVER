-- Crear la tabla PONENTES
CREATE TABLE ponentes (
	idPonente tinyint PRIMARY KEY IDENTITY,
	nombre varchar(100) NOT NULL,
	gasto_total smallmoney NULL CHECK (gasto_total >= 0)	-- Comprobar que el gasto no sea un número negativo
);