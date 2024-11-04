-- Выведите список городов и кол-во проживающих в них клиентов. Оставьте города, в которых проживает больше 4 клиентов. Какие это города?
SELECT city, count(customer_id)
FROM customers
group by city
having count(customer_id) > 4

-- Из таблицы Products выведите ID категорий (category_id) и среднюю стоимость товаров в категориях. В какой категории (category_id) самая высокая средняя стоимость товаров?
SELECT category_id, avg(unit_price)
FROM products
group by category_id
order by avg(unit_price) desc
limit 1

-- Выведите даты заказов (order_date) и кол-во заказов, совершенных в марте 1998 года. Оставьте даты, в которые было совершено 4 заказа. Сколько их?
SELECT order_date, count(order_date)
FROM orders
where order_date between '1998-03-01' and '1998-03-31'
group by order_date 
having count(order_date) = 4

-- Из таблицы order_details выведите уникальные номера заказов (order_id) и стоимость (выручку) заказов. Учитывайте кол-во штук товара и размер скидки. Сколько заказов стоит больше 10 000?
select order_id, sum(unit_price * quantity * (1 - discount)) as total_price
from order_details
group by order_id
having sum(unit_price * quantity * (1 - discount)) > 10000
