create Table aa(
    name VARCHAR(10),
    age INT
);

insert into aa(name,age) VALUES("ram",55),
("sam",23),("jam",29);

insert into aa(name,age) VALUES("ram",55);

SELECT * FROM aa;


SELECT name,row_number() OVER(ORDER BY age ASC)
as rank from aa;

SELECT name,age,rank() OVER(ORDER BY age DESC)
as rank from aa;

SELECT dense_rank() OVER(ORDER BY age DESC)
as rank from aa;

ALTER TABLE aa
ADD COLUMN ranks int;

PRAGMA table_info(aa);

-- UPDATE aa SET ranks = rank() OVER(ORDER BY age ASC) from aa;
-- we can not use the window functions in the update command

CREATE VIEW Data AS
SELECT name, age
FROM aa
WHERE age = 23;

SELECT * FROM Data;
SELECT name FROM Data;


CREATE Table sss(
    name VARCHAR(10),
    age int,
    color VARCHAR(10),
    gender VARCHAR(10)
);



