select *
From sales.orders
where Month(OrderDate) = 2;

Select 
OrderID,
CreationTime,
format(CreationTime, 'dd') dd,
format(CreationTIme, 'ddd')ddd,
format(CreationTime, 'dddd') dddd,
format(CreationTime, 'MM')MM,
format(CreationTime, 'MMM')MMM,
format(CreationTime, 'MMMM')MMMM,
format(CreationTime, 'MM-dd-yyyy') USA_Format,
format(CreationTime, 'dd-MM-yyyy') EURO_format
from sales.orders