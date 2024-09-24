CREATE DATABASE stud_db;
USE stud_db;
 
SET SQL_SAFE_UPDATES =0;

CREATE TABLE personal_details (
national_ID INTEGER(15) , stud_ID VARCHAR(15),stud_name VARCHAR(100),
phone_number VARCHAR(15),age INTEGER, gender VARCHAR(10),
PRIMARY KEY(national_ID) );

INSERT INTO personal_details (national_ID,stud_ID,stud_name,phone_number,age,gender)
VALUES("344534","stud101","Hermione Granger" ,"0712345678",20,"Male"),
("379683","stud102","Draco Malfo" ,"0723456781",21,"Female"),
("347403","stud103","Jayden Wamashati" ,"0734567812",22,"Male"),
("377302","stud104","Ron Weasley" ,"0745678123",19,"Female"),
("336741","stud105","Dolores Umbridge" ,"0756781234",21,"Male"),
("307243","stud106","Hedwig Tonks" ,"0767812345",21,"Female"),
("310932","stud107","Chao Chang" ,"0778123456",22,"Male"),
("343920","stud108","Curfew Yaeitpm" ,"0781234567",20,"Female"),
("345261","stud109","Chaptr Mukenya" ,"0722345678",20,"Male"),
("339152","stud110","Natalie Mpema" ,"0733456781",21,"Female"),
("339746","stud111","Crew Nundi" ,"0744567812",20,"Male"),
("336373","stud112","Bandi Kagunda" ,"0755678123",22,"Female"),
("325252","stud113","Testimony Omolo" ,"0766456781",21,"Male"),
("321746","stud114","Career Mpya" ,"0741367812",20,"Male"),
("390234","stud115","Deamon Anduro" ,"0744421123",22,"Female");

# ------------------------------------------------------------------------------------------

CREATE TABLE school_details(stud_ID VARCHAR(15), current_home_county VARCHAR(20), 
secondary_school_county VARCHAR(20), residence VARCHAR(15), stud_email VARCHAR(50),
PRIMARY KEY (stud_ID)  );

INSERT INTO school_details(stud_ID)
SELECT stud_ID
FROM personal_details;

UPDATE school_details 
SET stud_email = (SELECT CONCAT(REPLACE (stud_name,' ','') ,'@zinduaschool.ac')
					FROM personal_details
					WHERE school_details.stud_ID = personal_details.stud_ID) ;

UPDATE school_details SET current_home_county="Nakuru", secondary_school_county="Nairobi", residence="In school" WHERE stud_ID="stud101";  
UPDATE school_details SET current_home_county="Nairobi", secondary_school_county="Nakuru", residence="In school" WHERE stud_ID="stud102";
UPDATE school_details SET current_home_county="Samburu", secondary_school_county="Nairobi", residence="Out of school" WHERE stud_ID="stud103";
UPDATE school_details SET current_home_county="Kericho", secondary_school_county="Nairobi", residence="In school" WHERE stud_ID="stud104";
UPDATE school_details SET current_home_county="Nyamira", secondary_school_county="Nakuru", residence="In school" WHERE stud_ID="stud105";
UPDATE school_details SET current_home_county="Kisumu", secondary_school_county="Nairobi", residence="Out of school" WHERE stud_ID="stud106";
UPDATE school_details SET current_home_county="Nakuru", secondary_school_county="Nairobi", residence="Out of school" WHERE stud_ID="stud107";
UPDATE school_details SET current_home_county="Kisumu", secondary_school_county="Mombasa", residence="Out of school" WHERE stud_ID="stud108";
UPDATE school_details SET current_home_county="Kericho", secondary_school_county="Mombasa", residence="In school" WHERE stud_ID="stud109";
UPDATE school_details SET current_home_county="Nakuru", secondary_school_county="Mombasa", residence="In school" WHERE stud_ID="stud110";
UPDATE school_details SET current_home_county="Kiambu", secondary_school_county="Turkana", residence="In school" WHERE stud_ID="stud111";
UPDATE school_details SET current_home_county="Nairobi", secondary_school_county="Nakuru", residence="In school" WHERE stud_ID="stud112";
UPDATE school_details SET current_home_county="Samburu", secondary_school_county="Taita Taveta", residence="In school" WHERE stud_ID="stud113";
UPDATE school_details SET current_home_county="Kericho", secondary_school_county="Nairobi", residence="Out of school" WHERE stud_ID="stud114";
UPDATE school_details SET current_home_county="Kiambu", secondary_school_county="Mombasa", residence="In school" WHERE stud_ID="stud115";

# ------------------------------------------------------------------------------------------

CREATE TABLE contact_details (stud_email VARCHAR(50) , phone_number VARCHAR(15), next_of_kin_name VARCHAR(50),next_of_kin_relation VARCHAR(10), next_of_kin_contacts VARCHAR(13) );
INSERT INTO contact_details(phone_number, next_of_kin_name,next_of_kin_relation,next_of_kin_contacts)
VALUES("0712345678","Darius Young","Father","0782382383"),
("0723456781","Lucy Nderitu","Mother","0723238983"),
("0734567812","Jerotich Koech","Mother","0779343126"),
("0745678123","Mwaura Mwangi","Father","0798246347"),
("0756781234","Ian Patrick","Father","0711234453"),
("0767812345","Lebron James","Father","0765439233"),
("0778123456","Magna Carter","Father","0702526243"),
("0781234567","Cindy Wayne","Mother","0747282839"),
("0722345678","Farah Maalim","Mother","0753927482"),
("0733456781","Faiba Mbugua","Father","0713245748"),
("0744567812","John Doe","Father","0725737383"),
("0755678123","Klaus Michealson","Father","0789346276"),
("0766456781","Suluhu Amdany","Mother","0785739259"),
("0741367812","Daisy Auma","Mother","0791344537"),
("0755421123","Getrude Karen","Mother","0765748244");


UPDATE contact_details
SET stud_email = (SELECT school_details.stud_email
FROM school_details, personal_details
WHERE school_details.stud_ID = personal_details.stud_ID 
AND personal_details.phone_number = contact_details.phone_number);

ALTER TABLE contact_details
MODIFY stud_email VARCHAR(50) PRIMARY KEY ;

# ------------------------------------------------------------------------------------------

CREATE TABLE financial_details (stud_ID VARCHAR(15) ,stud_name VARCHAR(50) ,
sem_fee INTEGER(6) , fee_paid INTEGER(6),
PRIMARY KEY(stud_ID) );

INSERT INTO financial_details(stud_ID,stud_name)
SELECT personal_details.stud_ID, personal_details.stud_name
FROM personal_details;

UPDATE financial_details SET sem_fee = 25000, fee_paid=25000 WHERE stud_ID = "stud101";
UPDATE financial_details SET sem_fee= 25000, fee_paid=19000 WHERE stud_ID = "stud102";
UPDATE financial_details SET sem_fee= 21900, fee_paid=20000 WHERE stud_ID = "stud103";
UPDATE financial_details SET sem_fee= 22000, fee_paid=22000 WHERE stud_ID = "stud104";
UPDATE financial_details SET sem_fee= 25000, fee_paid=23400 WHERE stud_ID = "stud105";
UPDATE financial_details SET sem_fee= 25000, fee_paid=27000 WHERE stud_ID = "stud106";
UPDATE financial_details SET sem_fee= 24230, fee_paid=21200 WHERE stud_ID = "stud107";
UPDATE financial_details SET sem_fee= 25000, fee_paid=23500 WHERE stud_ID = "stud108";
UPDATE financial_details SET sem_fee= 25000, fee_paid=24500 WHERE stud_ID = "stud109";
UPDATE financial_details SET sem_fee= 25000, fee_paid=25000 WHERE stud_ID = "stud110";
UPDATE financial_details SET sem_fee= 26000, fee_paid=26000 WHERE stud_ID = "stud111";
UPDATE financial_details SET sem_fee= 25000, fee_paid=20900 WHERE stud_ID = "stud112";
UPDATE financial_details SET sem_fee= 25000, fee_paid=22300 WHERE stud_ID = "stud113";
UPDATE financial_details SET sem_fee= 19000, fee_paid=19000 WHERE stud_ID = "stud114";
UPDATE financial_details SET sem_fee= 20800, fee_paid=20800 WHERE stud_ID = "stud115";
 
 
SET SQL_SAFE_UPDATES =1;

-- a. Using JOIN get the student names, school id, email, phone number (new_stud_details)

CREATE VIEW  new_stud_details AS
SELECT personal_details.stud_id, stud_name, school_details.stud_email, phone_number 
FROM personal_details
INNER JOIN school_details
ON personal_details.stud_id = school_details.stud_id;

-- b. Create a table with all the details from contacts to school and financial details (full_stud_details)
CREATE VIEW full_stud_details AS
SELECT  fd.stud_id, fd.stud_name, cd.stud_email, cd.phone_number, cd.next_of_kin_name, cd.next_of_kin_relation, cd.next_of_kin_contacts, sd.current_home_county, sd.secondary_school_county, sd.residence, fd.sem_fee, fd.fee_paid
FROM financial_details AS fd
INNER JOIN contact_details AS cd
INNER JOIN school_details AS sd
ON fd.stud_id = sd.stud_id;


-- c. Add student names on any empty row of stud_name in financial_details

CREATE VIEW student_name_details AS
SELECT personal_details.stud_name, financial_details.stud_name AS student_name
FROM personal_details
LEFT JOIN financial_details
ON personal_details.stud_id = financial_details.stud_id
UNION
SELECT personal_details.stud_name, financial_details.stud_name AS student_name
FROM personal_details
RIGHT JOIN financial_details
ON personal_details.stud_id = financial_details.stud_id;

-- d. On the financial_details table add a column, fee_cleared, that has True if student has cleared current fee and False if not (financial_details_view)
 
ALTER TABLE financial_details
ADD fee_cleared varchar(20);

UPDATE financial_details SET fee_cleared = sem_fee - fee_paid;

CREATE VIEW financial_details_view AS
SELECT sem_fee, fee_paid,
 case
	when (sem_fee) - (fee_paid) = '0' then 'True'
    else 'False'
end as fee_cleared
from financial_details;

-- e. Get the national ID and name of all students who have cleared their fees (fee_cleared)

CREATE VIEW fee_cleared AS
SELECT pd.national_ID, pd.stud_name, fd.fee_cleared
FROM personal_details AS pd
INNER JOIN financial_details AS fd
ON pd.stud_name = fd.stud_name
WHERE fee_cleared <=0;


-- f. Get the total sum of fees paid so far and the total current deficit (total_fee_balance)
CREATE VIEW total_fee_balance AS
SELECT SUM(fee_paid) AS total_fee_paid, SUM(sem_fee) - SUM(fee_paid) AS fee_balance
FROM financial_details;

-- g. Get the count of students who share a current home county i.e., Say Nairobi, get the number of students who’s current_home_county is Nairobi, and so on for all available counties (home_county_count)
CREATE VIEW home_county_count AS
SELECT current_home_county, COUNT(*) AS no_of_students
FROM school_details
GROUP BY current_home_county;

-- h. Get the count of Male and/or Female students from each secondary_school_county (secondary_school_count). The table should contain a column for male student count and female student count for each county

CREATE VIEW secondary_school_count AS
SELECT secondary_school_county AS county_name, 
		COUNT(CASE WHEN personal_details.gender = 'Female' THEN 1 END) AS female_count,
		COUNT(CASE WHEN personal_details.gender = 'Male' THEN 1 END) AS male_count
FROM school_details
INNER JOIN personal_details 
ON school_details.stud_id = personal_details.stud_id 
GROUP BY secondary_school_county;



-- i. Get the percentage of students who set their next_of_kin as Mother vs those that set it as Father1. (kin_percentage) 

CREATE VIEW kin_percentage AS
SELECT next_of_kin_relation, ROUND(COUNT(DISTINCT next_of_kin_relation) * 100.0 / COUNT(*), 2) AS percentage
FROM contact_details
GROUP BY next_of_kin_relation;


-- 