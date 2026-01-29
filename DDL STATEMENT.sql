-- DDL STATEMENT( data defination language ) 
-- create ( table )
-- drop, truncate, alter

use gaurav;
use sakila;

-- create a table using select( CTAS );
create table actor_cp as 
select first_name as F_Name, last_name from sakila.actor;

select * from actor_cp;

-- drop
-- it delete table structure and it's data  
drop table actor_cp;


create table actor_cp as 
select first_name as fname, last_name as last from sakila.actor
where actor_id between	10 and 15;

select * from actor_cp;


-- alter ==> use for structure 
-- it create columns in the table 
alter table actor_cp add column (salary int);

alter table acotr_cp add constraint new_key  primary key(fname); -- use to make primary key
desc actor_cp; -- to describe the table 

alter table actor_cp drop column last; -- use to drop columns 

alter table actor_cp rename column salary to new_salary; -- for change the column name 

select * from actor_cp;


-- DML STATEMENT( data manipulation language )
-- insert 
-- update set col=values


update actor_cp set new_salary = 900;  -- > it update the value in column
update actor_cp set new_salary = 7787 where fname = 'UMA'; -- > it change only selected name salary only 

select * from actor_cp;

select * from actor_cp;
update actor_cp set last = 'mitansh' where fname = 'zero';


-- truncate --> Truncate is DDL statement. If we delete any data we do not provide any condition.
-- In Truncate we are not able to Revert(RollBack). 
-- In case if we run DDl then we cant do roll back.
-- Object are the storage which can be manage, refer and store the table.
-- Delecte is DML statement.

