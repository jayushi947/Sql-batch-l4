-- group by

use world;
select region , count(name) , count(continent) from country group by region;

select region, avg(population) from country group by region;
-- where sbse phle execute => group by => count()

-- count cities which have a population more than 1 lakh 
select district , count(name) from  city where population>100000 group by district;
select district , count(name) as totalcity from city group by district;

select count(name) from country where continent='Asia' and indepyear>1950;
-- get total country which got independent after 1950 in each continent 
select continent , count(name) from country where indepyear>1950 group by continent;

select continent, sum(population) from country group by continent
having sum(population)>30401150;
-- where  filter data from table only execute when data in original table 
-- having filter data on aggregate column 

-- to find out the continent name and counry from country only for those countries which have life expectancy more than 35
select continent, sum(population) from country where lifexpectancy >35.0 group by continent;
-- find out the total country for each governmentfrom where the total number of country should be greater than 30
--                                                                                     only for the countries having capital greater than 30 and total population greatrer than 3 lakh

select governmentform , count(name) from country group by governmentform having count(name)>30;
select governmentform , count(name) , sum(population) from country where capital>30 group by governmentform
having sum(population) >300000;

select continent , region, count(name) from country group by continent , region;