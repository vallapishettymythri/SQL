--DDL commands(Data Definition Lang)
sp_help EMP --table structure

--ALTER Command
--adding columns
--add column gender to emp table?
ALTER TABLE EMP 
ADD gender CHAR(1)

--after adding by defualt the new column is filled with nulls, 
--to insert data into the new column use UPDATE command
UPDATE EMP  SET gender='M' WHERE empno IN (7499)


--dropping columns
--drop column gender from emp?
ALTER TABLE EMP 
DROP column gender

--modifying column
--changing datatype
--modify column empno datatype to int?
ALTER TABLE EMP
ALTER COLUMN empno SMALLINT


ALTER TABLE EMP 
ALTER COLUMN comm MONEY

--changing size?
--increase the size of ename to 20?
ALTER TABLE EMP
ALTER COLUMN ename VARCHAR(20)



--DROP command
--DROP TABLE EMP- Complete table is removed

SELECT * FROM EMP

--TRUNCATE command
TRUNCATE TABLE EMP

