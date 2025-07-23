SELECT name AS 'Name of the most expensive subscription', price AS 'Price' 
FROM subscriptions 
WHERE price=(SELECT MAX(price) FROM subscriptions);


SELECT name AS 'Name of the most expensive subscription', price AS 'Price' FROM subscriptions order by price desc limit 1;