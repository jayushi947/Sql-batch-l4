use sakila;

select * from payment where amount>(select amount  from payment where payment_id=20);

select * from payment where amount>4.99;
select payment_date, month(payment_date)
from payment where payment_id=3;

select * from payment where month(payment_date)=6;

select * from payment where month(payment_date)=
(select payment_date, month (payment_date)from payment where payment_id=15);

-- 2 table => data extract (join)
select * from city;

-- id , population
-- id can be pk
use world;
describe city;
select count(id),  count(distinct id) , count(population), 
count(distinct population) from city;
-- city => id(pk), countrycode
-- country => code => PK, code
select * from country;
select * from city;
-- find out  the city and their respective country name 

select ct.name, ct.countrycode, cnty.code from city as ct
join country as cnty
where ct.countrycode=cnty.code;
-- you need to find out the city name and population of city along with the government from in the city with the population from highest to lowest
select cnty.code , cnty.name from country as cnty;

select ct.name, ct.population , cnty.governmentform from city as ct
join country as cnty
where ct.countrycode=cnty.code order by ct.population desc;

select * from countrylanguage;
-- get country name population and all lang spoken for each country
select cnty.Name  , cnty.Population, cl.countrycode, cl.language from country as cnty
join countrylanguage as cl where cnty.code=cl.countrycode;

use sakila;
select * from actor;
select * from film_actor;
-- get actor id with first name along with is film id
SELECT a.actor_id, a.first_name,fa.film_id
FROM actor a
JOIN film_actor fa
    ON a.actor_id = fa.actor_id;
