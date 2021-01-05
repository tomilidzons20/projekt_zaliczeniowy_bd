/*Wyswietla ilosc czolgow na posiadaniu danego kraju */
CREATE VIEW widok8 AS
SELECT kraj_czolgu, COUNT(*) AS 'Ilosc czolgow danego kraju'
FROM czolgi
GROUP BY kraj_czolgu