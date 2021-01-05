/*Wyswietla zaloge dla wszystkich czolgow a rowniej jej brak dla wszystkich krajow oprocz Niemiec */
CREATE VIEW widok3 AS
SELECT id_zal, imie_zal, rola_zal, czolg_zal, szkolenie_zal, id_czolgu, nazwa_czolgu, kraj_czolgu
FROM zaloga RIGHT OUTER JOIN czolgi
ON czolg_zal = id_czolgu
WHERE kraj_czolgu NOT LIKE 'Niemcy'