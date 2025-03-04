/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT C.customer_id, C.first_name, C.last_name, SUM(P.amount) AS sum
FROM customer C
JOIN payment P ON C.customer_id = P.customer_id
GROUP BY C.customer_id, C.first_name, C.last_name
ORDER BY C.last_name;

