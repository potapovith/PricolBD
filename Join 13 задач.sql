--Задача 1
select v.vend_name, p.prod_name, p.prod_price 
	from vendors v, products p; 

--Задача 2
select v.vend_id, v.vend_name, p.prod_name, p.prod_price 
	from products p
	inner join vendors v on p.vend_id = v.vend_id;
  
 --Задача 3
select p.prod_name, p.prod_price, o.quantity, v.vend_name 
	from vendors v, products p, orderitems o;

--Задача 4
select p.prod_name, p.prod_price, oi.quantity, v.vend_name, oi.order_num  
	from vendors v, products p, orderitems oi
	where oi.prod_id = p.prod_id and p.vend_id = v.vend_id and oi.order_num = 20005;
	
--Задача 5
select v.vend_name, p.vend_id, p.prod_name, p.prod_price, oi.prod_id, oi.order_num, oi.quantity
	from orderitems oi
	inner join products p on oi.prod_id = p.prod_id and oi.order_num = 20005
	inner join vendors v on p.vend_id = v.vend_id;
	
--Задача 6
select c.cust_id, c.cust_name, o.order_num, o.order_date
	from orders o
	inner join customers c on o.cust_id = c.cust_id and o.order_date between '2016-01-01' and '2016-03-31';
	
--Задача 7
select c.cust_id, c.cust_name, cust_contact, o.order_num, o.order_date
	from customers c, orders o, orderitems oi where o.cust_id = c.cust_id and o.order_num = oi.order_num and oi.prod_id = 'SLING';
	
--Задача 8
select c.cust_id, c.cust_name, c.cust_contact, o.cust_id, o.order_num, oi.prod_id, o.order_date
	from orders o
	inner join orderitems oi on o.order_num = oi.order_num and oi.prod_id = 'SLING'
	inner join customers c on c.cust_id = o.cust_id;
	
--Задача 9
select v.vend_name, v.vend_city, p.prod_name, p.prod_price, p.prod_id
	from products p
	inner join vendors v on p.vend_id = v.vend_id and p.prod_id = 'DTNTR';
	
--Задача 10
select p.prod_name, p.prod_price, p.prod_id, v.vend_id
	from vendors v
	inner join products p on v.vend_id = p.vend_id and p.vend_id = 1003;
	
--Задача 11
select o.cust_id, o.order_num, o.order_date, oi.prod_id, oi.quantity, oi.item_price
	from orderitems oi, orders o, customers c where oi.order_num = o.order_num and o.cust_id = c.cust_id;

--Задача 12
select o.cust_id, c.cust_name, c.cust_contact, o.order_num, o.order_date, oi.order_num, oi.prod_id, oi.item_price 
	from orders o
	inner join customers c on o.cust_id = c.cust_id
	inner join orderitems oi on o.order_num = oi.order_num and oi.prod_id = 'SLING';