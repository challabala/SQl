CREATE  Table frds(
    id INT,
    name VARCHAR(20),
    age INT,
    city VARCHAR(10)
);

INSERT INTO frds (id,name,age,city)
VALUES (1,'balaji',22,'nellore'),
(2,'pavan',23,'mypadu');

SELECT CITY FROM frds;

PRAGMA table_info(frds);

SELECT name FROM sqlite_master WHERE type='table';