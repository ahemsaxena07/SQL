--find total no. of orders
--additionally provide details such orderid, orderdate
--find the total no. of orders for each customer
select
OrderID,
OrderDate,
CustomerID,
count(*) over() totalorders,
count(*) over(partition by CustomerID) ordersbycust
from sales.Orders;

--find the total no. of cust. addtionally provide all cust. details
select
*,
count(*) over() totalcustomers,
count(score) over() totalscore
from sales.Customers;

--chech whether the table 'orders' contains any duplicate rows.
select
*
from(
	select
	orderId,
	count(*) over(partition by OrderId) checkpk
from sales.OrdersArchive
)t where checkpk > 1