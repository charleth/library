USE library;

DROP TABLE IF EXISTS formatting;

CREATE TABLE formatting
(
    formatting_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    designation VARCHAR (20),
    kind VARCHAR (10)
);