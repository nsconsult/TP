 
-- affiche le titre des films dont l'ID est 21, 87, 263, 413 ou 633. La colonne sera nommée "Movie title"

SELECT title AS "Movie title"
FROM movies
WHERE id IN (21,87,267,413,633);
