CREATE Table ggg(
    name VARCHAR(10) PRIMARY KEY,
    age int
);
INSERT INTO ggg
VALUES("hi",24),
("hello",29),
("has",30);

SELECT * FROM ggg;

CREATE Table ffff(
    name VARCHAR(10),
    color VARCHAR(10),
    Foreign Key (name) REFERENCES ggg(name)
);

INSERT INTO ffff
VALUES("hi","red"),
("hello","blue"),
("hey","black");

SELECT * FROM fff;

INSERT INTO fff
VALUES("hi","green");

CREATE Table ffff(
    name VARCHAR(10) PRIMARY key,
    color VARCHAR(10),
    Foreign Key (name) REFERENCES ggg(name)
);

INSERT INTO ffff
VALUES("hi","red"),
("hello","blue"),
("hey","black");

SELECT * FROM ffff;

INSERT INTO ffff
VALUES("hi","green");


-- SELECT name,age,
-- if (age>25,"Major","Minor")
-- FROM ggg;



