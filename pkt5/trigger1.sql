/*Trigger sprawdza czy do podanej wartosci zostala dopisana jednoska miary, a jesli to nie zostaje ona dopisana */
DELIMITER $$
CREATE TRIGGER gasienice_ai
BEFORE INSERT ON gasienice
FOR EACH ROW 
    BEGIN
		IF NEW.vobrotu_gasienicy LIKE '%°/s' THEN
			SET NEW.vobrotu_gasienicy = NEW.vobrotu_gasienicy;
        ELSEIF NEW.vobrotu_gasienicy THEN
			SET NEW.vobrotu_gasienicy = CONCAT(NEW.vobrotu_gasienicy, '°/s');
        END IF;
	END
$$
DELIMITER ;
    
