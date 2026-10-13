CREATE TABLE EMP
(
    empid SMALLINT,
    ename VARCHAR(10),
    job VARCHAR(10),
    sal SMALLMONEY,
    hiredate DATE,
    dept VARCHAR(10)
);

INSERT INTO EMP VALUES
(100,'sachin','clerk',4000,'2020-04-10','hr'),
(101,'priya','analyst',9000,GETDATE(),'IT'),
(102,'aravind','manager',8000,'2018-02-20','hr'),
(103,'david','clerk',6000,'2019-09-05','sales'),
(104,'vijay',NULL,NULL,'2021-05-12','IT'),
(105,'Kumar',NULL,NULL,'2022-03-18','sales');

SELECT * FROM EMP