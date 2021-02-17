USE library;

DROP TABLE IF EXISTS subgenre;

CREATE TABLE subgenre
(
    subgenre_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30),
    genre_ID INTEGER,
        FOREIGN KEY subgenre_genre_FK (genre_ID) REFERENCES genre(genre_ID)
);