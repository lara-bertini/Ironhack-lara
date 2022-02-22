DROP SCHEMA IF EXISTS Lab1SQL CASCADE;
CREATE SCHEMA Lab1SQL;

DROP TABLE ironhack.Lab1SQL.cars;
DROP TABLE ironhack.Lab1SQL.customers;

CREATE TABLE ironhack.Lab1SQL.cars
(
	car_id BIGSERIAL NOT NULL,
	vin VARCHAR(256) NOT NULL,
	manufacturer TEXT NOT NULL,
	model TEXT NOT NULL,
	car_year INT NOT NULL,
	color TEXT NOT NULL
);

CREATE TABLE ironhack.Lab1SQL.customers
(
	cust_id VARCHAR(5) NOT NULL,
	cust_name TEXT NOT NULL,
	cust_phone TEXT NOT NULL,
	cust_email TEXT,
	cust_adress TEXT NOT NULL,
	cust_zipcode INT NOT NULL
);

INSERT INTO ironhack.Lab1SQL.cars
VALUES 
	(DEFAULT, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
	(DEFAULT, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
	(DEFAULT, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
	(DEFAULT, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
	(DEFAULT, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
	(DEFAULT, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

SELECT * FROM ironhack.Lab1SQL.cars;

INSERT INTO ironhack.Lab1SQL.customers
VALUES 
	('10001','Pablo Picasso','+34 636 17 63 82',null, 'Paseo de la Chopera 14 Madrid Spain',28045),
	('20001','Abraham Lincoln','+1 305 907 7086',null,'120 SW 8th St Mimia United States',	33130),
	('30001','Napoléon Bonaparte','+33 1 79 75 40 00',null,'40 Rue du Colisée Paris France',75008);

SELECT * FROM ironhack.Lab1SQL.customers;

SELECT
	vin,
	COUNT (*)
FROM ironhack.Lab1SQL.cars
GROUP BY vin

-- Deletando ID 5 em duplicidade
DELETE FROM ironhack.Lab1SQL.cars WHERE car_id=5;

SELECT * FROM ironhack.Lab1SQL.customers

UPDATE ironhack.Lab1SQL.customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_name = 'Pablo Picasso';
UPDATE ironhack.Lab1SQL.customers SET cust_email = 'lincoln@us.gov' WHERE cust_name = 'Abraham Lincoln';
UPDATE ironhack.Lab1SQL.customers SET cust_email = 'hello@napoleon.me' WHERE cust_name = 'Napoléon Bonaparte';

UPDATE ironhack.Lab1SQL.customers
	SET cust_email =
		(CASE  WHEN cust_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
		WHEN cust_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
		WHEN cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me' END);