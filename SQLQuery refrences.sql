

--Creation of the new Table based on the another table structure but not the Data with in that table

SELECT *
INTO TestPbEvents1
 FROM  [dbo].[PbEvents]
 WHERE 1 = 0

 select * from TestPbEvents1 --TestPbEvents