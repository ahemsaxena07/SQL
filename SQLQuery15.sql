SELECT TOP 2
   country,
   AVG(score) AS avg_score
from customers
WHERE score != 0
GROUP BY country 
HAVING AVG(score) > 400
ORDER BY country DESC;

--static(fixed) value
select
	id, 
	first_name,
	'New Cusomers' as customer_type
from customers