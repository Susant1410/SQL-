/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * from DimCustomer


select * from DimCustomer
where FirstName like 'D%'


select * from DimCustomer
where EnglishEducation = 'Partial College' or EnglishEducation = 'High School'

select * from DimCustomer
where EnglishEducation in ( 'Partial College' , 'High School')



select * from DimCustomer
where EnglishEducation in(select distinct EnglishEducation from DimCustomer where EnglishEducation = 'Partial College')


select * from DimCustomer
where  EnglishOccupation = 'Clerical' order by YearlyIncome DESC



select * from DimCustomer
where  EnglishOccupation = 'Management' order by YearlyIncome DESC

select * from DimCustomer order by YearlyIncome DESC
