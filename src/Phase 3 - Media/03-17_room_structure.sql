USE library;

DROP TABLE IF EXISTS room;

CREATE TABLE room
(
    room_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(40),
    branch_ID INTEGER,
        FOREIGN KEY room_branch_FK (branch_ID) REFERENCES branch(branch_ID)
);