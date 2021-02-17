USE library;

DROP TABLE IF EXISTS branch;

CREATE TABLE branch
(
    branch_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (50),
    address_ID INTEGER,
        FOREIGN KEY branch_address_FK (address_ID) REFERENCES address(address_ID)
);