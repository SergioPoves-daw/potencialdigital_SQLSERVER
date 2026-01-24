-- Comprobar que la puntación sea mínimo 0 y máximo 10
ALTER TABLE charlas ADD CONSTRAINT check_puntuacion CHECK (puntuacion_media >= 0.0 AND puntuacion_media <= 10.0);