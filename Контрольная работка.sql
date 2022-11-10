select CONCAT(prod_id,' ', prod_name) as "Код:продукт", prod_price AS "Цена продукта",
CONCAT('Годен до: оставшийся срок годности: ', prod_exp_date, prod_exp_date - CURRENT_DATE) AS "Срок годности"
from products
where (prod_exp_date - CURRENT_DATE) >= INTERVAL '1 year';

select CONCAT(prod_id||' '|| prod_name) as "Код:продукт", prod_price AS "Цена продукта",
CONCAT('Годен до: ', prod_exp_date, ', оставшийся срок годности: ', prod_exp_date - CURRENT_DATE) AS "Срок годности"
from products
WHERE(prod_exp_date - CURRENT_DATE) >= INTERVAL '1 year';

select CONCAT(prod_id||' '|| prod_name) as "Код:продукт", prod_price AS "Цена продукта",
CONCAT('Годен до: ' || prod_exp_date || ', оставшийся срок годности: ' || prod_exp_date - CURRENT_DATE) AS "Срок годности"
from products
WHERE(prod_exp_date - CURRENT_DATE) >= INTERVAL '1 year';

select prod_id AS "Номер продукта", prod_name AS "Название продукта", prod_price AS "Цена продукта",
concat('Годен до: ' || prod_exp_date || ', оставшийся срок годности: ' || prod_exp_date - CURRENT_DATE) AS "Срок годности"
from products
where prod_exp_date >= CURRENT_DATE + INTERVAL '1 year';