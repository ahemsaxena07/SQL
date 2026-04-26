select 
	ProductID,
	sum(sales) totalsales
from sales.Orders
group by ProductID;

--find total sales across all orders, additionally provide details such orderid, orderdate
select
OrderID,
OrderDate,
ProductID,
sum(sales) over(partition by productID) totalsalesbyproducts
from sales.Orders