/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [DimCustomer];


select * from [DimCustomer] 
	where gender = 'F' and MaritalStatus = 'S' and TotalChildren > 2


select count(*)as Target from [DimCustomer]
where gender = 'F' and MaritalStatus = 'S' and TotalChildren > 2

select gender,MaritalStatus,TotalChildren from [DimCustomer] 
where gender = 'F' AND MaritalStatus = 'S' AND TotalChildren >2 GROUP BY gender,MaritalStatus,TotalChildren

select count(*) from [DimCustomer]
	where gender = 'F' AND YearlyIncome > 80000

select * from [DimCustomer]
	where gender = 'M' AND YearlyIncome > 80000 and BirthDate >= '1985'


select format(BirthDate,'MM-dd-yyyy') from [DimCustomer]
	where gender = 'M' AND YearlyIncome > 80000 and BirthDate >= '1985'


select top 10 * from [DimCustomer]

select distinct EnglishEducation from [DimCustomer]


select * from [DimCustomer]
order by GeographyKey asc


select * from [DimCustomer]
order by BirthDate asc