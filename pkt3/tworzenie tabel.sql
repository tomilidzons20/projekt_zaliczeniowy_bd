CREATE TABLE Silnik (
id_silnika INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nazwa_silnika VARCHAR(45),
moc_silnika VARCHAR(45),
waga_silnika VARCHAR(45)
);

CREATE TABLE Wieza (
id_wiezy INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nazwa_wiezy VARCHAR(45),
pancerz_wiezy VARCHAR(45),
pobrotu_wiezy VARCHAR(45),
waga_wiezy VARCHAR(45)
);

CREATE TABLE Gasienice (
id_gasienicy INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nazwa_gasienicy VARCHAR(45),
vobrotu_gasienicy VARCHAR(45),
udzwig_gasienicy VARCHAR(45)
);

CREATE TABLE Lufa (
id_lufy INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nazwa_lufy VARCHAR(45),
srednica_lufy VARCHAR(45),
vpocisku_lufy VARCHAR(45),
lpocisku_lufy VARCHAR(45)
);

CREATE TABLE Radio (
id_radia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nazwa_radia VARCHAR(45),
zasieg_radia VARCHAR(45),
waga_radia VARCHAR(45)
);

CREATE TABLE Amunicja (
id_amu INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nazwa_amu VARCHAR(45),
rodzaj_amu SET("PP", "OB", "PK", "K"),
ilosc_amu INT
);

CREATE TABLE Czolgi (
id_czolgu INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nazwa_czolgu VARCHAR(45),
rodzaj_czolgu SET("Lekki", "Średni", "Ciężki", "Niszczyciel Czołgów", "Artyleria"),
kraj_czolgu SET("Chiny", "Francja", "Niemcy", "Japonia", "Szwecja", "Wielka Brytania", "USA", "ZSRR"),
rozmiarzalogi_czolgu INT,
silnik_czolgu INT,
gasienice_czolgu INT,
wieza_czolgu INT,
lufa_czolgu INT,
radio_czolgu INT
);

CREATE TABLE Zaloga (
id_zal INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
imie_zal VARCHAR(45),
rola_zal SET("Dowódca", "Celowniczy", "Kierowca", "Radiooperator", "Ładowniczy"),
czolg_zal INT,
kraj_zal SET("Chiny", "Francja", "Niemcy", "Japonia", "Szwecja", "Wielka Brytania", "USA", "ZSRR"),
szkolenie_zal SET("Akademia", "Szkoła", "Kurs")
);

INSERT INTO amunicja (nazwa_amu, rodzaj_amu, ilosc_amu)
VALUES 
('DM13', 'PP', 30),
('DM11', 'OB', 25),
('Pzgr 39 L', 'PP', 30),
('Sprgr G', 'OB', 18),
('UBR-482P', 'PK', 15),
('UOF-412', 'OB', 20),
('Chuan chao-412', 'PK', 25),
('Sha bao-412', 'OB', 18),
('HEAT Type 3', 'K', 25),
('Type 70', 'K', 15),
('ODR mle. 1910', 'PP', 30),
('Frt.Prf. mle. 1944', 'PK', 35),
('OE mle. 1930', 'OB', 25),
('sgr m/51', 'OB', 30),
('slpprj m/F', 'PP', 40),
('HESH-T L-35', 'OB', 30),
('HE Mk. VI', 'OB', 20),
('HE A1M1', 'OB', 18),
('APCR T29E3M2', 'PK', 35),
('HVAP M304', 'PK', 25);

INSERT INTO lufa (nazwa_lufy, srednica_lufy, vpocisku_lufy, lpocisku_lufy, amunicja_lufy)
VALUES
('Bordkanone L7A3', '10,5 cm', '1480 m/s', '720 m', 1),
('Pak L/66', '12,8 cm', '1200 m/s', '720 m', 3),
('s.F.H 18 L/29.5', '15 cm', '420 m/s', '10000 m', 4),
('S-70', '130 mm', '900 m/s', '720 m', 5),
('D-10TM', '100 mm', '895 m/s', '720 m', 6),
('59-100T', '100 mm', '1125 m/s', '720 m', 7),
('59-100TG FT', '100 mm', '900 m/s', '720 m', 8),
('Howitzer Type 96', ' 15 cm', '500 m/s', '720 m', 9),
('Gun Type 61', '90 mm', '914 m/s', '720 m', 10),
('SA32', '75 mm', '600 m/s', '720 m', 11),
('D. 915', '90 mm', '1163 m/s', '720 m', 12),
('AC SA47', '100 mm', '1000 m/s', '720 m', 13),
('akan L/40', '12 cm', '680 m/s', '720 m', 14),
('kan m/F', '9 cm', '1275 m/s', '720 m', 15),
('Gun L7A2', '105 mm', '1173 m/s', '720 m', 16),
('Gun Mk. V', '6 in', '480 m/s', '10000 m', 17),
('Howitzer M1', '8 in', '440 m/s', '10000 m', 18),
('Gun T5E1M2', '105 mm', '1181 m/s', '720 m', 19),
('AT Gun M3', '90 mm', '1066 m/s', '720 m', 20);

INSERT INTO silnik (nazwa_silnika, moc_silnika, waga_silnika)
VALUES
('MTU MB 838 CaM 500A', '830 hp', '1700 kg'),
('Maybach HL 230 TRM P30', '700 hp', '1200 kg'),
('Maybach HL 120 TRM R', '300 hp', '920 kg'),
('M-50TI', '1200 hp', '700 kg'),
('V-14M', '1000 hp', '700 kg'),
('12150LS', '580 hp', '750 kg'),
('12150L4', '430 hp', '700 kg'),
('2x Kawasaki Type 98 V-12 (600)', '1200 hp', '1020 kg'),
('Mitsubishi 12HM20WT', '650 hp', '2400 kg'),
('Somua LM', '190 hp', '540 kg'),
('SOFAM de 180 cv', '180 hp', '400 kg'),
('Maybach HL 295', '850 hp', '750 kg'),
('SFA F12', '810 hp', '1475 kg'),
('Volvo THD 100 B', '310 hp', '940 kg'),
('Rolls-Royce Meteor TTSC', '1040 hp', '1000 kg'),
('Rolls-Royce Meteor Mk. IVC', '750 hp', '744 kg'),
('Ford GAA early', '500 hp', '708 kg'),
('Continental AV-1790-7', '820 hp', '569 kg'),
('Wright Continental R-975C4', '460 hp', '550 kg');

INSERT INTO radio (nazwa_radia, zasieg_radia, waga_radia)
VALUES
('SEM 25A', '750 m', '50 kg'),
('FuG 12', '710 m', '150 kg'),
('FuG 7', '415 m', '70 kg'),
('10RK-26', '720 m', '160 kg'),
('R-113', '760 m', '80 kg'),
('A-220A', '750 m', '40 kg'),
('A-220', '600 m', '40 kg'),
('Type 96 Mk. 4 Bo', '425 m', '50 kg'),
('JAN/GRC-4Z', '750 m', '150 kg'),
('ER 53', '360 m', '100 kg'),
('SRC 508', '400 m', '100 kg'),
('SRC 528F', '750 m', '80 kg'),
('Ra 421', '850 m', '27 kg'),
('Ra 146', '615 m', '12 kg'),
('SR C45', '750 m', '40 kg'),
('WS No. 22', '700 m', '40 kg'),
('SCR 619', '750 m', '80 kg'),
('SCR 528', '745 m', '80 kg'),
('SRC 510', '325 m', '80 kg');

INSERT INTO gasienice (nazwa_gasienicy, vobrotu_gasienicy, udzwig_gasienicy)
VALUES
('Leopard 1', '50°/s', '42 t'),
('Jagdtiger', '24°/s', '75 t'),
('Hummel', '26°/s', '25 t'),
('IS-7', '28°/s', '71 t'),
('T-54 ltwt. version', '50°/s', '34 t'),
('T-34-2 model 2', '46°/s', '36,5 t'),
('WZ-131 FT model 2', '45°/s', '23 t'),
('O-I Kai', '18°/s', '155 t'),
('STA-3', '44°/s', '37 t'),
('AMX 40 bis', '30°/s', '25,2 t'),
('AMX ELC bis', '38°/s', '8 t'),
('AMX AC mle. 47', '26°/s', '63 t'),
('Kranvagn', '30°/s', '48 t'),
('Ikv 90 Alt 2', '30°s', '16 t'),
('Centurion Action X', '50°/s', '60 t'),
('FV207', '20°/s', '63 t'),
('M43', '22°/s', '40 t'),
('M46T81', '38°/s', '45 t'),
('M18 T69', '30°/s', '22 t');

INSERT INTO wieza (nazwa_wiezy, pancerz_wiezy, pobrotu_wiezy, waga_wiezy)
VALUES
('Leopard 1', '52/0/60 mm', '40°/s', '7,7 t'),
('Jagdtiger', '0/0/0 mm', '26°/s', '100 kg'),
('Hummel', '0/0/0 mm', '10°/s', '100kg'),
('IS-7', '240/185/94 mm', '25°/s', '14,2 t'),
('T-54 ltwt. version', '180/120/60 mm', '48°/s', '7,4 t'),
('T-34-2 model 2', '180/120/60 mm', '46°/s', '11 t'),
('WZ-131G FT', '0/0/0 mm', '40°/s', '100 kg'),
('O-I', '150/150/105 mm', '18°/s', '12 t'),
('STA-3', '70/60/35 mm', '42°/s', '7,9 t'),
('Renault-Balland', '80/60/60 mm', '26°/s', '2,5 t'),
('AMX ELC bis', '20/15/10 mm', '44°/s', '500 kg'),
('AMX AC mle. 46', '0/0/0 mm', '26°/s', '170 kg'),
('Kranvagn', '225/70/37 mm', '28°/s', '15 t'),
('Ikv 90 Typ B', '0/0/0 mm', '20°/s', '100 kg'),
('Centurion Action X', '254/152.4/95.3 mm', '48°/s', '14 t'),
('FV207', '0/0/0 mm', '16°/s', '100 kg'),
('M40M43', '0/0/0 mm', '10°/s', '300 kg'),
('M46T119', '215.9/63.5/76.2 mm', '40°/s', '9,7 t'),
('M18 M1', '76.2/31.8/127 mm', '16°/s', '4,5 t');

INSERT INTO czolgi (nazwa_czolgu, rodzaj_czolgu, kraj_czolgu, rozmiarzalogi_czolgu, silnik_czolgu, gasienice_czolgu, wieza_czolgu, lufa_czolgu, radio_czolgu)
VALUES
('Leopard 1', 'Średni', 'Niemcy', 4, 1, 1, 1, 1, 1),
('Jagdtiger', 'Niszczyciel Czołgów', 'Niemcy', 6, 2, 2, 2, 2, 2),
('Hummel', 'Artyleria', 'Niemcy', 6, 3, 3, 3, 3, 3),
('IS-7', 'Ciężki', 'ZSRR', 5, 4, 4, 4, 4, 4),
('T-54 ltwt.', 'Lekki', 'ZSRR', 4, 5, 5, 5, 5, 5),
('T-34-2', 'Średni', 'Chiny', 4, 6, 6, 6, 6, 6),
('WZ-131G FT', 'Niszczyciel Czołgów', 'Chiny', 4, 7, 7, 7, 7, 7),
('O-I Exp', 'Ciężki', 'Japonia', 6, 8, 8, 8, 8, 8),
('STA-1', 'Średni', 'Japonia', 4, 9, 9, 9, 9, 9),
('AMX 40', 'Lekki', 'Francja', 3, 10, 10, 10, 10, 10),
('AMX ELC bis', 'Lekki', 'Francja', 2, 11, 11, 11, 11, 11),
('AMX AC mle. 46', 'Niszczyciel Czołgów', 'Francja', 5, 12, 12, 12, 12, 12),
('Kranvagn', 'Ciężki', 'Szwecja', 3, 13, 13, 13, 13, 13),
('Ikv 90 Typ B', 'Niszczyciel Czołgów', 'Szwecja', 4, 14, 14, 14, 14, 14),
('Centurion AX', 'Średni', 'Wielka Brytania', 4, 15, 15, 15, 15, 15),
('FV207', 'Artyleria', 'Wielka Brytania', 6, 16, 16, 16, 16, 16),
('M40/M43', 'Artyleria', 'USA', 6, 17, 17, 17, 17, 17),
('M46 Patton', 'Średni', 'USA', 5, 18, 18, 18, 18, 18),
('M18 Hellcat', 'Niszczyciel Czołgów', 'USA', 5, 19, 19, 19, 19, 19);

INSERT INTO zaloga (imie_zal, rola_zal, czolg_zal, kraj_zal, szkolenie_zal)
VALUES
('Michael Wittmann', 'Dowódca', 1, 'Niemcy', 'Akademia'),
('Josef Allerberger', 'Celowniczy', 1, 'Niemcy', 'Szkoła'),
('Matthaus Hetzenauer', 'Kierowca', 1, 'Niemcy', 'Akademia'),
('Erwin Konig', 'Ładowniczy', 1, 'Niemcy', 'Kurs'),
('Dmitry Fyodorovich', 'Dowódca', 4, 'ZSRR', 'Akademia'),
('Vasily Zaytsev', 'Celowniczy', 4, 'ZSRR', 'Akademia'),
('Ivan Sidorenko', 'Kierowca', 4, 'ZSRR', 'Szkoła'),
('Boris Badenov', 'Ładowniczy', 4, 'ZSRR', 'Kurs'),
('Vladimir Triandafillov', 'Radiooperator', 4, 'ZSRR', 'Szkoła'),
('Bradley Wiggins', 'Dowódca', 15, 'Wielka Brytania', 'Szkoła'),
('Errol Flynn', 'Celowniczy', 15, 'Wielka Brytania', 'Akademia'),
('Michael Cain', 'Kierowca', 15, 'Wielka Brytania', 'Kurs'),
('William Wallace', 'Radiooperator', 15, 'Wielka Brytania', 'Akademia'),
('Lafayette G. Pool', 'Dowódca', 19, 'USA', 'Akademia'),
('Bruce Campbell', 'Celowniczy', 19, 'USA', 'Szkoła'),
('James Brown', 'Kierowca', 19, 'USA', 'Szkoła'),
('Buck Rogers', 'Radiooperator', 19, 'USA', 'Kurs'),
('Kurt Cobain', 'Ładowniczy', 19, 'USA', 'Akademia');

ALTER TABLE Zaloga
ADD CONSTRAINT fk_zaloga1
FOREIGN KEY (czolg_zal) REFERENCES Czolgi(id_czolgu);

ALTER TABLE Czolgi
ADD CONSTRAINT fk_czolg_lufa
FOREIGN KEY (lufa_czolgu) REFERENCES Lufa(id_lufy),
ADD CONSTRAINT fk_czolg_wieza
FOREIGN KEY (wieza_czolgu) REFERENCES Wieza(id_wiezy),
ADD CONSTRAINT fk_czolg_gas
FOREIGN KEY (gasienice_czolgu) REFERENCES Gasienice(id_gasienicy),
ADD CONSTRAINT fk_czolg_silnik
FOREIGN KEY (silnik_czolgu) REFERENCES Silnik(id_silnika),
ADD CONSTRAINT fk_czolg_radio
FOREIGN KEY (radio_czolgu) REFERENCES Radio(id_radia);

ALTER TABLE lufa
ADD CONSTRAINT fk_amu_lufy
FOREIGN KEY (amunicja_lufy) REFERENCES amunicja(id_amu);