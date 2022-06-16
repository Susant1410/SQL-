select * from INDIANCENSUS.dbo.Dataset1
select * from INDIANCENSUS.dbo.Dataset2

-- Total number of rows--
select count(*)as Total_Rows from INDIANCENSUS..Dataset1
select count(*)as Total_Rows from INDIANCENSUS..Dataset2

--Give me only orissa data--
select * from INDIANCENSUS ..Dataset1 where state = 'Orissa';
select * from INDIANCENSUS..Dataset1 where state in('Orissa','Bihar');

-- ASC --
select * from INDIANCENSUS..Dataset1 where state in('Orissa','Bihar') order by state asc

--Total_Population--
select * from INDIANCENSUS..Dataset2
select sum(Population)as Total_Pop from INDIANCENSUS..Dataset2

--Avg growth of india--
select avg(growth)*100 as Avg_Growth from INDIANCENSUS..Dataset1 

--State wise avg growth--
select State,avg(growth)*100 from INDIANCENSUS..Dataset1 group by State 
select State,avg(growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by State order by Avg_Growth asc
select State,avg(growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by State order by Avg_Growth desc

-- Top 5 staes with highest and lowest growth--
select top 5 State,avg(growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by State order by Avg_Growth desc
select top 5 State,avg(growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by State order by Avg_Growth asc

--Indias Avg sex ratio--
select avg(sex_ratio) as Sex_Ratio from INDIANCENSUS..Dataset1

--Avg sex ratio per state--
select state, round(avg(sex_ratio),0) from INDIANCENSUS..Dataset1 group by state
select top 5 state, round(avg(sex_ratio),0)avg_sex_ratio from INDIANCENSUS..Dataset1 group by state order by state desc

--Avg literacy rate --
select avg(Literacy)as Avg_Literacy from INDIANCENSUS..Dataset1

-- State wise Avg literacy rate --
select state,avg(literacy) As avg_literacy from INDIANCENSUS..Dataset1 group by state order by avg_literacy desc

--Only those states whose avg literacy > 90--
select state,avg(literacy) avg_literacy from INDIANCENSUS..Dataset1 group by state 
having avg(literacy)>90 order by avg_literacy asc


-- Where and having--
-- Where cluse use to filter out the rows--
-- Having cluse use to filter out agregated rows--

--Top 5 states having highest groth rate--
select top 5 state, avg(growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by state order by Avg_Growth desc ;

--Bottom 5 states having lowest groth rate--
select top 5 state, avg(growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by state order by Avg_Growth asc;

--Find top 5 states showing highest sex ratio--
select top 5 state, round(avg(sex_ratio),0) as sex_ratio from INDIANCENSUS..Dataset1 group by state order by sex_ratio desc


--Find bottom 5 states showing lowest sex ratio--
select top 5 state, round(avg(sex_ratio),0) as sex_ratio from INDIANCENSUS..Dataset1 group by state order by sex_ratio asc


--Top and bottom 5 states on litercy rate--
select top 5 state, round(avg(literacy),0)Literacy_Rate from INDIANCENSUS..Dataset1 group by state order by Literacy_Rate asc
select top 5 state, round(avg(literacy),0)Literacy_Rate from INDIANCENSUS..Dataset1 group by state order by Literacy_Rate desc

--Temprary table-- and union--

create table literacy_rate(
State_name nvarchar(100),
Literacy_Rate float,
)

insert into literacy_rate
select state, round(avg(literacy),0)Literacy_Rate from INDIANCENSUS..Dataset1 group by state order by Literacy_Rate desc

select top 5 * from literacy_rate order by literacy_rate.Literacy_Rate desc


create table literacy_rate2(
State_name nvarchar(100),
Literacy_Rate float,
)

insert into literacy_rate2
select state, round(avg(literacy),0)Literacy_Rate from INDIANCENSUS..Dataset1 group by state order by Literacy_Rate desc


--Union operator -- Joining the output into a vertical with 2 condition the number of column should be same and the datatype 
--should be same

select * from(
select top 5 * from literacy_rate2 order by literacy_rate2.Literacy_Rate asc) a 
union
select * from(
select top 5 * from literacy_rate order by literacy_rate.Literacy_Rate desc) b;


drop table literacy_rate


--Name starts with--
select * from INDIANCENSUS..Dataset1 where state like '%D'
SELECT * FROM INDIANCENSUS..Dataset1 WHERE STATE LIKE'A%' OR STATE LIKE 'D%'




select * from INDIANCENSUS.dbo.Dataset1
select * from INDIANCENSUS.dbo.Dataset2

--jOINING BOTH THE TABLES-

select a.district,a.state,a.sex_ratio,b.population from INDIANCENSUS..Dataset1 a
inner join
INDIANCENSUS..Dataset2 b on a.District=b.District


--Total male & female--
select d.State,sum(d.males) Total_Males,sum(d.female)Total_Females from 
(select c.district,c.state,round(c.population/(c.sex_ratio+1),0) males,round((c.population*c.sex_ratio)/(c.sex_ratio),0) female
from (select a.district,a.state,a.sex_ratio/1000 sex_ratio,b.population from INDIANCENSUS..Dataset1 a
inner join
INDIANCENSUS..Dataset2 b on a.District=b.District) c) d group by State


-- Total Literacy Rate--
select a.district,a.state,a.sex_ratio/1000 sex_ratio,b.population from INDIANCENSUS..Dataset1 a
inner join
INDIANCENSUS..Dataset2 b on a.District=b.District
