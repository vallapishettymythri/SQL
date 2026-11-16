--Numeric Functions-
--abs()
--convert age to positive number
SELECT abs(-6)

--power()
SELECT POWER(3,2)

--sqrt()
SELECT SQRT(16)

--ROUNDING NUMBERS
SELECT ROUND(38.5678,0)
SELECT ROUND(38.3678,0)
SELECT ROUND(38.5678,1)
SELECT ROUND(38.5678,2)
SELECT ROUND(38.5678,3)
SELECT ROUND(386,-1) --tens
SELECT ROUND(386,-2) --hundreds
SELECT ROUND(386,-3) --thousands but the number is hundred so op is 0

SELECT ROUND(4567,-1),ROUND(4567,-2),ROUND(4567,-3)

--CEILING()-
SELECT CEILING(3.1)


--FLOOR()-
SELECT FLOOR(3.9)

--round employee salaries to hundreds in table?
UPDATE EMP SET sal=ROUND(sal,-2)
