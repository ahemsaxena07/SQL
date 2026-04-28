Select 
OrderID,
OrderDate,
OrderStatus,
Sales,
sum(sales) over(partition by OrderStatus order by OrderDate 
rows between current row and 2 following) totalsales
From sales.Orders;

--find total sales for each order status, only for two products 101 and 102
select
OrderID,
OrderDate,
OrderStatus,
ProductID,
sales,
sum(sales) over(partition by orderStatus) totalsales
from sales.Orders
where ProductID in(101,102);

--rank customers based on their total sales.
select
customerID,
sum(sales) totalsales,
rank() over(order by sum(sales) desc) rankcust
from sales.Orders
group by CustomerID