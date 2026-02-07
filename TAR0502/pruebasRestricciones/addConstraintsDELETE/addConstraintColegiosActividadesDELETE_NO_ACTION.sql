ALTER TABLE colegios_actividades
ADD CONSTRAINT FK_colegio FOREIGN KEY (idColegio) REFERENCES colegios(idColegio) ON DELETE NO ACTION

ALTER TABLE colegios_actividades
ADD CONSTRAINT FK_charla FOREIGN KEY (idCharla) REFERENCES charlas(idCharla) ON DELETE NO ACTION;