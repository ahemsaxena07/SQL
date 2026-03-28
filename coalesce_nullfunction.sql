-- find the avg score of the customers
select
CustomerID,
Score,
coalesce(score, 0) score2,
avg(score) over() avgscore,
avg(coalesce (score, 0)) over () avgscore2
from Sales.Customers;

-- display the full name of customers in a single field by merging their first 
-- and last names, and add 10 bonus points to each customer's score.

select
CustomerID,
FirstName,
LastName,
Score,
FirstName + ' ' + coalesce(LastName, '') as fullname,
coalesce(Score, 0) + 10 as scorewithbonus
from sales.Customers