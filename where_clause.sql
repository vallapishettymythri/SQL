--Display employee details whose id=103?
SELECT * FROM EMP WHERE empid=103

--Display Employee details ename and salary of id 103?
SELECT ename, sal FROM EMP WHERE empid=103

--Display Employee details whose name is vijay?
SELECT * FROM EMP WHERE ename='vijay'

--Display employee details earning more than 5000?
SELECT * FROM emp WHERE sal>5000

--Display employes joined after 2020?
SELECT * FROM EMP WHERE hiredate>'2020-12-31'

--Display employee joined before 2020?
SELECT * FROM EMP WHERE hiredate < '2020-01-01'

--Display employee not working as clerk?
SELECT * FROM EMP WHERE job != 'clerk'

