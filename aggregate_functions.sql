--Aggregate Functions
--MAX()
SELECT MAX(sal) FROM emp
SELECT MAX(hiredate) FROM EMP
SELECT MAX(ename) FROM EMP


--MIN()
SELECT MIN(SAL) FROM EMP
SELECT MIN(HIREDATE) FROM EMP
SELECT MIN(ENAME) FROM EMP

--SUM()
SELECT SUM(SAL) FROM EMP
--round total sal to thousands
SELECT ROUND(SUM(sal),-3) FROM EMP

--after rounding display total sal with thousand seperator and currency symbol?
SELECT FORMAT(ROUND(SUM(sal),-3),'C','en-in') FROM EMP

--AVG()
SELECT AVG(SAL) FROM EMP

--display avg sal of the managers?
SELECT AVG(sal) FROM emp WHERE job='MANAGER'

--COUNT()
SELECT COUNT(EMPNO) FROM EMP
SELECT COUNT(COMM) FROM EMP
SELECT COUNT(DEPTNO) FROM EMP
SELECT COUNT(DISTINCT DEPTNO) FROM EMP

--COUNT(*)
SELECT COUNT(*) FROM EMP

--display no of employees joined in 1981 year?
SELECT COUNT(*) FROM EMP WHERE DATEPART(yy,hiredate)=1981

--display no of employees joined on sunday?
SELECT COUNT(*) FROM EMP WHERE DATEPART(dw,hiredate)=1

--display no of employees joined in 2nd quarter of 1981 year?
SELECT COUNT(*) FROM EMP 
WHERE DATEPART(yy,hiredate)=1981
AND 
DATEPART(qq,hiredate)=2
