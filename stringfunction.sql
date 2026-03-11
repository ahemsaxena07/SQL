SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '') AS clean_phone;

SELECT
first_name,
LEN(first_name) AS len_name
FROM customers;

--retrieve the first two characters of each first name
SELECT
	first_name,
	LEFT(TRIM(first_name), 2) first_2_char
from customers;

--retrieve a list of cust.'s first names removing the first character
SELECT
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS sub_name
FROM customers