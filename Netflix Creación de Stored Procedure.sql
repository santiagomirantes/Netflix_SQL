USE netflix;

DELIMITER //
CREATE PROCEDURE addFavouriteByName (IN user_id INT, IN product_name VARCHAR(250))
BEGIN
   DECLARE movie_id INT;
   DECLARE serie_id INT;
   
   SELECT id INTO movie_id FROM movies WHERE title = product_name LIMIT 1;
   SELECT id INTO serie_id FROM series WHERE title = product_name LIMIT 1;
   
   IF movie_id IS NOT NULL THEN
      INSERT INTO favourites (id, product_id, user_id)
      VALUES (NULL, movie_id, user_id);
   ELSEIF serie_id IS NOT NULL THEN
      INSERT INTO favourites (id, product_id, user_id)
      VALUES (NULL, serie_id, user_id);
   END IF;
END//

call AddFavouriteByName(1,"Shrek");


SELECT * FROM favourites;
