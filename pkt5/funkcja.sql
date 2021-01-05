CREATE FUNCTION krajeENG (s CHAR(40))
RETURNS CHAR(50) DETERMINISTIC
RETURN REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
(s, 'Niemcy', 'Germany'), 'ZSRR', 'CCCP'),'Chiny', 'China'), 'Japonia', 'Japan'), 'Francja', 'France'), 'Szwecja', 'Sweden'),'Wielka Brytania', 'Great Britain')