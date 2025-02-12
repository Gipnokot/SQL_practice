--Выведите страны и кол-во клиентов, которые проживают в этих странах. Оставьте только страны с количеством клиентов более одного. Затем с помощью вложенного запроса посчитайте количество таких стран.
--ВАЖНО: задайте Alias-ы для вложенного запроса и столбца, который является результатом применения агрегирующей функции, иначе вложенный запрос не сработает.

SELECT COUNT(*)
FROM (
    SELECT country, COUNT(customer_id) AS customers_count
    FROM customers
    GROUP BY country
    HAVING COUNT(customer_id) > 1
) AS customers_count;

--Выведите ID клиентов и кол-во заказов, которые совершили клиенты. Оставьте только ID клиентов с количеством заказов более 10. Затем с помощью вложенного запроса посчитайте количество таких клиентов.
--ВАЖНО: задайте Alias-ы для вложенного запроса и столбца, который является результатом применения агрегирующей функции, иначе вложенный запрос не сработает.

select count(*)
from (
    select customer_id, count (*) as cnt
    from orders
    group by customer_id
    having count (*) > 10
) as oders_count

-- Выведите товары, которые относятся к сategory_id =1. Используйте этот SQL-запрос как подзапрос для того, чтобы посчитать общую выручку по товарам, которые относятся к category_id = 1. Ответ округлите до целого числа.

select p.category_id , sum(od.unit_price * od.quantity * (1-od.discount))
from order_details od inner join products p on od.product_id = p.product_id
where p.category_id = 1
group by p.category_id
