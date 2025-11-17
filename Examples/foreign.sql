CREATE TABLE ss(
    name VARCHAR(10) PRIMARY KEY,
    age int 
);

PRAGMA table_info(ss);
PRAGMA foreign_keys = ON;

CREATE TABLE pp(
    name VARCHAR(10),
    color VARCHAR(10),
    Foreign Key (name) REFERENCES ss(name) on DELETE CASCADE
);

PRAGMA table_info(pp);

INSERT into ss(name,age)
VALUES("ram",21),
("sam",24),
("jam",25);

SELECT * FROM ss;
SELECT * FROM pp;

INSERT INTO pp(name,color) VALUES("ram","red");
PRAGMA foreign_keys = ON;
INSERT INTO pp(name,color) VALUES("kk","red");
INSERT INTO gg(name,color) VALUES("balaji","red");
SELECT * FROM pp;

PRAGMA foreign_keys = ON;
DELETE from pp WHERE name="ram";

SELECT * from ss;
SELECT * from pp;
