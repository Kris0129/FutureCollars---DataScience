-- Projekt SQL Data Science 

-- Zadanie 1.1
CREATE DATABASE Sklep_Odzieżowy;

-- Zadanie 2.1
CREATE TABLE Producenci (
    id_producenta INTEGER PRIMARY KEY,
    nazwa_producenta CHAR(100) NOT NULL UNIQUE,
    adres_producenta CHAR(200) NOT NULL,
    nip_producenta CHAR(10) NOT NULL UNIQUE,
    data_podpisania_umowy DATE NOT NULL
);

-- Zadanie 3.1
CREATE TABLE Produkty (
id_produktu INTEGER PRIMARY KEY, 
id_procucenta INTEGER NOT NULL, 
nazwa_produktu CHAR(100) NOT NULL, 
opis_produktu CHAR(255),
cena_netto_zakupu DECIMAL(10,2) NOT NULL CHECK (cena_netto_zakupu >= 0),
cena_brutto_zakupu DECIMAL(10,2) NOT NULL CHECK (cena_brutto_zakupu >= 0),
cena_netto_sprzedazy DECIMAL(10,2) NOT NULL CHECK (cena_netto_sprzedazy >= 0),
cena_brutto_sprzedazy DECIMAL(10,2) NOT NULL CHECK (cena_brutto_sprzedazy >= 0),
procent_vat_sprzedazy DECIMAL(5,2) NOT NULL CHECK (procent_vat_sprzedazy >= 0 AND procent_vat_sprzedazy <= 100)
);

-- Zadanie 4.1
CREATE TABLE Zamowienia (
    id_zamowienia INTEGER PRIMARY KEY,
    id_klienta INTEGER NOT NULL,
    id_produktu INTEGER NOT NULL,
    data_zamowienia DATE NOT NULL
);

-- Zadanie 5.1
CREATE TABLE Klienci (
id_klienta  INTEGER PRIMARY KEY, 
imie CHAR(100) NOT NULL,
nazwisko CHAR(150) NOT NULL, 
adres CHAR(255) NOT NULL
);

ALTER TABLE produkty
rename column id_procucenta to ID_producenta;

-- Zadanie 6.1

ALTER TABLE produkty ADD CONSTRAINT producenci_fk FOREIGN KEY (id_producenta) REFERENCES producenci(id_producenta);
ALTER TABLE zamowienia ADD CONSTRAINT produkty_fk1 FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu);
ALTER TABLE zamowienia ADD CONSTRAINT klienci_fk FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta);

-- Zadanie 7.1 

INSERT INTO Producenci (id_producenta, nazwa_producenta, adres_producenta, nip_producenta, data_podpisania_umowy)
VALUES
(1, 'TechPol Sp. z o.o.', 'ul. Krakowska 12, 30-001 Kraków', '1234567890', '2023-01-15'),
(2, 'AgroMax S.A.', 'ul. Rolnicza 45, 20-400 Lublin', '2345678901', '2022-11-30'),
(3, 'MediTech Polska', 'ul. Zdrowia 8, 00-950 Warszawa', '3456789012', '2024-03-10'),
(4, 'EcoBuild Ltd.', 'ul. Zielona 77, 50-500 Wrocław', '4567890123', '2021-07-22');

INSERT INTO Produkty (id_produktu, id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu, cena_brutto_zakupu, cena_netto_sprzedazy, cena_brutto_sprzedazy, procent_vat_sprzedazy) VALUES
(1, 1, 'Produkt A', 'Opis produktu A', 100.00, 123.00, 150.00, 184.50, 23.00),
(2, 1, 'Produkt B', 'Opis produktu B', 200.00, 246.00, 300.00, 369.00, 23.00),
(3, 2, 'Produkt C', 'Opis produktu C', 50.00, 61.50, 75.00, 92.25, 23.00),
(4, 2, 'Produkt D', 'Opis produktu D', 75.00, 92.25, 112.50, 138.38, 23.00),
(5, 3, 'Produkt E', 'Opis produktu E', 120.00, 147.60, 180.00, 221.40, 23.00),
(6, 3, 'Produkt F', 'Opis produktu F', 80.00, 98.40, 120.00, 147.60, 23.00),
(7, 4, 'Produkt G', 'Opis produktu G', 60.00, 73.80, 90.00, 110.70, 23.00),
(8, 4, 'Produkt H', 'Opis produktu H', 90.00, 110.70, 135.00, 166.95, 23.00),
(9, 1, 'Produkt I', 'Opis produktu I', 110.00, 135.30, 165.00, 203.55, 23.00),
(10, 1, 'Produkt J', 'Opis produktu J', 130.00, 159.90, 195.00, 240.45, 23.00),
(11, 2, 'Produkt K', 'Opis produktu K', 140.00, 172.20, 210.00, 258.30, 23.00),
(12, 2, 'Produkt L', 'Opis produktu L', 160.00, 196.80, 240.00, 295.20, 23.00),
(13, 3, 'Produkt M', 'Opis produktu M', 170.00, 209.10, 255.00, 313.65, 23.00),
(14, 3, 'Produkt N', 'Opis produktu N', 180.00, 221.40, 270.00, 332.10, 23.00),
(15, 4, 'Produkt O', 'Opis produktu O', 190.00, 233.70, 285.00, 350.55, 23.00),
(16, 4, 'Produkt P', 'Opis produktu P', 200.00, 246.00, 300.00, 369.00, 23.00),
(17, 1, 'Produkt Q', 'Opis produktu Q', 210.00, 258.30, 315.00, 387.45, 23.00),
(18, 1, 'Produkt R', 'Opis produktu R', 220.00, 270.60, 330.00, 405.90, 23.00),
(19, 2, 'Produkt S', 'Opis produktu S', 230.00, 282.90, 345.00, 424.35, 23.00),
(20, 2, 'Produkt T', 'Opis produktu T', 240.00, 295.20, 360.00, 442.80, 23.00);

INSERT INTO Zamowienia (id_zamowienia, id_klienta, id_produktu, data_zamowienia) VALUES
(1, 101, 1, '2025-01-10'),
(2, 102, 2, '2025-01-15'),
(3, 103, 3, '2025-02-01'),
(4, 104, 4, '2025-02-10'),
(5, 105, 5, '2025-03-05'),
(6, 106, 6, '2025-03-15'),
(7, 107, 7, '2025-04-01'),
(8, 108, 8, '2025-04-10'),
(9, 109, 9, '2025-05-01'),
(10, 110, 10, '2025-05-10');

INSERT INTO Klienci (id_klienta, imie, nazwisko, adres) VALUES
(101, 'Anna', 'Kowalska', 'ul. Lipowa 12, 30-001 Kraków'),
(102, 'Jan', 'Nowak', 'ul. Długa 45, 00-001 Warszawa'),
(103, 'Maria', 'Wiśniewska', 'ul. Leśna 7, 40-002 Katowice'),
(104, 'Piotr', 'Wójcik', 'ul. Polna 3, 20-400 Lublin'),
(105, 'Katarzyna', 'Kamińska', 'ul. Ogrodowa 9, 50-500 Wrocław'),
(106, 'Tomasz', 'Lewandowski', 'ul. Słoneczna 15, 10-001 Olsztyn'),
(107, 'Agnieszka', 'Zielińska', 'ul. Kwiatowa 22, 70-001 Szczecin'),
(108, 'Michał', 'Szymański', 'ul. Wiosenna 5, 80-001 Gdańsk'),
(109, 'Ewa', 'Dąbrowska', 'ul. Jesienna 11, 60-001 Poznań'),
(110, 'Paweł', 'Kaczmarek', 'ul. Zimowa 8, 35-001 Rzeszów');

-- Zadanie 8.1 

SELECT 
	p. nazwa_produktu,
	pr. id_producenta,
    pr. nazwa_producenta,
    pr. adres_producenta, 
    pr. nip_producenta, 
    pr. data_podpisania_umowy
FROM producenci pr
JOIN produkty p on p.id_producenta = pr.id_producenta 
WHERE pr.id_producenta = 1;

-- Zadanie 9.1

SELECT 
	p. nazwa_produktu,
	pr. id_producenta,
    pr. nazwa_producenta,
    pr. adres_producenta, 
    pr. nip_producenta, 
    pr. data_podpisania_umowy
FROM producenci pr
JOIN produkty p on p.id_producenta = pr.id_producenta 
WHERE pr.id_producenta = 1
ORDER BY nazwa_produktu;

-- Zadanie 10.1

SELECT 
	pr. id_producenta,
	AVG (p.cena_netto_zakupu) AS Srednia_Cena_Zakupu,
    AVG (p.cena_netto_sprzedazy) AS Srednia_Cena_Sprzedazy,
    pr. nazwa_producenta
FROM producenci pr
JOIN produkty p on p.id_producenta = pr.id_producenta 
WHERE pr.id_producenta = 1
ORDER BY nazwa_produktu;

-- Zadanie 11.1 

SELECT
	pr. id_producenta,
	p. nazwa_produktu,
	p. opis_produktu,
	p. cena_netto_zakupu,
	p. cena_netto_sprzedazy,
    pr. nazwa_producenta,
CASE
	WHEN cena_netto_sprzedazy >= 242.5 THEN 'Drogie'
	ELSE 'Tanie'
END AS Grupa_produktow
FROM Produkty p
JOIN producenci pr ON p.id_producenta = pr.id_producenta
WHERE p.id_producenta = 1
ORDER BY cena_netto_sprzedazy;

-- Zadanie 12.1 
SELECT 
	p. nazwa_produktu
FROM produkty p
JOIN zamowienia z ON z.id_produktu = p.id_produktu;

-- Zadanie 13.1 
SELECT
	p. nazwa_produktu
FROM produkty p 
JOIN zamowienia z ON z.id_produktu = p.id_produktu
LIMIT 5; 

-- Zadanie 14.1
SELECT
	COUNT(z.id_zamowienia) AS Liczba_zamowien,
    SUM(p.cena_netto_sprzedazy) AS Suma_sprzedazy_netto,
    SUM(p.cena_netto_zakupu) AS Suma_zakupu_netto, 
    SUM(p.procent_vat_sprzedazy) AS Suma_procent_VAT_sprzedazy
FROM zamowienia z
JOIN produkty p ON p.id_produktu = z.id_produktu;

-- Zadanie 15.1
SELECT
	z. id_zamowienia,
    p. id_produktu,
    p. nazwa_produktu, 
    z. data_zamowienia
FROM zamowienia z
JOIN produkty p ON p.id_produktu = z.id_produktu
ORDER BY z.data_zamowienia;

-- Zadanie 16.1
SELECT * 
FROM produkty
WHERE
    id_producenta IS NULL OR
    nazwa_produktu IS NULL OR
    opis_produktu IS NULL OR
    cena_netto_zakupu IS NULL OR
    cena_brutto_zakupu IS NULL OR
    cena_netto_sprzedazy IS NULL OR
    cena_brutto_sprzedazy IS NULL OR
    procent_vat_sprzedazy IS NULL;
    
-- Zadanie 17.1

  -- Dodaje nowe produkty w celu pokazania zadania
INSERT INTO  zamowienia (id_zamowienia, id_klienta, id_produktu, data_zamowienia) 
VALUES
(11, 101, 2, '2025-01-29'),
(12, 102, 2, '2025-01-29'),
(13, 103, 2, '2025-02-28');

SELECT 
    p.id_produktu,
    p.nazwa_produktu,
    p.cena_brutto_sprzedazy,
    COUNT(z.id_zamowienia) AS liczba_sprzedazy
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
GROUP BY p.id_produktu, p.nazwa_produktu, p.cena_brutto_sprzedazy
ORDER BY liczba_sprzedazy DESC
LIMIT 1;

-- Zadanie 18.1
SELECT 
    p.id_produktu,
    p.nazwa_produktu,
    p.cena_brutto_sprzedazy,
    COUNT(*) AS liczba_zamowien, 
    z. data_zamowienia
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
GROUP BY p.id_produktu, p.nazwa_produktu, p.cena_brutto_sprzedazy, z.data_zamowienia
ORDER BY liczba_zamowien DESC
LIMIT 1;






