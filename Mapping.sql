Select
category,
SUM(sales) AS TotalSales
From(
	Select 
	OrderId,
	Sales,
	CASE
		When Sales > 50 THEN 'High'
		When Sales > 20 THEN 'Medium'
		ELSE 'Low'
	END category
	From Sales.Orders
)t
Group by category
Order by TotalSales Desc;

--Retreive employee details with gender displayed as full text
Select
EmployeeID,
FirstName,
LastName,
Gender,
Case
	When Gender = 'F' Then 'Female'
	When Gender = 'M' Then 'Male'
	Else 'NotAvailable'
End Genderfulltext
From Sales.Employees;

--retreive cust. details with abbreviated country code.
Select
CustomerID,
FirstName,
LastName,
Country,
Case 
	When Country = 'Germany' Then 'DA'
	When Country = 'USA' Then 'US'
	Else 'N/A'
End CountryAbbreviate
From Sales.Customers;