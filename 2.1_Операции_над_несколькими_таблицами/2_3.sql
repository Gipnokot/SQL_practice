-- В каких городах проживают клиенты, которые не совершили ни одного заказа? Используйте LEFT JOIN для решения задачи. Похожая задача была в видео-уроке.
select t1.city, t2.order_id
from customers as t1 left join orders as t2 on t1.customer_id = t2.customer_id
where order_id is null

-- 
