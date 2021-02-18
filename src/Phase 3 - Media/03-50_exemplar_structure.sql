USE library;

DROP TABLE IF EXISTS exemplar;

CREATE TABLE exemplar
(
    exemplar_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    works_ID INTEGER,
        FOREIGN KEY exemplar_works_FK(works_ID) REFERENCES works(works_ID),
    languages_ID INTEGER,
        FOREIGN KEY exemplar_languages_FK(languages_ID) REFERENCES languages(languages_ID),
    formatting_ID INTEGER,
        FOREIGN KEY exemplar_formatting_FK(formatting_ID) REFERENCES formatting(formatting_ID)
/*,
    edition INTEGER, (later)
    publication INTEGER (later) */
);