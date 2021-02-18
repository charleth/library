USE library;

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    users_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR (40),
    lastname VARCHAR (40),
    birthdate DATE,
    email_ID INTEGER,
        FOREIGN KEY users_email_FK(email_ID) REFERENCES email(email_ID),
    address_ID INTEGER,
        FOREIGN KEY users_address_FK(address_ID) REFERENCES address(address_ID)
);