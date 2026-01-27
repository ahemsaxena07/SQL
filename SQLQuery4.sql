--Retrieve customers with a score not equal to 0
Select*
from customers
WHERE score != 0

--Retrieve customers from germany
SELECT
    first_name,
    country
FROM customers
WHERE country = 'Germany'