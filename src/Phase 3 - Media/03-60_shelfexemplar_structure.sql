USE library;

DROP TABLE IF EXISTS shelfexemplar;

CREATE TABLE shelfexemplar
(
    exemplar_ID      INTEGER,
    FOREIGN KEY shelfexemplar_exemplar_ID (exemplar_ID) REFERENCES exemplar (exemplar_ID),
    shelf_ID         INTEGER,
    FOREIGN KEY shelfexemplar_shelf_FK (shelf_ID) REFERENCES shelf (shelf_ID)
);
