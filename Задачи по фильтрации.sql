--1
select prod_id, prod_name, prod_price from products 
where prod_price  = money(25000);
--2
select prod_id, prod_name, prod_price from products 
where prod_name  = 'Fuses';
--3
select prod_id, prod_name, prod_price from products 
where prod_name  = 'Fuses' or prod_name  = 'fuses';
--4
select prod_id, prod_name, prod_price from products 
where prod_price  < money(10);
--5
select prod_id, prod_name, prod_price from products 
where prod_price  <= money(10);
--6.1
select vend_id, prod_name, prod_price from products 
where vend_id != 1003;
--6.2
select vend_id, prod_name, prod_price from products 
where not vend_id = 1003;
--6.3
select vend_id, prod_name, prod_price from products 
where vend_id <> 1003;
--6.4
select vend_id, prod_name, prod_price from products 
where vend_id not in(1003);
--7.1
select prod_id, prod_name, prod_price from products 
where prod_price  >= money(50000) and prod_price  <= money(70000);
--7.2
select prod_id, prod_name, prod_price from products 
where prod_price  between money(50000) and money(70000);
--8
select cust_name, cust_state, cust_email, cust_zip, cust_city, cust_country, cust_address, concat_ws(', ', cust_zip, cust_city, cust_address, cust_country, cust_state) as "Полный адрес" 
from customers where cust_email is null; 
--9
select cust_name, cust_state, cust_email, cust_zip, cust_city, cust_country, cust_address, concat_ws(', ', cust_zip, cust_city, cust_address, cust_country, cust_state) as "Полный адрес" 
from customers where cust_email is not null;
--10
select prod_id, prod_name, prod_price from products where prod_id = 1003 and prod_price <=money(10); 
--11.1
select prod_id, prod_name, prod_price from products where prod_id = 1002 or prod_id = 1003; 
--11.2
select prod_id, prod_name, prod_price from products where prod_id = 1003 or prod_id = 1002; 
--12
select vend_id, prod_id, prod_name, prod_price 
from products where vend_id = 1002 or vend_id = 1004 order by prod_name;
--13
select vend_id, prod_id, prod_name, prod_price 
from products where vend_id = 1002 or vend_id = 1004 order by prod_name;
--14
select vend_id, prod_id, prod_name, prod_price 
from products where (vend_id = 1002 or vend_id = 1005) and length(prod_name) > 5 order by prod_name; 
--15.1
select prod_id, upper(prod_name), prod_price from products 
where vend_id != 1002 and vend_id != 1003 order by prod_id; 
--15.2
select prod_id, upper(prod_name), prod_price, vend_id from products 
where vend_id < 1002 or vend_id > 1003 order by prod_id; 
--16
select prod_name from products where lower(prod_name) Like 'jet%'; 
--17
select prod_name from products where lower(prod_name) Like '%anvil%'; 
--18
select prod_name from products where lower(prod_name) Like '_ ton anvil%';
--19
select prod_name from products where lower(prod_name) Like '%ton%'; 
--20
select cust_contact from customers where cust_contact like 'E%' or cust_contact like 'J%'; 
--21
select cust_contact,concat_ws(', ',cust_zip, cust_city, cust_address, cust_country, cust_state) as "Полный адрес" 
from customers where cust_contact not like 'E%' and cust_contact not like 'J%'; 
--22.1
select vend_name, position('Inc' in vend_name) as "Позиция" from vendors where vend_id = 1004; 
--22.2
select vend_name, position('Inc' in vend_name) as "Позиция" from vendors where vend_id <= 1003 and vend_id > 1005;
--23
select * from productnotes where note_date between '2016-01-09' and '2016-05-09';