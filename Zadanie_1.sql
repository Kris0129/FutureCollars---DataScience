CREATE TABLE Biblioteczka_1 (
   BookID INTEGER, 
   Tytul TEXT, 
   Data_Zakupu DATE
);
INSERT INTO Biblioteczka_1 (BookID, Tytul, Data_Zakupu) 
VALUES (1, 'Carnivia', '2019-02-02');

INSERT INTO Biblioteczka_1 (BookID, Tytul, Data_Zakupu) 
VALUES (2, 'Potop', '2012-01-02'), (3, 'Chlopi', '2022-03-02');

SET SQL_SAFE_UPDATES = 0;

UPDATE Biblioteczka_1
SET Tytul = 'Finansowy Ninja'
WHERE BookID = 2;

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE Biblioteczka_1 
ADD COLUMN Autor TEXT;

SET SQL_SAFE_UPDATES = 0;

UPDATE Biblioteczka_1
SET Autor = CASE 
    WHEN BookID = 1 THEN 'Jonathan Holt'
    WHEN BookID = 2 THEN 'Michal Szafranski'
    WHEN BookID = 3 THEN 'Wladyslaw Reymont'
END
WHERE BookID IN (1, 2, 3);

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Biblioteczka_1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Biblioteczka_1
WHERE BookID = 1;

-- Bazy danych i manipulacje danymi: ZADANIE Numer 2 
-- 2.1
CREATE DATABASE School_Coding;
USE School_Coding;
-- 2.2
CREATE TABLE Mentors (
   ID INTEGER PRIMARY KEY, 
   Imie TEXT NOT NULL, 
   Nazwisko TEXT NOT NULL,
   Specjalizacja TEXT NOT NULL, 
   Data_zatrudnienia DATE NOT NULL,
   Data_zwolnienia DATE 
);
-- 2.3
INSERT INTO Mentors (
  ID, Imie, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia
)
VALUES
  (1, 'Anna', 'Kowalska', 'Kardiolog', '2018-01-10', '2023-12-31'),
  (2, 'Piotr', 'Nowak', 'Chirurg', '2017-05-20', '2022-08-15'),
  (3, 'Maria', 'Wiśniewska', 'Pediatra', '2019-03-01', '2024-06-30'),
  (4, 'Tomasz', 'Wójcik', 'Neurolog', '2016-10-12', '2021-11-01'),
  (5, 'Joanna', 'Kamińska', 'Ortopeda', '2020-02-05', '2023-03-15'),
  (6, 'Krzysztof', 'Kowalczyk', 'Dermatolog', '2015-06-14', '2020-09-30'),
  (7, 'Agnieszka', 'Dąbrowska', 'Okulista', '2019-12-22', '2022-12-22'),
  (8, 'Michał', 'Zieliński', 'Onkolog', '2014-07-01', '2020-07-01'),
  (9, 'Barbara', 'Szymańska', 'Psychiatra', '2013-04-03', '2018-10-10'),
  (10, 'Andrzej', 'Lewandowski', 'Urolog', '2021-08-08', '2025-01-01');
  
  -- 2.4
  DELETE FROM Mentors
  ORDER BY ID
  Limit 10;
  
SELECT * FROM Mentors;

-- 2.5
SET SQL_SAFE_UPDATES = 0;

UPDATE Mentors
SET Nazwisko = 'Kulczyk'
WHERE ID = 5;

-- 2.6

SELECT * FROM Mentors
WHERE ID = 5;

-- 2.7

UPDATE Mentors
SET Specjalizacja = 'Hydraulik'
WHERE ID = 9;

-- 2.8

SELECT Specjalizacja FROM Mentors
WHERE ID = 9;

-- 2.9

ALTER TABLE Mentors
ADD COLUMN Wynagrodzenie INTEGER CHECK (Wynagrodzenie > 1200 AND Wynagrodzenie < 5600);

-- 2.10

UPDATE Mentors
SET Wynagrodzenie = CASE ID
  WHEN 1 THEN 1201
  WHEN 2 THEN 1300
  WHEN 3 THEN 5000
END
WHERE ID IN (1, 2, 3);

SELECT * FROM Mentors;

-- Bazy danych i manipulacje danymi: ZADANIE Numer 3

-- 3.1
CREATE DATABASE Lista_Prezentow;


-- 3.2 

CREATE TABLE Prezenty_2020 (
ID INTEGER PRIMARY KEY,
Imię_obdarowanego tEXT nOT nULL,
Pomysl_na_prezent tEXT nOT nULL,
Cena iNTEGER cHECK (Cena >= 25),
Miejsce_zakupu tEXT cHECK (Miejsce_zakupu= 'Empik' oR Miejsce_zakupu= 'Pepco')
);

-- 3.3 

INSERT INTO Prezenty_2020 (ID, Imię_obdarowanego, Pomysl_na_prezent, Cena, Miejsce_zakupu)
VALUES
  (1, 'Anna', 'Puzzle 1000 elementów', 45, 'Empik'),
  (2, 'Piotr', 'Kubek z napisem', 30, 'Pepco'),
  (3, 'Maria', 'Zestaw do rysowania', 60, 'Empik'),
  (4, 'Tomasz', 'Pluszowy miś', 28, 'Pepco'),
  (5, 'Kasia', 'Notes i długopis', 25, 'Pepco'),
  (6, 'Michał', 'Gra planszowa', 90, 'Empik');

-- 3.4

SELECT * FROM Prezenty_2020;

-- 3.5

UPDATE Prezenty_2020
SET Pomysl_na_prezent = 'Rower'
WHERE ID=3; 

-- 3.6

SELECT Pomysl_na_prezent FROM Prezenty_2020
WHERE ID=3;

-- 3.7

DELETE FROM Prezenty_2020
WHERE ID = 1;

-- 3.8

SELECT * FROM Prezenty_2020;

-- 3.9

ALTER TABLE Prezenty_2020
DROP COLUMN Miejsce_zakupu;

-- 3.10

SELECT Imię_obdarowanego FROM Prezenty_2020
WHERE ID IN (3, 4, 5);

-- Bazy danych i manipulacje danymi: ZADANIE Numer 4

-- 4.1
CREATE DATABASE Lista_Pracowników;

-- 4.2
CREATE TABLE Pracownicy (
   ID INTEGER PRIMARY KEY, 
   Imie TEXT NOT NULL, 
   Nazwisko TEXT NOT NULL,
   Stanowisko TEXT NOT NULL, 
   Dział TEXT CHECK (Dział= 'Logistyka' OR Dział= 'Handel'OR Dział= 'Zakupy' OR Dział= 'Finanse')
);

-- 4.3

INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dział)

VALUES 
(1, 'Jan', 'Kaczmarek', 'Magazynier', 'Logistyka'),
(2, 'Piotr', 'Janka', 'Manager Zakupow', 'Zakupy'),
(3, 'Witold', 'Drach', 'Sales Manager', 'Handel'),
(4, 'Julia', 'Kowal', 'Ksiegowa', 'Finanse');

-- 4.4 
SELECT * FROM pracownicy;

-- 4.5 
ALTER TABLE Pracownicy
ADD COLUMN Data_Zatrudnienia DATE;

-- 4.6
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dział, Data_Zatrudnienia)

VALUES 
(5, 'Wiesla', 'Jarzabek', 'Kurier', 'Logistyka', '2025-05-05');

-- 4.7 
SELECT * FROM pracownicy;

-- 4.8 

SET SQL_SAFE_UPDATES = 0;

UPDATE Pracownicy 
SET Data_Zatrudnienia = CASE ID
WHEN 1 THEN '2020-01-29'
WHEN 2 THEN '2020-01-15'
WHEN 3 THEN '2015-05-13'
WHEN 4 THEN '2020-06-20'
END
WHERE ID IN (1, 2, 3, 4);

-- 4.9 

SELECT * FROM pracownicy;

-- Bazy danych i manipulacje danymi: ZADANIE Numer 5

-- 5.1

CREATE DATABASE Moje_Zainteresowania;

-- 5.2

CREATE TABLE Zainteresowania (
ID INTEGER UNIQUE,
NAZWA TEXT NOT NULL,
OPIS VARCHAR(55),
Data_Realizacji DATE UNIQUE
);

DROP TABLE Zainteresowania;
SELECT * FROM Zainteresowania;

-- 5.3

INSERT INTO Zainteresowania (Nazwa, Opis)

VALUES 
('Rower', 'Lubie Rower'),
('Narty', 'Najlepiej w grupie'),
('Plywanie', 'Uspokaja mnie'),
('Muzyka', 'Najlepsza w tras'),
('Jazda Samochodem', 'Zawsze spoko');

-- 5.4

SELECT * FROM Zainteresowania;

-- 5.5

INSERT INTO Zainteresowania (
ID, Nazwa, Opis, Data_Realizacji)

VALUES
(1, 'Spanie', 'A bo tak', '2025-05-05');

-- 5.6

UPDATE Zainteresowania 
SET ID = 4
WHERE Nazwa = 'Muzyka';

UPDATE Zainteresowania
SET Data_Realizacji = '2024-01-03'
WHERE Nazwa = 'Muzyka';

-- 5.7

SELECT * FROM Zainteresowania;

-- 5.8

DELETE FROM Zainteresowania
WHERE ID IS NULL;

SELECT * FROM Zainteresowania;

















