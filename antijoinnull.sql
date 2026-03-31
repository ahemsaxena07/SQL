--sort the cust. from lowest to highest scores, with nulls appearing last.
select
CustomerID,
Score
from sales.customers
order by case when score is null then 1 else 0 end, score;

--find the sales price for each order by dividing sales by quantity. 
select 
OrderID,
Sales,
Quantity,
sales / nullif(Quantity, 0) as price
from sales.orders;

--list all details for customers who have not placed any orders.
select 
c.*,
o.orderId
from sales.Customers c
left join sales.Orders o
on c.CustomerID = o.customerId
where o.CustomerID is null;

-- datelength
with orders as (
select 1 id, 'a' category union
select 2, Null union
select 3, '' union
select 4, ' ' 
)
select 
*,
DATALENGTH(category) categorylen
from orders