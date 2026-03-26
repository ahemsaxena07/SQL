select
OrderID,
OrderDate,
dateadd(MONTH, 3, OrderDate),
dateadd(year, 2, OrderDate)
from Sales.Orders;

--task - find the no. of days between each order and previous order
select
OrderID,
OrderDate currentorderdate,
lag(OrderDate) over (order by OrderDate),
datediff(day, lag(OrderDate) over (order by OrderDate), OrderDate) nrofdays
from Sales.Orders
