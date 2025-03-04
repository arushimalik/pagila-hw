/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

SELECT F.film_id, F.title, F.language_id, L.name
FROM film F
JOIN language L ON F.language_id = L.language_id
WHERE (F.title LIKE 'K%' OR F.title LIKE 'Q%')
  AND L.name = 'English'
ORDER BY F.title;
