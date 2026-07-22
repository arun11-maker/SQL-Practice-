create database table1;
use table1;

CREATE TABLE departments ( 
    dept_id   INT PRIMARY KEY, 
    dept_name VARCHAR(50), 
    location  VARCHAR(50) 
); 
  
INSERT INTO departments VALUES 
(10,'HR','Jaipur'), 
(20,'IT','Bangalore'), 
(30,'Finance','Mumbai'), 
(40,'Marketing','Delhi'), 
(50,'Legal','Pune'); 
  
CREATE TABLE employees ( 
    emp_id   INT PRIMARY KEY, 
    emp_name VARCHAR(50), 
    dept_id  INT, 
    salary   INT, 
    city     VARCHAR(50) 
); 
  
INSERT INTO employees VALUES 
(101,'Amit',10,45000,'Jaipur'), 
(102,'Bhavna',20,72000,'Bangalore'), 
(103,'Chirag',20,68000,'Bangalore'), 
(104,'Divya',30,55000,'Mumbai'), 
(105,'Esha',NULL,39000,'Delhi'), 
(106,'Farhan',40,61000,'Delhi'), 
(107,'Gaurav',60,50000,'Kolkata'), 
(108,'Hina',30,83000,'Mumbai'); 
  
CREATE TABLE projects ( 
    proj_id   INT PRIMARY KEY, 
    proj_name VARCHAR(50), 
    dept_id   INT, 
    budget    INT 
); 
  
INSERT INTO projects VALUES 
(1,'Payroll Revamp',10,120000), 
(2,'Cloud Migration',20,500000), 
(3,'Mobile App',20,300000), 
(4,'Audit Automation',30,250000), 
(5,'Brand Refresh',40,180000), 
(6,'Data Lake',70,400000); 
											
select * from departments;
select * from projects;
select * from employees;
-- Q1
select e.emp_id , e.emp_name ,d.dept_name , d.location 
from employees as e join departments as d
on e.dept_id=d.dept_id;

-- Q2
select p.proj_id , p.proj_name , d.dept_name ,p.budget
 from projects as p join departments as d
on p.dept_id=d.dept_id;

-- Q3
select e.emp_name , d.dept_name , p.proj_name 
from employees as e join departments as d join projects as p
on e.dept_id=d.dept_id and e.dept_id=p.dept_id;

-- Q4
select e.emp_id , e.emp_name , e.dept_id , d.dept_name 
from employees as e left join departments as d
on e.dept_id=d.dept_id ; 

-- Q5
select d.dept_id , d.dept_name , p.proj_name , p.budget 
from departments as d left join projects as p
on  d.dept_id=p.dept_id ;

-- Q6
select e.emp_id , e.emp_name , e.dept_id from employees as e 
left join departments  as d
on e.dept_id=d.dept_id where d.dept_name is null;

-- Q7
select e.emp_name ,d.dept_id , d.dept_name 
from employees as e right join departments as d
on e.dept_id=d.dept_id;

-- Q8
select d.dept_name , p.proj_id , p.proj_name , p.dept_id 
from projects as p left join departments as d
on p.dept_id=d.dept_id ;

-- Q9
select d.dept_id , d.dept_name , d.location 
from departments as d left join employees as e 
on d.dept_id=e.dept_id where e.emp_id is null;

-- Q10
select e.emp_name , e.salary , d.dept_name 
from employees as e cross join departments as d
where salary>70000 and d.dept_name in ('Finance' , 'Legal');

-- Q11
select  p.proj_name , p.budget , d.dept_name , d.location
  from projects as p  cross join departments as d
where budget>=400000 and location in('mumbai' ,'pune');

-- Q12
select count(*) from employees cross join departments;

-- Q13
select * from employees where salary>60000;

-- Q14
select emp_id , emp_name , salary , city from employees where city in('delhi' , 'mumbai') ;

-- Q15
select emp_id , emp_name , dept_id , salary from employees where dept_id is null;

-- Q16
select * from departments where location in ('bangalore' , 'delhi');

-- Q17
select * from departments where dept_id>=30;

-- Q18
select * from departments where dept_name like 'f%' or  dept_name like 'l%';

-- Q19
select * from projects where budget between 200000 and 400000;

-- Q20
select  * from projects where dept_id=20;

-- Q21
select * from projects where budget <300000 and proj_name like '%a%';

-- Q22
select e.emp_name , d.dept_name , d.location ,p.proj_name , budget 
from employees as e join departments as d join projects as p
on e.dept_id=d.dept_id and d.dept_id=p.dept_id;

-- Q23
select e.emp_id , e.emp_name , d.dept_name , p.proj_name
 from employees as e left  join departments as d
 on e.dept_id=d.dept_id 
 left join projects as p
on  d.dept_id=p.dept_id ; 

-- Q24
select e.emp_name , e.salary , d.dept_name , p.proj_name , p.budget 
from employees as e join departments as d 
on e.dept_id-d.dept_id 
join projects as p 
on d.dept_id =p.dept_id where salary>60000 and budget>250000;

-- Q25
select d.dept_id , d.dept_name , e.emp_name , p.proj_name 
from departments as d left join employees as e 
on e.dept_id=d.dept_id
left join projects as p
on d.dept_id=p.dept_id ;

-- Q26
select e.emp_name , d.location ,p.proj_name 
from employees as e join departments as d
on e.dept_id=d.dept_id 
join projects as p 
on d.dept_id=p.dept_id where d.location in('bangalore' , 'mumbai');

-- Q27
select e1.emp_name as employee1 , e2.emp_name as employee2 , e1.city
from employees as e1  join employees as e2
on e1.city =e2.city and e1.emp_id<e2.emp_id;

-- Q28
select p.proj_name , p.dept_id , e.emp_name from
projects as p left join employees as e
on p.dept_id=e.dept_id ;
 