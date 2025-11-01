SELECT * from employee;

SELECT COUNT( DISTINCT department) as Depts from employee;

SELECT COUNT(*) as Total_Sal from employee;
SELECT SUM(salary) as Sum_sal from employee;
SELECT AVG(salary) as Avg_sal from employee;

SELECT MIN(salary) AS lowest_salary FROM employees;
SELECT MAX(salary) AS highest_salary FROM employees;

SELECT * FROM employee;
SELECT
  COUNT(*) AS total_employees,
  SUM(salary) AS total_salary,
  AVG(salary) AS average_salary,
  MIN(salary) AS lowest_salary,
  MAX(salary) AS highest_salary
FROM employees;

SELECT
  department,
  COUNT(*) AS total_employees,
  SUM(salary) AS total_salary,
  AVG(salary) AS average_salary,
  MIN(salary) AS lowest_salary,
  MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

SELECT
  age,COUNT(*) AS total_employees,
  SUM(salary) AS total_salary,
  AVG(salary) AS average_salary,
  MIN(salary) AS lowest_salary,
  MAX(salary) AS highest_salary
FROM employees
GROUP BY age;

SELECT department, round(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;



