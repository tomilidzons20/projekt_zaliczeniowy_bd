/*Wyswietla kraj oraz ilosc czynnych zalogantow z tego kraju */
CREATE VIEW widok7 AS
SELECT kraj_czolgu, SUM(rozmiarzalogi_czolgu) AS 'Rozmiar zalogi danego kraju'
FROM czolgi
GROUP BY kraj_czolgu 