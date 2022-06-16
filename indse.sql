select * from INDIANCENSUS.dbo.Dataset1
select * from INDIANCENSUS.dbo.Dataset2

--Total number of rows in this dataset--
select count(*)Total_Rows from INDIANCENSUS.dbo.Dataset1
select count(*)Total_Rows from INDIANCENSUS.dbo.Dataset2

-- To get specific column data --
select * from INDIANCENSUS..Dataset1 where state = 'jharkhand'
select * from INDIANCENSUS..Dataset1 where state in ('jharkhand', 'orissa')
select * from INDIANCENSUS..Dataset1 where state in ('jharkhand', 'orissa')
--Calculate the total population--
select Population from INDIANCENSUS..Dataset2 
select sum(Population)Total_Pop from INDIANCENSUS..Dataset2 
select state, sum(Population)Total_Pop from INDIANCENSUS..Dataset2 group by State order by Total_Pop asc
select state, sum(Population) Total_Pop_BiharandJhar from INDIANCENSUS..Dataset2 where state in ('Jharkhand','Bihar') Group by State
--Avg Growth Population of india--
select avg(Growth)*100 Avg_Growth from INDIANCENSUS..Dataset1
select avg(Growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by State
select state, avg(Growth)*100 Avg_Growth from INDIANCENSUS..Dataset1 group by State
--Avg Sex Ratio--
select State, AVG(Sex_Ratio) from INDIANCENSUS..Dataset1 group by State
select State, round(AVG(Sex_Ratio),0) from INDIANCENSUS..Dataset1 group by State
select State, round(AVG(Sex_Ratio),0)as Sex_Ratio from INDIANCENSUS..Dataset1 group by State order by Sex_Ratio asc
--Avg Literacy Rate--
select avg(literacy) from INDIANCENSUS..Dataset1 
select state,round(avg(Literacy),0)Statewiselit from INDIANCENSUS..Dataset1 group by State order by Statewiselit asc
--Find the highest literacy rate states--
select state, round(avg(literacy),0) from INDIANCENSUS..Dataset1 group by state having round(avg(literacy),0)>80

--Find top 3 states showing highest growth ratio--
select top 3 State, avg(Growth)*100 As Top_3_States from INDIANCENSUS..Dataset1 group by State order by Top_3_States desc

select State, avg(Growth)*100 As Top_3_States from INDIANCENSUS..Dataset1 group by State order by Top_3_States desc limit 3

--Find bottom 3 states showing lowest growth ratio--
select top 3 State, avg(Growth)*100 As Top_3_States from INDIANCENSUS..Dataset1 group by State order by Top_3_States asc

--Find bottom 3 states showing lowest sex ratio--
select top 3 state, round(avg(Sex_Ratio),0)As Sex_Ratio from INDIANCENSUS..Dataset1 group by state order by Sex_Ratio asc
select top 3 State, avg(Growth)*100 As Top_3_States from INDIANCENSUS..Dataset1 group by State order by Top_3_States desc