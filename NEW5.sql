CREATE DATABASE JINDAL;
USE JINDAL;


create table dep(
Dep_ID varchar(10) not null,
Dep_Name varchar(50) not null,
Dep_Add varchar(100)not null,
primary key (Dep_ID)
);

insert into dep values('1','IT','Joda');
insert into dep values('2','HR','Barbil');
insert into dep values('3','Admin','Khandband');
insert into dep values('4','Sales','Jurudi');



create table employee(
Emp_ID int not null,
Emp_Name nvarchar(50) not null,
Emp_Age int check (Emp_Age>18),
Emp_Add nvarchar(50),
Dep_ID varchar(10),
primary key(Emp_ID),
foreign key (Dep_ID) references dep(Dep_ID));





select * from employee;
select * from dep;
insert into employee values(1,'Susanta Panda',32,'Matkambeda','1');
insert into employee values(2,'Madhu Chanda Panda',30,'Matkambeda','1');
insert into employee values(3,'Gagan Bihari Panda',52,'Kalinga','2');
insert into employee values(4,'Subas Das',32,'Hydrabad','3');
insert into employee values(5,'Indarjeet Walia',45,'Barbil','2');
insert into employee values(6,'Manoj Palo',56,'Bhubaneswar','2');



CREATE TABLE Emp_NEW(
Emp_Name varchar(50),
Emp_Age int,
Emp_Salary int,
Emp_Add varchar(50)
);

insert into Emp_NEW values('Susanta',32,32000,'Joda');
insert into Emp_NEW values('Madhu',30,42000,'Bangalur');
insert into Emp_NEW values('Manoj',52,12000,'Bhubaneswar');
insert into Emp_NEW values('Prasant',36,18000,'Kalinga');

select * from Emp_NEW;

SELECT EMP_NAME FROM Emp_NEW;

SELECT * FROM Emp_NEW
WHERE EMP_SALARY > 20000 GROUP BY EMP_SALARY;

SELECT CONCAT(EMP_NAME ,' ', EMP_AGE) FROM Emp_NEW

