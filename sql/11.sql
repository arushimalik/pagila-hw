/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */

SELECT F.film_id, F.title, COUNT(I.inventory_id) AS count
FROM film F
JOIN inventory I ON F.film_id = I.film_id
WHERE F.title LIKE 'H%'
GROUP BY F.film_id, F.title
ORDER BY F.title DESC;
