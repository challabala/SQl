CREATE TABLE employees_2 (
  emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  department TEXT,
  salary REAL,
  city TEXT
);

INSERT INTO employees_2 (name, department, salary, city)
VALUES
('Ravi', 'HR', 35000, 'Delhi'),
('Priya', 'IT', 60000, 'Mumbai'),
('Karan', 'Finance', 55000, 'Pune'),
('Sneha', 'IT', 70000, 'Delhi'),
('Amit', 'Sales', 45000, 'Chennai');




SELECT * FROM employees_2;

DELETE from employees_2
WHERE department = 'Finance';

SELECT * from employees_2;

DELETE from employees_2
WHERE salary<50000;

SELECT * FROM employees_2;

