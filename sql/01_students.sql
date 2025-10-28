DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

INSERT INTO students (id, name, age) VALUES
(1,'Alice',20),
(2,'Bob',22),
(3,'Carol',19);

-- Practice query 1:
SELECT * FROM students;
