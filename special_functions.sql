--Special Functions
--ISNULL()-
SELECT ISNULL(100,200)
SELECT ISNULL(NULL,200)

--display ename, sal and comm together into totsal?
SELECT ename, sal,comm,sal+ISNULL(comm,0) as totsal FROM EMP

--display ename sal comm? if comm=NULL display N/A?
SELECT ename,sal, ISNULL(CAST(comm AS VARCHAR),'n/a') as comm FROM EMP



--COALESCE()
SELECT COALESCE(NULL,100,NULL,200)


