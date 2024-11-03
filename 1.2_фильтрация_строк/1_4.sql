-- Выведите минимальную, среднюю и максимальную стоимость продуктов, которые входят в категорию (CategoryID) №3. 
-- Какова максимальная стоимость продуктов в этой категории? Ответ округлите до целого числа.
-- Присвойте итоговым столбцам новые имена: min_price, avg_price, max_price.
select
round(min(unit_price)) as min_price,
round(avg(unit_price)) as avg_price,
round(max(unit_price)) as max_price
from products p 
where p.category_id = 3

-- Посчитайте кол-во уникальных профессий клиентов, проживающих в Великобритании.
select count(distinct contact_title)
from customers
where country = 'UK'

-- Посчитайте суммарную стоимость всех продуктов c учетом остатков (штук) на складе/стоке из категорий №4 и №5. Ответ округлите до целого числа.
SELECT ROUND(SUM(unit_price * units_in_stock))
FROM products
WHERE category_id = 4 or category_id = 5
