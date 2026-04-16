--find the avg. score of customers and treat nulls as 0 and additional provide
--detials such as customerId and lastname.
Select 
CustomerID,
LastName,
Score,
Case 
	When score is null Then 0
	Else score
End scoreclean,
avg(case 
		When score is null then 0
		else score
	End)over() avgcustomerclean,
avg(score) over() avgcustomer
from sales.Customers;

--count how many times each cust. has made an order with sales greater than 30
Select
CustomerID,
SUM(case
		When sales > 30 then 1
		Else 0
	end) totalhigherorders,
Count(*) totalorders
From sales.Orders
Group By CustomerID