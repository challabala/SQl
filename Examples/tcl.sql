BEGIN TRANSACTION;

UPDATE students 
SET name = "Challa" 
WHERE department = "aiml";
COMMIT;
ROLLBACK;

SELECT * from Students;


BEGIN TRANSACTION;


CREATE TABLE student(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    department TEXT,
    age INTEGER
);

PRAGMA table_info(Student);

INSERT INTO Student (name, department, age) VALUES
('Rohan', 'CSE', 20),
('Anitha', 'ECE', 21),
('balas', 'CSE', 22);

SELECT * from Student;



