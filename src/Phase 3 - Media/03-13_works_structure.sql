USE library;

DROP TABLE IF EXISTS works;

CREATE TABLE works
(
    works_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR (40),
    subtitle VARCHAR (40),
    series_ID INTEGER,
        FOREIGN KEY works_series_FK (series_ID) REFERENCES series(series_ID),
    creator_ID INTEGER,
        FOREIGN KEY works_creator_FK (creator_ID) REFERENCES creator(creator_ID),
    # how do I allow one work to have many creators?
    publication DATE,
    genre_ID INTEGER,
        FOREIGN KEY works_genre_FK (genre_ID) REFERENCES genre(genre_ID),
    subgenre_ID INTEGER,
        FOREIGN KEY works_subgenre_FK (subgenre_ID) REFERENCES subgenre(subgenre_ID)
);