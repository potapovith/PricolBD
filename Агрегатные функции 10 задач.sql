-- 1 задача
select round(avg(prod_price::numeric), 2) 
from products;

-- 2 задача
select avg(prod_price::numeric) as "Средняя цена" 
from products
where vend_id=1003;

-- 3 задача 
select count(*) as "Количество клиентов" 
from customers; 

-- 4 задача
select count(*) 
from customers 
where cust_email is not null;

-- 5 задача 
select max(prod_price) as "Максимальная цена" 
from products;

-- 6 задача
select min(prod_price) as "Максимальная цена"
from products;

-- 7 задача 
select count(quantity) as "Общее количество" 
from orderitems 
where order_num = 20005;

-- 8 задача 
select sum(item_price) as "Стоимость" from orderitems;

-- 9 задача 
select AVG(distinct prod_price::numeric) as "Средняя стоимость" 
from products 
where vend_id = 1003;

-- 10 задача 
select AVG(prod_price::numeric) as "Средняя стоимость", 
max(prod_price::numeric) as "Максимальная цена", 
min(prod_price::numeric) as "Минимальная цена", 
count(*) as "Общее количество" 
from products;