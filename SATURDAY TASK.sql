CREATE DATABASE SATURDAY

CREATE TABLE WORKER
(
WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY VARCHAR(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
)
SELECT * FROM WORKER

INSERT INTO Worker VALUES(001, 'Monika', 'Arora', 100000, '08-06-2022  02:42:00', 'HR')
INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, '08-06-2022  02:42:00', 'Admin')
INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, '08-06-2022  02:42:00', 'HR')
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '08-06-2022  02:42:00', 'Admin')
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '08-06-2022  02:42:00', 'Admin')
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '08-06-2022  02:42:00', 'Account')
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000,'08-06-2022  02:42:00', 'Account')
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '08-06-2022 02:42:00', 'Admin')

SELECT * FROM WORKER

SELECT FIRST_NAME AS WORKER_NAME from Worker; --1 QUESTION

SELECT * FROM WORKER

SELECT UPPER(FIRST_NAME) from worker; --2 qUESTION

SELECT * FROM WORKER

SELECT distinct DEPARTMENT from WORKER;

SELECT * FROM WORKER

SELECT SUBSTRING(FIRST_NAME,1,3) from WORKER;---question 4

SELECT * FROM WORKER

SELECT DISTINCT LEN(DEPARTMENT) FROM WORKER;---question5

SELECT * FROM WORKER

SELECT CONCAT(FIRST_NAME,LAST_NAME)AS 'COMPLETE_NAME' FROM WORKER;----question6

SELECT * FROM WORKER

SELECT * FROM WORKER where FIRST_NAME in('vipul','satish');---question7

SELECT * FROM WORKER

SELECT * FROM WORKER where DEPARTMENT like'admin%';---question8

SELECT * FROM WORKER

SELECT * FROM WORKER where FIRST_NAME LIKE '%a';--question9

SELECT * FROM WORKER

SELECT * FROM WORKER where FIRST_NAME like'%a%';--question 10

