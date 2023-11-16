USE netflix;

#primera transacción

START transaction;

INSERT INTO favourites (id, product_id, user_id)
VALUES (NULL,2,1);

#ROLLBACK;
COMMIT;

#segunda transacción

START transaction;

INSERT INTO users (id,username,email,password)
VALUES (NULL,"Ramirez","ramirez123765@hotmail.com","helloimramirez"),
(NULL,"Mark Rubber","welcomemark@gmail.com","123456789"),
(NULL,"Aries Fuel","otheraccount1423523@gmail.com","#Rem606"),
(NULL,"Mister Fluck","robertdaniels@hotmail.com","robertrobert");

SAVEPOINT checkpoint1;

INSERT INTO users (id,username,email,password)
VALUES (NULL,"flixchannel","helpcenter@flixchannel.net","d12e120e"),
(NULL,"Duran Enterprises","duranenterprises@duranenterprises.com","duran0098321"),
(NULL,"Micahel","thisismichael@gmail.com","godsavesus"),
(NULL,"Ricardo Martinez","ricardomartinezsosa@gmail.com","ricardo1234");

SAVEPOINT checkpoint2;

#RELEASE SAVEPOINT checkpoint;

COMMIT;

#SELECT * FROM favourites;

#SELECT * FROM users;