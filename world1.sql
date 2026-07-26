USE world;
select countrycode , count(name) from city group by countrycode;
select * from country;
select count(name) from country where LifeExpectancy between 70.1 and 83.5;
select sum(population) from country where  IndepYear >=1990;
select count(name) from country where IndepYear is null;
select region , count(name) ,sum(surfacearea) from country group by region;
select continent ,count(name) from country group by continent;
select continent, region ,count(name) from country group by  continent , region;
select continent from country where population>=100000000 group by continent;
create database selfjoin;
use selfjoin;
create table employees (eid int ,  name varchar(20) , manager_id int);
insert into employees values(1,'tushar' , null) , (2,'akshay',1) ,(3,'abhi',2) , (4,'aka',2);
select * from employees;
select emp.eid , emp.name , emp.manager_id , mn.name ,mn.eid from employees as emp join employees as mn
where emp.manager_id=mn.eid;
select max(gnp) as maxgnp from country;
select gnp from country where gnp=(select max(gnp) as maxgnp from country);
select name , population,
case 
     when population>=200000 and population <=500000 then 'avg population'
     when population > 500000 then 'large population'
     else 'small population'
     end
     as category from country;
select continent , count(name) ,
case
    when    count(name)>25 then 'large continent'
    when    count(name)>15 then 'avg continent'
    when    count(name)>10 then 'small continent'
    else 'no continent'
    end
    as category from  country group by continent;
     