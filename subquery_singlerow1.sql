create database core_db ;
use core_db;
create table employee_col (id int , name varchar( 20), salary int);
insert into employee_col values(1,'a',100) , (2,'b',250) , (3,'c',400) ,(4,'d',340) ,(5,'b',300);
select max(salary) from employee_col;
select * from employee_col where salary=400;
select * from employee_col  where salary=(select max(salary) from employee_col);
select min(salary) from employee_col ;
select * from employee_col where salary =(select min(salary) from employee_col);
select * from employee_col;
select salary from employee_col where name='b';
select *  from employee_col where salary=(select salary from employee_col where name='b');
select avg(salary) from employee_col;
select * from employee_col where salary>268;
select * from employee_col where salary>(select avg(salary) from employee_col);

use world;
select * from city;

-- single row subquery 

-- cities with  same name as district
select district from city where name='abu dhabi';
select * from city where district=(select district from city where name='abu dhabi');

-- cities with max population
select max(population)  from city;
select name from city where population=10500000;
select * from city where population=(select max(population)  from city);

-- cities having countrycode same for hanet
select countrycode from city where name='herat';
select name , district from city where countrycode=(select countrycode from city where name='herat');

-- cities having countrycode same as amsterdam
select countrycode from city where name='amsterdam';
select name ,district  , population from city where countrycode=(select countrycode from city where name='amsterdam') order by population;

truncate table employee_col;
-- multirow subquery
select * from employee_col;

-- select colummn where salary is equal to b 
select salary from employee_Col where name='b';
select * from employee_col where salary in (select salary from employee_Col where name='b');

-- select column where salary is more than b

select salary from employee_col where name = 'b';
select * from employee_col where salary >any(select salary from employee_col where name = 'b');

-- select all column where salary is more than begin
select salary from employee_col where name = 'b';
select * from employee_col where salary > all(select salary from employee_col where name = 'b');