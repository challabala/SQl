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

SELECT department,COUNT(DISTINCT city) as city FROM employee
GROUP BY department;

SELECT * FROM employee;
SELECT department,MIN(salary) FROM employee
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 80000
ORDER BY total_salary DESC;

SELECT department from employee
GROUP BY salary
HAVING sum(salary)>1500000;

SELECT age
    CASE 
        WHEN age<30 THEN 'young' 
        ELSE  'senior'
    END as age_group
from employee;


