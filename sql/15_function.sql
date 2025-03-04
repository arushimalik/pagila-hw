/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(language_name TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
    SELECT C.name, COUNT(*) AS count
    FROM film F
    JOIN film_category FC ON FC.film_id = F.film_id
    JOIN category C ON C.category_id = FC.category_id
    JOIN language L ON F.language_id = L.language_id
    WHERE L.name = language_name
    GROUP BY C.name
    ORDER BY C.name;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
