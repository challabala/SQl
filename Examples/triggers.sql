CREATE TABLE name(
    name VARCHAR(10),
    age int,
    salary INT
);

PRAGMA table_info(name);

INSERT into name(name,age,salary)
VALUES("hi",25,2000),
("hello",27,4000),
("hey",29,6000);

SELECT * FROM name;

UPDATE name set salary = salary*2;

SELECT * FROM name;

create Trigger abc UPDATE on name
for each row SET salary=(salary*2);


CREATE TRIGGER abc
BEFORE UPDATE ON name
FOR EACH ROW
BEGIN
    UPDATE name
    SET salary = NEW.salary * 2
    WHERE name = NEW.name;
END;

UPDATE name SET salary = 2000 WHERE name = 'hi';

SELECT * FROM name;

INSERT into name(name,age,salary)
VALUES("hi",25,1000);

CREATE TABLE balaji(
    name TEXT,
    salary INT
);
INSERT INTO balaji VALUES
('Rohan', 20000),
('Anitha', 30000);

SELECT * from balaji;

CREATE TRIGGER trice_salary
AFTER UPDATE ON balaji

FOR EACH ROW
BEGIN
    UPDATE balaji 
    SET salary = NEW.salary * 3;
END;

UPDATE balaji SET salary = 2000 WHERE name="Rohan";
SELECT * FROM balaji;


CREATE Table salary(
    name VARCHAR(20),
    age INT,
    salary INT
);

INSERT INTO salary
VALUES("hi",22,2000),
("hello",27,4000),
("hey",29,6000);

SELECT * from salary;

UPDATE salary set salary = salary+2000 ;

CREATE Trigger sal BEFORE UPDATE on salary
for EACH row 
BEGIN
    UPDATE salary 
    SET salary = NEW.salary * 3;
END;



CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    salary INT
);

INSERT INTO employees VALUES
(1, 'Rohan', 20000),
(2, 'Anitha', 30000),
(3, 'Kiran', 25000);


