-- 1. Create table
CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age INTEGER DEFAULT 18,
  city TEXT
);

-- 2. Insert values
INSERT INTO students (name, city) VALUES ('Ravi', 'Chennai');
INSERT INTO students (name, age, city) VALUES ('Priya', 20, 'Delhi');

-- 3. Show all tables
SELECT name FROM sqlite_master WHERE type='table';

-- 4. Show columns of table
PRAGMA table_info(students);

-- 5. View data
SELECT * FROM students;

-- 6. Drop the table
DROP TABLE students;

