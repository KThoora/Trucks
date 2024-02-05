create database Trucks;
use Trucks;

CREATE TABLE truck_brands
 ( 
  id int NOT NULL,
  make varchar(100) , 
  PRIMARY KEY (id)
);

INSERT INTO truck_brands
(id, make)
VALUES
(1, 'DAF Trucks'),
(2, 'MAN Truck & Bus'),
(3, 'Volvo Group'),
(4, 'Scania'),
(5, 'Iveco'),
(6, 'Mercedes-Benz'),
(7, 'Renault Trucks');

Select * from truck_brands;

CREATE TABLE truck_model ( 
  id int NOT NULL, 
  model varchar(100) NOT NULL default '', 
  PRIMARY KEY (id)
);

INSERT INTO truck_model
(id, model)
VALUES
(1, 'DAF XF'),
(2, 'DAF CF'),
(3, 'DAF LF'),
(4, 'Volvo FL'),
(5, 'Volvo FH16'),
(6, 'Volvo FH'),
(7, 'Volvo FH'),
(8, 'MAN TGM'),
(9, 'MAN TGX'),
(10,'MAN TGA'),
(11,'MAN TGA'),
(12,'Scania 770s'),
(13,'Scania 770'),
(14,'Scania 770s V8'),
(15,'Actros'),
(16,'Atego'),
(17,'Iveco S-Way'),
(18,'Iveco Stralis'),
(19,'Renault Trucks K'),
(20,'Renault Trucks C');

select * from truck_model;

CREATE TABLE trucks ( 
id int NOT NULL PRIMARY KEY auto_increment, 
truck_brands_id int,
truck_model_id int,
production_year int NOT NULL, 
registration_number varchar (50) not null,
fuel varchar(15) NOT NULL,
mileage int not null,
constraint fk_truck_brands
Foreign key (truck_brands_id) references truck_brands(id), 
constraint fk_truck_model
Foreign key (truck_model_id) references truck_model(id)
);

INSERT into trucks
(id, truck_brands_id, truck_model_id, production_year, registration_number, fuel, mileage)
VALUES
(1,1,1,2018,'DDA1122', 'disel','271875'),
(2,1,1,2018,'DDA1122', 'disel', '270777'),
(3,1,1,2018,'DDA1123', 'disel', '269000'),
(4,1,1,2018,'DDA1124', 'disel', '272700'),
(5,1,1,2018,'DDA1125', 'disel', '267689'),
(6,1,2,2019,'DDA1126', 'disel', '217000'),
(7,1,2,2019,'DDA1127', 'disel', '217009'),
(8,1,3,2019,'DDA1128', 'disel', '209777'),
(9,1,3,2020,'DDA1129', 'disel', '185000'),
(10,1,3,2022,'DDA1130', 'disel', '169000'),
(11,1,3,2023,'DA1131', 'disel', '165888'),
(12,2,8,2020,'GDY1130', 'disel', '164888'),
(13,2,9,2020,'GDY1131', 'disel', '163888'),
(14,2,10,2020,'GDY1132', 'disel', '162888'),
(15,2,11,2020,'GDY1133', 'disel', '161888'),
(16,3,4,2021,'GDM1130', 'disel', '154888'),
(17,3,5,2021,'GDM1131', 'disel', '153088'),
(18,3,6,2021,'GDM1132', 'disel', '157818'),
(19,3,7,2021,'GDN1139', 'disel', '151880'),
(20,4,12,2020,'GDN1138', 'disel', '163088'),
(21,4,13,2020,'GDN1137', 'disel', '162818'),
(22,4,14,2020,'GDN1136', 'disel', '161880'),
(23,5,17,2023,'GDO1135', 'disel', '62818'),
(24,5,18,2023,'GDO1134', 'disel', '61880'),
(25,6,15,2021,'GDP1133', 'disel', '152818'),
(26,6,16,2021,'GDP1132', 'disel', '151880'),
(27,7,19,2021,'GDR1131', 'disel', '152222'),
(28,7,20,2021,'GDR1130', 'disel', '153333');

Select * from trucks;


-- MOT MEANS Ministry of Transport, the government department that introduced the test in 1960 as a means of testing vehicle safety, exhaust emissions, and roadworthiness.
create table MOT (
id int NOT NULL PRIMARY KEY auto_increment,
trucks_id int,
expiry_date date,
mot_date date,
cost_£ float not null,
constraint fk_trucks
Foreign key (trucks_id) references trucks(id)
);

Insert into MOT 
(id, trucks_id, expiry_date, mot_date, cost_£)
VALUES
(1,1,'2023-05-20','2023-05-18', '249.00'),
(2,2,'2023-05-20','2023-05-17', '249.00'),
(3,3,'2023-05-20','2023-05-15', '249.00'),
(4,4,'2023-06-08','2023-06-05', '249.00'),
(5,5,'2023-06-08','2023-06-01', '249.00'),
(6,6,'2023-06-08','2023-06-02', '249.00'),
(7,7,'2023-06-08','2023-06-03', '249.00'),
(8,8,'2023-05-10','2023-05-05', '249.00'),
(9,9,'2023-12-20','2023-12-15', '249.00'),
(10,10,'2023-07-20','2023-07-15', '249.00'),
(11,11,'2023-07-20','2023-07-16', '249.00'),
(12,12,'2023-07-20','2023-07-18', '249.00'),
(13,13,'2023-07-20','2023-07-15', '249.00'),
(14,14,'2023-08-20','2023-08-15', '249.00'),
(15,15,'2023-08-20','2023-08-14', '249.00'),
(16,16,'2023-08-20','2023-08-16', '249.00'),
(17,17,'2023-09-20','2023-09-17', '249.00'),
(18,18,'2023-09-20','2023-09-16', '249.00'),
(19,19,'2023-09-20','2023-09-15', '249.00'),
(20,20,'2023-10-20','2023-10-15', '249.00'),
(21,21,'2023-11-20','2023-11-15', '249.00'),
(22,22,'2023-11-20','2023-11-16', '249.00'),
(23,23,'2023-11-20','2023-11-17', '249.00'),
(24,24,'2023-12-20','2023-12-18', '249.00'),
(25,25,'2023-12-20','2023-12-16', '249.00'),
(26,26,'2024-02-20','2024-02-16', '249.00'),
(27,27,'2024-03-20','2024-03-16', '249.00'),
(28,28,'2024-04-20','2023-04-16', '249.00');

Select * from MOT;

create table INSURANCE(
id int NOT NULL PRIMARY KEY auto_increment,
trucks_id int,
expiry_date date,
insurance_premium float not null,
insurance_company varchar (50) not null,
constraint fk_trucks_trucks
Foreign key (trucks_id) references trucks(id)
);

INSERT into Insurance
(id, trucks_id, expiry_date, insurance_premium, insurance_company)
VALUES
(1,1,'2023-12-31','1249.00', 'AVIVA'),
(2,2,'2023-12-31','1249.00','AVIVA'),
(3,3,'2023-12-31','1249.00','AVIVA'),
(4,4,'2023-12-31','1249.00','AVIVA'),
(5,5,'2023-12-31','1249.00','AVIVA'),
(6,6,'2023-12-31','1249.00','AVIVA'),
(7,7,'2023-12-31','1249.00','AVIVA'),
(8,8,'2023-12-31','1249.00','AVIVA'),
(9,9,'2023-12-31','1249.00','AVIVA'),
(10,10,'2023-12-31','1249.00','AVIVA'),
(11,11,'2023-12-31','1249.00','AVIVA'),
(12,12,'2023-12-31','1549.00','AVIVA'),
(13,13,'2023-12-31','1249.00','AVIVA'),
(14,14,'2023-12-31','1249.00','AVIVA'),
(15,15,'2023-12-31','1249.00','AVIVA'),
(16,16,'2023-12-31','1749.00','AVIVA'),
(17,17,'2023-12-31','1249.00','AVIVA'),
(18,18,'2023-12-31','1049.00','AVIVA'),
(19,19,'2023-12-31','1249.00','AVIVA'),
(20,20,'2023-12-31','1249.00','AVIVA'),
(21,21,'2023-12-31','1249.00','AVIVA'),
(22,22,'2023-12-31','1249.00','AVIVA'),
(23,23,'2023-12-31','1849.00','AVIVA'),
(24,24,'2023-12-31','1249.00','AVIVA'),
(25,25,'2023-12-31','1249.00','AVIVA'),
(26,26,'2023-12-31','2149.00','AVIVA'),
(27,27,'2023-12-31','2149.00','AVIVA'),
(28,28,'2023-12-31','2349.00','AVIVA');

Select * from Insurance;


-- QUERIES
-- Using any type of the joins create a view that combines multiple tables in a logical way

SELECT trucks.id, trucks.registration_number,truck_brands.make as brand,mot.mot_date as 'next mot date',INSURANCE.expiry_date as 'insurance expiry date'
FROM (trucks
INNER JOIN truck_brands on trucks.truck_brands_id=truck_brands.id )
INNER join MOT on trucks.id=mot.id
INNER join insurance on trucks.id=insurance.id;

-- In your database, create a stored function that can be applied to a query in your DB

DELIMITER //

CREATE FUNCTION no_year (year1 int) RETURNS int 
DETERMINISTIC
BEGIN
 DECLARE year2 int;
  Select 2023 into year2;
  RETURN year2 - year1;
END 

//

DELIMITER ;

Select registration_number,no_year(production_year) as 'no_of_years' 
from trucks;

-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis

SELECT
trucks.registration_number,trucks.mileage from trucks
where 
trucks.mileage=(SELECT MAX(mileage) FROM trucks
where truck_brands_id = 1);

-- 	Write a query that sums up all the money paid to insurance_premium
SELECT
sum(insurance_premium)
from insurance;

-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis

select registration_number, MAX(insurance_premium) as 'highest premium' 
from (insurance inner join  trucks on trucks.id=insurance.trucks_id)
group by trucks_id
having max(insurance_premium)>1249;


DROP procedure IF EXISTS `TrucksFrom2020`;

-- In your database, create a stored procedure and demonstrate how it runs

DELIMITER $$
USE `fleet`$$
CREATE PROCEDURE `TrucksFrom2020` ()
BEGIN
select count(registration_number) TrucksFrom2020
from trucks
where production_year = 2020;
END$$

DELIMITER ;

call TrucksFrom2020;