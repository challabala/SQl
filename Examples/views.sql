CREATE Table sss(
    name VARCHAR(10),
    age int,
    color VARCHAR(10),
    gender VARCHAR(10)
);

INSERT INTO sss(name,age,color,gender) 
VALUES("balaji",22,"blue","male"),
("pavan",23,"yellow","male"),
("rani",21,"pink","female"),
("rama",20,"blue","female");

SELECT * from sss;

CREATE View ss as SELECT name,age from sss;


PRAGMA table_info(ss);

SELECT * from ss;

SELECT name from ss;

UPDATE sss set name = "Challa" WHERE age = 22;

SELECT * FROM sss;
SELECT * FROM ss;



CREATE TABLE stu (
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(20),
    department VARCHAR(10)
);

CREATE TABLE marks (
    mark_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    subject VARCHAR(20),
    marks INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

PRAGMA table_info(stu);
PRAGMA table_info(marks);

INSERT INTO stu VALUES
(1, 'Rohan', 'CSE'),
(2, 'Anitha', 'ECE'),
(3, 'Balaji', 'CSE'),
(4, 'Keerthi', 'IT');



INSERT INTO marks (student_id, subject, marks) VALUES
(1, 'Maths', 85),
(1, 'DBMS', 90),
(1, 'Python', 88),
(2, 'Maths', 70),
(2, 'DBMS', 75),
(3, 'Maths', 95),
(3, 'DBMS', 89),
(4, 'Python', 60);



CREATE VIEW student_details_view AS
SELECT s.student_id, s.name, s.department,
       m.subject, m.marks
FROM stu s
JOIN marks m
ON s.student_id = m.student_id;

SELECT * FROM student_details_view;

