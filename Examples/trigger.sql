CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    salary INT
);

INSERT INTO employees VALUES
(1, 'Rohan', 20000),
(2, 'Anitha', 30000),
(3, 'Kiran', 25000);

SELECT * FROM employees;

CREATE TRIGGER trg_double_salary
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    UPDATE employees
    SET salary = NEW.salary * 2;
END;

UPDATE employees SET salary = 30000 WHERE id = 1;

SELECT * FROM employees;


create Table bbb(
    name VARCHAR(10),
    age INT
);

INSERT INTO bbb(name,age)
VALUES("balaji",22),
("pavan",23),
("anand",24);

SELECT * FROM bbb;

SELECT name,age,

CASE 
    WHEN age > 23 THEN  "Major"
    ELSE  "Minor"

END as abc FROM bbb;

SELECT name,age,
CASE 
    WHEN age=22 THEN "HII" 
    WHEN age=23 THEN "Hello" 
    ELSE  "Welcome"
END as greet from bbb;

SELECT name,age,
if (age>22,"Adult","Child") as abc from bbb; 


