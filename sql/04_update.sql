-- give Alice +1 year
UPDATE students SET age = age + 1 WHERE name = 'Alice';
SELECT name, age FROM students WHERE name = 'Alice';
