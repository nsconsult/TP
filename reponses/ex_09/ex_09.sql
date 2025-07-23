SELECT MIN(duration) as 'Duration of the shortest movie' FROM movies WHERE duration > 0 ;

SELECT MIN(duration) as 'Duration of the shortest movie' FROM movies WHERE duration is not null and duration > 0;