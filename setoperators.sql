--combine the data from employees and customers into one table
Select
	FirstName,
	LastName
FROM Sales.Customers
UNION
Select
	FirstName,
	LastName
From Sales.Employees;

--combine the data from employees and customers into one table, including duplicates
Select
	FirstName,
	LastName
FROM Sales.Customers
UNION ALL
Select
	FirstName,
	LastName
From Sales.Employees;

--find employees who are not cuts. at the same time.
SELECT
	FirstName,
	LastName
From sales.Customers
EXCEPT 
SELECT
	FirstName,
	LastName
FROM sales.Employees;

--find employees who are also cust.
SELECT
	FirstName,
	LastName
From sales.Customers
INTERSECT
SELECT
	FirstName,
	LastName
FROM sales.Employees;