-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `clientId` varchar(255) NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `address` longtext,
  `numberOfUnit` int(11) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES ('Joina','Joina','Joina','Harare',1),('ZB','ZB Bank','Rotten Row','Rotten Row Harare',3);
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Data`
--

DROP TABLE IF EXISTS `Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Data` (
  `dataId` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`dataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Data`
--

LOCK TABLES `Data` WRITE;
/*!40000 ALTER TABLE `Data` DISABLE KEYS */;
INSERT INTO `Data` VALUES ('Completed',1),('Pending',2);
/*!40000 ALTER TABLE `Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Service`
--

DROP TABLE IF EXISTS `Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Service` (
  `serviceId` varchar(255) NOT NULL,
  `technicianId` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `serviceDate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `clientCornfirmation` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`serviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service`
--

LOCK TABLES `Service` WRITE;
/*!40000 ALTER TABLE `Service` DISABLE KEYS */;
INSERT INTO `Service` VALUES ('S527262838142','Taku','ZB','2018-05-25 17:40:38','Pending','Pending','Passenger Stuck in elevator'),('S527263343645','Taku','ZB','2018-05-25 17:49:03','Completed','Completed','Stuck in  Elevator'),('S527263870155','TakuTech','Joina','2018-05-25 17:57:50','Pending','Pending','Test');
/*!40000 ALTER TABLE `Service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sms`
--

DROP TABLE IF EXISTS `Sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sms` (
  `smsId` varchar(255) NOT NULL,
  `message` longtext,
  `toPhoneNumber` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`smsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sms`
--

LOCK TABLES `Sms` WRITE;
/*!40000 ALTER TABLE `Sms` DISABLE KEYS */;
INSERT INTO `Sms` VALUES ('S527263343647','ServiceID:S527263343645\nTechnicianId:Taku\nCompanyName:ZB Bank\nAddress:Rotten Row Harare\nServiceDate2018-05-25\nNeeds Your Services','0771802352','Sent','2018-05-25 17:49:03'),('S527263870157','ServiceID:S527263870155\nTechnicianId:TakuTech\nCompanyName:Joina\nAddress:Harare\nServiceDate:2018-05-25\nNeeds Your Services','0771802352','Sent','2018-05-25 17:57:50');
/*!40000 ALTER TABLE `Sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Technician`
--

DROP TABLE IF EXISTS `Technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Technician` (
  `technicianId` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`technicianId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Technician`
--

LOCK TABLES `Technician` WRITE;
/*!40000 ALTER TABLE `Technician` DISABLE KEYS */;
INSERT INTO `Technician` VALUES ('Taku','Takudzwa','Mawon','0771802352','Active'),('TakuTech','Taku','Misona','0771802352','Active');
/*!40000 ALTER TABLE `Technician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userId` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('Joina','Joina','Joina','Client','938b0febc944c1a551e004444af26641ca85f5d8','Active'),('root','root','root','admin','8936e5631f87e8b699147f40f1fe5fdd2258099f','Active'),('Taku','Takudzwa','Mawon','Technician','fe367ec0bc01a1b649c24a324a75aa2c8f7b1d36','Active'),('TakuTech','Taku','Misona','Technician','32a1e373b2830102f48206c2fd580d7ba747f8ab','Active'),('ZB','ZB Bank','ZB Bank','Client','b49ceed755a1b18862b01b257d34641736944e39','Active');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-25 17:59:14
