SELECT COUNT(*) AS "Number of 'western' movies"
    -> FROM movies m
    -> JOIN genres g ON m.genre_id = g.id
    -> WHERE g.name = 'western' 
    ->   AND m.producer IN ('tartan movies', 'lionsgate uk');