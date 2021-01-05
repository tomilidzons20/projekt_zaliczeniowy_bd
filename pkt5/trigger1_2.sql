DELIMITER $$
CREATE TRIGGER wieza_bi
BEFORE INSERT ON wieza
FOR EACH ROW 
    BEGIN
		IF NEW.pobrotu_wiezy LIKE '%°/s' THEN
			SET NEW.pobrotu_wiezy = NEW.pobrotu_wiezy;
        ELSEIF NEW.pobrotu_wiezy THEN
			SET NEW.pobrotu_wiezy = CONCAT(NEW.pobrotu_wiezy, '°/s');
        END IF;
	END
$$
DELIMITER ;
    