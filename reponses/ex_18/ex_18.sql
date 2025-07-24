 
--  affiche le nom de famille suivi d'un tiret, suivi du prénom de chaque membre de la table profiles. La première lettre
--  du nom et du prénom sera en majuscule. Les membres doivent être affichés du plus jeune au plus âgé. La colonne sera nommée "Full 
-- name"

SELECT 
  CONCAT(
    UCASE(LEFT(lastname, 1)), LCASE(SUBSTRING(lastname, 2)),
    ' - ',
    UCASE(LEFT(firstname, 1)), LCASE(SUBSTRING(firstname, 2))
  ) AS "Full name",
  birthdate
FROM profiles
ORDER BY birthdate DESC;
