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
 serie_id INT DEFAULT NULL,
 FOREIGN KEY (movie_id) REFERENCES movies(id),
 FOREIGN KEY (serie_id) REFERENCES series(id)
 

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