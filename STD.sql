create database arya1;
use arya1;
show databases;
create table Students_Details(
Students_ID int,
Students_Name varchar(30),
Course_ID varchar(10),
Course_Name varchar(20),
Cente_Name varchar(10),
Faculty_Name varchar(20),
Fees int,
Gender varchar(1));

show tables;
insert into Students_Details value (1,'Binay Gope','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'M');
insert into Students_Details value (2,'Anil Saho','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'M');
insert into Students_Details value (3,'Anushka Sharma','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'F');
insert into Students_Details value (4,'Kajal Sharma','NEFB1','Spoken English','TSF JODA','Gobinda Samanta',236,'F');
insert into Students_Details value (5,'Khusboo Khatun','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'F');
insert into Students_Details value (6,'Ajay Gope','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'M');
insert into Students_Details value (7,'Anil Sandil','NEFB1','Spoken English','TSF JODA','Gobinda Samanta',236,'M');
insert into Students_Details value (8,'Madhu Chanda Palo','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'F');
insert into Students_Details value (9,'Susanta Kumar Panda','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'M');
insert into Students_Details value (10,'Jatin Naik','NBIB1','Basic IT','TSF JODA','Susanta Panda',118,'M');
insert into Students_Details value (11,'Suraj Singh','NEFB1','Spoken English','TSF JODA','Gobinda Samanta',236,'M');

select * from Students_Details where Gender = 'F' and Course_ID = 'nefb1';

select count(*) from Students_Details;

select count(*) from Students_Details where Gender = 'F'

select Students_Name,Course_ID from Students_Details

select * from Students_Details where Students_Name like 'A%'

select * from Students_Details where Fees > 118

alter table Students_Details
drop column fees;

