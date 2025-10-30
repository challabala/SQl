CREATE TABLE employees (
  emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  department TEXT,
  salary REAL,
  age INTEGER,
  join_year INTEGER,
  city TEXT
);

INSERT INTO employees (name, department, salary, age, join_year, city)
VALUES
('Ravi', 'HR', 35000, 28, 2019, 'Delhi'),
('Priya', 'IT', 60000, 25, 2021, 'Mumbai'),
('Karan', 'Finance', 55000, 32, 2018, 'Pune'),
('Sneha', 'IT', 70000, 27, 2020, 'Delhi'),
('Amit', 'Sales', 45000, 30, 2017, 'Chennai'),
('Meena', 'HR', 30000, 24, 2022, 'Bangalore'),
('Rohit', 'Finance', 65000, 33, 2016, 'Delhi'),
('Tina', 'Sales', 40000, 29, 2023, 'Mumbai'),
('Vijay', 'IT', 75000, 31, 2015, 'Pune'),
('Anita', 'Finance', 48000, 26, 2020, 'Chennai');

SELECT * from employees;

SELECT * from employees
WHERE department = 'IT';

SELECT * from employees
WHERE department <> 'IT';

SELECT * from employees
WHERE salary> 60000;

SELECT * from employees
WHERE salary>= 55000;

SELECT * from employees
WHERE salary BETWEEN 45000 AND 60000;

SELECT name, department FROM employees
WHERE department IN ('IT', 'Finance');

SELECT name, department FROM employees
WHERE department NOT IN ('IT', 'Finance');

SELECT name,city FROM employees WHERE city like '%i%' and name LIKE '%e%';

SELECT name, salary, department FROM employees
WHERE department = 'IT' AND salary > 65000;

SELECT name, department, city FROM employees
WHERE city = 'Delhi' OR city = 'Pune';

SELECT name, department FROM employees
WHERE department != 'HR';

SELECT * FROM employees;

UPDATE employees
SET age = 22
WHERE emp_id = 1;

SELECT * FROM employees;

DELETE from employees
WHERE name = 'Ravi';

SELECT * FROM employees;