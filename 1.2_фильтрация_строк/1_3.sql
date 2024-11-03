-- Выведите заказы, сделанные в дату (order_date) '1998-02-26'. Отсортируйте заказы по весу (freight). Какой номер заказа (order_id) имеет самый большой вес?
select order_id
from orders
where order_date = '1998-02-26'
order by freight desc
limit 1

-- Выведите заказы, сделанные в дату (order_date) '1998-02-26'.
-- Отсортируйте заказы по двум столбцам: ID сотрудника компании (employee_id), вес заказа (freight). Укажите минимальный вес заказа, оформленный сотрудником с ID равным единице в указанную дату.
select employee_id, freight
from orders
where order_date = '1998-02-26' and employee_id = '1'
order by freight
limit 1

--
