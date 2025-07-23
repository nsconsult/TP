SELECT m.title  FROM movies m  JOIN genres g ON m.genre_id = g.id  WHERE g.name = 'Action' OR g.name = 'Romance';

SELECT m.title 
    -> FROM movies m 
    -> JOIN genres g ON m.genre_id = g.id 
    -> WHERE g.name IN ('Action', 'Romance');