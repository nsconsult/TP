 
--  affiche le mois de naissance en anglais du 42ème au 84ème membre (le 42ème et le 84ème inclus). La colonne
--  sera nommée "month of birth".

SELECT DATE_FORMAT(birthdate,'%M') AS "month of birth"
FROM profiles
WHERE id BETWEEN 42 AND 84;
