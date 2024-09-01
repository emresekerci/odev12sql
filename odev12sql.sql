-- SELECT TITLE,LENGTH (SELECT AVG(LENGTH)FROM FILM),
-- (
-- SELECT * COUNT(TITLE) FROM FILM,
-- )
-- FROM FILM;

-- SELECT COUNT(*) 
-- FROM film 
-- WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
-- SELECT * 
-- FROM film 
-- WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
-- AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

SELECT customer_id, COUNT(*) AS total_payments
FROM payment
GROUP BY customer_id
ORDER BY total_payments DESC;
