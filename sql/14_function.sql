/*
 * Use a JOIN to count the number films in the specified category.
 * Use table category, film_category, and film.
 */

CREATE OR REPLACE FUNCTION list_category(category_name TEXT) RETURNS TABLE(title TEXT) AS
$$
    SELECT F.title
    FROM film F
    JOIN film_category FC ON F.film_id = FC.film_id
    JOIN category C ON FC.category_id = C.category_id
    WHERE C.name = category_name
    ORDER BY F.title;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT list_category('Action');
SELECT list_category('Animation');
SELECT list_category('Children');
SELECT list_category('Classics');
SELECT list_category('Comedy');
SELECT list_category('Documentary');
SELECT list_category('Drama');
SELECT list_category('Family');
SELECT list_category('Foreign');
SELECT list_category('Games');
SELECT list_category('Horror');
SELECT list_category('Music');
SELECT list_category('New');
SELECT list_category('Sci-Fi');
SELECT list_category('Sports');
SELECT list_category('Travel');
