/*Wyswietla radio i czolg ktory jego uzywa o zasiegu powyzej sredniej i wszystkich krajach oprocz USA */
CREATE VIEW widok5 AS
SELECT nazwa_radia, zasieg_radia, nazwa_czolgu
FROM radio INNER JOIN czolgi
ON id_radia = radio_czolgu
WHERE zasieg_radia > (SELECT AVG(zasieg_radia) FROM radio) AND kraj_czolgu NOT LIKE 'USA'