CREATE TABLE movies (
  movie_id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  actor TEXT,
  language TEXT
);
INSERT INTO movies (title, actor, language)
VALUES
('Inception', 'Leonardo DiCaprio', 'English'),
('RRR', 'N. T. Rama Rao Jr', 'Telugu'),
('3 Idiots', 'Aamir Khan', 'Hindi'),
('Avatar', 'Sam Worthington', 'English'),
('KGF', 'Yash', 'Kannada');

SELECT * from movies;

SELECT title,substr(title,1,3) as first_three
FROM movies;

SELECT title, SUBSTR(title, -3, 3) AS last_three
FROM movies;

SELECT * from movies;

SELECT title,REPLACE(title,'RRR','Rise Roar Revolt') as Updated_Title from movies;

SELECT * from movies;

SELECT REPLACE('I love SQL', 'SQL', 'SQLite') as Balaji;

SELECT language,length(language) as Lang_Length from movies;

SELECT UPPER(title) AS upper_case FROM movies;

SELECT LOWER(actor) AS lower_case FROM movies;

SELECT Trim('     balaji     ') as ala;

-- SELECT REVERSE(title) FROM movies;

SELECT title, INSTR(title, 'a') AS position_of_a
FROM movies;

SELECT abs(-25) as ABS_FUN;

SELECT ROUND(45.67809900, 4) as ROUND;

SELECT time('now') as Time_Now;
SELECT date('now') as Date_Now;
SELECT datetime('now') as Date_Time_Now;





