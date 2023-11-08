USE netflix;

CREATE TRIGGER addMovie
AFTER INSERT ON movies
FOR EACH ROW
INSERT INTO movies_series (id, movie_id,serie_id)
VALUES (NULL,NEW.id,NULL);

CREATE TRIGGER addSerie
AFTER INSERT ON series
FOR EACH ROW
INSERT INTO movies_series (id, movie_id,serie_id)
VALUES (NULL,NULL,NEW.id);