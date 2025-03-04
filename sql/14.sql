/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT F.title
FROM film F
JOIN film_category FC ON F.film_id = FC.film_id
JOIN category C ON FC.category_id = C.category_id
WHERE C.name = 'Family';
