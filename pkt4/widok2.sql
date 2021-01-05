/*Wyswietla czolg i jego zaloge dla roli radiooperator */
CREATE VIEW widok2 AS
SELECT czolgi.nazwa_czolgu, zaloga.imie_zal, zaloga.rola_zal
FROM czolgi INNER JOIN zaloga
ON czolgi.id_czolgu = zaloga.czolg_zal
WHERE zaloga.rola_zal IN (SELECT rola_zal FROM zaloga WHERE rola_zal LIKE "Radiooperator")
