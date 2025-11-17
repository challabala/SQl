create Table ff (
    name VARCHAR(20),
    age int
);

INSERT into ff(name,age)
VALUES("r",1),
    ("s",2),
    ("q",3);
SELECT * from ff;

CREATE Table kk(
    fname VARCHAR(20),
    age int 
);

INSERT into kk(fname,age)
VALUES("q",1),
    ("t",2),
    ("v",5);

SELECT * from ff;
SELECT * FROM kk;

SELECT ff.name,kk.fname from 
ff INNER JOIN kk
WHERE ff.age=kk.age;

SELECT * from 
ff INNER JOIN kk
WHERE ff.age=kk.age;

SELECT ff.name from 
ff LEFT JOIN kk
on ff.age=kk.age;

SELECT * FROM ff CROSS JOIN kk;




CREATE Table aa(
    name VARCHAR(10),
    age int
);

INSERT INTO aa(name,age)
VALUES("A",1),
("B",2),
("C",3);

PRAGMA table_info(aa);

SELECT * FROM aa;


CREATE Table bb(
    fname VARCHAR(10),
    age int
);

INSERT INTO bb(fname,age)
VALUES("D",1),
("E",2),
("F",6);


SELECT * FROM bb;

SELECT aa.name from aa LEFT JOIN bb on aa.age = bb.age;
SELECT bb.fname from aa LEFT JOIN bb on aa.age = bb.age;

SELECT bb.fname from aa RIGHT JOIN bb on aa.age = bb.age;
SELECT aa.name from aa RIGHT JOIN bb on aa.age = bb.age;

SELECT aa.name from aa LEFT JOIN bb on aa.age = bb.age 
UNION SELECT bb.fname from aa RIGHT JOIN bb on aa.age = bb.age;

SELECT aa.name from aa LEFT JOIN bb on aa.age = bb.age 
UNION SELECT bb.fname from aa RIGHT JOIN bb on aa.age = bb.age;

SELECT * FROM aa CROSS JOIN bb;
SELECT * FROM bb CROSS JOIN aa;




