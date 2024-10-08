CREATE DATABASE NgoProject;
USE NgoProject;

SET SQL_SAFE_UPDATES =0;

CREATE TABLE beneficiary_partner_data (
partner_id INTEGER NOT NULL PRIMARY KEY,
partner VARCHAR(30) NOT NULL,
village VARCHAR(30) NOT NULL,
beneficiaries INTEGER,
beneficiary_type VARCHAR(30)
);


CREATE TABLE village_locations (
    village_id INTEGER NOT NULL PRIMARY KEY,
    village VARCHAR(30) NOT NULL,
    latitude VARCHAR(30),
    longitude VARCHAR(30),
    total_population INTEGER
);

CREATE TABLE jurisdiction_hierarchy (
	jurisdiction_id int PRIMARY KEY NOT NULL,
	jurisdiction_name VARCHAR(100) NOT NULL,
	jurisdiction_type VARCHAR(100) NOT NULL,
	district_region_name VARCHAR(100) 
    );



SELECT * FROM jurisdiction_hierarchy;


INSERT INTO jurisdiction_hierarchy VALUES(1,'Middle Shabelle','Region',NULL);
INSERT INTO jurisdiction_hierarchy VALUES(2,'Hiraan','Region',NULL);
INSERT INTO jurisdiction_hierarchy VALUES(3,'Balcad','District','Middle Shabelle');
INSERT INTO jurisdiction_hierarchy VALUES(4,'Jowhar','District','Middle Shabelle');
INSERT INTO jurisdiction_hierarchy VALUES(5,'Beledweyn','District','Hiraan');
INSERT INTO jurisdiction_hierarchy VALUES(6,'Dharkenley','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(7,'Bulo-Kahin','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(8,'Hilo Kelyo','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(9,'Xubow','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(10,'Xiintooy','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(11,'Dhagax Jebis','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(12,'Filtare','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(13,'Howl-Wadaag','Village','Beledweyn');
INSERT INTO jurisdiction_hierarchy VALUES(14,'Balcad','Village','Balcad');
INSERT INTO jurisdiction_hierarchy VALUES(15,'Mareeray','Village','Balcad');
INSERT INTO jurisdiction_hierarchy VALUES(16,'Kulmis','Village','Balcad');
INSERT INTO jurisdiction_hierarchy VALUES(17,'Sabuun','Village','Jowhar');
INSERT INTO jurisdiction_hierarchy VALUES(18,'Bayaxaw','Village','Jowhar');





INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(1,'Dharkenley','4°47''35.40"','45°12''28.80"',12800);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(2,'Bulo-Kahin','4°47''57.00"','45°11''5.70"',9485);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(3,'Hilo Kelyo','4°47''57.00"','45°12''58.60"',5212);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(4,'Xubow','4°46''46.77"','45°12''7.57"',2558);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(5,'Xiintooy','4°44''14.40"','45°13''5.00"',3850);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(6,'Dhagax Jebis','4°44''27.86"','45°12''42.03"',3563);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(7,'Filtare','4°44''20.43"','45°12''27.89"',8000);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(8,'Howl-Wadaag','4°43''50.00"','45°11''58.20"',7525);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(9,'Balcad','2°21.624''','45°23.928''',1500);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(10,'Mareeray','2°23.504''','45°25.200''',7500);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(11,'Kulmis','2°36.761''','45°30.642''',6058);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(12,'Sabuun','2°53.020''','45°32.356''',5483);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(13,'Bayaxaw','2°44.768''','45°29.727''',3000);
INSERT INTO village_locations(village_id, village,latitude,longitude, total_population) VALUES(14,'Bayaxawo','2°44.768''','45°29.926''',7560);


INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(1,'IRC','Balcad','1450','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(2,'NRC','Balcad','50','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(3,'SCI','Balcad','1123','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(4,'IMC','Balcad','1245','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(5,'SCI','Mareeray','5200','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(6,'IMC','Mareeray','70','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(7,'IRC','Mareeray','2100','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(8,'CESVI','Mareeray','1800','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(9,'SCI','Kulmis','1340','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(10,'IMC','Kulmis','55','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(11,'SCI','Kulmis','4500','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(12,'IMC','Kulmis','1670','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(13,'IMC','Sabuun','1340','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(14,'IRC','Sabuun','66','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(15,'CESVI','Sabuun','4090','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(16,'SCI','Sabuun','2930','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(17,'IMC','Bayaxaw','2800','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(18,'IRC','Bayaxaw','2100','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(19,'CESVI','Bayaxaw','45','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(20,'SCI','Bayaxaw','1700','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(21,'SCI','Bayaxawo','5900','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(22,'IMC','Bayaxawo','40','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(23,'IRC','Bayaxawo','1500','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(24,'CESVI','Bayaxawo','1260','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(25,'CESVI','Dharkenley','7880','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(26,'IRC','Dharkenley','34','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(27,'SCI','Bulo-Kahin','4300','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(28,'IMC','Bulo-Kahin','4212','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(29,'IRC','Bulo-Kahin','3200','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(30,'IRC','Hilo Kelyo','5212','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(31,'SCI','Hilo Kelyo','25','Households');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(32,'CESVI','Xubow','2157','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(33,'IMC','Xiintooy','1667','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(34,'IRC','Xiintooy','2667','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(35,'CESVI','Dhagax Jebis','2856','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(36,'CESVI','Filtare','7519','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(37,'CESVI','Howl-Wadaag','6870','Individuals');
INSERT INTO beneficiary_partner_data(partner_id,partner,village,beneficiaries,beneficiary_type) VALUES(38,'IMC','Howl-Wadaag','32','Households');

SELECT * FROM beneficiary_partner_data;

SELECT * FROM jurisdiction_hierarchy;

#show district summary 
#i) District Name

CREATE VIEW district_name AS
SELECT jurisdiction_name  AS district_name FROM jurisdiction_hierarchy WHERE jurisdiction_type = 'District';

#ii) Region Name
CREATE VIEW region_name AS
SELECT jurisdiction_name AS region_name FROM jurisdiction_hierarchy WHERE jurisdiction_type = 'Region';

-- iii) No of individual beneficiaries
CREATE VIEW ind_beneficiaries AS
SELECT SUM(CASE 
             WHEN beneficiary_type = 'Individuals' THEN beneficiaries
             WHEN beneficiary_type = 'Households' THEN beneficiaries * 6
           END) AS no_of_beneficiaries
FROM beneficiary_partner_data;


-- iv) No. of Individual Beneficiaries / Total District Population
CREATE VIEW ind_beneficiaries_div_total_pop AS
SELECT (SUM(CASE 
             WHEN beneficiary_type = 'Individuals' THEN beneficiaries
             WHEN beneficiary_type = 'Households' THEN beneficiaries * 6
           END)) / (SUM(total_population)) AS ind_div_total_pop
FROM beneficiary_partner_data 
INNER JOIN village_locations
;


-- b) partner summary
-- i) Partner Name

CREATE VIEW partner_name AS
SELECT DISTINCT partner FROM beneficiary_partner_data;


# ii)No. of Villages reached by partner 
CREATE VIEW villages_reached_by_partnerpartner_village  AS
SELECT DISTINCT partner, COUNT(DISTINCT village) AS villages_reached
FROM beneficiary_partner_data
GROUP BY partner; 


# iii) No. of Districts reached by partner
CREATE VIEW district_reached_by_partner AS
SELECT DISTINCT partner, COUNT(DISTINCT district_name) AS no_of_districts
FROM beneficiary_partner_data
GROUP BY partner;



ALTER TABLE beneficiary_partner_data 
	ADD district_name varchar(20) 
    ;
    
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '1';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '2';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '3';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '4';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '5';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '6';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '7';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '8';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '9';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '10';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '11';
UPDATE beneficiary_partner_data SET district_name = 'Balcad'  WHERE partner_id = '12';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '13';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '14';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '15';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '16';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '17';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '18';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '19';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '20';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '21';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '22';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '23';
UPDATE beneficiary_partner_data SET district_name = 'Jowhar'  WHERE partner_id = '24';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '25';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '26';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '27';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '28';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '29';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '30';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '31';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '32';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '33';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '34';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '35';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '36';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '37';
UPDATE beneficiary_partner_data SET district_name = 'Beledweyn'  WHERE partner_id = '38';
