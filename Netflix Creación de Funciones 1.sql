USE netflix;


DELIMITER //
CREATE FUNCTION getMostViewedMovie ()
RETURNS VARCHAR(250)
READS SQL DATA
BEGIN

  DECLARE movie_name VARCHAR(250);
  
  SET movie_name = (SELECT title FROM movies ORDER BY views DESC LIMIT 1);
  
  RETURN movie_name;

END//

#ejemplo de uso

SELECT * FROM movies WHERE title = getMostViewedMovie();

#otra función

DELIMITER //
CREATE FUNCTION getViewsFromCategory (cat VARCHAR(100))
RETURNS INT
DETERMINISTIC
BEGIN
   
   DECLARE movies_count INT;
   DECLARE series_count INT;
   
   SET movies_count = (select SUM(views) FROM movies WHERE category = cat);
   SET series_count = (select SUM(views) FROM series WHERE category = cat);
   
   RETURN movies_count + series_count;

END//