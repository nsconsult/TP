SELECT number AS "Room numbers", name AS "Room names" FROM rooms WHERE seats > 0 AND floor !=1;

SELECT number AS "Room numbers", name AS "Room names" FROM rooms WHERE seats > 0 AND floor != 1;

SELECT number AS  "Room numbers", name "Room names"
    -> FROM rooms
    -> WHERE seats > 0 AND floor <> 1;