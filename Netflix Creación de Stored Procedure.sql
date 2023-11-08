USE netflix;

DELIMITER //
CREATE PROCEDURE addFavouriteByName (IN user INT, IN product_name VARCHAR(250))
BEGIN

   SET @movie = (SELECT id FROM movies WHERE title = product_name);
   SET @serie = (SELECT id FROM series WHERE title = product_name);
   
   IF movie != NULL THEN
    INSERT INTO favourites (id,product_id,user_id)
    VALUES (NULL,movie,user);
   ELSE 
      IF serie != NULL THEN
         INSERT INTO favourites (id,product_id,user_id)
         VALUES (NULL, serie, user);
	  END IF;
   END IF;
   

END//

SELECT id FROM users WHERE username = "Santiago Miantes";
