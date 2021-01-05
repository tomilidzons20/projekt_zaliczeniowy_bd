/*Wyswietla rodzaje czolgow, ich ilosc oraz laczna ilosc amunicji */
CREATE VIEW widok9 AS
SELECT rodzaj_czolgu, COUNT(*) AS 'Ilosc czolgow danego rodzaju', SUM(ilosc_amu) AS 'Laczna ilosc amunicji rodzaju czolgow'
FROM czolgi INNER JOIN lufa 
ON lufa_czolgu = id_lufy 
INNER JOIN amunicja
ON amunicja_lufy = id_amu
GROUP BY rodzaj_czolgu