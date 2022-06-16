/****** Script for SelectTopNRows command from SSMS  ******/


SELECT * FROM DimCustomer

SELECT * FROM DimCustomer
WHERE BirthDate BETWEEN '1971' AND '1980'

SELECT * FROM DimCustomer
WHERE BirthDate BETWEEN '1971' AND '1980' AND Gender='M'

SELECT GeographyKey from DimCustomer

SELECT * FROM DimCustomer
WHERE GENDER = 'F' AND MaritalStatus = 'M'

SELECT COUNT(*) FROM DimCustomer
WHERE GENDER = 'F' AND MaritalStatus = 'M'

SELECT * FROM DimCustomer
WHERE YearlyIncome > 60000

SELECT * FROM DimCustomer
WHERE YearlyIncome >= 80000 AND Gender='F' AND BirthDate BETWEEN '1970' AND '1980'


SELECT * FROM DimCustomer
WHERE BirthDate > '1985'

SELECT * FROM DimCustomer
WHERE BirthDate > '1971-01-01'


SELECT TOP 10 * FROM DimCustomer

select distinct englisheducation from DimCustomer

select * from DimCustomer
order by Gender, BirthDate asc


select emailaddress, SUBSTRING(emailaddress,1,4)as username ,len (emailaddress), upper(emailaddress),
FirstName+' '+isnull(MiddleName,'')+' '+LastName, CHARINDEX('@',EmailAddress,1)
from DimCustomer







select substring (EmailAddress,1,4), len (EmailAddress), UPPER(EmailAddress) ,
FirstName+' '+isnull(MiddleName,'')+' '+LastName

from DimCustomer 



SELECT 1561+1479

SELECT DISTINCT ENGLISHEDUCATION FROM DimCustomer

SELECT * FROM DimCustomer
ORDER BY Gender , BirthDate ASC



SELECT EMAILADDRESS , SUBSTRING(EMAILADDRESS,1,4) FROM DimCustomer


SELECT EMAILADDRESS, SUBSTRING(EMAILADDRESS,1,5) AS Username,len(EMAILADDRESS)as Lenth, UPPER(EMAILADDRESS) as uppercase ,
        FirstName+' '+MiddleName+' '+LastName FROM DimCustomer

