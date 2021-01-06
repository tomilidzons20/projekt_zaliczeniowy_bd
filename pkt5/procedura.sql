/*Procedura wyswietla nazwy wszystkich czesci czolgu o podanym id */
DELIMITER $$

CREATE PROCEDURE czesciczolgu (IN id INT)
BEGIN
	SELECT nazwa_czolgu, nazwa_silnika, nazwa_lufy, nazwa_wiezy, nazwa_gasienicy, nazwa_radia
    FROM czolgi INNER JOIN silnik
    ON silnik_czolgu = id_silnika
    INNER JOIN lufa
    ON lufa_czolgu = id_lufy
    INNER JOIN wieza
    ON wieza_czolgu = id_wiezy
    INNER JOIN gasienice
    ON gasienice_czolgu = id_gasienicy
    INNER JOIN radio
    ON radio_czolgu = id_radia
    WHERE id = id_czolgu;
END$$

DELIMITER ;
