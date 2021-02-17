USE library;

DROP TABLE IF EXISTS shelf;

CREATE TABLE shelf
(
    shelf_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    designation VARCHAR(40),
    room_ID INTEGER,
        FOREIGN KEY shelf_room_FK (room_ID) REFERENCES room(room_ID)
);