create database core_db ;
use core_db;
create table employee_col (id int , name varchar( 20), salary int);
insert into employee_col values(1,'a',100) , (2,'b',250) , (3,'c',400) ,(4,'d',340) ,(5,'b',300);

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
