SELECT *
FROM customers
WHERE country = 'germany';

SELECT *
FROM customers
WHERE country <> 'germany';

/* Ret. all cust. who are from the USA AND have score > 500*/
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

--  where NOT less than 500
SELECT *
FROM customers
WHERE NOT score < 500;

-- whose score falls in the range b/w 100  and 500
SELECT *
FROM customers
WHERE score >= 100 AND score <= 500;

--ret. all cust. from either germany or USA
SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');

--first name starts with M
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

--all cust whose first name has 'r' in third position
SELECT *
FROM customers
WHERE first_name LIKE '__r%'