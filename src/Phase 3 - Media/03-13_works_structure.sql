USE library;

DROP TABLE IF EXISTS works;

CREATE TABLE works
(
    works_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR (60),
    subtitle VARCHAR (60),
    series_ID INTEGER,
        FOREIGN KEY works_series_FK (series_ID) REFERENCES series(series_ID),
    series_ordinal INTEGER,
    genre_ID INTEGER,
        FOREIGN KEY works_genre_FK (genre_ID) REFERENCES genre(genre_ID),
    subgenre_ID INTEGER,
        FOREIGN KEY works_subgenre_FK (subgenre_ID) REFERENCES subgenre(subgenre_ID)
);