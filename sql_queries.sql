select database();

see world;

show tables;

describe city;           -- to see structure of table

select * from city;   -- to print data from table
select name,population from city;     -- to access column
select population,name,district from city;     -- column can be print in any order

select name,population,population+10 from city;

-- query can be written in multiple line 
-- sql is case sensitive
select * from country;
-- alias (nickname)
select *,population+2+3+4+67 as 'newpopulation' from country;

-- where clause we will filter the data



show databases;

use world;
select * from city where district='Zuid-Holland';
select * from city where countrycode='ARG';-- filter city for ARG country code
select * from city where population>600000;
select * from city where countrycode!='ARG';
select * from country where continent='North America';
select * from country where continent in ('North America','Europe');   -- in operator filter data in the specific set of values

select name, continent from country where indepyear in (1901,1960);
-- range of values
select name, continent,indepyear from country where indepyear between 1901 and 1960;

select name, continent,indepyear from country where indepyear not between 1901 and 1960;
-- between range of values
--  in specific value mai search krna
describe country;
select code, name, region from country where region not in ('MiddleEast');

select name,indepyear, population +10/100 * population as 'changed population' from country;

select * from country where lifeexpectancy in(38.3,66.4); 

select name,continent ,population ,GNP from country where population not between 5000 and 200000;

-- like operator 
-- like => pattern ko search krna
-- too meet patterns
-- special character is called wildcard character
-- % [we are finding zero or more character]

select name,continent from country where name like 'A%';

select name,continent from country where name like '%a';
select name,continent from country where name like '%ad%';

-- _(underscore) => 1 character

select name, continent from country where  name like 'Ir__'
