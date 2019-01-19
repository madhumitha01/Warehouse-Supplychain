-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: supplychain
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `CID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `CFNAME` varchar(30) NOT NULL,
  `CLNAME` varchar(30) NOT NULL,
  `EMAILID` varchar(50) NOT NULL,
  `TELEPHONE` bigint(10) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `ZIP` int(6) NOT NULL,
  `EID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`CID`),
  KEY `EID` (`EID`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employee` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=716 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (00700,'TEJAS','VERMA','tejasverma@gmail.com',918022660000,'#43,KALYANPUR','RANCHI','JHARKHAND',560017,00102),(00701,'DHAMINI','GOSWAMI','dhaminigoswami@gmail.com',918022975803,'#R2,KARTHIK NAGAR','SHIMLA','HIMACHAL PRADESH',563901,00101),(00702,'PARTH','TIWARI','parthtiwari@gmail.com',919449844604,'#79,SHAMLESHPUR','PATNA','BIHAR',538702,00103),(00703,'SUHAS','KAMATH','suhaskamath@gmail.com',919874556898,'#10,RAMMURTHY NAGAR','BANGALORE','KARNATAKA',560073,00104),(00704,'AHANA','SHAH','ahanashah@gmail.com',919880087186,'#A1,T NAGAR','CHENNAI','TAMILNADU',560482,00105),(00705,'PAVITHRA','RAJINI','pavithrarajini@gmail.com',919901962556,'#76,ANDHERI EAST','MUMBAI','MAHARASHTRA',430631,00109),(00706,'DEEKSHA','NAIDU','deekshanaidu@gmail.com',918999720860,'#145,AKASH VIHAR','AGRA','UTTARPRADESH',660549,00111),(00707,'KRISHNA','BISWAS','krishnabiswas@gmail.com',919449510484,'#53,RAMESH NAGAR','COCHIN','KERALA',670436,00113),(00708,'AYUSHI','PUROHIT','ayushipurohit@gmail.com',918801563774,'#102,KRISHNAHALLI','MYSORE','KARNATAKA',787146,00103),(00709,'CHETANA','SHARMA','chetanasharma@gmail.com',919559812430,'#567,KALYAN NAGAR','MADURAI','TAMILNADU',783426,00115),(00710,'VINAY','R','vinayr@gmail.com',919552310568,'#3,SHAKLESHPUR','MANGALORE','KARNATAKA',560023,00104),(00711,'KAIRA','SHARMA','kairasharma@gmail.com',919912346992,'#23,ANAND NAGAR','AMRITSAR','PUNJAB',420021,00108),(00712,'GAYATRI','MUKHERJEE','gayatrimukherjee@gmail.com',919225587417,'#13, SUKHAM','THIRUVANTAPURAM','KERALA',321109,00101),(00713,'DEEPAK','NAIDU','deepaknaidu@gmail.com',918662019245,'100 ft, GANDHI NAGAR','COIMBATORE','TAMILNADU',200009,00111),(00714,'DARSHITA','LAL','darshitalal@gmail.com',919880087187,'#48, ARNAH ROAD','TIRUPATI','ANDHRA PRADESH',450012,00109),(00715,'AKRITI','JAIN','akritijain@gmail.com',919901962556,'#20, KALYANI ROAD','MADURAI','TAMILNADU',420345,00110);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CUSTOMER_DETAIL` AFTER INSERT ON `customer` FOR EACH ROW BEGIN INSERT INTO CUSTOMERDETAILS SELECT DISTINCT NEW.CID,CONCAT(NEW.CFNAME,' ',NEW.CLNAME),NEW.TELEPHONE,NOW() FROM CUSTOMER; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customerdetails` (
  `CID` int(5) DEFAULT NULL,
  `CNAME` varchar(60) DEFAULT NULL,
  `CONTACT` bigint(10) DEFAULT NULL,
  `ENTRY_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (713,'VINAY R',919552310568,'2018-11-08 19:46:09'),(714,'VINAY R',919552310568,'2018-11-08 19:47:13'),(711,'KAIRA SHARMA',9912346992,'2018-11-08 21:01:34'),(712,'GAYATRI MUKHERJEE',919225587417,'2018-11-08 21:12:59'),(713,'DEEPAK NAIDU',918662019245,'2018-11-08 21:15:57'),(714,'DARSHITA LAL',9880087187,'2018-11-08 21:17:54'),(715,'AKRITI JAIN',9901962556,'2018-11-08 21:23:40');
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `EID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `EFNAME` varchar(30) NOT NULL,
  `ELNAME` varchar(30) DEFAULT NULL,
  `HIREDATE` date NOT NULL,
  `TELEPHONE` bigint(10) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `ZIP` int(6) NOT NULL,
  `SALARY` int(10) NOT NULL,
  `BONUS` int(10) DEFAULT NULL,
  `TOTAL_SALARY` int(10) GENERATED ALWAYS AS ((`SALARY` + `BONUS`)) VIRTUAL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`EID`, `EFNAME`, `ELNAME`, `HIREDATE`, `TELEPHONE`, `ADDRESS`, `CITY`, `STATE`, `ZIP`, `SALARY`, `BONUS`) VALUES (00101,'AARAV','AGARWAL','2015-01-05',9663496797,'#103, ANDHERI','MUMBAI','MAHARASHTRA',400053,11000,500),(00102,'ADITI','ACHARYA','2015-01-12',9940968081,'#H1, BANDRA WEST','MUMBAI','MAHARASHTRA',400050,11000,200),(00103,'AYUSHI','KHATRI','2015-01-10',8667685340,'#J0, ASHTAPUR','PUNE','MAHARASHTRA',412207,11000,0),(00104,'MOHAN','KUMAR','2016-03-07',9944151180,'#21, BUXAR','AURANGABAD','MAHARASHTRA',824129,16000,500),(00105,'AVANTIKA','PATEL','2017-04-16',9620796327,'#A3, INDRAR','AURANGABAD','MAHARASHTRA',824122,18000,1000),(00106,'EKTA','AHUJA','2017-04-10',8105797313,'#134, CHATORI','NASHIK','MAHARASHTRA',422210,13000,100),(00107,'RAMESH','BHATT','2015-10-30',9902202453,'#76, JUNNAR','AURANGABAD','MAHARASHTRA',410502,13000,700),(00108,'ABHAY','MEHTA','2015-10-05',9901235343,'#G7, DADAR','MUMBAI','MAHARASHTRA',400014,16000,700),(00109,'HARSHITA','RANGANATHAN','2017-11-16',8105029597,'#40, GOREGAON','MUMBAI','MAHARASHTRA',400062,14000,500),(00110,'CHAITRA','PANDEY','2017-11-04',9449367546,'#A8, JUHU','MUMBAI','MAHARASHTRA',400049,14000,300),(00111,'NAVIN','GUPTA','2016-12-12',7040053395,'#12, AMBEGAON','PUNE','MAHARASHTRA',411046,13500,200),(00112,'KALYANI','IYER','2016-04-23',9896037404,'#S2, MALAD','MUMBAI','MAHARASHTRA',400064,13500,150),(00113,'BHANU','CHAWLA','2018-02-20',7597314664,'#122, NOOR BAUG','MUMBAI','MAHARASHTRA',400003,17000,800),(00114,'KARAN','KASHYAP','2018-10-26',8901122193,'#43, CHAMPA','NAGPUR','MAHARASHTRA',441204,15000,200),(00115,'YASH','CHOPRA','2015-10-30',9416468131,'#D3, DWARKA','NASHIK','MAHARASHTRA',422011,13000,1000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice` (
  `INVOICENO` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `CID` int(5) unsigned zerofill NOT NULL,
  `CUSTOMER_NAME` varchar(30) NOT NULL,
  `TOTAL_AMOUNT` decimal(10,3) NOT NULL,
  `ORDER_DATE` date NOT NULL,
  PRIMARY KEY (`INVOICENO`),
  KEY `CID` (`CID`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (00254,00701,'DHAMINI GOSWAMI',15000.000,'2017-01-02'),(00255,00702,'PARTH TIWARI',1400.000,'2018-03-03'),(00256,00703,'SUHAS KAMATH',2550.000,'2016-05-04'),(00257,00704,'AHANA SHAH',3825.000,'2017-09-05'),(00258,00705,'PAVITHRA RAJINI',45500.000,'2017-12-06'),(00259,00706,'DEEKSHA NAIDU',9223.000,'2017-12-07'),(00260,00707,'KRISHNA BISWAS',14300.000,'2018-04-02'),(00261,00711,'KAIRA SHARMA',315000.000,'2017-10-08'),(00262,00714,'DARSHITA LAL',6300.000,'2018-11-02'),(00263,00707,'KRISHNA BISWAS',690000.000,'2018-10-08'),(00264,00708,'AYUSHI PUROHIT',11040.000,'2017-01-02'),(00265,00702,'PARTH TIWARI',3400.000,'2016-02-02'),(00266,00703,'SUHAS KAMATH',11040.000,'2017-01-02');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `OID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `CID` int(5) unsigned zerofill DEFAULT NULL,
  `PID` int(5) unsigned zerofill DEFAULT NULL,
  `QTY` int(11) NOT NULL,
  `TID` varchar(10) DEFAULT NULL,
  `ORDER_DATE` date NOT NULL,
  `REQUIRED_DATE` date NOT NULL,
  `SHIPPED_DATE` date NOT NULL,
  PRIMARY KEY (`OID`),
  KEY `CID` (`CID`),
  KEY `PID` (`PID`),
  KEY `TID` (`TID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `customer` (`cid`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `product` (`pid`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`TID`) REFERENCES `transporter` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (00001,00701,00001,15,'AP104','2017-01-02','2017-01-27','2017-01-15'),(00002,00702,00005,10,'DL105','2018-03-03','2016-03-28','2016-03-16'),(00003,00703,00012,20,'GJ106','2016-05-04','2016-05-29','2016-05-17'),(00004,00704,00018,45,'KA101','2017-09-05','2017-09-30','2017-09-18'),(00005,00705,00021,35,'KE103','2017-12-06','2017-12-31','2017-12-19'),(00006,00706,00028,23,'MH102','2017-12-07','2017-12-30','2017-12-20'),(00007,00707,00002,13,'RA110','2018-04-02','2018-05-05','2018-05-01'),(00008,00711,00008,42,'GJ106','2017-10-08','2017-10-30','2017-10-17'),(00009,00714,00011,18,'PU107','2018-11-02','2018-11-22','2018-11-14'),(00010,00707,00007,30,'KE103','2018-10-08','2018-10-17','2018-11-05'),(00011,00708,00015,23,'AP104','2017-01-02','2017-01-12','2017-01-06'),(00012,00702,00019,34,'GJ106','2016-02-02','2016-02-12','2016-02-08'),(00016,00708,00015,23,'AP104','2017-01-02','2017-01-12','2017-01-06'),(00017,00703,00015,23,'AP104','2017-01-02','2017-01-12','2017-01-06');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UPDATESTOCK` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN UPDATE STOCK SET STOCK.ON_HAND=STOCK.ON_HAND-NEW.QTY WHERE NEW.PID=STOCK.PID; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `SHIPPED` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN INSERT INTO SHIPPED SELECT DISTINCT CONCAT(C.CFNAME,' ',CLNAME),P.CATEGORY,P.PRODUCT_NAME,NEW.QTY,CONCAT(E.EFNAME,' ',E.ELNAME) FROM CUSTOMER C,PRODUCT P,EMPLOYEE E WHERE C.CID=NEW.CID AND P.PID=NEW.PID AND E.EID=C.EID; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `INVOICE` AFTER INSERT ON `orders` FOR EACH ROW BEGIN DELETE FROM INVOICE;INSERT INTO INVOICE(CID,CUSTOMER_NAME,TOTAL_AMOUNT,ORDER_DATE) SELECT DISTINCT O.CID,CONCAT( C.CFNAME,' ', C.CLNAME),(O.QTY*P.SELLING_PRICE),O.ORDER_DATE FROM ORDERS O,CUSTOMER C,PRODUCT P WHERE P.PID=O.PID AND C.CID=O.CID;END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `PID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(30) NOT NULL,
  `PRODUCT_NAME` varchar(30) NOT NULL,
  `DOQ` int(11) NOT NULL,
  `DISCOUNT` decimal(10,2) DEFAULT NULL,
  `UNIT_VENDORPRICE` decimal(10,3) NOT NULL,
  `VENDOR_PRICE` decimal(10,3) GENERATED ALWAYS AS ((`UNIT_VENDORPRICE` * `DOQ`)) VIRTUAL,
  `UNIT_SELLINGPRICE` decimal(10,3) NOT NULL,
  `SELLING_PRICE` decimal(10,3) GENERATED ALWAYS AS (((`UNIT_SELLINGPRICE` * `DOQ`) - `DISCOUNT`)) VIRTUAL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`PID`, `CATEGORY`, `PRODUCT_NAME`, `DOQ`, `DISCOUNT`, `UNIT_VENDORPRICE`, `UNIT_SELLINGPRICE`) VALUES (00001,'BEDROOM','BEDSPREAD',1,0.00,500.000,1000.000),(00002,'BEDROOM','BLANKET',1,100.00,600.000,1200.000),(00003,'BATHROOM','BATH MAT',1,10.00,70.000,150.000),(00004,'CLEANING SUPPLY','KITCHEN SPONGE',2,0.00,15.000,40.000),(00005,'BATHROOM','TOOTH BRUSH',4,0.00,15.000,35.000),(00006,'BEDROOM','HANGER SET',10,10.00,30.100,70.100),(00007,'ELECTRONICS','LED TV',1,2000.00,2000.000,25000.000),(00008,'ELECTRONICS','MICROWAVE OVEN',1,500.00,4000.000,8000.000),(00009,'CLEANING SUPPLY','DOOR MAT',1,0.00,70.000,150.000),(00010,'ELECTRONICS','REFRIGERATOR',1,1000.00,6000.000,11000.000),(00011,'BEDROOM','PILLOWS',1,0.00,200.000,350.000),(00012,'BEDROOM','PILLOW CASES',5,0.00,10.500,25.500),(00013,'KITCHEN UTENSILS','TOASTER',1,100.00,800.000,1200.000),(00014,'KITCHEN UTENSILS','NONSTICK PAN',2,0.00,150.000,300.000),(00015,'BEDROOM','CHAIRS',2,20.00,150.000,250.000),(00016,'BEDROOM','MATTRESS PAD',1,0.00,70.000,150.000),(00017,'BATHROOM','SOAP DISH',1,0.00,10.000,30.000),(00018,'BATHROOM','WASTE BASKET',1,15.00,30.000,100.000),(00019,'BATHROOM','HAND LOTION',1,0.00,50.000,100.000),(00020,'CLEANING SUPPLY','VACUUM CLEANER',1,300.00,2000.000,5000.000),(00021,'CLEANING SUPPLY','IRON BOARD',1,200.00,700.000,1500.000),(00022,'KITCHEN UTENSILS','PIZZA PAN',2,0.00,150.000,300.000),(00023,'KITCHEN UTENSILS','TOASTER',1,100.00,800.000,1200.000),(00024,'ELECTRONICS','WASHING MACHINE',1,1000.00,8000.000,13000.000),(00025,'ELECTRONICS','ALARM CLOCK',1,30.00,250.000,390.000),(00026,'ELECTRONICS','HAND DRILL',1,50.00,200.000,315.000),(00027,'KITCHEN UTENSILS','COFFEE MUGSET',4,0.00,30.250,80.250),(00028,'KITCHEN UTENSILS','DINNERWARE SET',4,0.00,50.250,100.250),(00029,'ELECTRONICS','IRON BOX',1,100.00,700.000,900.000),(00030,'BATHROOM','BATH TOWEL',2,0.00,100.500,250.500);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipped`
--

DROP TABLE IF EXISTS `shipped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipped` (
  `CUSTOMER_NAME` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(30) DEFAULT NULL,
  `PRODUCT_NAME` varchar(30) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `EMPLOYEE_NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipped`
--

LOCK TABLES `shipped` WRITE;
/*!40000 ALTER TABLE `shipped` DISABLE KEYS */;
INSERT INTO `shipped` VALUES ('AYUSHI PUROHIT','CLEANING SUPPLY','KITCHEN SPONGE',6,'AYUSHI KHATRI'),('AYUSHI PUROHIT','CLEANING SUPPLY','KITCHEN SPONGE',6,'AYUSHI KHATRI'),('CHETANA SHARMA','CLEANING SUPPLY','KITCHEN SPONGE',6,'YASH CHOPRA'),('DEEKSHA NAIDU','CLEANING SUPPLY','KITCHEN SPONGE',6,'NAVIN GUPTA'),('KRISHNA BISWAS','BEDROOM','BLANKET',13,'BHANU CHAWLA'),('KAIRA SHARMA','ELECTRONICS','MICROWAVE OVEN',42,'ABHAY MEHTA'),('DARSHITA LAL','BEDROOM','PILLOWS',18,'HARSHITA RANGANATHAN'),('KRISHNA BISWAS','ELECTRONICS','LED TV',30,'BHANU CHAWLA'),('AYUSHI PUROHIT','BEDROOM','CHAIRS',23,'AYUSHI KHATRI'),('PARTH TIWARI','BATHROOM','HAND LOTION',34,'AYUSHI KHATRI'),('AYUSHI PUROHIT','BEDROOM','CHAIRS',23,'AYUSHI KHATRI'),('SUHAS KAMATH','BEDROOM','CHAIRS',23,'MOHAN KUMAR');
/*!40000 ALTER TABLE `shipped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ships`
--

DROP TABLE IF EXISTS `ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ships` (
  `SID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `VID` int(5) unsigned zerofill DEFAULT NULL,
  `PID` int(5) unsigned zerofill DEFAULT NULL,
  `QTY` int(11) NOT NULL,
  `ORDER_DATE` date NOT NULL,
  `REQUIRED_DATE` date NOT NULL,
  `SHIPPED_DATE` date NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `PID` (`PID`),
  KEY `VID` (`VID`),
  CONSTRAINT `ships_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `product` (`pid`),
  CONSTRAINT `ships_ibfk_2` FOREIGN KEY (`VID`) REFERENCES `vendor` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ships`
--

LOCK TABLES `ships` WRITE;
/*!40000 ALTER TABLE `ships` DISABLE KEYS */;
INSERT INTO `ships` VALUES (00001,00001,00002,20,'2017-12-07','2017-12-30','2017-12-20'),(00002,00002,00007,50,'2016-05-05','2016-05-20','2016-05-12'),(00003,00003,00010,30,'2016-07-06','2016-07-30','2016-07-20'),(00004,00004,00015,20,'2015-07-10','2015-07-29','2015-07-21'),(00005,00005,00025,34,'2015-06-14','2015-06-29','2015-06-22'),(00006,00006,00019,24,'2018-11-14','2018-11-22','2018-11-13'),(00007,00007,00003,70,'2017-10-08','2017-10-17','2017-10-09'),(00008,00008,00027,20,'2016-04-02','2016-04-22','2016-04-12'),(00009,00009,00015,35,'2018-11-14','2018-11-22','2018-11-14'),(00010,00001,00020,25,'2016-04-10','2016-04-17','2016-04-14');
/*!40000 ALTER TABLE `ships` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UPDATESTOCK2` BEFORE INSERT ON `ships` FOR EACH ROW BEGIN UPDATE STOCK SET STOCK.ON_HAND=STOCK.ON_HAND+NEW.QTY WHERE NEW.PID=STOCK.PID; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stock` (
  `STOCKID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) unsigned zerofill DEFAULT NULL,
  `ON_HAND` int(11) DEFAULT NULL,
  PRIMARY KEY (`STOCKID`),
  KEY `PID` (`PID`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,00001,1978),(2,00002,513),(3,00003,2076),(4,00004,3190),(5,00005,1500),(6,00006,3200),(7,00007,3220),(8,00008,3143),(9,00009,3215),(10,00010,2080),(11,00011,1953),(12,00012,2365),(13,00013,3995),(14,00014,2040),(15,00015,3531),(16,00016,2020),(17,00017,2025),(18,00018,1985),(19,00019,2020),(20,00020,575),(21,00021,1995),(22,00022,540),(23,00023,2510),(24,00024,515),(25,00025,2054),(26,00026,530),(27,00027,570),(28,00028,517),(29,00029,525),(30,00030,1035);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporter`
--

DROP TABLE IF EXISTS `transporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transporter` (
  `TID` varchar(10) NOT NULL,
  `TRANSPORTER_COMPANY` varchar(30) DEFAULT NULL,
  `CONTACT_NAME` varchar(30) DEFAULT NULL,
  `TELEPHONE` bigint(10) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `ZIP` int(6) NOT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporter`
--

LOCK TABLES `transporter` WRITE;
/*!40000 ALTER TABLE `transporter` DISABLE KEYS */;
INSERT INTO `transporter` VALUES ('AP104','SCI Group','INDIRA BATRA',9912393118,'#21 Kamleshwara','THIRUPATI','ANDHRA PRADESH',503368),('DL105','Echo Global Logistics','VINOD LAL',8872063412,'#76 Ashoka nagar','DELHI','DELHI',700421),('GJ106','Landstar System','ROHIT KUMAR',8672312970,'#546 Arvindam','AHEMDABAD','GUJARAT',401267),('KA101','eBitz Company','TOSHBIR SINGH',9590519707,'#34 HM Halli','BANGALORE','KARNATAKA',562157),('KE103','Panalpina Inc.','KALPANA',9458610285,'#344 Lakshmipuram','THIRUVANTHAPURAM','KERALA',604768),('MH102','Coyote Logistics','BHANU REDDY',9771187156,'#12 Krthik nagar','PUNE','MAHARASHTRA',600041),('PU107','Averitt Express','VISHAL KHANNA',9810359156,'#30 MORGAN JP','JALANDAR','PUNJAB',450023),('RA110','Hub Group','AISHWARYA',8994502399,'#43 Biswaspur','KOTA','RAJASTHAN',300891),('TN108','Global Academy','KANMANI ARUN',8663018361,'#43 PC nagar','COIMBATORE','TAMILNADU',432109),('UP109','Damco International','SHWETA KRISHNA',9876523079,'#981 BOMANAHALLI','ALAHDABAD','UTTARPRADESH',651002);
/*!40000 ALTER TABLE `transporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle` (
  `VNO` varchar(20) NOT NULL,
  `DRIVER_NAME` varchar(30) NOT NULL,
  `VEHICLE_TYPE` varchar(30) NOT NULL,
  `HIREDATE` date NOT NULL,
  `AGE` int(11) NOT NULL,
  `TID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`VNO`),
  KEY `TID` (`TID`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`TID`) REFERENCES `transporter` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('AP-01AQ-8804','MOHAMMED','BUS','2016-02-26',43,'AP104'),('DL-11BB-1774','KAMALESH','CAR','2017-06-30',31,'DL105'),('GJ-17AS-2300','VINAYAK','TRUCK','2017-05-16',46,'GJ106'),('KA-19PO-1849','RAJENDRAN','TRUCK','2016-09-12',45,'KA101'),('KE-76LA-1554','RANGANATHAN','AUTO','2017-07-23',37,'KE103'),('MH-23DF-1675','AMAN','BUS','2017-01-15',27,'MH102'),('MH-43WE-2310','GOPINATH','TRUCK','2018-10-31',33,'MH102'),('PU-12QR-4001','VISHWA','CAR','2016-11-21',30,'PU107'),('RA-47FQ-7878','SIDDHARTH','SCOOTER','2017-09-07',29,'RA110'),('UP-47TQ-3872','RAMKUMAR','AUTO','2018-01-18',48,'UP109');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vendor` (
  `VID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(30) NOT NULL,
  `CONTACT_NAME` varchar(30) NOT NULL,
  `TELEPHONE` bigint(10) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `ZIP` int(6) NOT NULL,
  PRIMARY KEY (`VID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (00001,'INDIAN PAINT HOUSE','MANISH PURI',8022277663,'15 CITYMARKET','BANGALORE','KARNATAKA',560002),(00002,'STONE PLANET INDIA','SHAKTI MAHAJAN',7090606225,'82 HOSUR ROAD','BANGALORE','KARNATAKA',560068),(00003,'HOME SERVE INDIA','DEEPALI THAKUR',4446467700,'144 ROYAPAETAH HIGH ROAD','CHENNAI','TAMILNADU',600004),(00004,'eBitz INDIA','CHINMAYI',7510101090,'IX/411-A, PANIKKATTIL','CHERTHALA','KERALA',688528),(00005,'SAMRA SUPPLIES','ANKIT SINGH',9661934017,'#388 RAMESH ROAD','NASHIK','MAHARASHTRA',760089),(00006,'SYSTEM GLOBALS','VANDITA MANOHAR',8876500125,'#24 KASTURI','COIMBATORE','TAMILNADU',432109),(00007,'KAVIN SUPPLIERS','YATIN MANCHAL',8123778900,'#233 GOPAL NAGAR','AGRA','UTTARPRADESH',432100),(00008,'GOPAL INDENT','AYUSH BHARADWAJ',7823999927,'#17 MARINE DRIVE','MUMBAI','MAHARASHTRA',560012),(00009,'WZ PLANTERS INDIA','SHUBHAM CHAUDHARY',9551123674,'#84 SHANTINAGAR','COCHIN','KERALA',560034),(00010,'SOCITAL VENDORS','RAHUL VERMA',9332189045,'#231 OLD MADRAS ROAD','MYSORE','KARNATAKA',532019);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-18 17:16:43
