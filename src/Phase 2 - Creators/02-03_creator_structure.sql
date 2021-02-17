USE library;

DROP TABLE IF EXISTS creator;

CREATE TABLE creator
(
   creator_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
   firstname VARCHAR(40),
   lastname VARCHAR(40)
);