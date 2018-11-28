CREATE DATABASE ASHOK

USE ASHOK

CREATE TABLE EMPLOYEE
(EMPID INT PRIMARY KEY IDENTITY(1,1) ,
NAME VARCHAR(100),
salary MONEY ,
ManagerId INT NOT NULL
)
ALTER TABLE EMPLOYEE
ALTER COLUMN ManagerId INT NULL


SELECT * FROm EMPLOYEE

INSERT INTO EMPLOYEE (NAME,salary,ManagerId)
SELECt 'naga', 10000,null UNION
SELECt 'naga', 20000,null UNION
SELECt 'naga', 30000,null
TRUNCATE TABLE EMPLOYEE

USE ASHOK

CREATE TABLE EMPLOYEE
(EMPID INT PRIMARY KEY IDENTITY(1,1) ,
NAME VARCHAR(100),
salary MONEY ,
ManagerId INT NULL
)
--There is already an object named 'EMPLOYEE' in the database.


INSERT INTO EMPLOYEE (NAME,salary,ManagerId)
SELECt 'naga', 10000,null UNION
SELECt 'Sindhura', 20000,null UNION
SELECt 'Pulivarthy', 30000,null


INSERT INTO EMPLOYEE (NAME,salary,ManagerId)
SELECt 'nagaemp1', 5000,1 UNION
SELECt 'nagaemp2', 5050,1 UNION
SELECt 'SindhuraEmp1', 2000,3 UNION
SELECt 'SindhuraEmp2', 5000,3 UNION
SELECt 'PulivarthyEmp1', 30000,2 UNION
SELECt 'PulivarthyEmp2', 300000,2


--Question1 
--get all the Employee Name, Manager Name from the emplyee Table

SELECT emp.Name 'Employee name',Mgr.Name 'manager name' FROm dbo.EMPLOYEE emp
LEFT JOIN dbo.EMPLOYEE Mgr ON emp.ManagerId = Mgr.EMPID

--Question2
--get the Employee 4th highest salary

DECLARE @tempSal TABLE(ranking INT,salary MONEY);


--INSERT INTO @tempSal (ranking,salary)
;WITH CTE AS (
SELECT  DISTINCT salary --AS salary
FROM dbo.EMPLOYEE emp
--order by salary desc
)
INSERT INTO @tempSal (ranking,salary)
select  ROW_NUMBER() OVER  (ORDER BY salary DESC) AS 'ranking',salary
--into @tempSal
 from CTE 

 SELECT * FROM @tempSal sal
 INNER JOIN dbo.Employee emp ON emp.salary = sal.salary
 where sal.ranking = 4
