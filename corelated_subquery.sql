use core_db;
create table orders (order_id int , name varchar( 20), amount int);
insert into orders values(1,'a',100) , (2,'a',250) , (3,'a',300) ,(4,'b',400) ,(5,'b',300);

select order_id , name , amount from orders where name='a' and amount=(select max(amount) from orders where name ='a');

select order_id , name , amount from orders where name='b' and amount=(select max(amount) from orders where name ='b');

select order_id , name , amount from orders as o_outer where amount=(select max(amount) from orders where name=o_outer.name);