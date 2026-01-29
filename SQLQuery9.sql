-- copy data from 'customers' table into 'persons'
INSERT INTO persons(id, person_name, birth_data, phone)
SELECT 
	id,
	first_name,
	NULL,
	'unknown'
FROM customers