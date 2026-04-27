Select
OrderID,
OrderDate,
ProductID,
OrderStatus,
sales,
sum(sales) over() totalsales,
sum(sales) over(Partition by ProductID) salesbyproduct,
sum(sales) over(Partition by ProductID, OrderStatus) salesbyproductandstatus
From sales.Orders;

--rank each order based on the sales from highest to lowest, additionally provide details such order id and orderdate
Select
OrderDate, 
OrderID,
RANK() OVER(Order By sales Asc) Ranksales
From sales.Orders