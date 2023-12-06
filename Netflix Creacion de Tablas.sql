#Inicio de proyecto

CREATE SCHEMA Netflix;

use Netflix;

CREATE TABLE Movies (

    id INT NOT NULL auto_increment PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    director VARCHAR(250) NOT NULL,
    category VARCHAR(100) NOT NULL,
    launch DATE NOT NULL
    

);

CREATE TABLE Series (

   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   title VARCHAR(250) NOT NULL,
   seasons INT NOT NULL,
   episodes INT NOT NULL,
   director VARCHAR(250) NOT NULL,
   category VARCHAR(100) NOT NULL,
   launch DATE NOT NULL

);

CREATE TABLE Movies_Series (

 id INT NOT NULL auto_increment PRIMARY KEY,
 movie_id INT DEFAULT NULL,
 series_id INT DEFAULT NULL,
 FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
 FOREIGN KEY (series_id) REFERENCES series(id) ON DELETE CASCADE
 

);

CREATE TABLE Users (

  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(250) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR (100) NOT NULL

);

CREATE TABLE Favourites (

   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   product_id INT NOT NULL,
   user_id INT NOT NULL,
   FOREIGN KEY (product_id) REFERENCES favourites(id),
   FOREIGN KEY (user_id) REFERENCES users(id)

);

CREATE TABLE Episodes (
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 series_id INT NOT NULL,
 title VARCHAR(250) NOT NULL,
 duration INT NOT NULL,
 description VARCHAR(350) NOT NULL,
 FOREIGN KEY (series_id) REFERENCES series(id)
);