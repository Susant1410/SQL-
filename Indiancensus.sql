select * from INDIANCENSUS.dbo.Dataset1
select * from INDIANCENSUS.dbo.Dataset2

select count(*) from INDIANCENSUS..Dataset2

select * from INDIANCENSUS ..Dataset1 where state = 'Maharashtra'
select * from INDIANCENSUS ..Dataset1 where state in ('Maharashtra','Orissa','Jharkhand','Bihar')

select * from INDIANCENSUS..Dataset1 where Sex_Ratio between 690 and 800


select sum(population) as Total_Pop from INDIANCENSUS..Dataset2

select state, sum(population) as Total_Pop from INDIANCENSUS..Dataset2 group by state 
select top 3 state, sum(population) as Total_Pop from INDIANCENSUS..Dataset2 group by state order by Total_Pop desc
select top 3 state, sum(population) as Bottom_sts from INDIANCENSUS..Dataset2 group by state order by Bottom_sts asc

select state, avg(growth)*100 from INDIANCENSUS..Dataset1 group by state

select top 3 state , round(avg(sex_ratio),0) as sex_ratio from INDIANCENSUS..Dataset1 group by state order by sex_ratio asc

select state , round(avg(sex_ratio),0) sex_ratio from INDIANCENSUS..Dataset1 group by state having round(avg(sex_ratio),0)>900 order by sex_ratio asc

-- Top 3 and bottom 3 states with literacy rate using through temporory table--

drop table if exists top_3_states;
create table top_3_states(
States nvarchar(755),
Top_States float);

insert into top_3_states
select state, round(avg(literacy),0) avg_literacy_ratio from INDIANCENSUS..Dataset1 group by state 
order by avg_literacy_ratio desc;

select top 3 * from top_3_states order by top_3_states.Top_States desc

--select * from top_3_states order by top_3_states.Top_States desc--


drop table if exists bot_3_states;
create table bot_3_states(
States nvarchar(755),
bot_States float);

insert into bot_3_states
select state, round(avg(literacy),0) avg_literacy_ratio from INDIANCENSUS..Dataset1 group by state 
order by avg_literacy_ratio desc;




--To cobined two table using union -- 


select * from(
select top 3 * from bot_3_states order by bot_3_states.bot_States asc) a
union
select * from (
select top 3 * from top_3_states order by top_3_states.Top_States desc) b

select distinct state from INDIANCENSUS..Dataset1 where state like 'a%' or state like '%d'

select distinct state from INDIANCENSUS..Dataset1 where state like 'a%' and state like '%m'



















select * from indiancensus.dbo.dataset1;
select * from indiancensus.dbo.dataset2;

--Total number of rows in this dataset--

select count(*) As total_rows from indiancensus..Dataset1
select count(*) As total_rows from indiancensus..Dataset2


-- To get specific column data --
select * from INDIANCENSUS..Dataset1 where State = 'Jharkhand'

select * from INDIANCENSUS..Dataset1 where State in ('Jharkhand')

select * from INDIANCENSUS..Dataset1 where State in ('Jharkhand' , 'Bihar')

--Calculate the total population--

select sum(Population)As Total_Population from indiancensus.dbo.dataset2;

--Avg Growth Population of india--
select AVG(Growth)As Overall_Avg from indiancensus..Dataset1

--To make the avg to percentage value--
select AVG(Growth)*100 As Overall_Avg from indiancensus..Dataset1

--Avg Growth Population of states--
select state, AVG(Growth)*100 As Overall_Avg from indiancensus..Dataset1 group by state;

--Avg Sex Ratio--
select state, AVG(Sex_Ratio) As Overall_Avg from indiancensus..Dataset1 group by state;

--To Remove the decimal places--
select state, ROUND(AVG(Sex_Ratio),0) As State_Wise_Overall_Avg from indiancensus..Dataset1 group by state;

--Order it into higest to lowest--
select state, ROUND(AVG(Sex_Ratio),0) As State_Wise_Overall_Avg from indiancensus..Dataset1 group by state 
order by State_Wise_Overall_Avg desc;