-- Prueba de que el valor DEFAULT se asigna aunque no se incluya en la consulta
INSERT INTO charlas(nombre) VALUES
	('Tecnología');

-- Asignando un valor manual a puntuacion_media, ignorando el valor DEFAULT
INSERT INTO charlas(nombre, puntuacion_media) VALUES
	('Blockchain', 7.8);