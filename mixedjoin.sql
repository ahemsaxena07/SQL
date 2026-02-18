Select 
	o.OrderId,
	o.Sales,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	p.Product AS ProductName,
	p.Price,
	e.FirstName AS EmployeeFirstName,
	e.LastName AS EmployeeLastName
from Sales.Orders as o
left join Sales.Customers as c
on o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
on o.ProductID = p.ProductID
LEFT JOIN Sales.Employees as e
on o.SalesPersonID = e.EmployeeID 