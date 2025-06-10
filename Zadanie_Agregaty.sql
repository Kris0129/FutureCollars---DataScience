CREATE DATABASE aggregates;
CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INTEGER,
  price DOUBLE,
  start_date DATE,
  gift TEXT
);
INSERT INTO aggregates.batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
INSERT INTO aggregates.batman VALUES (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
INSERT INTO aggregates.batman VALUES (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
INSERT INTO aggregates.batman VALUES (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'); 
INSERT INTO aggregates.batman VALUES (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
INSERT INTO aggregates.batman VALUES (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
INSERT INTO aggregates.batman VALUES (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
INSERT INTO aggregates.batman VALUES (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
INSERT INTO aggregates.batman VALUES (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');


-- Zadanie 1.a. 
SELECT COUNT(id) FROM aggregates.batman;

-- Zadanie 1.b.

SELECT COUNT(*) AS liczba_rekordow_z_wiekiem
FROM aggregates.batman
WHERE age IS NOT NULL;

-- Zadanie 1.c.
SELECT COUNT(*) AS Liczba_meszczyzn_po40
FROM aggregates.batman
WHERE age > 40
AND SEX = 'M';

-- Zadanie 1.d.
SELECT SUM(price) AS Suma_Cen
FROM aggregates.batman;

-- Zadanie 1.e.
SELECT SUM(age) AS Laczny_wiek_kobiet
FROM aggregates.batman
WHERE SEX = 'F';

-- Zadanie 1.f.
SELECT SUM(price) 
FROM aggregates.batman
WHERE gift = 'komputer' or gift = 'okno';

-- Zadanie 1.g.
SELECT MAX(price) 
FROM aggregates.batman;

-- Zadanie 1.h.
SELECT MAX(start_date) 
FROM aggregates.batman;

-- Zadanie 1.i.
SELECT last_name 
FROM aggregates.batman
ORDER BY last_name DESC
LIMIT 1;

-- Zadanie 1.j.
SELECT MIN(price) 
FROM aggregates.batman;

-- Zadanie 1.k.
SELECT MIN(start_date) 
FROM aggregates.batman;

-- Zadanie 1.l.
SELECT last_name 
FROM aggregates.batman
ORDER BY last_name asc
LIMIT 1;

-- Zadanie 1.m.
SELECT 
	MIN(price) AS Cena_Minimalna, 
	MAX(price) AS Cena_Maksymalna
FROM aggregates.batman;

-- Zadanie 1.n.
SELECT MAX(price) - MIN(price) AS Różnica_Cen
FROM aggregates.batman;

-- Zadanie 1.o.
SELECT AVG(age) AS Srednia_wieku
FROM aggregates.batman;

-- Zadanie 1.p.
SELECT SUM(age) / COUNT(AGE) AS Srednia_wieku
FROM aggregates.batman;

-- Zadanie 1.q.
SELECT SEX, AVG(age) AS Średni_wiek
FROM aggregates.batman
WHERE SEX IN ('F', 'M')
GROUP BY SEX;

-- Zadanie 2.a.
SELECT ROUND(AVG(age),2) AS Sredni_wiek
FROM aggregates.batman;

-- Zadanie 2.b.
SELECT ABS(-3) AS wartosc_bezwzgledna;

-- Zadanie 2.c.
SELECT 2*3 AS Wynik_mnozenia;

-- Zadanie 2.d.
SELECT ROUND(6/2,0)AS Wynik_dzielenia;

-- Zadanie 3.a.
SELECT CONCAT(first_name, ' ', last_name) AS Pracownik
FROM aggregates.batman;

-- Zadanie 3.b.
SELECT CONCAT (gift, ' - cena:', price) AS Cennik
FROM aggregates.batman;

-- Zadanie 3.c.
SELECT CONCAT (gift, ' - cena:', price,' - Pracownik: ', first_name, ' ', last_name) AS Cennik
FROM aggregates.batman;

-- Zadanie 3.d.
SELECT UCASE(gift) 
FROM aggregates.batman;

-- Zadanie 3.e.
SELECT lcase(first_name) 
FROM aggregates.batman;

-- Zadanie 3.f.
SELECT last_name AS Nazwisko, length(last_name) AS Dlugosc_nazwiska
FROM aggregates.batman;

-- Zadanie 3.g.
SELECT LEFT(lcase(first_name),2) AS Pierwsze_2_litery_imienia
FROM aggregates.batman;

-- Zadanie 3.h.
SELECT CONCAT(LEFT(lcase(first_name),1), LEFT(lcase(last_name),3)) AS Login
FROM aggregates.batman;

-- Zadanie 4.a.
SELECT
    YEAR(start_date) AS Rok, 
    MONTH(start_date) AS Miesiac,
    DAY(Start_date) AS Dzien
FROM aggregates.batman; 

-- Zadanie 4.b.
SELECT
	Start_date, 
    DATE_ADD(start_date, interval 3 DAY) AS final_date
FROM aggregates.batman; 

-- Zadanie 4.c.
SELECT current_date() AS Aktualna_data;

-- Zadanie 4.d.
SELECT monthname(current_date) AS Aktualny_miesiac;

-- Zadanie 4.e.
SELECT 
    Start_date,
    WEEK(start_date) AS Week_num,
    MONTHNAME(start_date) AS Month_name,
    QUARTER(start_date) AS Quarter_num,
    DAYOFYEAR(start_date) AS Day_of_the_year_num
FROM
    aggregates.batman; 







