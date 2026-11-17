--DATE FUNCTIONS
--GETDATE()
SELECT GETDATE()

--DATEPART()
SELECT DATEPART(YY,GETDATE())
SELECT DATEPART(DD,GETDATE())
SELECT DATEPART(DW,GETDATE()) --6 friday
SELECT DATEPART(DY,GETDATE())
SELECT DATEPART(HH,GETDATE()) --hour
SELECT DATEPART(QQ,GETDATE())--quater
SELECT DATEPART(MM,GETDATE())--Month

--employees joined in 1980,1983,1985?
SELECT * FROM EMP WHERE DATEPART(YY,HIREDATE) IN (1980,1983,1985)

--employees joined in leap year?
SELECT * FROM EMP WHERE DATEPART(YY,HIREDATE)%4=0 

--employees joined in jan,apr,dec,months?
SELECT * FROM EMP WHERE DATEPART(MM,HIREDATE) in (1,4,12)

--employees joined in weekends
SELECT * FROM EMP WHERE DATEPART(DW,HIREDATE) IN(1,7)

--employees joined in 2nd quater of 1981 year
SELECT * FROM EMP
WHERE DATEPART(YY,HIREDATE)=1981 AND DATEPART(QQ,HIREDATE)=2

--DATENAME()
SELECT DATENAME(MM,getdate())

--display ename,day?
SELECT ENAME,DATENAME(DW,HIREDATE) AS day FROM EMP

--waq to display on which day india got independence?
SELECT DATENAME(DW,'1947-08-15')

--FORMAT()
SELECT FORMAT(GETDATE(),'dd-MM-yyyy')
SELECT FORMAT(GETDATE(),'dd-MM-yyyy hh:mm:ss')
SELECT FORMAT(GETDATE(),'dd-MMM-yyyy hh:mm:ss') --3char from months
SELECT FORMAT(GETDATE(),'dd-MMMM-yyyy hh:mm:ss')--fullname

--display ENAME HIREDATE? Display hiredate in mm/dd/yyyy format
SELECT ENAME,FORMAT(HIREDATE,'MM-dd-yyyy') FROM EMP

INSERT INTO EMP(EMPNO,ENAME,SAL,HIREDATE) VALUES(5555,'SACHIN',2000,getdate())
--stores date as the type of hiredate is datetype. So it wont store time

--display employees joined today
SELECT * FROM EMP WHERE HIREDATE=GETDATE()--null
SELECT * FROM EMP WHERE HIREDATE=FORMAT(getdate(),'yyyy-MM-dd')

--DATEADD()
SELECT DATEADD(DD,10,GETDATE())
SELECT DATEADD(DD,-10,GETDATE())
SELECT DATEADD(YY,2,GETDATE())

--employees joined in last 6 months?
SELECT * FROM EMP 
WHERE HIREDATE BETWEEN DATEADD(MM,-6,GETDATE()) AND GETDATE()

--DATEDIFF()
SELECT DATEDIFF(YY,'2025-10-24',GETDATE())
SELECT DATEDIFF(MM,'2025-10-24',GETDATE())
SELECT DATEDIFF(DD,'2025-10-24',GETDATE())

--display ename experience in years?
SELECT ENAME, DATEDIFF(YY,hiredate,getdate()) as EXPERIENCE
FROM EMP

--display ename, experience in m years and n months?
SELECT ename,hiredate, 
DATEDIFF(mm,hiredate,getdate())/12 as years,
DATEDIFF(mm,hiredate,getdate())%12 as months
FROM EMP

--EOMONTH()
SELECT EOMONTH(GETDATE())

SELECT EOMONTH(GETDATE(),-1) --last month last date
SELECT EOMONTH(GETDATE(),1)
