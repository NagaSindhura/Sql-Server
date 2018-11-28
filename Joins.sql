--CREATE DATABASE SQLConcepts
--use SQLConcepts

--CREATE TABLE A(col1 int, col2 int)
--insert into A (col1,col2)
--SELECT 1,10 UNION
--SELECT 2,20 UNION
--SELECT 3,30 UNION
--SELECT 4,40

--CREATE TABLE B( col1 INT , col2 INT)

--insert into B (col1,col2)
--SELECT 1,100 UNION
--SELECT 2,200 UNION
--SELECT 3,300 UNION
--SELECT 4,400 UNION
--SELECT 5,500 UNION
--SELECT 6,600 

--CREATE TABLE C( col1 INT , col2 INT)

--insert into C (col1,col2)
--SELECT 11,11100 UNION
--SELECT 12,11200 UNION
--SELECT 13,11300 UNION
--SELECT 14,11400 UNION
--SELECT 15,11500 UNION
--SELECT 16,11600 

--JOINS Types

select * from A a1
INNER JOIN B b1 On a1.col1 = b1.col1


select * from A a1
JOIN B b1 On a1.col1 = b1.col1


select * from B b1
LEFT JOIN A a1 On a1.col1 = b1.col1

select * from B b1
LEFT OUTER JOIN A a1 On a1.col1 = b1.col1

select * from A a1
RIGHT JOIN B b1 On a1.col1 = b1.col1

select * from A a1 
RIGHT OUTER JOIN B b1 On a1.col1 = b1.col1


select * from A a1 
CROSS JOIN B b1