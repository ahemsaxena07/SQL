Select
CustomerID,
count(*) AS total_nr_orders,
sum(sales) as total_sales, 
avg(sales) as avg_sales,
max(sales) as max_sales,
min(sales) as min_sales
From sales.Orders
group by CustomerID;

--analyze the scores in customers table
select
count(*) as total_cust,
sum(score) as total_score,
avg(score) as avg_score,
max(score) as max_score,
min(score) as min_score
from sales.Customers

