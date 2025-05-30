-- Bazy danych i manipulacja danymi cd. ZADANIE 1 
-- 1.1

CREATE DATABASE Pracownicy;

-- 1.2

CREATE TABLE Pracownicy (
ID INTEGER UNIQUE,
Imie TEXT NOT NULL,
Nazwisko VARCHAR(55),
Wiek INTEGER NOT NULL,
Kurs TEXT NOT NULL
);

ALTER TABLE Pracownicy
RENAME COLUMN NR TO ID;

-- 1.3

INSERT INTO Pracownicy (ID, Imie, Nazwisko, Wiek, Kurs)
VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata ', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KAMIŃSKI', 34, 'Java'),
(7, 'Robert', 'LEWANDOWSKI', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Anna', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, 'UX'),
(12, 'Robert', 'KOZŁOWSKI', 38, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, 'Patryk', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'ZIELIŃSKI', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

-- 1.4

SELECT * FROM Pracownicy
WHERE Wiek > 30;

-- 1.5 
SELECT * FROM Pracownicy
WHERE Wiek < 30;

-- 1.6 
SELECT * FROM Pracownicy
WHERE Nazwisko LIKE 'K%' AND Nazwisko LIKE '%ki'; -- Wyszukiwanie STARTS WITH / ENDS WITH 

-- 1.7

ALTER TABLE Pracownicy
RENAME COLUMN ID TO NR;

-- 1.8

SELECT * FROM Pracownicy
WHERE NULL; 
SELECT * FROM Pracownicy;

-- 1.9

SELECT * FROM Pracownicy 
WHERE Kurs = 'Java';

-- Bazy danych i manipulacja danymi cd. ZADANIE 2

-- 2.1

CREATE TABLE Pracownicy2 (
ID INTEGER UNIQUE,
Imie TEXT NOT NULL,
Nazwisko VARCHAR(55),
Wiek INTEGER NOT NULL,
Kurs VARCHAR (50)
);

-- 2.3

INSERT INTO Pracownicy2 (ID, Imie, Nazwisko, Wiek, Kurs)
VALUES 
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata ', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', '', 34, 'Java'),
(7, 'Robert', '', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, '', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, ''),
(12, 'Robert', 'KOZŁOWSKI', 'null', 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, '', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', '', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

ALTER TABLE Pracownicy2
MODIFY COLUMN Wiek VARCHAR(5);

-- 2.4 

SELECT * FROM Pracownicy2
WHERE Wiek =28; 

-- 2.5

SELECT * FROM Pracownicy2
WHERE Wiek <=28; 

-- 2.6

SELECT * FROM Pracownicy2
WHERE Nazwisko LIKE '%ski%';

-- 2.7

SELECT * FROM Pracownicy2
WHERE ID IN (1,4,7,18,20);

-- 2.8

SELECT * FROM Pracownicy2
WHERE ID IS NOT NULL
	AND Imie IS NOT NULL
    AND Nazwisko IS NOT NULL
    AND Wiek IS NOT NULL
    AND Kurs IS NOT NULL;
    
    -- Results did show incorrect data entered to table, I will need to delete data from the table and enter data with "null" values
    
DELETE FROM Pracownicy2;

INSERT INTO Pracownicy2 (ID, Imie, Nazwisko, Wiek, Kurs)
VALUES 
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata ', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', null , 34, 'Java'),
(7, 'Robert', null , 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Maciej', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, null),
(12, 'Robert', 'KOZŁOWSKI', null, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, 'Maciej', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', null, 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

SELECT * FROM Pracownicy2
WHERE ID IS NOT NULL
	AND Imie IS NOT NULL
    AND Nazwisko IS NOT NULL
    AND Wiek IS NOT NULL
    AND Kurs IS NOT NULL;
    
-- 2.9

SELECT * FROM Pracownicy2
WHERE Kurs <> 'DS.';

-- Bazy danych i manipulacja danymi cd. ZADANIE 3

-- 3.1

SET SQL_SAFE_UPDATES = 0;

DELETE FROM pracownicy2;

SELECT * FROM pracownicy2;

-- 3.2

ALTER TABLE Pracownicy2
MODIFY COLUMN Imie VARCHAR(55),
MODIFY COLUMN Wiek VARCHAR(5);

-- 3.3

INSERT INTO Pracownicy2 (ID, Imie, Nazwisko, Wiek, Kurs)
VALUES 
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata ', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, null, 'KOWALCZYK', 34, 'Java'),
(7, 'Robert', 'kOWALCZYK', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'null', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, null),
(12, 'Robert', 'KOZŁOWSKI', null, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, null, 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'KOWALCZYK', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

SELECT * FROM pracownicy2;

-- 3.4

SELECT * FROM Pracownicy2
WHERE Nazwisko = 'Kowalczyk';

-- 3.5

SELECT * FROM Pracownicy2
WHERE Wiek > 30 AND Wiek < 40;

-- 3.6

SELECT * FROM Pracownicy2
WHERE Nazwisko NOT LIKE '%and%';

-- 3.7

SELECT * FROM Pracownicy2
WHERE ID >=1 AND ID <=7;

-- 3.8

SELECT * FROM Pracownicy2
WHERE ID IS NULL
	OR Imie IS NULL
    OR Nazwisko IS NULL
    OR Wiek IS NULL
    OR Kurs IS NULL;
    
-- 3.9

SELECT * FROM Pracownicy2
WHERE Kurs IS NULL;

-- Bazy danych i manipulacja danymi cd. ZADANIE 4

-- 4.1 - Dane pozostaja bez zmian, zatem nie aktualizuje bazy i przechodze do kroku 4

-- 4.4

SELECT * FROM Pracownicy2
WHERE Imie = 'Anna';

-- 4.5

SELECT ID, Imie FROM Pracownicy2
WHERE Imie IS NULL;

-- 4.6

SELECT Kurs FROM Pracownicy2
WHERE Wiek >=30 AND Wiek <=40 AND Kurs IS NOT NULL;

-- 4.7

SELECT ID, Wiek FROM Pracownicy2
WHERE ID >=1 AND ID <=7;


-- 4.8

SELECT ID, Wiek, Imie, Nazwisko FROM Pracownicy2
WHERE Wiek IS NULL;

-- 4.9

ALTER TABLE Pracownicy2
RENAME COLUMN Kurs to Szkolenie;

SELECT * FROM Pracownicy2;

-- Bazy danych i manipulacja danymi cd. ZADANIE 5

-- 5.1

SELECT * FROM Pracownicy2;

ALTER TABLE Pracownicy2
RENAME COLUMN Szkolenie to Kurs;

-- 5.3

Delete From pracownicy2;

INSERT INTO Pracownicy2
VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Anna', 'null', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Tester'),
(6, null, 'KOWALCZYK', 34, 'Java'),
(7, 'Robert', 'KOWALCZYK', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Robert', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Tester'),
(11, 'Radosław', 'DĄBROWSKI', 35, null),
(12, 'Robert', 'KOZŁOWSKI', null, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'null'),
(16, null, 'ZIELIŃSKI', 28, 'null'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'null'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'null'),
(19, 'Roman', 'KOWALCZYK', 39, 'null'),
(20, 'Ewa', 'WOŹNIAK', 31, 'null');

DELETE FROM Pracownicy;

ALTER TABLE Pracownicy 
MODIFY COLUMN Imie VARCHAR(35),
MODIFY COLUMN Wiek VARCHAR (6),
MODIFY COLUMN Kurs VARCHAR(10);

-- Zmieniam Constraints tak aby wprowadzic powtarzajace sie dane, modyfikuje te ktore blokuja wproawdzenie danych

INSERT INTO pracownicy
VALUES 
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Anna', 'null', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Tester'),
(6, null, 'KOWALCZYK', 34, 'Java'),
(7, 'Robert', 'KOWALCZYK', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Robert', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Tester'),
(11, 'Radosław', 'DĄBROWSKI', 35, null),
(12, 'Robert', 'KOZŁOWSKI', null, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'null'),
(16, null, 'ZIELIŃSKI', 28, 'null'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'null'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'null'),
(19, 'Roman', 'KOWALCZYK', 39, 'null'),
(20, 'Ewa', 'WOŹNIAK', 31, 'null');

ALTER TABLE pracownicy
MODIFY COLUMN NR VARCHAR(2);

-- Zmieniam Constraint "Primary Key" na VARCHAR(2)

SELECT * FROM Pracownicy;

-- Sprawdzam i dodaje dodatkowe dane do Tabeli Pracownicy tak aby mozna bylo wykonac kolejne kroki zadania 5

INSERT INTO Pracownicy
VALUES 
(21, 'Anna', 'NOWAK', 34, 'DS.'),
(22, 'Roman', 'KOWALSKI', 42, 'DS.'),
(23, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(24, 'Anna', 'null', 43, 'DS.'),
(25, 'Elżbieta', 'KOWALCZYK', 28, 'Tester'),
(26, null, 'KOWALCZYK', 34, 'Java'),
(27, 'Robert', 'KOWALCZYK', 35, 'Java'),
(28, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(29, 'Robert', 'WOŹNIAK', 26, 'Java'),
(30, 'Robert', 'SZYMAŃSKI', 34, 'Tester'),
(31, 'Radosław', 'DĄBROWSKI', 35, null),
(32, 'Robert', 'KOZŁOWSKI', null, 'UX'),
(33, 'Joanna', 'MAZUR', 26, 'UX'),
(34, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(35, 'Patryk', 'LEWANDOWSKI', 28, 'null'),
(36, null, 'ZIELIŃSKI', 28, 'null'),
(37, 'Andrzej', 'WOŹNIAK', 31, 'null'),
(38, 'Andrze', 'LEWANDOWSKI', 30, 'null'),
(39, 'Roman', 'KOWALCZYK', 39, 'null'),
(40, 'Ewa', 'WOŹNIAK', 31, 'null');

SELECT * FROM Pracownicy;

-- Przywracam PRIMARY KEY dla kolumny ID, usuniety w poprzedniej komendzie

ALTER TABLE pracownicy
ADD CONSTRAINT ID_KEY PRIMARY KEY (NR);

-- 5.4

SELECT DISTINCT Imie FROM pracownicy;

-- 5.5

SELECT DISTINCT Nazwisko FROM Pracownicy;

-- 5.6

SELECT NR, Nazwisko, Kurs FROM pracownicy
WHERE Nazwisko LIKE 'Kowalczyk';

-- 5.7

SELECT NR, Imie, Nazwisko FROM pracownicy
WHERE Wiek IS NULL;

-- 5.8

SELECT Imie, Wiek FROM Pracownicy
WHERE Imie LIKE 'Patryk';

-- 5.9

ALTER TABLE Pracownicy 
RENAME Mentorzy;

-- 5.10

SELECT * FROM Mentorzy
ORDER BY Imie DESC, Kurs ASC;

-- 5.11

SELECT COUNT(ID) FROM Mentorzy


 
















    





