SELECT ROUND(SUM(duration)/COUNT(duration), 2) AS "Average duration"
    -> FROM movies;

SELECT ROUND(AVG(duration), 2) AS "Average duration" FROM movies;