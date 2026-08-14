create database windows10db;


use windows10db;


create table employees(id int, name varchar(20), dept varchar(20), salary int);

insert into employees values(1, 'a', 'hr', 100), (2, 'b', 'hr', 200),(3, 'c', 'marketing', 300),
(4, 'd', 'marketing', 400), (5, 'e', 'hr', 500);


select sum(salary) from employees; -- aggreagate
select dept, sum(salary) from employees; -- Error ( without group by koi aur column select nhi ho sakta)

select name , (select sum(salary) from employees where employees.id = e.id) from employees as e;

select * , sum(salary) over() from employees;

select * , sum(salary) over() , sum(salary) over() - salary as diff from employees;

select * , sum(salary) over() , sum(salary) over(partition by dept) as diff from employees;

select * , sum(Salary) over(partition by name) from employees;

CREATE TABLE employee_sales (
    sale_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    sale_date DATE,
    sales_amount DECIMAL(10,2)
);



INSERT INTO employee_sales
    (sale_id, employee_name, department, sale_date, sales_amount)
VALUES
    (1,  'Alice', 'Electronics', '2026-01-05', 1200.00),
    (2,  'Bob',   'Electronics', '2026-01-08', 1800.00),
    (3,  'Alice', 'Electronics', '2026-01-15', 1500.00),
    (4,  'Charlie','Electronics','2026-01-20', 1800.00),
    (5,  'Bob',   'Electronics', '2026-01-25', 2200.00),

    (6,  'David', 'Furniture',   '2026-01-03', 2500.00),
    (7,  'Emma',  'Furniture',   '2026-01-10', 1800.00),
    (8,  'David', 'Furniture',   '2026-01-18', 3000.00),
    (9,  'Frank', 'Furniture',   '2026-01-22', 1800.00),
    (10, 'Emma',  'Furniture',   '2026-01-28', 3200.00),

    (11, 'George','Clothing',    '2026-01-04', 900.00),
    (12, 'Helen', 'Clothing',    '2026-01-09', 1400.00),
    (13, 'George','Clothing',    '2026-01-16', 1100.00),
    (14, 'Helen', 'Clothing',    '2026-01-21', 1400.00),
    (15, 'Ian',   'Clothing',    '2026-01-27', 2000.00);
    
    select * from employee_sales;
    
    select employee_name ,department ,sales_amount , sum(sales_amount) over(partition by department) from employee_sales;
    
    select employee_name ,department ,sales_amount , count(sales_amount) over(partition by department) from employee_sales;
    
    select employee_name ,department ,sales_amount , sum(sales_amount) over(partition by employee_name) from employee_sales;
    
    select employee_name ,department ,sales_amount ,  avg(sales_amount) over(partition by department) as avgdept ,
    round(sales_amount -avg(sales_amount) over(partition by department)) as difference
    from employee_sales;
    
    select department ,sum(sales_amount) over( partition by department) as total_dept_Sale , sum(sales_amount) over() as total_comp_sale 
    from employee_sales ;

-- windows part 2
drop database if exists windows10db;
create database windows10db; 
use windows10db;
 CREATE TABLE employee_performance ( 
 employee_id INT, employee_name VARCHAR(50), 
 department VARCHAR(30), location VARCHAR(30),
 performance_year INT, 
 performance_month INT,
 salary DECIMAL(10,2),
 sales_amount DECIMAL(12,2),
 rating DECIMAL(3,1) );
 
  INSERT INTO employee_performance (
  employee_id, employee_name, department, location, performance_year, performance_month, salary, sales_amount, rating)
  VALUES (101, 'Amit', 'Sales', 'Jaipur', 2025, 1, 45000, 120000, 4.2), 
  (102, 'Priya', 'Sales', 'Delhi', 2025, 1, 48000, 135000, 4.5), 
  (103, 'Rahul', 'Sales', 'Jaipur', 2025, 1, 42000, 110000, 3.9), 
  (104, 'Neha', 'Sales', 'Mumbai', 2025, 1, 52000, 150000, 4.7), 
  (101, 'Amit', 'Sales', 'Jaipur', 2025, 2, 45000, 140000, 4.4), 
  (102, 'Priya', 'Sales', 'Delhi', 2025, 2, 48000, 125000, 4.1), 
  (103, 'Rahul', 'Sales', 'Jaipur', 2025, 2, 42000, 130000, 4.2), 
  (104, 'Neha', 'Sales', 'Mumbai', 2025, 2, 52000, 160000, 4.8), 
  (101, 'Amit', 'Sales', 'Jaipur', 2025, 3, 45000, 155000, 4.6),
  (102, 'Priya', 'Sales', 'Delhi', 2025, 3, 48000, 145000, 4.4), 
  (103, 'Rahul', 'Sales', 'Jaipur', 2025, 3, 42000, 135000, 4.3),
  (104, 'Neha', 'Sales', 'Mumbai', 2025, 3, 52000, 155000, 4.6),
  (105, 'Karan', 'IT', 'Jaipur', 2025, 1, 65000, 90000, 4.1), 
  (106, 'Sneha', 'IT', 'Delhi', 2025, 1, 70000, 95000, 4.4), 
  (107, 'Vikas', 'IT', 'Mumbai', 2025, 1, 62000, 85000, 3.8),
  (108, 'Pooja', 'IT', 'Jaipur', 2025, 1, 68000, 100000, 4.6),
  (105, 'Karan', 'IT', 'Jaipur', 2025, 2, 65000, 105000, 4.3),
  (106, 'Sneha', 'IT', 'Delhi', 2025, 2, 70000, 110000, 4.5), 
  (107, 'Vikas', 'IT', 'Mumbai', 2025, 2, 62000, 98000, 4.0), 
  (108, 'Pooja', 'IT', 'Jaipur', 2025, 2, 68000, 120000, 4.7), 
  (105, 'Karan', 'IT', 'Jaipur', 2025, 3, 65000, 115000, 4.5), 
  (106, 'Sneha', 'IT', 'Delhi', 2025, 3, 70000, 125000, 4.7), 
  (107, 'Vikas', 'IT', 'Mumbai', 2025, 3, 62000, 105000, 4.2), 
  (108, 'Pooja', 'IT', 'Jaipur', 2025, 3, 68000, 130000, 4.8),
  (109, 'Ravi', 'HR', 'Delhi', 2025, 1, 40000, 60000, 3.9), 
  (110, 'Anjali', 'HR', 'Jaipur', 2025, 1, 43000, 65000, 4.2), 
  (111, 'Manish', 'HR', 'Mumbai', 2025, 1, 41000, 58000, 3.7), 
  (109, 'Ravi', 'HR', 'Delhi', 2025, 2, 40000, 70000, 4.1),
  (110, 'Anjali', 'HR', 'Jaipur', 2025, 2, 43000, 72000, 4.4), 
  (111, 'Manish', 'HR', 'Mumbai', 2025, 2, 41000, 68000, 3.9), 
  (109, 'Ravi', 'HR', 'Delhi', 2025, 3, 40000, 75000, 4.3), 
  (110, 'Anjali', 'HR', 'Jaipur', 2025, 3, 43000, 78000, 4.5), 
  (111, 'Manish', 'HR', 'Mumbai', 2025, 3, 41000, 73000, 4.1);
  
  select * from employee_performance;
  
  select * , sum(salary)  over() as total_slary from employee_performance;
  
  select * , sum(sales_amount) over(partition by location) as total_sales from employee_performance;
  
  select  * from employee_performance order by sales_amount; 
  
  -- cumulative sum of sales
  select * , sum(sales_amount) over(order by sales_amount) from employee_performance;
  
  select * , sum(sales_amount) over()  , 
  sum(sales_amount) over(partition by location) , 
  sum(sales_amount) over(partition by location order by sales_amount) from employee_performance;
  
  select * , sum(sales_amount) over(order by location) from employee_performance;
  
  select * , count(sales_amount) over(order by location) from employee_performance;
  
  -- row number
  
  select employee_id , employee_name ,  department ,location , salary , sales_amount ,
  row_number() over(order by salary desc) as ranks from employee_performance;
  
  -- ranks
  
  select employee_id , employee_name ,  department ,location , salary , sales_amount ,
  rank() over(order by salary desc) as ranks from employee_performance; 
  
  select employee_id , employee_name ,  department ,location , salary , sales_amount ,
  rank() over(partition by location order by salary desc) as ranks from employee_performance;
  
  -- dense rank
  
  select employee_id , employee_name ,  department ,location , salary , sales_amount ,
  dense_rank() over(order by salary desc) as ranks from employee_performance;
  
--windows part3  

show databases;
create database windowsdb;
use windowsdb;

CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    category VARCHAR(30),
    product VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);


INSERT INTO orders
(order_id, order_date, customer_id, customer_name, city, category, product, quantity, amount)
VALUES
(1001, '2026-01-05', 201, 'Amit',   'Jaipur',  'Electronics', 'Laptop',       1, 65000),
(1002, '2026-01-10', 202, 'Neha',   'Delhi',   'Electronics', 'Mobile',       2, 50000),
(1003, '2026-01-15', 201, 'Amit',   'Jaipur',  'Furniture',   'Chair',        4, 12000),
(1004, '2026-01-20', 203, 'Rahul',  'Mumbai',  'Electronics', 'Headphones',   3, 9000),
(1005, '2026-01-25', 204, 'Priya',  'Delhi',   'Clothing',    'Jacket',       2, 8000),

(1006, '2026-02-03', 201, 'Amit',   'Jaipur',  'Electronics', 'Mobile',       1, 28000),
(1007, '2026-02-08', 202, 'Neha',   'Delhi',   'Furniture',   'Table',        1, 15000),
(1008, '2026-02-12', 203, 'Rahul',  'Mumbai',  'Clothing',    'Shoes',        2, 10000),
(1009, '2026-02-18', 205, 'Vikas',  'Pune',    'Electronics', 'Laptop',       1, 70000),
(1010, '2026-02-25', 204, 'Priya',  'Delhi',   'Furniture',   'Sofa',         1, 35000),

(1011, '2026-03-02', 201, 'Amit',   'Jaipur',  'Clothing',    'Shirt',        5, 7500),
(1012, '2026-03-07', 202, 'Neha',   'Delhi',   'Electronics', 'Headphones',   2, 6000),
(1013, '2026-03-11', 203, 'Rahul',  'Mumbai',  'Electronics', 'Laptop',       1, 68000),
(1014, '2026-03-16', 205, 'Vikas',  'Pune',    'Furniture',   'Chair',        6, 18000),
(1015, '2026-03-21', 204, 'Priya',  'Delhi',   'Clothing',    'Shoes',        1, 5500),

(1016, '2026-04-04', 201, 'Amit',   'Jaipur',  'Electronics', 'Tablet',       1, 22000),
(1017, '2026-04-09', 202, 'Neha',   'Delhi',   'Clothing',    'Jacket',       1, 4500),
(1018, '2026-04-14', 203, 'Rahul',  'Mumbai',  'Furniture',   'Table',        2, 30000),
(1019, '2026-04-20', 205, 'Vikas',  'Pune',    'Electronics', 'Mobile',       2, 52000),
(1020, '2026-04-27', 204, 'Priya',  'Delhi',   'Electronics', 'Laptop',       1, 72000);
truncate orders;
select * from orders;

select customer_id , customer_name , order_date , 
row_number() over(partition by customer_id order by order_date) from orders;

select customer_id , customer_name , order_date ,amount,
row_number()  over(order by amount desc) from orders;

select category , order_id , amount  ,
rank() over(partition by category order by amount desc ) from orders; 

select order_id, amount , category, 
avg(amount) over(partition by category) as avg_amount , 
amount-avg(amount) over(partition by category) as difference
from orders;

-- use subquery as table 

select * from 
(select customer_id ,customer_name , order_id , amount,
max(amount) over(partition by customer_id order by amount desc) as amounts
from orders) as t where  amount=amounts; 

select * from 
(select customer_id ,customer_name , order_id , amount,
rank() over(partition by customer_id order by amount desc) as ranks
from orders) as t where  ranks=2; 

select customer_name , order_id , amount , 
sum(amount) over( partition by customer_id )  , round((amount / sum(amount) over( partition by customer_id)) ,2)*100 as percent
from orders;

-- lead

select * , lead(amount,1) over(), lead(amount,2) over() from orders;

select * , lead(amount,1) over(partition by customer_id order by order_date) as blah from orders;

-- lag

select * , lag(amount,1) over() from orders;


select * , lag(amount,1,0) over(partition by customer_id order by order_date) as blah ,
lag(amount,2,0) over(partition by customer_id order by order_date) as dlah ,
amount + lag(amount,1,0) over(partition by customer_id order by order_date)
+ lag(amount,2,0) over(partition by customer_id order by order_date)   as pos
 from orders;
 
select * , (amount + lag(amount,1,0) over(partition by customer_id order by order_date)  +
lag(amount,2,0) over(partition by customer_id order by order_date) ) as pos
from orders;

select customer_name , customer_id , amount,
sum(amount) over( rows between unbounded preceding and current row) as lala from orders; 


select customer_name , customer_id , amount,
sum(amount) over( rows between 2 preceding and current row) as lala from orders; 

-- for cumulative sum or running  sum
select customer_name , customer_id , amount,
sum(amount) over(order by amount rows between unbounded preceding and current row) as lala from orders; 

select customer_name , order_id,customer_id , amount,order_date,
sum(amount) over( partition by customer_id order by order_date rows between 1 preceding and 1 following) as lala from orders; 





