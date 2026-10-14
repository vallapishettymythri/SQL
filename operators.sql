--IN operator
--Display employees whose id=100,103,105?
SELECT * FROM EMP WHERE empid IN (100,103,105)


--employees working as clerk, manager?
SELECT * FROM EMP WHERE job IN ('clerk','manager')


 
--NOT IN operator
--employess not working as clerk, manager?
SELECT * FROM EMP WHERE job NOT IN ('clerk','manager')



--BETWEEN operator
--employees earning between 5000 and 10000?
SELECT * FROM EMP WHERE sal BETWEEN 5000 AND 10000

--employees joined in 2020
SELECT * FROM EMP WHERE hiredate BETWEEN '2020-01-01' AND '2020-12-31'


--NOT BETWEEN
--employees not joined in 2020
SELECT * FROM EMP WHERE hiredate NOT BETWEEN '2020-01-01' AND '2020-12-31'


--employees working as clerk manager. 
--earning between 5000 and 10000
--not joined in 2020 
--not working for hr,it?
SELECT * FROM EMP WHERE job IN ('clerk','manager') 
AND 
sal BETWEEN 5000 AND 10000 
AND
hiredate NOT BETWEEN '2020-01-01' AND '2020-12-31'
AND 
dept NOT IN ('sales','IT')

--LIKE operator
--employee name start with 's'?
SELECT * FROM EMP WHERE ename LIKE 's%'

--name ends with 'd'?
SELECT * FROM EMP WHERE ename LIKE '%d'

--name contains 'a'?
SELECT * FROM EMP WHERE ename LIKE '%a%'


--NOT LIKE 
--Name doesnt contain 'a'
SELECT * FROM EMP WHERE ename NOT LIKE '%a%'


--where 'a' is the 4th char in their name?
SELECT * FROM EMP WHERE ename LIKE '___a%'

--where 'a' is the 4th char from last?
SELECT * FROM EMP WHERE ename LIKE '%a___'


--name starts with 'a','d','k','s'?
SELECT * FROM EMP WHERE ename LIKE '[adks]%'


--names starts with 'a' and 'p'?
SELECT * FROM EMP WHERE ename LIKE '[a-p]%'


--employees 5 digit salary?
SELECT * FROM EMP WHERE sal LIKE '_____.00'

--employees joined in oct month?
SELECT * FROM EMP WHERE hiredate LIKE '_____10___'

--Employees joined in 2020?
SELECT * FROM EMP WHERE hiredate LIKE '2020%'

--is operator
--display employees who are not earning salary?
SELECT * FROM EMP WHERE sal is NULL

--employees who are earning salary?
SELECT * FROM EMP WHERE sal is not NULL




