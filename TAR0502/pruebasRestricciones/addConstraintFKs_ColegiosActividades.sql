ALTER TABLE colegios_actividades
ADD CONSTRAINT FK_charla FOREIGN KEY REFERENCES charlas(idCharla);

ALTER TABLE colegios_actividades
ADD CONSTRAINT FK_colegio FOREIGN KEY REFERENCES colegios(idColegio);