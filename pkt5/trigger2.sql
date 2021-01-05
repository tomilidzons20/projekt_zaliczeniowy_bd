DELIMITER $$
CREATE TRIGGER amunicja_bi
BEFORE INSERT ON amunicja
FOR EACH ROW 
    BEGIN
		IF NEW.ilosc_amu < 0 THEN
			SET NEW.ilosc_amu = 0;
        ELSEIF NEW.ilosc_amu > 80 THEN
			SET NEW.ilosc_amu = 80;
        END IF;
	END
$$
DELIMITER ;