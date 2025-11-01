
SELECT * from employee;

ALTER TABLE employee
ADD COLUMN email text ;

SELECT * FROM employee;

PRAGMA table_info(employee);


ALTER Table employee
RENAME COLUMN department to dept;

SELECT * from employee;
