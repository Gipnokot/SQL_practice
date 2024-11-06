-- Объедините список городов сотрудников и список городов клиентов в один список. Сколько уникальных городов получилось в результате?
select city
from employees e
union
select city
from customers c
