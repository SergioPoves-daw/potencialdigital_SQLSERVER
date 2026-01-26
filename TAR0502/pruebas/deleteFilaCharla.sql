-- Prueba de borrado de idCharla 1 en la tabla padre
-- Esta columna tiene ON DELETE NO ACTION en la tabla hija
DELETE FROM charlas WHERE idCharla = 1;