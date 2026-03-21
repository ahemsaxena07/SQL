SELECT 
OrderId,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(creationTime) Day
from sales.Orders;
--datepart example-
SELECT
OrderID,
CreationTime,
DATEPART(Year, CreationTime) year_dp,
Datepart(month, CreationTime) month_dp,
Datepart(day, CreationTime) day_dp,
datepart(hour, CreationTime) hour_dp,
DATEPART(quarter, CreationTime) quarter_dp,
DATEPART(week, CreationTime) week_dp
FROM sales.orders

--datename ex-
SELECT
OrderId,
CreationTime,
DATENAME(Month, CreationTime) month_dn,
DATENAME(weekday, CreationTime) weekday_dn
From sales.Orders;

--total no of count a specific time using datetrunc
SELECT
DATETRUNC(QUARTER, CreationTime) Creation,
COUNT(*)
FROM sales.orders
GROUP BY DATETRUNC(QUARTER, CreationTime);

--task - how many orders were placed each year
SELECT
YEAR(OrderDate),
COUNT(*) nrofOrder
FROM sales.Orders
GROUP BY YEAR(OrderDate)
