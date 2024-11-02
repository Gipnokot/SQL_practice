-- Выведите товары (продукты), которые стоят больше 100 долларов. Сколько их?
select *
from products
where unit_price > 100

-- Выведите клиентов из Испании. Сколько их?
select *
from customers
where country = 'Spain'

-- Выведите города, начинающиеся на букву "W", в которых проживают клиенты. Какие города вывел запрос?
select city
from customers
where city like 'W%'

-- Выведите клиентов, чей номер телефона (phone) содержит "5555". Сколько их? Четыре символа (пятерки) подряд могут быть в начале номера, в середине или в конце.
select *
from customers
where phone like '%5555%'

-- Выведите информацию о клиенте, который проживает в стране США и работает в должности "Marketing Assistant". Как зовут этого человека?
select *
from customers
where country = 'USA' and contact_title = 'Marketing Assistant'

-- Выведите продукты, которые стоят больше 100 долларов или называются Chai. Столбцы для вывода: название продукта и цена продукта. Сколько продуктов вывел запрос?
select *
from products
where unit_price > 100 or product_name = 'Chai'
