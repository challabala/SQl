CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
    emp_name TEXT NOT NULL,
    salary REAL CHECK(salary > 0),
    department TEXT DEFAULT 'General'
);

INSERT INTO employees (emp_name, salary) VALUES ('Mahesh', 30000);
INSERT INTO employees (emp_name, salary, department) VALUES ('Swathi', 45000, 'IT');

SELECT * from employees;


