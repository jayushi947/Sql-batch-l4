show databases;
use mysql;

create database regex_l4;
show databases;                     -- to see databases

use regex_l4;
select database();        -- to print current_database

show tables;   -- show table

create table ayushi(salary int,age int);          -- create table_name column datatype
show tables;                 -- to see tables
describe ayushi;      -- display information of table