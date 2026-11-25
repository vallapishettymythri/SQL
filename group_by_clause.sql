--GROUP BY clause

--display dept wise total salary?
SELECT deptno,SUM(sal) as totsal
FROM EMP
GROUP BY deptno

--display job wise summary?
SELECT job, min(sal) as minsal,
max(sal) as maxsal,
sum(sal) as totsal,
avg(sal) as avgsal,
count(*) as cnt
FROM EMP 
GROUP BY job

--display years wise no of employees?
SELECT DATEPART(yy,hiredate) as year, COUNT(*) as cnt
FROM EMP
GROUP BY DATEPART(yy,hiredate)

--display day wise no of employees joined?
SELECT DATEPART(dw,hiredate) as year, COUNT(*) as cnt
FROM EMP
GROUP BY DATEPART(dw,hiredate)

--display day wise no of employees joined?
SELECT DATENAME(dw,hiredate)as day, COUNT(*) as cnt
FROM EMP 
GROUP BY  DATENAME(dw,hiredate)

--display dept wise total sal only for the depts=10,20?
SELECT deptno, SUM(sal) as totsal
FROM emp
WHERE deptno IN (10,20)
GROUP BY deptno 

--display departments having more than 3 employees.
SELECT deptno, COUNT(*) as cnt
FROM EMP
GROUP BY deptno
HAVING COUNT(*) > 3 --HAVING clause


--display deptwise totalsal?
--only for the dept=10,20 and totalsal>10000?
SELECT deptno,SUM(sal) as totalsal
FROM EMP
WHERE deptno IN (10,20)
GROUP BY deptno
HAVING SUM(sal) >100

--grouping based on multiple columns
--display deptwise with in deptjob wise total salary?
SELECT deptno,job,SUM(sal) as totsal
FROM EMP
GROUP BY deptno,job
ORDER BY deptno ASC

--display year wise and with in year quater wise?
SELECT DATEPART(yy,hiredate) as year,
DATEPART(qq,hiredate) as qrt,
COUNT(*) as cnt
FROM EMP 
GROUP BY DATEPART(yy,hiredate),DATEPART(qq,hiredate)
ORDER BY year ASC


