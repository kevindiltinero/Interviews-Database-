-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: fitzpatrick15204690
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidates` (
  `candidateid` int(11) NOT NULL,
  `candname` varchar(45) DEFAULT NULL,
  `candaddress` varchar(45) DEFAULT NULL,
  `candtelephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`candidateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,'sarah','fitzpatrick','13254657890768'),(2,'paul','lyons','13245487645674'),(3,'ryan','morris','54677432457654'),(4,'bill','durden','087856434567657677'),(5,'jessica','blanc','3645353452423233'),(6,'rachel','jolie','453423446565645567'),(7,'cameron','pitt','56432656346246'),(8,'kevin','murphy','97675674676574'),(9,'philip','fitzgibbons','24325436453234'),(10,'gary','raythorn','754646435343645');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `companyid` int(11) NOT NULL,
  `companyname` varchar(45) DEFAULT NULL,
  `representative` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (100,'apple','carry','fake street','7536474'),(101,'google','billbo','Ballymun','9647653'),(102,'microsoft','gandalf','Detroit','7246457'),(103,'dell','ron','Los Angeles','8457453'),(104,'aspiron','penelope','San Francisco','1374564'),(105,'acer','justin','Germany','0785645'),(106,'lenovo','steven','London','7574643'),(107,'hp','paula','Essex','9568754'),(108,'dropbox','jenn','Dublin','8456453'),(109,'ebay','venessa','Galway','8346345'),(110,'amazon','helena','Berlin','7346342');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haveskills`
--

DROP TABLE IF EXISTS `haveskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `haveskills` (
  `fk_candidateid` int(11) NOT NULL DEFAULT '0',
  `fk_skillid` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`fk_candidateid`,`fk_skillid`),
  KEY `skillid_idx` (`fk_skillid`),
  KEY `candidateid_idx` (`fk_candidateid`),
  CONSTRAINT `fk_candidateid` FOREIGN KEY (`fk_candidateid`) REFERENCES `candidates` (`candidateid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_skillid` FOREIGN KEY (`fk_skillid`) REFERENCES `skills` (`skillid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haveskills`
--

LOCK TABLES `haveskills` WRITE;
/*!40000 ALTER TABLE `haveskills` DISABLE KEYS */;
INSERT INTO `haveskills` VALUES (1,'cod'),(1,'eng'),(1,'lead'),(2,'hyp'),(2,'know'),(2,'speak'),(3,'hyp'),(3,'know'),(3,'speak'),(4,'cod'),(4,'know'),(4,'rep'),(5,'lead'),(5,'pres'),(5,'speak'),(6,'man'),(6,'pres'),(6,'rep'),(7,'cod'),(7,'know'),(7,'rep'),(8,'admin'),(8,'hyp'),(8,'man'),(9,'admin'),(9,'eng'),(9,'sal'),(10,'admin'),(10,'eng'),(10,'sal');
/*!40000 ALTER TABLE `haveskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hiredcandidates`
--

DROP TABLE IF EXISTS `hiredcandidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hiredcandidates` (
  `fk3_candidateid` int(11) NOT NULL,
  `fk3_positionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fk3_candidateid`),
  KEY `fk3_positionid_idx` (`fk3_positionid`),
  CONSTRAINT `fk3_candidateid` FOREIGN KEY (`fk3_candidateid`) REFERENCES `candidates` (`candidateid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk3_positionid` FOREIGN KEY (`fk3_positionid`) REFERENCES `positions` (`positionid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hiredcandidates`
--

LOCK TABLES `hiredcandidates` WRITE;
/*!40000 ALTER TABLE `hiredcandidates` DISABLE KEYS */;
INSERT INTO `hiredcandidates` VALUES (3,80),(4,80),(9,82),(1,83),(2,84),(5,85),(6,86),(7,87),(8,89),(10,90);
/*!40000 ALTER TABLE `hiredcandidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interviews` (
  `interviewid` int(11) NOT NULL,
  `fk2_positionid` int(11) DEFAULT NULL,
  `fk2_candidateid` int(11) DEFAULT NULL,
  `interviewdate` date DEFAULT NULL,
  `outcome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`interviewid`),
  KEY `fk_positionid_idx` (`fk2_positionid`),
  KEY `fk2_candidateid_idx` (`fk2_candidateid`),
  CONSTRAINT `fk2_candidateid` FOREIGN KEY (`fk2_candidateid`) REFERENCES `candidates` (`candidateid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk2_positionid` FOREIGN KEY (`fk2_positionid`) REFERENCES `positions` (`positionid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES (1111,80,1,'2016-01-04','success'),(1112,80,2,'2016-01-04','fail'),(1113,80,3,'2016-01-04','sucecss'),(1114,80,4,'2016-01-04','success'),(1121,80,1,'2016-01-10','fail'),(1122,80,3,'2016-01-10','success'),(1123,80,4,'2016-01-10','success'),(1131,80,3,'2016-01-22','success'),(1132,80,4,'2016-01-22','offer'),(1141,80,3,'2016-01-24','offer'),(1211,81,4,'2016-01-29','success'),(1212,81,5,'2016-01-29','success'),(1213,81,6,'2016-01-29','success'),(1214,81,7,'2016-02-12','fail'),(1221,81,4,'2016-02-12','success'),(1222,81,5,'2016-02-12','fail'),(1223,81,6,'2016-02-12','success'),(1231,81,4,'2016-02-25','fail'),(1232,81,6,'2016-02-25','offer'),(1311,82,8,'2016-03-02','fail'),(1312,82,9,'2016-03-02','success'),(1313,82,10,'2016-03-02','success'),(1321,82,9,'2016-03-02','success'),(1322,82,10,'2016-03-02','fail'),(1331,82,9,'2016-03-02','offer'),(1411,90,10,'2016-03-02','offer'),(1511,89,8,'2016-03-14','offer'),(1611,87,7,'2016-03-14','offer'),(1711,86,6,'2016-03-14','offer'),(1811,85,5,'2016-03-14','offer'),(1911,83,1,'2016-03-14','offer'),(2011,84,2,'2016-03-14','offer');
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `positionid` int(11) NOT NULL DEFAULT '0',
  `fkcompanynid` int(11) DEFAULT NULL,
  `positionname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`positionid`),
  KEY `fk_companyname_idx` (`fkcompanynid`),
  KEY `fk2_companyname_idx` (`fkcompanynid`),
  CONSTRAINT `fkcompanyid` FOREIGN KEY (`fkcompanynid`) REFERENCES `companies` (`companyid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (80,100,'programmer'),(81,101,'manager'),(82,102,'sales'),(83,103,'Programmer'),(84,104,'Manager'),(85,105,'Sales'),(86,106,'Programmer'),(87,107,'Manager'),(88,108,'Sales'),(89,109,'Programming'),(90,110,'Manager');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requiredskills`
--

DROP TABLE IF EXISTS `requiredskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requiredskills` (
  `fkpositionid` int(11) NOT NULL,
  `fkskillid` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`fkpositionid`,`fkskillid`),
  KEY `skillid_idx` (`fkskillid`),
  KEY `positionid_idx` (`fkpositionid`),
  CONSTRAINT `fkpositionid` FOREIGN KEY (`fkpositionid`) REFERENCES `positions` (`positionid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkskillid` FOREIGN KEY (`fkskillid`) REFERENCES `skills` (`skillid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requiredskills`
--

LOCK TABLES `requiredskills` WRITE;
/*!40000 ALTER TABLE `requiredskills` DISABLE KEYS */;
INSERT INTO `requiredskills` VALUES (80,'cod'),(80,'know'),(80,'rep'),(81,'admin'),(81,'lead'),(81,'pres'),(81,'speak'),(82,'hyp'),(82,'sal'),(83,'eng'),(83,'man');
/*!40000 ALTER TABLE `requiredskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `skillid` varchar(45) NOT NULL DEFAULT '0',
  `skillname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('admin','administration'),('cod','coding'),('eng','english fluency'),('hyp','hypnosis'),('know','IT knowledge'),('lead','leadership'),('man','manipulation'),('pres','presentation'),('rep','IT repair'),('sal','sales'),('speak','speaking');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 14:45:58
