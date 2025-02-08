--Посчитайте количество заказов, в которых присутствует товар Chocolade.

SELECT t2.product_name, COUNT(t1.order_id) AS order_count
FROM order_details AS t1
LEFT JOIN products AS t2 ON t1.product_id = t2.product_id
WHERE t2.product_name = 'Chocolade'
GROUP BY t2.product_name;

