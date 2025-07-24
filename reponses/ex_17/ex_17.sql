 
--  affiche le titre du film le plus long. La colonne sera nommée "Title of the longest movie"

SELECT title AS "Title of the longest movie"
FROM movies
WHERE LENGTH(title) = (
  SELECT MAX(LENGTH(title)) FROM movies
);
