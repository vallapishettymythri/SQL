--BUILT IN FUNCTIONS
--UPPER & LOWER
--display empno ename sal? display names in lowercase?
SELECT empno,LOWER(ename) as ename,sal FROM EMP

--convert names to lowercase in table?
UPDATE EMP SET ename=LOWER(ename)


--LEN()
--display ename length?
SELECT ename,LEN(ename) as len FROM EMP

--display employee name contains 5 chars?
SELECT * FROM EMP WHERE ename LIKE '_____'

SELECT * FROM EMP WHERE LEN(ename)=5

--LEFT() & RIGHT()-
--employees name starst and ends with same char?
SELECT * FROM EMP WHERE ename LIKE 'a%a'

SELECT * FROM EMP WHERE LEFT (ename,1)=RIGHT(ename,1)

--generate emailids for employees?
SELECT empno,ename,
LEFT(ename,3)+LEFT(empno,3)+'@tcs.com'
AS EMAILID FROM EMP

--store this email ids in database
--step1- add emailid column
ALTER TABLE EMP 
ADD EMAILID VARCHAR(20)
--step2-update the column with email id's
UPDATE EMP SET EMAILID=LEFT(ename,3) + LEFT(empno,3)+'@tcs.com'


--SUBSTRING()
SELECT SUBSTRING ('HELLO WELCOME',7,4)
SELECT SUBSTRING('HELLO WELCOME',7)

--CHARINDEX()
SELECT CHARINDEX('O','HELLO WELCOME')
SELECT CHARINDEX(' ','HELLO WELCOME')
SELECT CHARINDEX('O','HELLO WLECOME',6)


CREATE TABLE CUSTOMER
(
CID INT, CNAME VARCHAR(20)
)

INSERT INTO CUSTOMER VALUES(10,'Sachin Tendulkar'),(11,'Virat Kohli')

--display cid fname lname?
SELECT CID,
SUBSTRING(CNAME,1,CHARINDEX(' ',CNAME)-1) AS FNAME,
SUBSTRING(CNAME,CHARINDEX(' ',CNAME)+1) AS LNAME
FROM CUSTOMER

--REPLICATE()
SELECT REPLICATE('*',10)

--display ename sal XXX XXXX
SELECT ENAME, REPLICATE('X', LEN(SAL)-3) AS SAL
FROM EMP

--REPLACE()
SELECT REPLACE('HELLO','ELL','ABC')
SELECT REPLACE('HELLO','L','ABC')
SELECT REPLACE ('HELLO','ELO','ABC')
SELECT REPLACE ('@@HE@@LL@@O@@','@','')


--TRANSLATE()
SELECT TRANSLATE('HELLO','ELO','ABC')

--display ENAME SAL? ENCRYPT SALARY?
SELECT ename,
TRANSLATE (sal,'0123456789.','$bT*@k%#^&!') as sal 
FROM EMP


--remove all the special characters from '@#HE!$LL%^o&*'
SELECT REPLACE(TRANSLATE('@#HE!$LL%^O&*','!@#$%^&*','@@@@@@@@'),'@','')

