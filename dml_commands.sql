--DML commands
SET IMPLICIT_TRANSACTIONS ON

--update all employee commision with 500?
UPDATE EMP SET comm=500


--update employees comm with 500 whose comm=null?
UPDATE EMP SET comm=500 WHERE comm is NULL


--increment comm by 200 whose comm not equal to null?
UPDATE EMP SET comm=comm+200 WHERE comm IS NOT NULL

--increment sal by 20% and comm by 10% those working as salesman and joined in 1981 year?
UPDATE EMP
SET sal=sal + (sal*0.2),comm=comm+(comm*0.1)
WHERE job='SALESMAN' 
AND
hiredate BETWEEN '1981-01-01' AND '1981-12-31'


--increment sal as follows?
UPDATE EMP 
SET sal= CASE job
WHEN 'CLERK' THEN  sal+(sal*0.1)
WHEN 'SALESMAN' THEN sal+(sal*0.15)
WHEN 'MANAGER' THEN sal+(sal*0.2)
ELSE sal+(sal*0.05)
END FROM EMP

select * from EMP
ROLLBACK

--DELETE command
--delete all rows from emp table?
DELETE FROM EMP

--delete employees whose empno=7499,7521?
DELETE FROM EMP WHERE empno IN (7499,7521)

--delete employees joined in 1981 4th quarter?
DELETE FROM EMP WHERE hiredate BETWEEN '1981-10-01' AND '1981-12-31'

