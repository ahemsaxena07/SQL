-- return unique list of all country 
SELECT DISTINCT country
FROM customers;

-- return only 3 customers(TOP question)
SELECT TOP 3*
FROM customers;

-- return the top 3 cust with highest scores
SELECT TOP 3*
FROM Customers
ORDER BY score DESC;

--get the two most recent oders
SELECT TOP 2*
FROM orders
ORDER BY order_date DESC;