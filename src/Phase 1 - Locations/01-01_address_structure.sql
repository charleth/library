USE library;

DROP TABLE IF EXISTS address;

CREATE TABLE address
(
    address_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(40),
    number VARCHAR(6),
    zipcode VARCHAR(10),
    city VARCHAR(30),
    country VARCHAR(40)
);