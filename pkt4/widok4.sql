/*Wyswietla lufe oraz amunicje jej przypisana dla amunicji odlamkowo burzacej OB */
CREATE VIEW widok4 AS
SELECT id_amu, nazwa_amu, rodzaj_amu, id_lufy, nazwa_lufy
FROM amunicja LEFT OUTER JOIN lufa
ON id_amu = amunicja_lufy
WHERE rodzaj_amu LIKE 'OB'