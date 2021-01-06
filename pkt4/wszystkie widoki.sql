/*Wyswietla czolg i jego silnik dla silnikow o mocy powyzej sredniej */
CREATE VIEW widok1 AS
SELECT czolgi.nazwa_czolgu, silnik.nazwa_silnika, silnik.moc_silnika
FROM czolgi INNER JOIN silnik ON czolgi.silnik_czolgu = silnik.id_silnika
WHERE moc_silnika > (SELECT AVG(moc_silnika) FROM silnik);

/*Wyswietla czolg i jego zaloge dla roli radiooperator */
CREATE VIEW widok2 AS
SELECT czolgi.nazwa_czolgu, zaloga.imie_zal, zaloga.rola_zal
FROM czolgi INNER JOIN zaloga
ON czolgi.id_czolgu = zaloga.czolg_zal
WHERE zaloga.rola_zal IN (SELECT rola_zal FROM zaloga WHERE rola_zal LIKE "Radiooperator");

/*Wyswietla zaloge dla wszystkich czolgow a rowniej jej brak dla wszystkich krajow oprocz Niemiec */
CREATE VIEW widok3 AS
SELECT id_zal, imie_zal, rola_zal, czolg_zal, szkolenie_zal, id_czolgu, nazwa_czolgu, kraj_czolgu
FROM zaloga RIGHT OUTER JOIN czolgi
ON czolg_zal = id_czolgu
WHERE kraj_czolgu NOT LIKE 'Niemcy';

/*Wyswietla lufe oraz amunicje jej przypisana dla amunicji odlamkowo burzacej OB */
CREATE VIEW widok4 AS
SELECT id_amu, nazwa_amu, rodzaj_amu, id_lufy, nazwa_lufy
FROM amunicja LEFT OUTER JOIN lufa
ON id_amu = amunicja_lufy
WHERE rodzaj_amu LIKE 'OB';

/*Wyswietla radio i czolg ktory jego uzywa o zasiegu powyzej sredniej i wszystkich krajach oprocz USA */
CREATE VIEW widok5 AS
SELECT nazwa_radia, zasieg_radia, nazwa_czolgu
FROM radio INNER JOIN czolgi
ON id_radia = radio_czolgu
WHERE zasieg_radia > (SELECT AVG(zasieg_radia) FROM radio) AND kraj_czolgu NOT LIKE 'USA';

/*Wyswietla amunicje ktorej ilosc jest najmniejsza z tabeli */
CREATE VIEW widok6 AS
SELECT *
FROM amunicja
WHERE ilosc_amu = (SELECT MIN(ilosc_amu) FROM amunicja);

/*Wyswietla kraj oraz ilosc czynnych zalogantow z tego kraju */
CREATE VIEW widok7 AS
SELECT kraj_czolgu, SUM(rozmiarzalogi_czolgu) AS 'Rozmiar zalogi danego kraju'
FROM czolgi
GROUP BY kraj_czolgu;

/*Wyswietla ilosc czolgow na posiadaniu danego kraju */
CREATE VIEW widok8 AS
SELECT kraj_czolgu, COUNT(*) AS 'Ilosc czolgow danego kraju'
FROM czolgi
GROUP BY kraj_czolgu;

/*Wyswietla rodzaje czolgow, ich ilosc oraz laczna ilosc amunicji */
CREATE VIEW widok9 AS
SELECT rodzaj_czolgu, COUNT(*) AS 'Ilosc czolgow danego rodzaju', SUM(ilosc_amu) AS 'Laczna ilosc amunicji rodzaju czolgow'
FROM czolgi INNER JOIN lufa 
ON lufa_czolgu = id_lufy 
INNER JOIN amunicja
ON amunicja_lufy = id_amu
GROUP BY rodzaj_czolgu;

/*Wyswietla czolgi z czynnimi wiecej niz 4 czolgistami */
CREATE VIEW widok10 AS
SELECT id_czolgu AS 'Id czolgu z > 4 przypisanymi czolgistami', nazwa_czolgu, rodzaj_czolgu, kraj_czolgu
FROM czolgi
WHERE id_czolgu IN (SELECT czolg_zal FROM zaloga GROUP BY czolg_zal HAVING COUNT(*) > 4);