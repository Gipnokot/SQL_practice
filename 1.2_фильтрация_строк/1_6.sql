-- У какого количества клиентов в должности есть слово Sales, а регион не заполнен?
select contact_title, region
from customers
where contact_title like '%Sales%' and region is null

-- Найдите самую популярную профессию среди клиентов.
select contact_title, count(*)
from customers
group by contact_title
order by count(*) desc

-- Выведите максимальную и минимальную стоимость товаров в каждой категории (category_id). В какой категории самая большая разница между самой высокой ценой товара и самой низкой ценой?
select category_id, max(unit_price), min(unit_price)
from products
group by category_id 
order by max(unit_price) - min(unit_price) desc

-- Найдите заказ (order_id) с самым большим количеством штук (quantity) товаров в чеке. Если в заказе несколько разных товаров, то штуки нужно сложить. Какой order_id у заказа?
select order_id, count(quantity)
from order_details od
group by order_id
order by sum(quantity) desc
limit 1

-- Посчитайте суммарный размер фактической скидки по каждому заказу (не в процентах/не в долях). У скольких заказов скидка составила больше 3 000?
-- Примечание: В столбце discount указана скидка в долях. Подумайте как расcчитать фактическую скидку.
select order_id, sum(unit_price * quantity * discount) as total_discount
from order_details
group by order_id
having sum(unit_price * quantity * discount) > 3000
