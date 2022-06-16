use TATASTEEL;

CREATE TABLE CUSTOMER(
Cust_ID int,
Cust_Name varchar(50),
Cust_Address varchar(50));

select * from CUSTOMER;

INSERT INTO CUSTOMER (Cust_ID,Cust_Name,Cust_Address,salary)
	VALUES(1, 'Rajesh Kumar Mahanta','Bambari,Jurudi',45885),
			(2, 'Keshab Kumar Mahanta','Bambari,Jurudi',57899),
				(3, 'C S Rao','Barbil',58777),
					(4, 'Tapash Kumar Mishra','Joda,OMC',47899),
						(5, 'Anil Kumar Sahu','Bambari,Jurudi',41256),
							(6, 'Susanta Kumar Panda','Kalinga,Barbil',47125);

alter table CUSTOMER
add salary int;



alter table CUSTOMER
add phon nvarchar(15);

alter table CUSTOMER
add gender varchar(10);

update  CUSTOMER
set gender = 'M'


select * from CUSTOMER
where Cust_ID = 2


delete from CUSTOMER


delete from CUSTOMER
where Cust_ID = 6