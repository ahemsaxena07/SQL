/* find the avg score for each country considering only customers with a score not
 equal to 0 and return only those contries with an avg. score greater than 430*/

SELECT 
  country,
  AVG(score) AS avg_total
FROM customers
WHERE score != 0
GROUP BY country 
HAVING AVG(score) > 430