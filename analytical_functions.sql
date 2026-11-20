--Analytical functions
--RANK & DENSE RANK

--find ranks of the employees based on sal and highest paid should get 1st rank?
SELECT EMPNO,ENAME,SAL,
RANK()OVER(ORDER BY SAL DESC) as rnk FROM EMP

SELECT EMPNO,ENAME,SAL,
DENSE_RANK()OVER(ORDER BY SAL DESC) as rnk FROM EMP


--CTE- common table expression
--display top 5 employees based on salary?
WITH E
AS
(SELECT EMPNO,ENAME,SAL,
DENSE_RANK()OVER(ORDER BY SAL DESC) as rnk
FROM EMP)
SELECT * FROM E WHERE rnk<=5

--display top 3 salary? no duplicates
WITH E
AS
(SELECT  sal,
DENSE_RANK()OVER(ORDER BY SAL DESC) as rnk
FROM EMP)
SELECT DISTINCT SAL FROM E WHERE rnk<=3 ORDER BY sal DESC

--display 5th salary
WITH E
AS
(SELECT  sal,
DENSE_RANK()OVER(ORDER BY SAL DESC) as rnk
FROM EMP)
SELECT DISTINCT SAL FROM E WHERE rnk=5 ORDER BY sal DESC

--PARTITION BY Clause-
--display ranks of the employees with dept based on sal?
SELECT empno,ename,sal,deptno,
DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) as rnk 
FROM EMP

--top 3 employees in each dept?
WITH E
AS
(SELECT empno,ename,sal,deptno,
DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) as rnk 
FROM EMP)
SELECT * FROM E WHERE rnk<=3



--ROW_NUMBER()-
--row number based on salary
SELECT empno, ename, sal,
ROW_NUMBER() OVER(ORDER BY sal DESC) as rno
FROM EMP

--row number according to table
SELECT empno,ename,sal,
ROW_NUMBER() OVER(ORDER BY empno ASC) as rno
FROM EMP


--display first rows from emp?
WITH E
AS
(SELECT empno,ename,sal,
ROW_NUMBER() OVER(ORDER BY empno ASC) as rno
FROM EMP)
SELECT * FROM E WHERE rno<=5


--display 5,10,15 rno.
WITH E
AS
(SELECT empno,ename,sal,
ROW_NUMBER() OVER(ORDER BY empno ASC) as rno
FROM EMP)
SELECT * FROM E WHERE rno IN(5,10,15)


--display even rno
WITH E
AS
(SELECT empno,ename,sal,
ROW_NUMBER() OVER(ORDER BY empno ASC) as rno
FROM EMP)
SELECT * FROM E WHERE rno%2=0



--LAG & LEAD()-
SELECT empno,ename,sal,
LAG(sal,1) OVER(ORDER BY empno ASC) as prev_sal
FROM EMP


--NTILE()-
SELECT ename,sal,
NTILE(3) OVER(ORDER BY sal DESC) as bucket
FROM EMP


