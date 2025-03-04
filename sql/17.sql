/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT CO.country, SUM(P.amount) AS profit
FROM country CO
JOIN city CI ON CO.country_id = CI.country_id
JOIN address A ON CI.city_id = A.city_id
JOIN customer C ON A.address_id = C.address_id
JOIN rental R ON C.customer_id = R.customer_id
JOIN payment P ON R.rental_id = P.rental_id
GROUP BY CO.country
ORDER BY CO.country;
