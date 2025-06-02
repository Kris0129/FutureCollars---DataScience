CREATE DATABASE wiele_tabel_zadanie;
USE wiele_tabel_zadanie;

CREATE TABLE `agents` (
`AGENT_CODE` varchar(6) PRIMARY KEY NOT NULL DEFAULT '',
`AGENT_NAME` varchar(40) DEFAULT NULL,
`WORKING_AREA` varchar(35) DEFAULT NULL,
`COMMISSION` decimal(10,2) DEFAULT NULL,
`PHONE_NO` varchar(15) DEFAULT NULL,
`COUNTRY` varchar(25) DEFAULT NULL
);

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '\r'),
('A003', 'Alex', 'London', '0.13', '075-12458969', '\r'),
('A008', 'Alford', 'New York', '0.12', '044-25874365', '\r'),
('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '\r'),
('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '\r'),
('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '\r'),
('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '\r'),
('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '\r'),
('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '\r'),
('A006', 'McDen', 'London', '0.15', '078-22255588', '\r'),
('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '\r'),
('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '\r');

SELECT * FROM agents;

CREATE TABLE `company` (
`COMPANY_ID` varchar(6) PRIMARY KEY NOT NULL DEFAULT '',
`COMPANY_NAME` varchar(25) DEFAULT NULL,
`COMPANY_CITY` varchar(25) DEFAULT NULL
);

INSERT INTO `company` (`COMPANY_ID`, `COMPANY_NAME`, `COMPANY_CITY`) VALUES
('18', 'Order All', 'Boston\r'),
('15', 'Jack Hill Ltd', 'London\r'),
('16', 'Akas Foods', 'Delhi\r'),
('17', 'Foodies.', 'London\r'),
('19', 'sip-n-Bite.', 'New York\r');


CREATE TABLE `customer` (
`CUST_CODE` varchar(6) PRIMARY KEY NOT NULL,
`CUST_NAME` varchar(40) NOT NULL,
`CUST_CITY` varchar(35) DEFAULT NULL,
`WORKING_AREA` varchar(35) NOT NULL,
`CUST_COUNTRY` varchar(20) NOT NULL,
`GRADE` decimal(10,0) DEFAULT NULL,
`OPENING_AMT` decimal(12,2) NOT NULL,
`RECEIVE_AMT` decimal(12,2) NOT NULL,
`PAYMENT_AMT` decimal(12,2) NOT NULL,
`OUTSTANDING_AMT` decimal(12,2) NOT NULL,
`PHONE_NO` varchar(17) NOT NULL,
`AGENT_CODE` varchar(6) DEFAULT NULL
);

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003'),
('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008'),
('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011'),
('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006'),
('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005'),
('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

SELECT * FROM customer;

CREATE TABLE `daysorder` (
`ORD_NUM` decimal(6,0) NOT NULL,
`ORD_AMOUNT` decimal(12,2) NOT NULL,
`ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
`ORD_DATE` date NOT NULL,
`CUST_CODE` varchar(6) NOT NULL,
`AGENT_CODE` varchar(6) NOT NULL,
`ORD_DESCRIPTION` varchar(60) NOT NULL
);

INSERT INTO `daysorder` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD\r'),
('200114', '3500.00', '1500.00', '2008-08-15', 'C00002', 'A008', 'SOD\r'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD\r'),
('200115', '2000.00', '1200.00', '2008-02-08', 'C00013', 'A013', 'SOD\r'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD\r'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200132', '4000.00', '1500.00', '2008-08-15', 'C00013', 'A013', 'SOD\r');

CREATE TABLE `despatch` (
`DES_NUM` varchar(6) PRIMARY KEY NOT NULL DEFAULT '',
`DES_DATE` date DEFAULT NULL,
`DES_AMOUNT` decimal(12,2) DEFAULT NULL,
`ORD_NUM` decimal(6,0) DEFAULT NULL,
`ORD_DATE` date DEFAULT NULL,
`ORD_AMOUNT` decimal(12,2) DEFAULT NULL,
`AGENT_CODE` varchar(6) DEFAULT NULL
);

CREATE TABLE `foods` (
`ITEM_ID` varchar(6) PRIMARY KEY NOT NULL DEFAULT '',
`ITEM_NAME` varchar(25) DEFAULT NULL,
`ITEM_UNIT` varchar(5) DEFAULT NULL,
`COMPANY_ID` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `foods` (`ITEM_ID`, `ITEM_NAME`, `ITEM_UNIT`, `COMPANY_ID`) VALUES
('1', 'Chex Mix', 'Pcs', '16\r'),
('6', 'Cheez-It', 'Pcs', '15\r'),
('2', 'BN Biscuit', 'Pcs', '15\r'),
('3', 'Mighty Munch', 'Pcs', '17\r'),
('4', 'Pot Rice', 'Pcs', '15\r'),
('5', 'Jaffa Cakes', 'Pcs', '18\r'),
('7', 'Salt n Shake', 'Pcs', '\r');


CREATE TABLE `gradecount` (
`grade` decimal(10,0)
,`number` bigint(21)
);

CREATE TABLE `listofitem` (
`ITEMCODE` varchar(6)PRIMARY KEY NOT NULL,
`ITEMNAME` varchar(25) NOT NULL,
`BATCHCODE` varchar(35) NOT NULL,
`CONAME` varchar(35) DEFAULT NULL
);

INSERT INTO `listofitem` (`ITEMCODE`, `ITEMNAME`, `BATCHCODE`, `CONAME`) VALUES
('I001', 'CHOCOLATE', 'DM/2007-08/WBM%1', '\r'),
('I003', 'HOT DOG', 'DM/2007-08/WB1', 'ABJ ENTERPRISE'),
('I002', 'CONDENSED MILK', 'DM/2007-08/WBM%2', 'ABJ CONCERN');


CREATE TABLE `newyorkstaff` (
`AGENT_CODE` varchar(6)
,`AGENT_NAME` varchar(40)
,`WORKING_AREA` varchar(35)
,`COMMISSION` decimal(10,2)
,`PHONE_NO` varchar(15)
,`COUNTRY` varchar(25)
);

CREATE TABLE `orders` (
`ORD_NUM` decimal(6,0) PRIMARY KEY NOT NULL,
`ORD_AMOUNT` decimal(12,2) NOT NULL,
`ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
`ORD_DATE` date NOT NULL,
`CUST_CODE` varchar(6) NOT NULL,
`AGENT_CODE` varchar(6) NOT NULL,
`ORD_DESCRIPTION` varchar(60) NOT NULL
);

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200100', '1000.00', '600.00', '2008-01-08', 'C00015', 'A003', 'SOD\r'),
('200110', '3000.00', '500.00', '2008-04-15', 'C00019', 'A010', 'SOD\r'),
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD\r'),
('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007', 'SOD\r'),
('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002', 'SOD\r'),
('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012', 'SOD\r'),
('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008', 'SOD\r'),
('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004', 'SOD\r'),
('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006', 'SOD\r'),
('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010', 'SOD\r'),
('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004', 'SOD\r'),
('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011', 'SOD\r'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD\r'),
('200115', '2000.00', '1200.00', '2008-02-08', 'C00013', 'A013', 'SOD\r'),
('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004', 'SOD\r'),
('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005', 'SOD\r'),
('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011', 'SOD\r'),
('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010', 'SOD\r'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD\r'),
('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008', 'SOD\r'),
('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004', 'SOD\r'),
('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002', 'SOD\r'),
('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005', 'SOD\r'),
('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001', 'SOD\r'),
('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002', 'SOD\r'),
('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009', 'SOD\r'),
('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007', 'SOD\r'),
('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002', 'SOD\r'),
('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006', 'SOD\r'),
('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003', 'SOD\r'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010', 'SOD\r'),
('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012', 'SOD\r'),
('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002', 'SOD\r'),
('200132', '4000.00', '2000.00', '2008-08-15', 'C00013', 'A012', 'SOD\r');


CREATE TABLE `total_per_dzien` (
`ord_date` date
,`COUNT(DISTINCT cust_code)` bigint(21)
,`AVG(ord_amount)` decimal(16,6)
,`SUM(ord_amount)` decimal(34,2)
);

-- Zadanie 6 - Wprowadzenie
-- PART a)
SELECT * FROM customer;
ALTER TABLE orders ADD CONSTRAINT customer_fk FOREIGN KEY (cust_code) REFERENCES customer(cust_code);

SELECT CUST_CODE FROM orders
WHERE ORD_DATE = '2008-01-08';

SELECT CUST_NAME, ord_date, ORD_DESCRIPTION
FROM customer
JOIN orders
ON customer.cust_code = orders.CUST_CODE
WHERE ORD_DATE = '2008-01-08';

SELECT *
FROM customer
JOIN orders
ON customer.cust_code = orders.CUST_CODE
WHERE ORD_DATE = '2008-01-08';

-- PART b)
ALTER TABLE customer ADD CONSTRAINT agent_fk FOREIGN KEY (agent_code) REFERENCES agents(agent_code);
SELECT
    a.AGENT_NAME,
    c.CUST_NAME,
    c.WORKING_AREA
FROM customer c
JOIN agents a ON a.AGENT_CODE = c.AGENT_CODE;

SELECT 
	ag. AGENT_NAME,
    ag. AGENT_CODE,
    ag. COMMISSION,
    cu. Cust_NAME,
    cu. CUST_CITY
FROM customer cu
JOIN agents ag ON ag.AGENT_CODE = cu.AGENT_CODE;

-- Zadanie 6 - INNER JOIN
-- PART A 
SELECT * FROM agents;

SELECT 
	cu. CUST_NAME,
    cu. CUST_CODE,
	ag. agent_name as Salesman,
    ag. AGENT_CODE, 
    ag. COMMISSION
FROM customer cu
JOIN agents ag ON ag.AGENT_CODE = cu.AGENT_CODE;

-- PART B
SELECT
    ord. ORD_NUM,
    ord. ORD_DATE,
    ord. ORD_AMOUNT,
    cu. CUST_NAME AS Customer_Name,
    ag. AGENT_NAME AS Salesman,
    ag. COMMISSION
FROM orders ord
JOIN customer cu ON cu.CUST_CODE = ord.CUST_CODE
JOIN agents ag ON ag.AGENT_CODE = ord.AGENT_CODE;

-- Zadanie 6 - LEFT JOIN
-- PART A 
SELECT  
	cu. CUST_CODE,
    ag. AGENT_CODE,
    ag. AGENT_NAME AS Salesman,
    cu. WORKING_AREA
FROM  agents ag
LEFT JOIN customer cu ON cu.AGENT_CODE = ag.AGENT_CODE
ORDER BY cu.CUST_CODE ASC;

-- Zadanie 6 - RIGHT JOIN
-- PART A 
SELECT  
    ag. AGENT_CODE,
    ag. AGENT_NAME AS Salesman,
    ag. WORKING_AREA,
    COUNT(cu.CUST_CODE) AS Total_Customers 
FROM  agents ag
RIGHT JOIN customer cu ON cu.AGENT_CODE = ag.AGENT_CODE
GROUP BY ag.AGENT_CODE, ag.AGENT_NAME, ag.WORKING_AREA
ORDER BY ag.AGENT_CODE ASC;

-- Zadanie 6 - CROSS JOIN
-- PART A 
SELECT 
	 ag. AGENT_CODE,
     ag. AGENT_NAME,
     cu. CUST_CODE,
     cu. CUST_NAME
FROM agents ag 
CROSS JOIN customer cu
ORDER BY AGENT_CODE, CUST_CODE;

-- PART B
SELECT 
	 ag. AGENT_CODE,
     ag. AGENT_NAME,
     ag. WORKING_AREA,
     cu. WORKING_AREA,
     cu. CUST_CODE,
     cu. CUST_NAME
FROM agents ag 
CROSS JOIN customer cu
WHERE cu.WORKING_AREA = ag.WORKING_AREA
ORDER BY AGENT_CODE, CUST_CODE;

-- PART C
SELECT 
	 ag. AGENT_CODE,
     ag. AGENT_NAME,
     ag. WORKING_AREA,
     cu. WORKING_AREA,
     cu. CUST_CODE,
     cu. CUST_NAME,
     cu. GRADE
FROM agents ag 
CROSS JOIN customer cu
WHERE cu.WORKING_AREA != ag.WORKING_AREA
	AND cu.GRADE !=0
ORDER BY AGENT_CODE, CUST_CODE;

-- Zadanie 6 - UNION
-- PART A 
SELECT 
	ag. AGENT_CODE AS ID,
	CASE
			WHEN Agent_NAME = 'Krzysiek' THEN 'SENIOR'
			ELSE 'SALESMAN'
	END AS Rodzaj
FROM agents ag
UNION
SELECT
	cu. CUST_CODE AS ID,
    CASE
			WHEN Cust_Name = 'XXXX' THEN 'NULL'
            ELSE 'Customer'
	END AS Rodzaj
FROM customer cu;

-- Zadanie 6 - UNION
-- PART B
SELECT * FROM total_per_dzien;

ALTER TABLE total_per_dzien
ADD COLUMN `AGENT_CODE` varchar(6) NOT NULL;

ALTER TABLE total_per_dzien
ADD COLUMN  `AGENT_NAME` varchar(40) DEFAULT NULL;
SELECT * FROM total_per_dzien;

ALTER TABLE orders ADD CONSTRAINT agent_fk2 FOREIGN KEY (agent_code) REFERENCES agents(agent_code);

-- UPDATEUJE BRAKUJACE WYNIKI W TABELI ORDERS
UPDATE orders 
SET AGENT_CODE = 'Not assigned'
WHERE AGENT_CODE IS NULL;

-- SPRAWDZAM WYNIKI 
SELECT * FROM orders;

-- SPRAWDZAM KTORZY AGENCI NIE WIDNIEJA W BAZIE 
SELECT DISTINCT o.AGENT_CODE
FROM orders o
LEFT JOIN agents a ON o.AGENT_CODE = a.AGENT_CODE
WHERE a.AGENT_CODE IS NULL;

SELECT * FROM orders
WHERE agent_code = 'A013';

-- DOKONUJE UPDATE'U TABELI AGENTS 
INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A013', 'Nawrocki', 'Karol', '0.12', '077-25814761', '\r');

SELECT * FROM agents;

ALTER TABLE orders ADD CONSTRAINT agent_fk2 FOREIGN KEY (agent_code) REFERENCES agents(agent_code);

-- TABELA UZUPELNIONA FOREIGN KEY DODANY

SELECT 
	o. ORD_DATE,
	o. AGENT_CODE,
    ag. AGENT_NAME,
    COUNT(DISTINCT o.CUST_CODE) AS Number_of_Customers,
    AVG(o.ORD_AMOUNT) AS AVG_ORD_AMOUNT,
    SUM(o.ORD_AMOUNT) AS SUM_ORD_AMOUNT
FROM orders o
JOIN agents ag ON o.AGENT_CODE = ag.AGENT_CODE
GROUP BY o.ORD_DATE, o.AGENT_CODE, ag.AGENT_NAME
ORDER BY o.ORD_DATE, SUM_ORD_AMOUNT DESC;

-- -- Zadanie 6 - WITH
-- PART A

WITH LondonStaff AS (
	SELECT AGENT_CODE, AGENT_NAME, COMMISSION
    FROM AGENTS 
)
SELECT *
FROM LondonStaff
WHERE commission > 0.14;

-- PART B
WITH GradeCount AS (
	SELECT 
		GRADE, COUNT(CUST_CODE) AS Number_of_Customers
    FROM customer
    GROUP BY GRADE
)
SELECT *
    FROM gradecount
    ORDER BY Grade DESC;
    
-- PART C
WITH Total_per_dzien AS (
	SELECT 
		ORD_DATE AS Data_Zamowien, 
        COUNT(CUST_CODE) AS Liczba_Zamowien, 
        ROUND(AVG(ORD_AMOUNT),0) AS Srednia_Zamowien, 
        ROUND(SUM(ORD_AMOUNT),0) AS Suma_Zamowien
	FROM orders
    GROUP BY ORD_DATE
)
SELECT *
FROM total_per_dzien
ORDER BY Data_Zamowien;
		



    

