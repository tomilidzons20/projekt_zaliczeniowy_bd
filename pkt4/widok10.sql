/*Wyswietla czolgi z czynnimi wiecej niz 4 czolgistami */
CREATE VIEW widok10 AS
SELECT id_czolgu AS 'Id czolgu z > 4 przypisanymi czolgistami', nazwa_czolgu, rodzaj_czolgu, kraj_czolgu
FROM czolgi
WHERE id_czolgu IN (SELECT czolg_zal FROM zaloga GROUP BY czolg_zal HAVING COUNT(*) > 4)