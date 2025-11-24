CREATE TABLE ss(
    name VARCHAR(10) PRIMARY KEY,
    age int 
);

PRAGMA table_info(ss);
PRAGMA foreign_keys = ON;

CREATE TABLE pp(
    name VARCHAR(10),
    color VARCHAR(10),
    Foreign Key (name) REFERENCES ss(name) on DELETE CASCADE
);

PRAGMA table_info(pp);

INSERT into ss(name,age)
VALUES("ram",21),
("sam",24),
("jam",25);

SELECT * FROM ss;
SELECT * FROM pp;

INSERT INTO pp(name,color) VALUES("ram","red");
PRAGMA foreign_keys = ON;
INSERT INTO pp(name,color) VALUES("kk","red");
INSERT INTO gg(name,color) VALUES("balaji","red");
SELECT * FROM pp;

PRAGMA foreign_keys = ON;
DELETE from pp WHERE name="ram";

SELECT * from ss;
SELECT * from pp;



PRAGMA foreign_keys = ON;

CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT NOT NULL,
    salary INT
);


CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT,
    emp_id INTEGER,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE
);

PRAGMA table_info(employee);
PRAGMA table_info(projects);

INSERT INTO employee(emp_id, emp_name, salary) VALUES
(101, 'Rohan', 30000),
(102, 'Anitha', 35000),
(103, 'Kiran', 28000);

INSERT INTO projects(project_id, project_name, emp_id) VALUES
(1, 'AI System', 101),
(2, 'Web App', 102),
(3, 'Data Mining', 101);

SELECT * FROM employee;
SELECT * FROM projects;

DELETE from projects  WHERE emp_id = 200;

PRAGMA foreign_keys = ON;
INSERT INTO projects(project_id, project_name, emp_id)
VALUES (4, 'Cloud App', 200);


INSERT into employee(emp_id,emp_name,salary)
VALUES(101,"Balaji",50000);

SELECT * FROM employee;
SELECT * FROM projects;

PRAGMA foreign_keys = ON;
DELETE from employee WHERE emp_id = 101;

SELECT count(*) as Total
FROM employee
SELECT * FROM projects;