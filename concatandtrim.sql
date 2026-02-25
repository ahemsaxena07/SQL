--concat
select
	first_name,
	country,
CONCAT(first_name, '-', country) as name_country
from customers;

--trim
select
first_name,
len(first_name) len_name,
len(trim(first_name))len_trim_name,
len(first_name) - len(trim(first_name)) flag
from customers
where len(first_name) != len(trim(first_name))