/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */ 

SELECT S.first_name, S.last_name, A.address AS street_address
FROM staff S
JOIN address A ON S.address_id = A.address_id
ORDER BY S.last_name
