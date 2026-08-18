create database subq;
use subq;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    manager_id INT,
    hire_year INT,
    FOREIGN KEY (manager_id) REFERENCES employee(emp_id)
);

INSERT INTO employee (emp_id, emp_name, department, salary, manager_id, hire_year)
VALUES
(101, 'Alice Johnson', 'IT', 72000, NULL, 2018),
(102, 'Bob Smith', 'IT', 65000, 101, 2019),
(103, 'Carol White', 'HR', 58000, NULL, 2017),
(104, 'David Brown', 'HR', 54000, 103, 2020),
(105, 'Eva Green', 'Finance', 80000, NULL, 2016),
(106, 'Frank Black', 'Finance', 75000, 105, 2018),
(107, 'Grace Lee', 'IT', 68000, 101, 2021),
(108, 'Henry Wilson', 'Marketing', 60000, NULL, 2017),
(109, 'Ivy Turner', 'Marketing', 56000, 108, 2022),
(110, 'Jack Davis', 'Finance', 70000, 105, 2019),
(111, 'Karen Moore', 'IT', 63000, 101, 2020),
(112, 'Leo Harris', 'HR', 50000, 103, 2021),
(113, 'Mia Clark', 'Marketing', 62000, 108, 2018),
(114, 'Nate Lewis', 'Finance', 78000, 105, 2019),
(115, 'Olivia Walker', 'IT', 71000, 101, 2017),
(116, 'Paul Hall', 'HR', 53000, 103, 2020),
(117, 'Quinn Young', 'Marketing', 59000, 108, 2021),
(118, 'Rachel King', 'Finance', 82000, 105, 2016),
(119, 'Sam Scott', 'IT', 66000, 101, 2022),
(120, 'Tina Adams', 'HR', 55000, 103, 2019);

select * from employee;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount INT,
    order_date DATE,
    status VARCHAR(20)
);

INSERT INTO orders
(order_id, customer_id, product_id, amount, order_date, status)
VALUES
(1001, 201, 301, 1500, '2024-01-05', 'Delivered'),
(1002, 202, 302, 2300, '2024-01-12', 'Delivered'),
(1003, 203, 303, 800, '2024-02-03', 'Delivered'),
(1004, 201, 304, 3200, '2024-02-14', 'Delivered'),
(1005, 204, 301, 1100, '2024-03-01', 'Pending'),
(1006, 205, 302, 4500, '2024-03-15', 'Delivered'),
(1007, 202, 303, 950, '2024-03-22', 'Cancelled'),
(1008, 206, 304, 2100, '2024-04-05', 'Delivered'),
(1009, 203, 301, 1750, '2024-04-18', 'Pending'),
(1010, 207, 302, 3300, '2024-04-30', 'Delivered'),
(1011, 204, 303, 680, '2024-05-10', 'Cancelled'),
(1012, 208, 304, 2900, '2024-05-22', 'Delivered'),
(1013, 205, 301, 1200, '2024-06-08', 'Delivered'),
(1014, 201, 302, 2700, '2024-06-15', 'Pending'),
(1015, 209, 303, 500, '2024-06-28', 'Delivered'),
(1016, 206, 304, 3800, '2024-07-07', 'Delivered'),
(1017, 207, 301, 1600, '2024-07-19', 'Delivered'),
(1018, 210, 302, 4100, '2024-07-25', 'Delivered'),
(1019, 208, 303, 720, '2024-08-02', 'Cancelled'),
(1020, 209, 304, 2200, '2024-08-14', 'Delivered');

select * from orders;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    stock INT
);

INSERT INTO products
(product_id, product_name, category, price, stock)
VALUES
(301, 'Laptop', 'Electronics', 55000, 30),
(302, 'Smartphone', 'Electronics', 22000, 80),
(303, 'Headphones', 'Electronics', 3500, 120),
(304, 'Monitor', 'Electronics', 18000, 45),
(305, 'Keyboard', 'Accessories', 1500, 200),
(306, 'Mouse', 'Accessories', 900, 250),
(307, 'Desk Chair', 'Furniture', 8500, 40),
(308, 'Standing Desk', 'Furniture', 22000, 15),
(309, 'Webcam', 'Electronics', 4200, 70),
(310, 'USB Hub', 'Accessories', 1200, 180),
(311, 'Notebook', 'Stationery', 150, 500),
(312, 'Pen Set', 'Stationery', 250, 600),
(313, 'Printer', 'Electronics', 12000, 25),
(314, 'Scanner', 'Electronics', 9000, 20),
(315, 'External SSD', 'Electronics', 7500, 60),
(316, 'Lamp', 'Furniture', 2200, 90),
(317, 'Whiteboard', 'Office Supplies', 3800, 35),
(318, 'Cable Organiser', 'Accessories', 600, 300),
(319, 'Power Bank', 'Electronics', 2800, 100),
(320, 'Smart Watch', 'Electronics', 15000, 55);

select * from products;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    country VARCHAR(30),
    join_year INT
);

INSERT INTO customers
(customer_id, customer_name, city, country, join_year)
VALUES
(201, 'Aarav Mehta', 'Mumbai', 'India', 2021),
(202, 'Priya Sharma', 'Delhi', 'India', 2020),
(203, 'Rohan Gupta', 'Pune', 'India', 2022),
(204, 'Sunita Patel', 'Ahmedabad', 'India', 2021),
(205, 'Vikram Rao', 'Bangalore', 'India', 2019),
(206, 'Neha Singh', 'Chennai', 'India', 2023),
(207, 'Arjun Kumar', 'Hyderabad', 'India', 2020),
(208, 'Deepa Nair', 'Kochi', 'India', 2022),
(209, 'Sanjay Joshi', 'Jaipur', 'India', 2021),
(210, 'Meera Iyer', 'Coimbatore', 'India', 2023),
(211, 'Ravi Verma', 'Lucknow', 'India', 2020),
(212, 'Anita Das', 'Kolkata', 'India', 2019),
(213, 'Kiran Reddy', 'Vizag', 'India', 2022),
(214, 'Pooja Shah', 'Surat', 'India', 2021),
(215, 'Amit Bose', 'Nagpur', 'India', 2023),
(216, 'Tara Menon', 'Trivandrum', 'India', 2020),
(217, 'Nikhil Kulkarni', 'Nashik', 'India', 2022),
(218, 'Swati Chatterjee', 'Bhopal', 'India', 2019),
(219, 'Rahul Pandey', 'Patna', 'India', 2021),
(220, 'Divya Tiwari', 'Indore', 'India', 2023);

select * from customers; 

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    budget INT,
    location VARCHAR(30),
    head_id INT
);

INSERT INTO departments
(dept_id, dept_name, budget, location, head_id)
VALUES
(1, 'IT', 500000, 'Bangalore', 101),
(2, 'HR', 200000, 'Mumbai', 103),
(3, 'Finance', 600000, 'Delhi', 105),
(4, 'Marketing', 300000, 'Chennai', 108);

select * from departments;

-- Q1

select emp_name , department , salary from employee 
where salary > (select avg(salary) from employee ) order by salary desc;

-- Q2

select emp_id , emp_name , department , salary from employee
where salary =(select max(salary) from employee); 

-- Q3

select emp_id , emp_name , department , salary from employee
where salary =(select min(salary) from employee); 

-- Q4

select emp_name , department , hire_year from employee 
where hire_year=( select hire_year from employee where emp_name='rachel king') 
and emp_name!='rachel king';

-- Q5

select product_name , category , price from products 
where price > (select avg(price) from products ) order by price desc;

-- Q6

select product_id , product_name , category , price from products
where price =(select max(price) from products);

-- Q7

select product_id , product_name , category , price from products
where price =(select min(price) from products);

-- Q8

select order_id , customer_id , amount from orders
where amount > (select avg(amount) from orders) order by amount desc;

-- Q9

select order_id , customer_id , amount , order_date from orders
where amount =(select max(amount) from orders);

-- Q10

select  customer_id , customer_name ,  city from customers
where customer_id in(select distinct(customer_id) from orders) order by customer_id;

-- Q11

select  customer_id , customer_name ,  city from customers
where customer_id not in(select distinct(customer_id) from orders) order by customer_id;

-- Q12

select product_id , product_name , category , price from products
where product_id in (select product_id from orders) ; 

-- Q13

select product_id , product_name , category , price from products
where product_id not in (select product_id from orders) ; 

-- Q14

select emp_name , salary from employee
where department in (select department from employee where department='finance') order by salary desc;

-- Q15

select emp_name , salary from employee
where salary<(select min(salary) from employee where department='finance') order by salary desc;

-- Q16
 
select dept_name , budget , location from departments
where budget =(select max(budget) from departments); 

-- Q17

select customer_id , customer_name , city from customers
where customer_id in (select customer_id  from orders group by customer_id having count(*)=1);

-- Q18

select customer_id , customer_name , city from customers
where customer_id in (select customer_id  from orders group by customer_id having count(*)>=2);

-- Q19

select product_name , price , category from products
where price>(select max(price) from products where category='Accessories') order by price desc;

-- Q20

select order_id , customer_id , amount , order_date from orders
where customer_id in (select customer_id from customers where join_year='2021') order by order_date;

-- Q21

select emp_id , emp_name , department from employee as e
where exists(select 1 from employee as m where e.emp_id=m.manager_id);

-- Q22

select emp_id , emp_name , department from employee as e
where not exists(select 1 from employee as m where e.emp_id=m.manager_id) order by emp_id;

-- Q23

select customer_id , customer_name , city from customers as c
where exists(select 1 from orders as o where o.customer_id=c.customer_id) ; 

-- 24

select customer_id , customer_name , city from customers as c
where not exists(select 1 from orders as o where o.customer_id=c.customer_id) ; 

-- 25

select product_id , product_name , category from products as p
where exists (select 1 from orders as o where o.product_id=p.product_id);

-- 26

select emp_name , department , salary from employee
where department=(select department from employee where emp_id='105') and emp_id!='105' order by salary desc;

-- 27

select order_id, customer_id , amount , order_date from orders
where order_date=(select max(order_date) from orders);  

-- 28

select order_id, customer_id , amount , order_date from orders
where order_date=(select min(order_date) from orders);  
 
-- 29

select emp_name , department , salary from employee
where salary > all(select salary from employee where department='HR') order by salary desc; 

-- 30

select order_id , customer_id , amount , status from orders
where amount >(select avg(amount) from orders where status='delivered') and status='delivered' order by amount desc;

-- 31

select e.emp_name , e.department , e.salary , 
round((select avg(e1.salary) from employee as e1 where e1.department=e.department),2) as dept_avg
from employee as e
where e.salary >(select avg(e1.salary) from employee as e1 where e1.department=department)
order by e.department , e.salary desc;

-- 32

select e.emp_name , e.department , e.salary , 
(select count(e1.emp_id) from employee as e1 where e1.department=e.department and e1.salary>e.salary) as higher_earners from employee as e
order by e.department , e.salary desc;

-- 33

select c.customer_id , c.customer_name ,
(select sum(o.amount) from orders as o where o.customer_id=c.customer_id) as total_Spend
from customers as c
where (select sum(o.amount) from orders o where o.customer_id=c.customer_id)>
(select avg(cust_total) from (select sum(amount)as cust_total from orders group by customer_id) as c)   order by total_Spend desc;
 
-- 34

select emp_name , department , salary from employee
where department in (select department from employee group by department  having avg(salary)>65000)
order by department , salary desc;

-- 35

select o.order_id , o.customer_id , o.amount ,
case when o.amount >=(
     select avg(o1.amount)
     from orders as o1
     where o1.customer_id = o.customer_id)
then 'above avg'
else 'below avg'
end as vs_cut_avg
from orders as o
order by o.customer_id , o.order_id;     

-- 36

select product_name , category , price ,
round((select avg(p1.price)  from products as p1 where p1.category = p.category),2)as cat_Avg from products as p
  where p.price> (select avg(p1.price)  from products as p1 where p1.category = p.category) 
  order by p.category , p.price desc;
  
-- 37

select emp_name , department , salary from employee
where salary > any(select salary from employee where department='marketing') 
order by salary desc;

-- 38

select emp_name , department , salary from employee as e
where salary < all(select salary from employee where department='finance')
order by salary desc;

-- 39

select customer_id , customer_name from customers as c
where  exists( select 1 from orders as o where o.customer_id=c.customer_id ) 
and not exists(select 1 from orders as o where o.customer_id=c.customer_id and o.status in ( 'pending' ,'cancelled'))
order by c.customer_id;

-- 40

select product_id , product_name , category from products as p
where product_id in (select product_id from orders as o where customer_id in(select customer_id from customers where city='mumbai')) ; 

-- 41

select emp_name , department ,salary from employee
where salary =(select max(salary) from employee
where salary <(select max(salary) from employee)) ;

-- 42

select distinct(e.department) from employee as e
where not exists (select 1 from employee as e1 where e1.department=e.department and e1.salary<=50000);

-- 43

select customer_id , customer_name from customers as c
where  customer_id in (select  customer_id from orders as o group by  o.customer_id  having count(distinct product_id)>=2)
order by customer_id;

-- 44

select emp_name , department , salary , hire_year , round((select avg(salary) from employee as e1 where e1.hire_year=e.hire_year),2) 
as avg_yeaar from employee as e
where salary >(select avg(salary) from employee as e1 where e1.hire_year=e.hire_year)
order by hire_year ,salary desc;

-- 45

select product_name , category ,stock , 
round((select avg(stock) from products as p1 where p1.category=p.category),2) as avg_Stock 
from products as p
where stock <(select avg(stock) from products as p1 where p1.category=p.category)
order by category , stock ;

-- 46

select emp_name , department , salary from employee
where salary in (select salary from (select distinct(salary) from employee order by salary desc limit 3 )as t);

-- 47

select customer_id , customer_name from customers as c
where exists (select 1 from orders as o where o.customer_id=c.customer_id) 
and not exists (select 1 from orders as o where o.customer_id=c.customer_id and amount <=1000)
order by c.customer_id;

-- 48

select emp_name ,department , salary  , 
round((select avg(salary) from employee as e1 where e1.department=e.department),2) as dept_Avg ,
round(abs(salary-(select avg(salary) from employee as e1 where e1.department=e.department)),2) as diff 
from employee as e
where abs(salary-(select avg(salary) from employee as e1 where e1.department=e.department))=
(select min(abs(e2.salary-(select avg(e3.salary) from employee as e3 where e3.department=e2.department)))
from employee as e2
where e2.department=e.department)
order by e.department;  

-- 49

select c.customer_id , c.customer_name from customers c
where c.customer_id <>201
and not exists (select 1 from orders as o where o.customer_id=201 
and not exists (select 1 from orders as o1 where o1.customer_id=c.customer_id and o1.product_id=o.product_id))
order by c.customer_id;

-- 50

select department , sum(salary) as dept_total from employee group by department 
having sum(salary)>(select min(dept_total) from (select sum(salary) as dept_total from employee
group by department) as d) order by dept_total desc;
 
 -- 51
 
 select salary as emp_salary , (select emp_name from employee where emp_id=e.manager_id) as manager_name ,
 (select salary from employee where emp_id=e.manager_id) as manager_salary
 from employee as e
 where manager_id is not null and salary >(select salary from employee where emp_id=e.manager_id)
 order by salary desc;
 
 -- 52
 
 select product_id , product_name ,(select count(*) from orders as o where o.product_id=p.product_id) as order_count
 from products as p 
 where (select count(*) from orders as o where o.product_id=p.product_id) 
 > (select avg(cnt) from (select count(*) as cnt from orders group by product_id) as t);
 
 -- 53
 
 select customer_id , customer_name  , (select max(amount) from orders as o where o.customer_id=c.customer_id) as best_order
 from customers as c
 where (select max(amount) from orders as o where o.customer_id=c.customer_id)
 =(select max(amount) from orders);
 
 -- 54
 
 select emp_name , department , salary from employee 
 where department in (select dept_name from departments where budget > (select avg(budget) from departments) )
 order by department , salary desc;
 
 -- 55 
 
 select customer_id , customer_name , (select avg(amount) from orders as o where o.customer_id=c.customer_id and o.amount >
 (select avg(o1.amount) from orders as o1 where o1.customer_id=c.customer_id)) as orders_above_avg
from customers c
where exists(select 1 from orders as o2 where o2.customer_id=c.customer_id) 
order by customer_id;

-- 56

select p.product_id , p.product_name , (select min(c.city) from  customers as c join orders as o
on c.customer_id=o.customer_id where o.product_id=p.product_id) as only_city
from products p
where p.product_id in (select product_id from orders) and ( (select count(distinct (c.city)) from  customers as c join orders as o
on c.customer_id=o.customer_id where o.product_id=p.product_id)) =1;

-- 57 

select e.emp_name , e.emp_id , e.salary from employee as e 
where e.salary =(select max(e1.salary) from employee as e1 where e1.department=e.department)
and (select count(*) from employee as e2 where e2.department=e.department and e2.salary=e.salary)=1
order by e.salary desc;

-- 58

select c.customer_id , c.customer_name , (select sum(o.amount) from orders as o where o.customer_id=c.customer_id) as total_Spend
from customers as c 
where (select sum(o.amount) from orders as o where o.customer_id=c.customer_id) > 2*(select avg(total_spend) from
(select sum(amount) as total_spend from orders group by customer_id) as t) ;

-- 59

select e.department , (select count(*) from employee as e1 where e1.department=e.department and e1.salary >
(select avg(salary) from employee)) as above_avg from employee as e
group by e.department order by above_avg desc limit 1;

-- 60
 
select e.emp_name , e.emp_id , e.salary  from employee as e
where e.salary = (select max(e1.salary) from employee as e1 where e1.department=e.department)
and ( select count(distinct e2.salary ) from employee as e2 where e2.salary >e.salary)>=3
order by e.salary desc;