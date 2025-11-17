-- create table friends(
--     id INT,
--     name char,
--     age INT
-- );

-- INSERT INTO friends(id,name,age)
-- VALUES(100,"Pavan",22),
--        (101,"Anand",24),
--        (102,"Tanmay",23);

-- SELECT * FROM friends;

-- UPDATE friends set age=19 WHERE id = 100;

-- SELECT * FROM friends;

-- -- alter commands 

-- ALTER TABLE friends RENAME to students;

-- SELECT * from students;

-- ALTER Table students RENAME name to first_name;

-- SELECT * FROM students;

-- PRAGMA table_info(students);

-- ALTER TABLE students add COLUMN dept varchar(20);

-- PRAGMA table_info(students);

-- ALTER TABLE students add COLUMN college varchar(20);

-- UPDATE students SET dept="CSE";

-- SELECT * FROM students;

-- -- ALTER TABLE students DROP COLUMN college;

-- SELECT * FROM students;

-- drop TABLE students;

-- SELECT * FROM students;


CREATE Table Student (
    name VARCHAR(20),
    age INT,
    dept VARCHAR(10)
);

PRAGMA table_info(Student);

INSERT into Student(name,age,dept)
            VALUES("Balaji",22,"CSE"),
                  ("Pavan",23,"AIML"),
                  ("Anand",25,"Civil");

SELECT * FROM student;

UPDATE Student set age=24
WHERE name="Anand";

SELECT * FROM Student;

ALTER Table Student RENAME to Students;

SELECT * FROM Students;

PRAGMA table_info(Students);

ALTER TABLE Students RENAME COLUMN dept to department;

SELECT * FROM Students;

PRAGMA table_info(Students);

ALTER Table Students ADD COLUMN collage text;

SELECT * FROM Students;

PRAGMA table_info(Students);

UPDATE Students SET collage="gist";

SELECT * FROM Students;

PRAGMA table_info(Students);

INSERT INTO Students (name, age, department, collage)
VALUES
('Rohan', 20, 'CSE', 'Sri Vidya College'),
('Anitha', 22, 'ECE', 'Narayana Engineering'),
('Balaji', 21, 'EEE', 'Srinivasa Institute'),
('Keerthi', 19, 'IT', 'SV Engineering'),
('Mahesh', 23, 'MECH', 'JNTUA College'),
('Sravani', 20, 'CSE', 'GITAM University'),
('Vamsi', 22, 'CIVIL', 'Chaitanya Engineering'),
('Teja', 21, 'CSE', 'KLU University'),
('Swathi', 19, 'ECE', 'Sree Vidyanikethan'),
('Harsha', 24, 'IT', 'Aditya College');
SELECT * FROM Students;

SELECT name,age from Students;

SELECT name,age from Students 
WHERE age>=20 and age<=21;

SELECT name,age from Students 
WHERE age!=21;

SELECT name,age from Students 
WHERE age=21 and name="Balaji";

SELECT name,age from Students 
WHERE age!=21

SELECT name,age from Students 
WHERE age!=21
LIMIT 2;

SELECT name,age from Students 
WHERE age!=21
OFFSET 2;

SELECT name,age from Students 
WHERE age!=21
OFFSET 2
LIMIT 2;

SELECT * FROM Students
ORDER BY age;

SELECT * FROM Students
ORDER BY age
LIMIT 2
OFFSET 2;

SELECT * FROM Students
WHERE name LIKE "_a%";

SELECT * FROM Students
WHERE department in ('IT','EEE');

UPDATE Students set age=22
WHERE department in ('IT','EEE');

SELECT * FROM Students
WHERE department in ('IT','EEE');

SELECT DISTINCT department as dept from Students;

SELECT * FROM Students;

INSERT INTO Students(name,age,department,collage)
VALUES("Balaji",22,"aiml","gist");

SELECT * FROM Students;

SELECT name,count(*) as Total FROM Students GROUP BY name;
-- SELECT name,count(*) as Total FROM Students GROUP BY department;

SELECT age,COUNT(department)as total from Students GROUP BY department
HAVING total=1;

SELECT department,COUNT(*) as Total from Students GROUP BY department
HAVING total>=2;

CREATE Table frds(
    name VARCHAR(20) UNIQUE NOT NULL,
    age int check (age>=18)
);

INSERT into frds(name,age)
VALUES("balaji",22);

INSERT into frds(name,age)
VALUES("pavan",22);

INSERT into frds(name,age)
VALUES("anand",18);

ALTER Table frds add COLUMN dept DEFAULT "gist";

ALTER Table frds add COLUMN id PRIMARY KEY;

PRAGMA table_info(frds);

SELECT * from frds;