-- Посчитайте кол-во заказов, которые были оформлены сотрудником Andrew Fuller.

select t1.employee_id, t2.last_name, t2.first_name, count(t1.employee_id) as total_orders
from orders as t1 inner join employees as t2 on t1.employee_id = t2.employee_id
where last_name = 'Fuller' and first_name = 'Andrew'
group by t1.employee_id, t2.last_name, t2.first_name 

-- Посчитайте суммарную выручку (стоимость) по заказам, которые были совершены в 1997 году. Ответ округлите до целого числа.

select round(sum(t2.unit_price * t2.quantity * (1-discount))) as total_revenue
from orders as t1 inner join order_details as t2 on t1.order_id = t2.order_id
where order_date between '1997-01-01 00:00:00.000' and '1997-12-31 23:59:59.000'

-- Выведите названия категорий и кол-во продуктов, которые входят в категории. Сопоставьте названия категорий и кол-во продуктов в категориях.
  
select category_name, count(*)
from categories as t1 inner join products as t2 on t1.category_id = t2.category_id
where category_name in ('Confections','Seafood', 'Meat/Poultry')
group by category_name
order by count(*) desc

-- Выведите имя и фамилию сотрудника, который оформил заказ клиента Francisco Chang.

select first_name, last_name
from employees as t1 join orders as t2 on t1.employee_id = t2.employee_id
join customers as t3 on t3.customer_id = t2.customer_id
where contact_name = 'Francisco Chang'
