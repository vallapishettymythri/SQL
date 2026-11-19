--Conversion functions

--CAST()
SELECT CAST(10.5 AS INT)
SELECT CAST(GETDATE() AS DATE)

--employees joined today?
SELECT * FROM EMP WHERE hiredate=CAST(GETDATE() AS DATE)

--display smith earns 800
SELECT ename + 'earns' +CAST(sal AS VARCHAR) FROM EMP

--display smith joined on 1980-12-17 as clerk?
SELECT ename + ' joined on' +CAST(HIREDATE as VARCHAR)+ 'as ' + job FROM EMP

--CONVERT()
SELECT CONVERT (INT,10.5)
SELECT CONVERT(DATE,GETDATE())

--Differnece between CAST & CONVERT?
--usin convert function we can display date in different
--format which is not possible using cast.

--to display dates in different format, date must be converted to char type.
SELECT CONVERT(VARCHAR,GETDATE(),101) --date
SELECT CONVERT(VARCHAR,GETDATE(),107) --date
SELECT CONVERT(VARCHAR,GETDATE(),108) --time
SELECT CONVERT(VARCHAR,GETDATE(),109) --datetime
SELECT CONVERT(VARCHAR,GETDATE(),110) --date
SELECT CONVERT(VARCHAR,GETDATE(),111) --date

--display ENAME HIREDATE? display Hiredates in dd-mm-yyyy format?
SELECT ename, CONVERT(VARCHAR,hiredate,105) as hiredate from EMP

--TRY_CAST() & TRY_CONVERT
SELECT TRY_CAST('ABC' AS MONEY)

