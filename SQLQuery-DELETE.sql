-- change the score of cust. with id 6 to 0
UPDATE customers
SET score = 0
WHERE id = 6

SELECT *
FROM customers
WHERE id = 6;

-- change score of cust. with id 7 to 0 & update the country to 'AMERICa'
UPDATE customers
SET score = 0,
    country = 'AMERICA'
where id = 7

SELECT *
FROM customers;

-- update all cust. with a 0 score by setting their score to NULL

UPDATE customers
SET score = NULL
WHERE score = 0

SELECT *
FROM customers;

-- update all cust. with a NULL score by seeting their score to 0

UPDATE customers
SET score = 0
WHERE score IS NULL

SELECT *
FROM customers

