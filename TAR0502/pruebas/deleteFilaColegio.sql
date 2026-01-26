-- Prueba de borrado idColegio en la tabla padre
-- Esta columna tiene ON DELETE CASCADE en la tabla hija
DELETE FROM colegios WHERE idColegio = 2;