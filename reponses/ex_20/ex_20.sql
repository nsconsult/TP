 
-- affiche le nombre de films produits par année. L'année ne doit pas être 0. Les résultats doivent être
--  triés par année de production décroissante. Les colonnes seront nommées "Number of movies" et "Year of production"

SELECT COUNT(*) AS "Number of movies", year AS "Year of production"
FROM movies
GROUP BY year
ORDER BY year DESC;
