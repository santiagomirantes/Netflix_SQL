USE Netflix;

CREATE OR REPLACE VIEW recent_movies AS
(
 SELECT * FROM movies
 ORDER BY launch DESC
 LIMIT 10
);

CREATE OR REPLACE VIEW recent_series AS
(
 SELECT * FROM series
 ORDER BY launch DESC
 LIMIT 10
);


SELECT * from recent_movies;
SELECT * from recent_series;