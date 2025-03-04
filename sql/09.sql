/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT S.first_name, S.last_name, SUM(P.amount) AS sum
FROM staff S
JOIN payment P ON S.staff_id = P.staff_id
WHERE P.payment_date >= '2020-01-01' AND P.payment_date < '2020-02-01'
GROUP BY S.staff_id, S.first_name, S.last_name
ORDER BY sum;
