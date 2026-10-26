--ALIAS
--display ename annual sal?
SELECT ename,sal*12 as [annual sal] FROM EMP

--display ename,sal HRA DA TAX TOTSAL
SELECT ename,sal,
	sal*0.2 as hra, 
	sal*0.4 as da,
	sal*0.1 as txt,
	sal+ (sal*0.2)+(sal*0.4)-(sal*0.1) as totsal FROM EMP



