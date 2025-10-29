CREATE TABLE students(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(20),
    age INTEGER,
    grade VARCHAR(5)
);

PRAGMA table_info(students);

INSERT INTO students(name,age,grade)
VALUES ("Balaji",20,"A");

INSERT INTO students(name,age,grade)
VALUES ("Pavan",22,"B");

INSERT INTO students(name,age,grade)
VALUES ("Sai",25,"C");

INSERT INTO students(name,age,grade)
VALUES ("Ameer",26,"D");

INSERT INTO students (name, age, grade) VALUES ('Ravi', 20, 'A');
INSERT INTO students (name, age, grade) VALUES ('Priya', 21, 'B');
INSERT INTO students (name, age, grade) VALUES ('Arjun', 22, 'A+');

SELECT * FROM students;
