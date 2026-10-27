--TOP clause

--display first 5 rows from emp table?
SELECT TOP 5 *  FROM EMP


--display top 5 highest paid employees?
SELECT TOP 5 * 
FROM EMP
ORDER BY sal DESC


--top 3 max salaries
SELECT DISTINCT TOP 3 sal
FROM EMP
ORDER BY sal DESC


--display top 3 employees based on experience?
SELECT TOP 3 sal
FROM EMP
ORDER BY hiredate ASC

--DISPLAY TOP 3 MAX salaries in 20th dept
SELECT DISTINCT TOP 3 sal 
FROM EMP
WHERE deptno=20
ORDER BY sal DESC


