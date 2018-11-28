
--CREATE DATABASE TriggersEample
--use TriggersEample

--CREATE TABLE Employee
--(
--EmployeeId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--Name VARCHAR(100),
--Description VARCHAR(500),
--CreatedOn DATETIME DEFAULT GETDATE()
--)
SELECT * from Employee
--drop table Employee
--CREATE TABLE Employeeaudit
--(
--EmployeeauditId int IDENTITY(1,1) NOT NULL,
--EmployeeId INT REFERENCEs dbo.Employee(EmployeeId), 
--Name VARCHAR(100),
--Description VARCHAR(500),
--createdby VARCHAR(100),
--CreatedOn DATETIME DEFAULT GETDATE()
--)
SELECT * FROm Employee
SELECT * FROm Employeeaudit

--CREATE TRIGGER Employee_Insert ON Employee
--FOR INSERT
--NOT FOR REPLICATION
--AS
--BEGIN

--INSERT INTO Employeeaudit ( EmployeeId,Name,Description,createdby,CreatedOn)
--SELECT i.EmployeeId,i.Name,i.Description,1,i.CreatedOn
--FROm inserted i

--END

--INSERT INTO Employee (Name,Description,CreatedOn)
--SELECT 'Naga4', 'naga4 learning triggers concept', getdate()
select * from Employee
select * from Employeeaudit


-- to delete the foreignkey
--alter table Employeeaudit
--DROP CONSTRAINT FK__Employeea__Emplo__29572725

--UPDATE E
--SET E.name = 'puliv'
--FROM Employee e
--WHERE EmployeeId =5

--delete FROM Employee 
--WHERE EmployeeId =5

select * from sys.objects where name like '%Employee%'

select @@SERVERNAME 

--ALTER TRIGGER Employee_update ON dbo.Employee
--for Update
--AS
--BEGIN

--DECLARE @Description varchar(500) = 'Updated values'
--if update(name)
--BEGIN
--	SET @Description= 'updated differently'
--END

--INSERT INTO Employeeaudit ( EmployeeId,Name,Description,createdby,CreatedOn)
--SELECT i.EmployeeId, i.name,@Description ,@@SERVERNAME, i.CreatedOn
--FROm inserted i
----inner join deleted d On i.Name = d.Name

--END


--CREATE TRIGGER Employee_delete ON dbo.Employee
--FOR DELETE
--AS 
--BEGIN

--INSERT INTO Employeeaudit ( EmployeeId,Name,Description,createdby,CreatedOn)
--SELECT i.EmployeeId, i.name,'deleted' ,@@SERVERNAME, i.CreatedOn
--FROm deleted i


--END
