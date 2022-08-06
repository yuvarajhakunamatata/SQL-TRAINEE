create database profiles

create table HME
(
ID int,
Nam varchar(15),
Age int,
salary int,
phone varchar(15),
locatio varchar(15),
hobby varchar(15)
)
select * from HME

--insert
insert into HME values(01,'yuvi',21,30000,'7339227368','trichy','cricket')
insert into HME values(02,'satz',22,28000,'6789098876','chennai','beach')
insert into HME values(03,'sangi',20,27500,'6547894566','erode','cooking')
insert into HME values(04,'kirithi',23,27000,'3421456780','kumara','reading')
insert into HME values(05,'mofith',28,26500,'7584902374','tveli','music')
insert into HME values(06,'sridhar',25,26000,'1232434576','thirupur','sleep')
insert into HME values(07,'fahim',26,25500,'5678432109','salem','kabadi')
insert into HME values(08,'veer',24,25000,'6784327689','karnataka','run')

select * from HME
--and oprator
select * from HME where Age > 25 and salary > 25000
--between oprator
select * from HME where salary between 27000 and 30000
-- in oprator
select * from HME where Id in (2,4,6)
--not in oprator
select * from HME where Id not in(4,3,2)
--like oprator
select * from HME where salary like '25000%'

select * from HME where  Nam like '[sv]%'

select * from HME where  Nam like '%[ji]'

select * from HME where  Nam not like '[sv]%'

select * from HME where  Nam not like '%[ji]'

update HME set  Age=22 where Id=5

select distinct Age from HME
