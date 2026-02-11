/* get all customers along with their orders, but only for customers who have placed an order.*/
SELECT
	c.id,
	c.first_name,
	o.customer_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;

-- get all customers with their orders, including without orders.
SELECT
	c.id,
	c.first_name,
	o.customer_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;

--get all customers along with their orders, including orders without matching cutomers.
SELECT 
	c.id,
	c.first_name,
	o.customer_id,
	o.sales
from customers as c
right join orders as o 
on c.id = o.customer_id

