create database monday

create table emp
(
eid int,
ename varchar(20),
enumber varchar(20),
elocation varchar(20),
esalary int,
edesignation varchar(20)
)
select * from emp

insert into emp values(01,'yuvi','9876543321','trichy',200000,'HR')
insert into emp values(02,'fahim','8997967576','salem',250000,'Manager')
insert into emp values(03,'satz','5432167890','chennai',300000,'Devloper')
insert into emp values(04,'sangi','6789543234','erode',350000,'Designer')

select * from emp

--Agreegate function
--Avearge
select avg(esalary) as 'Average Salary' from emp
--Minimum 
select min(esalary) as 'Minimum Salary' from emp
--Maximum
select max(esalary) as 'maximum salary' from emp
--count
select count(esalary) as 'Count salary' from emp
--sum
select sum(esalary) as 'Sum Salary' from emp
--Group by clause
select avg(esalary) as 'Average Salary',edesignation from emp group by edesignation
-- having
select avg(esalary) as 'Average Salary',edesignation from emp group by edesignation having edesignation='Devloper'
--order by clause
select * from emp order by esalary

select * from emp order by esalary desc

--create synonym
create synonym e1 for emp
select * from emp
select * from e1

--drop synonym
drop synonym if exists e1

--create 3 table
create table students
(
SId int primary key,
SName varchar(20),
SDept int not null,
SClub int not null
)
create table SDept
(
DID int primary key,
Deptname varchar(20) not null
)
create table SClub
(
CID int primary key,
Clubname varchar(20) not null
)
select * from Students

select * from SDept

--Inner join
select SId,SName,SDept,Deptname from students inner join sDept on SDept=DID
select students.SId,students.SName,students.SDept,SDept.Deptname from students inner join SDept on students.SDept=SDept.DID
select * from SDept
select s.SId,s.SName,s.SClub,s.SDept,d.Deptname from students as s inner join SDept as d on s.SDept=d.DID
--Inner join 
select s.SID,s.SName,s.SDept,d.Deptname,c.Clubname,s.SClub from students as s inner join SDept as d on s.SDept=d.DId inner join SClub as c on s.SClub=c.CID
--left,right full join
select s.SID,s.SName,s.SClub,s.SDept,d.Deptname from students as s inner join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.Deptname from students as s right join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.Deptname from students as s left join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.Deptname from students as s full join SDept as d on s.SDept=d.DID

select s.SID,s.SName,s.SDept,d.Deptname,c.Clubname,s.SClub from students as s left join SDept as d on s.SDept=d.DID full join SClub as c on s.SClub=c.CID

--IDENTITY
create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into sample values('sam')
select * from sample
--Sequences
-- create sequence
create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key,
name varchar(20)
)
insert into sample1 values(NEXT VALUE For EMPID,'peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'paul')
insert into sample1 values(NEXT VALUE FOR EMPID,'john')
--ALTER SEQUENCE
alter sequence empid restart with 1 increment by 1
create table sample2
(
id int primary key,
name varchar(20)
)
insert into sample2 values(NEXT VALUE For EMPID,'peter')
select * from sample2
insert into sample2 values(NEXT VALUE FOR EMPID,'paul')
insert into sample2 values(NEXT VALUE FOR EMPID,'john')

--check 
select NEXT VALUE FOR EMPID

--Views
--simple view
select * from students
create view  Sports
as
select * from students where SClub=200

select * from Sports
--complex view
create view students_Dept
as
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID
select * from students_Dept