CREATE TABLE employee (
  emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  department TEXT,
  salary REAL,
  age INTEGER,
  join_year INTEGER,
  city TEXT
);

INSERT INTO employee (name, department, salary, age, join_year, city)
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

SELECT * from employee
ORDER BY salary ;

SELECT * from employee
ORDER BY salary DESC;

SELECT name,department,salary from employee
ORDER BY name DESC 
LIMIT 3
OFFSET 2;

select * from employee;

select city  from employee where city not like "%ai";
select city  from employee where city not like "_____";



