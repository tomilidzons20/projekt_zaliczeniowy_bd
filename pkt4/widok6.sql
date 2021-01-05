/*Wyswietla amunicje ktorej ilosc jest najmniejsza z tabeli */
CREATE VIEW widok6 AS
SELECT *
FROM amunicja
WHERE ilosc_amu = (SELECT MIN(ilosc_amu) FROM amunicja)