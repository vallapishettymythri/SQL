--CASE statement

--simple case
--display ename,job?
SELECT ename, 
CASE job 
WHEN 'CLERK' THEN  'WORKER'
WHEN 'SALESMAN' THEN 'EXECUTIVE'
WHEN 'PRESIDENT' THEN 'BIG BOSS'
ELSE 'EMPLOYEE' 
END as job
FROM EMP

--searched case
--display ename sal salrange?
SELECT ename,sal,
CASE 
WHEN sal>3000 THEN 'HISAL'
WHEN sal<3000 THEN 'LOSAL'
ELSE 'AVGSAL'
END as salrange 
FROM EMP

--display SNO TOTAL AVG RESULT
SELECT SNO, 
s1+s2+s3 as total,
(s1+s2+s3)/3 as avg,
CASE 
WHEN s1>=35 AND s2>=35 AND s3>=35 THEN 'PASS'
ELSE 'FAIL'
END as result
FROM student

