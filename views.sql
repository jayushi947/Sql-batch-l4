use regex1;
 create table newactor as
 select actor_id, first_name from sakila.actor where actor_id between 1 and 3;
 
 select * from newactor;
 
 create view actor_v as
 select *, substr(first_name,2) from newactor;
 
 select * from actor_v;
  select * from newactor; -- 3 rows 2 column
  insert into newactor values(4,'riya');  -- 4 row table
  select * from newactor;
  
  select * from actor_v;
  -- simple view -> any dml change will be visible on original table
-- where view is created
  create view actor_v2 as       -- created view here
 select * from newactor where actor_id in (1,2);
 
 select * from newactor;
 insert into newactor values(5,'sakshi'); -- 4 row table
  
  select * from actor_v2;