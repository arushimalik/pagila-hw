/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT F.title, SUM(P.amount) AS profit
FROM film F
JOIN inventory I ON F.film_id = I.film_id
JOIN rental R ON I.inventory_id = R.inventory_id
JOIN payment P ON R.rental_id = P.rental_id
GROUP BY F.title
ORDER BY profit DESC;
