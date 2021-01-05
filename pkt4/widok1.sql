/*Wyswietla czolg i jego silnik dla silnikow o mocy powyzej sredniej */
CREATE VIEW widok1 AS
SELECT czolgi.nazwa_czolgu, silnik.nazwa_silnika, silnik.moc_silnika
FROM czolgi INNER JOIN silnik ON czolgi.silnik_czolgu = silnik.id_silnika
WHERE moc_silnika > (SELECT AVG(moc_silnika) FROM silnik)