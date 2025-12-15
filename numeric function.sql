select now(), adddate(now(),2), adddate(now(),interval -3 month );
select now(), subdate(now(),2);

select now(), extract(week from now());
select now(), date_format( now(), 'Month is %M & year is %W');

select distinct(continent) from country;
select count(continent) , count(distinct(continent)) from country;