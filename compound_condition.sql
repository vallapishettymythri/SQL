-- COMPOUND CONDITION:

--Display employees working as clerk,manager?
SELECT * FROM EMP WHERE job='clerk' OR job='manager'

--display employee whose id=100,103,105?
SELECT * FROM EMP WHERE empid=100 OR empid=103 OR empid=105

--Display employees where working for hr dept earning more than 5000?
SELECT * FROM EMP WHERE dept='hr' AND sal>5000

--Display sales manager details?
SELECT * FROM EMP WHERE dept='sales' AND job='manager'

--Display employees earning more than 5000 and less than 10000?
SELECT * FROM EMP WHERE sal>5000 AND sal<10000

--employees joined in 2020?
SELECT * FROM EMP WHERE hiredate >='2020-01-01' AND hiredate <= '2020-12-31'

--employees working as clerk, manager and earning more than 5000?
SELECT * FROM EMP 
WHERE (job='clerk' OR job='Manager') AND (sal>5000)