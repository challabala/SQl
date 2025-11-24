SELECT * FROM students;

SELECT COUNT(*) as Total FROM students;

SELECT COUNT(*) FROM students WHERE department="CSE";


SELECT SUM(age) FROM students;

SELECT AVG(age) FROM students;

SELECT UPPER('balaji');   
SELECT LOWER('SQLITE');

SELECT LENGTH('Python');

SELECT ABS(-10); 
SELECT ROUND(15.567, 2);

SELECT RANDOM();


SELECT UPPER(name), LENGTH(name), ROUND(age, 2)
FROM students;

SELECT Length(*) from Students;


CREATE Table abc(
    name VARCHAR(10),
    age int,
    V_length DEFAULT NULL
);

INSERT INTO abc(name,age)
VALUES("raju",22),
("yaswanth",23),
("januu",25);

UPDATE abc SET V_length = length(name) WHERE age=22;
UPDATE abc SET V_length = length(name) WHERE age=23;
UPDATE abc SET V_length = length(name);
UPDATE abc SET name= Upper(name) WHERE age=25;

SELECT name,age from abc GROUP BY V_length;







