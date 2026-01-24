-- Restricción de CASCADE a idCharla
ALTER TABLE asistencia
ADD CONSTRAINT DEL_UP_CASCADE_idCharla
FOREIGN KEY (idCharla)
REFERENCES charlas(idCharla)
ON DELETE CASCADE	-- Borrar todo
ON UPDATE CASCADE;	-- Actualizar todo