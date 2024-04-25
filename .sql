CREATE DATABASE Art_Gallery;
USE Art_Gallery;

-- Table structure for table `Artist`
CREATE TABLE ARTIST
(
ARTIST_ID VARCHAR (4) NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(30) ,
LAST_NAME CHAR(30),
DOB DATE,
STYLE VARCHAR(100),
PHONE_NUMBER CHAR(15),
ADDRESS_1 VARCHAR (50),
CITY CHAR(20),
STATE CHAR(20),
ZIP NUMERIC(6),
COUNTRY CHAR(20)
);
-- Insert data into `Artist`
INSERT INTO ARTIST VALUES
	('0001','Leonardo','Davinci','1976-08-20','Italian Renaissance','7489300294','19 Elm St','New York','New York','23241','USA'),
	('0002','Vincent','VanGouh','1969-08-17','Abstract Expression','3484545454','45 Jeferrson St','New York','New York','35432','USA'),
	('0003','Michael','Angelo','1971-06-6','Italian Renaissance','2343424362','09 Adams st','Las Vegas',	'Neveda','23452','USA'),
	('0004','Thomas','Washington','1995-08-17','Realism','2353525431','55 Madison Ave','Boston','Massachusetts','22140','USA'),
	('0005','Antonio','Job','1996-09-17','Modern','3743929990','98 Monroe st ','Houston','Texas','34213','USA')
   ;
#selecting table function below   
select *
from ARTIST;

-- Table structure for table 'Artwork' Table
CREATE TABLE ARTWORK
(
ART_ID  VARCHAR(4) NOT NULL PRIMARY KEY , 
YEAR  INT(20), 
TITLE  VARCHAR(200), 
PRICE VARCHAR(20), 
DESCRIPTION  VARCHAR(300), 
TYPE  VARCHAR(20), 
ARTIST_ID VARCHAR (4), 
Rental_ID VARCHAR (4),
SALES_ID VARCHAR(04)
);

-- Insert data into `Artwork`
INSERT INTO ARTWORK VALUES
	('2001','1999','The hanging ladder','100000',	'Work by artist of the French Avant Garde',	'Modern','0010','8008','9001'),
	('2002','2002','Emperor Constantine in Rome','200000','Painting with the depiction of the great roman emperor constantine in Rome','Realism','0011','8192','9002'),
	('2003','2005','Babylon','30000','Paiting of the hanging gardens with colorful twists all over','Modern','0012','8001','9023'),
	('2004','1976','Hippie','1000','Painting of hippies','Modern','0013','8009','9007'),
	('2005','1965','Mona Lisa','10000000','Painting of Leonardo DaVinci','renaissances','0014','8092','9006');
#selecting table function below   
SELECT *
FROM ARTWORK;

-- Table structure for table `Rental`
CREATE TABLE RENTAL
( 
RENTAL_ID VARCHAR (4) NOT NULL PRIMARY KEY,
RENTAL_START_DATE DATE, 
RENTAL_END_DATE DATE, 
ART_ID  VARCHAR(4),
CUSTOMER_ID VARCHAR(4)
);
-- Insert data into `Rental`
INSERT INTO RENTAL VALUES
	('8009','2019-08-19','2020-09-19','2008','5004'),
	('8010','2022-01-01','2022-10-10','2009','5009'),
	('8011','2020-09-09','2020-10-10','2010','5023'),
	('8022','2022-08-08','2022-10-10','2011','5078'),
	('8023','2022-10-10','2022-12-12','2023','5099');
#selecting table function below   
SELECT * 
FROM RENTAL;

-- Table structure for table `Sale`
CREATE TABLE SALE
(
SALES_ID VARCHAR(04) NOT NULL PRIMARY KEY,
SALES_PRICE DECIMAL(12,2),
SALES_DATE DATE,
ART_ID  VARCHAR(4) ,
CUSTOMER_ID VARCHAR (4)

);
-- Insert data into `Sale`
INSERT INTO SALE VALUES
	('9007','100000','2022-09-09','2090','5001'),
	('9009','1050000','2022-12-22','2100','5050'),
	('9010','45604','2022-09-08','2109','5091'),
	('9011','462.50','2022-09-07','2098','5080'),
    ('9012','4622.50','2022-02-07','2092','5090')
;
#selecting table function below   
SELECT *
FROM SALE;

-- Table structure for table `Customer`
CREATE TABLE CUSTOMER
(
CUSTOMER_ID VARCHAR(4) NOT NULL PRIMARY KEY , 
CUSTOMER_First_Name CHAR(100), 
CUSTOMER_Last_Name CHAR(100), 
CUSTOMER_Phone_Number CHAR(15), 
CUSTOMER_Address1 VARCHAR(100), 
CUSTOMER_CITY CHAR(20),
CUSTOMER_STATE CHAR(20),
CUSTOMER_ZipCode NUMERIC(6),
CUSTOMER_COUNTRY CHAR(20)
);
-- Insert data into `Customer`
INSERT INTO CUSTOMER VALUES
	('5100','Luis ','Watson','8595949242','19 Gore st','Boston','Massachusetts','321679','USA'),
	('5101','Jay','Stone','9589580123',	'08 Summer St','Newton','New York','62913','USA'),
	('5102','Emma',	'Hamilton',	'9203959385','09 Winter St','Harrisburg','pennsylvania','92840','USA'),
	('5103','Emily ','Nangle','9082930979','77 Billionaires Row','New York','New York','617809','USA'),
	('5104','Frank ','Abignale','1994923476','19 Alexander St','Orlando','Florida','937672','USA')
;
#selecting table function below   
SELECT *
FROM CUSTOMER;    
