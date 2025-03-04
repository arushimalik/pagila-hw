/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT C.name, COUNT(F.film_id) AS sum
FROM category C
JOIN film_category FC ON C.category_id = FC.category_id
JOIN film F ON FC.film_id = F.film_id
JOIN language L ON F.language_id = L.language_id
WHERE L.name = 'English'
GROUP BY C.name;
