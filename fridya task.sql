create database Task2

create table employee1
(
Id int not null,
Name varchar(15) Not null,
Designation varchar(15) default 'self-Emp',
mail_Id varchar(15)
)
  
select * from employee1  
insert into employee1 values (1,'yuvaraj','UI','yuva@gmail.com')
insert into employee1 values (2,'geetha','AI','gee@gmail.com')
insert into employee1 values (3,'satz','UX','satz@gmail.com')
insert into employee1 values (4,'krish','AB','krish@gmail.com')

delete from employee1 where Id='1'
delete from employee1 where Id='2'
delete from employee1 where Id='3'
delete from employee1 where Id='4'
select * from employee1
create table branch
(
Id int primary key not null,
location varchar(15) not null,
)
select * from branch

insert into branch values(01,'trichy')
insert into branch values(02,'karur')

select * from branch

create table Voting
(
ID int Primary key,
Name varchar(25) UNIQUE NOT NULL,
dob datetime NOT NULL CHECK(dob <= CURRENT_TIMESTAMP),
age int NOT NULL CHECK(age >= 18),
designation varchar(25) DEFAULT 'self-employeed'
)
select * from Voting
insert into Voting values(1,'John','2000-01-07 12:12:12',22,'IT Employee')
insert into Voting values(2,'Jancy','2022-01-07 12:12:12',22,'IT Employee')
insert into Voting values(3,'Peter','2001-01-07 12:12:12.567',22,'IT Employee')
insert into Voting(id,name,dob,age) values(4,'Paul','2001-01-07 12:12:12.567',22)

select * from Voting

create table dept
(
did int primary key,
dname varchar(20) not null
)
insert into dept values(1,'Admin')
insert into dept values(2,'Developer')
insert into dept values(3,'Designer')
insert into dept values(4,'Tester')

select * from dept

delete from dept where did=1

select * from dept

update dept set did=100 where did=1

create table emp
(
eid int PRIMARY KEY,
ename varchar(25) NOT NULL,
salary MONEY,
dno int FOREIGN KEY REFERENCES dept(did)
)
select * from emp

insert into emp values(100,'John',25000,1)
insert into emp values(101,'Jancy',25000,2)
insert into emp values(102,'Joanna',28000,1)
insert into emp values(103,'Jamie',35000,3)

select * from emp

--Parent Table
create table parent
(
pid int primary key,
pname varchar(20) not null
)
select * from parent

insert into parent values(1,'p1')
insert into parent values(2,'p2')
insert into parent values(3,'p3')

select * from parent

--child Table
create table child
(
id int primary key,
cname varchar(20) not null,
pno int foreign key references parent(pid) on delete cascade on update cascade
)
insert into child values(100,'c1',1)
insert into child values(101,'c2',2)
insert into child values(102,'c3',1)
insert into child values(103,'c4',3)

select * from child

update parent set pid=10 where pid=1

select * from parent

select * from child

create table child
(
cid int primary key,
cname varchar(20) not null,
pno int default 1 foreign key references parent(pid) on delete set default on update set default
)
select * from child












