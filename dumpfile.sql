-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hosp_development
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `ambulance_count` int(11) DEFAULT NULL,
  `hospital_type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Ganesh Das Hospital','cash_rulz','pass',25.5836,91.8841,0,1,'2015-03-21 20:47:53','2015-03-21 20:47:53'),(2,'Shillong Civil Hospital','cash_rulz','pass',25.5677,91.8811,0,1,'2015-03-21 20:47:53','2015-03-21 20:47:53'),(3,'Laitlyngkot PHC','cash_rulz','pass',25.4456,91.8404,0,3,'2015-03-21 20:47:56','2015-03-21 20:47:56'),(4,'Mawlong PHC','cash_rulz','pass',25.2154,91.6942,0,3,'2015-03-21 20:47:58','2015-03-21 20:47:58'),(5,'Sohlap SC','tinyphoton','pass',1.3139,103.932,0,2,'2015-03-21 20:47:59','2015-03-22 00:23:49'),(6,'Rumnong SC','khatter96','pass',32.2305,-80.9805,0,2,'2015-03-21 20:47:59','2015-03-22 00:24:11'),(7,'Laittyra SC','cash_rulz','pass',32.3798,-80.6849,0,2,'2015-03-21 20:47:59','2015-03-21 20:47:59'),(8,'Sawsymper SC','aayush_ranaut','pass',33.9206,-80.3171,0,2,'2015-03-21 20:48:00','2015-03-22 00:24:32'),(9,'Diengpasoh PHC','cash_rulz','pass',25.5982,92.0388,0,3,'2015-03-21 20:48:01','2015-03-21 20:48:01'),(10,'Pynursla CHC','cash_rulz','pass',25.3101,91.9026,0,5,'2015-03-21 20:48:03','2015-03-21 20:48:03'),(11,'Pongtung PHC','cash_rulz','pass',25.2509,91.9509,0,3,'2015-03-21 20:48:03','2015-03-21 20:48:03'),(12,'Lyngkyrdem SC','cash_rulz','pass',34.909,-82.9848,0,2,'2015-03-21 20:48:03','2015-03-21 20:48:03'),(13,'Thynroit SC','cash_rulz','pass',34.0183,-81.0011,0,2,'2015-03-21 20:48:05','2015-03-21 20:48:05'),(14,'Nongstoin Civil Hospital','cash_rulz','pass',25.5565,91.2291,0,1,'2015-03-21 20:48:05','2015-03-21 20:48:05'),(15,'Kyrshai SC','cash_rulz','pass',34.5518,-80.5837,0,2,'2015-03-21 20:48:07','2015-03-21 20:48:07'),(16,'Umpdem SC','cash_rulz','pass',32.7955,-79.9365,0,2,'2015-03-21 20:48:09','2015-03-21 20:48:09'),(17,'Pariong PHC','cash_rulz','pass',39.8771,-75.2467,0,3,'2015-03-21 20:48:09','2015-03-21 20:48:09'),(18,'Mawthawpdah PHC','cash_rulz','pass',25.4156,91.417,0,3,'2015-03-21 20:48:13','2015-03-21 20:48:13'),(19,'Jowai Civil Hospital','cash_rulz','pass',25.4383,92.1993,0,1,'2015-03-21 20:48:15','2015-03-21 20:48:15'),(20,'Saitsama SC','cash_rulz','pass',35.8139,139.699,0,2,'2015-03-21 20:48:17','2015-03-21 20:48:17'),(21,'Laskein CHC','cash_rulz','pass',25.516,92.4115,0,5,'2015-03-21 20:48:18','2015-03-21 20:48:18'),(22,'Iooksi PHC','cash_rulz','pass',25.5318,92.543,0,3,'2015-03-21 20:48:19','2015-03-21 20:48:19'),(23,'Barato PHC','cash_rulz','pass',17.8169,80.1682,0,3,'2015-03-21 20:48:19','2015-03-21 20:48:19'),(24,'Mukroh SC','cash_rulz','pass',17.4232,78.4547,0,2,'2015-03-21 20:48:21','2015-03-21 20:48:21'),(25,'Psiar SC','cash_rulz','pass',35.6759,139.755,0,2,'2015-03-21 20:48:21','2015-03-21 20:48:21'),(26,'Nongtalang CHC','cash_rulz','pass',25.2097,92.0667,0,5,'2015-03-21 20:48:21','2015-03-21 20:48:21'),(27,'Khliehriat CHC','cash_rulz','pass',25.3567,92.3641,0,5,'2015-03-21 20:48:23','2015-03-21 20:48:23'),(28,'Bataw PHC','cash_rulz','pass',25.2311,92.2463,0,3,'2015-03-21 20:48:23','2015-03-21 20:48:23'),(29,'Umkiang PHC','cash_rulz','pass',25.0587,92.3826,0,3,'2015-03-21 20:48:23','2015-03-21 20:48:23'),(30,'Lama SC','cash_rulz','pass',34.7419,-82.3404,0,2,'2015-03-21 20:48:25','2015-03-21 20:48:25'),(31,'Sutnga CHC','cash_rulz','pass',25.3717,92.4354,0,5,'2015-03-21 20:48:25','2015-03-21 20:48:25'),(32,'Mullian SC','cash_rulz','pass',34.2057,-79.2545,0,2,'2015-03-21 20:48:28','2015-03-21 20:48:28'),(33,'Nongpoh Civil Hospital','cash_rulz','pass',25.9095,91.8769,0,1,'2015-03-21 20:48:28','2015-03-21 20:48:28'),(34,'Umden PHC','cash_rulz','pass',25.9622,91.9932,0,3,'2015-03-21 20:48:28','2015-03-21 20:48:28'),(35,'Byrnihat PHC','cash_rulz','pass',26.0373,91.867,0,3,'2015-03-21 20:48:29','2015-03-21 20:48:29'),(36,'Narang SC','cash_rulz','pass',12.9911,77.5757,0,2,'2015-03-21 20:48:29','2015-03-21 20:48:29'),(37,'Patharkhmah CHC','cash_rulz','pass',25.8758,91.6105,0,5,'2015-03-21 20:48:32','2015-03-21 20:48:32'),(38,'Songsak PHC','cash_rulz','pass',25.6444,90.6077,0,3,'2015-03-21 20:48:34','2015-03-21 20:48:34'),(39,'Dagal PHC','cash_rulz','pass',25.7711,90.6285,0,3,'2015-03-21 20:48:35','2015-03-21 20:48:35'),(40,'Rongrong PHC','cash_rulz','pass',25.772,90.5349,0,3,'2015-03-21 20:48:35','2015-03-21 20:48:35'),(41,'Raja A.pal SC','cash_rulz','pass',17.4788,78.4862,0,2,'2015-03-21 20:48:37','2015-03-21 20:48:37'),(42,'Williamnagar Civil Hospital','cash_rulz','pass',25.5144,90.6049,0,1,'2015-03-21 20:48:37','2015-03-21 20:48:37'),(43,'Tura Civil Hospital','cash_rulz','pass',25.5147,90.2037,0,1,'2015-03-21 20:48:43','2015-03-21 20:48:43'),(44,'Tosekgre SC','cash_rulz','pass',32.9187,-80.0954,0,2,'2015-03-21 20:48:44','2015-03-21 20:48:44'),(45,'Dobasipara UHC','cash_rulz','pass',25.5043,90.2069,0,4,'2015-03-21 20:48:45','2015-03-21 20:48:45'),(46,'Raksamgre St. Dispensary','cash_rulz','pass',25.539,90.2287,0,6,'2015-03-21 20:48:48','2015-03-21 20:48:48'),(47,'Darengre PHC','cash_rulz','pass',25.4843,90.2238,0,3,'2015-03-21 20:48:48','2015-03-21 20:48:48'),(48,'Phulbari CHC','cash_rulz','pass',25.8883,90.0369,0,5,'2015-03-21 20:48:51','2015-03-21 20:48:51'),(49,'Bhaitbari PHC','cash_rulz','pass',25.794,89.9773,0,3,'2015-03-21 20:48:51','2015-03-21 20:48:51'),(50,'Ampati CHC','cash_rulz','pass',25.4707,89.9345,0,5,'2015-03-21 20:48:57','2015-03-21 20:48:57'),(51,'Baghmara Civil Hospital','cash_rulz','pass',26.615,91.1765,0,1,'2015-03-21 20:48:59','2015-03-21 20:48:59'),(52,'Mahadeo St. Dispensary','cash_rulz','pass',19.092,72.8934,0,2,'2015-03-21 20:49:00','2015-03-21 20:49:00'),(53,'Chokpot CHC','cash_rulz','pass',25.3187,90.4408,0,5,'2015-03-21 20:49:01','2015-03-21 20:49:01'),(143,'Anand Hospital','cash_rulz','pass',22.336,73.1542,0,6,'2015-03-22 05:19:56','2015-03-22 05:19:56'),(144,'Anand Diagnostic Clinic','cash_rulz','pass',19.2172,73.0876,0,1,'2015-03-22 05:19:56','2015-03-22 05:19:56'),(145,'Ayurveda Kendra','cash_rulz','pass',12.9165,77.5615,0,1,'2015-03-22 05:19:56','2015-03-22 05:19:56'),(146,'Babu Nature Care Hospital & Yogeshram','cash_rulz','pass',28.6984,77.2556,0,1,'2015-03-22 05:19:56','2015-03-22 05:19:56'),(147,'Batra Hospital','cash_rulz','pass',28.6472,77.1258,0,1,'2015-03-22 05:19:57','2015-03-22 05:19:57'),(148,'Bhagat Hospital','cash_rulz','pass',28.6086,77.106,0,1,'2015-03-22 05:19:57','2015-03-22 05:19:57'),(149,'Brahamshakti Hospital & Research Centre','cash_rulz','pass',28.6024,77.3142,0,1,'2015-03-22 05:19:57','2015-03-22 05:19:57'),(150,'Deepak Memorial Hospital & Research ','cash_rulz','pass',28.6453,77.3009,0,1,'2015-03-22 05:19:57','2015-03-22 05:19:57'),(151,'Delhi Nursing Home','cash_rulz','pass',29.5117,75.453,0,1,'2015-03-22 05:19:58','2015-03-22 05:19:58'),(152,'Dharamshila Hospital & research Centre','cash_rulz','pass',28.6024,77.3142,0,1,'2015-03-22 05:19:58','2015-03-22 05:19:58'),(153,'Delhi Heart & Lung  Institute','cash_rulz','pass',28.6139,77.209,0,1,'2015-03-22 05:19:58','2015-03-22 05:19:58'),(154,'Escorts Heart Institute','cash_rulz','pass',22.819,89.5479,0,1,'2015-03-22 05:19:58','2015-03-22 05:19:58'),(155,'Gujarmal Modi Hospital','cash_rulz','pass',28.5282,77.2151,0,1,'2015-03-22 05:19:59','2015-03-22 05:19:59'),(156,'Hamdard Dawakhana','cash_rulz','pass',33.5993,73.0618,0,1,'2015-03-22 05:19:59','2015-03-22 05:19:59'),(157,'Holy Family Hospital','cash_rulz','pass',45.1178,-92.5542,0,1,'2015-03-22 05:19:59','2015-03-22 05:19:59'),(158,'Mamta Hospital','cash_rulz','pass',19.2078,73.1035,0,1,'2015-03-22 05:20:00','2015-03-22 05:20:00'),(159,'Noida Medicare Centre Ltd.','cash_rulz','pass',28.5355,77.391,0,1,'2015-03-22 05:20:00','2015-03-22 05:20:00'),(160,'Metro Heart Institute','cash_rulz','pass',28.4066,77.3179,0,1,'2015-03-22 05:20:01','2015-03-22 05:20:01'),(161,'Narinder Mohan  Hospital','cash_rulz','pass',28.6662,77.4384,0,1,'2015-03-22 05:20:01','2015-03-22 05:20:01'),(162,'Pushpawati Singhania Research Intitute','cash_rulz','pass',28.5332,77.2252,0,1,'2015-03-22 05:20:01','2015-03-22 05:20:01'),(163,'Rajiv Gandhi Cancer Institute & Research Centre','cash_rulz','pass',28.7144,77.1152,0,1,'2015-03-22 05:20:01','2015-03-22 05:20:01'),(164,'RG Stone Urological Research Intitute','cash_rulz','pass',15.4956,73.8252,0,1,'2015-03-22 05:20:02','2015-03-22 05:20:02'),(165,'Santhigram Kerala Ayurvedic Hospital','cash_rulz','pass',9.81295,77.0838,0,1,'2015-03-22 05:20:02','2015-03-22 05:20:02'),(166,'Servants of People Society','cash_rulz','pass',28.5629,77.2349,0,1,'2015-03-22 05:20:02','2015-03-22 05:20:02'),(167,'Sir Ganga Ram Hospital','cash_rulz','pass',28.6384,77.1898,0,1,'2015-03-22 05:20:02','2015-03-22 05:20:02'),(168,'St Stephans Hospital','cash_rulz','pass',0.398594,32.5742,0,1,'2015-03-22 05:20:02','2015-03-22 05:20:02'),(169,'Sukhda Hospital','cash_rulz','pass',28.547,77.2444,0,1,'2015-03-22 05:20:03','2015-03-22 05:20:03'),(170,'The City Clinic','cash_rulz','pass',51.5245,-0.0746635,0,1,'2015-03-22 05:20:03','2015-03-22 05:20:03'),(171,'Indian Spinal Injuries Centre','cash_rulz','pass',28.5328,77.1419,0,1,'2015-03-22 05:20:03','2015-03-22 05:20:03'),(172,'Jalpur Golden Hospital','cash_rulz','pass',28.6978,77.1099,0,1,'2015-03-22 05:20:03','2015-03-22 05:20:03'),(173,'Kalyani Hospital','cash_rulz','pass',18.5611,73.9324,0,1,'2015-03-22 05:20:04','2015-03-22 05:20:04'),(174,'Kolmet Hospital','cash_rulz','pass',28.6435,77.1875,0,1,'2015-03-22 05:20:04','2015-03-22 05:20:04'),(175,'Kottakkal Arya Vaidyasala','cash_rulz','pass',10.9963,75.9918,0,1,'2015-03-22 05:20:05','2015-03-22 05:20:05'),(176,'Mahajan Nursing Home','cash_rulz','pass',32.268,75.6509,0,1,'2015-03-22 05:20:05','2015-03-22 05:20:05'),(177,'Maharaja Agarsain Hospital','cash_rulz','pass',28.6747,77.1339,0,1,'2015-03-22 05:20:05','2015-03-22 05:20:05'),(178,'Mata Chanan Devi Hospital','cash_rulz','pass',28.6186,77.0787,0,1,'2015-03-22 05:20:05','2015-03-22 05:20:05'),(179,'Metro Heart Hospital','cash_rulz','pass',28.5647,77.244,0,1,'2015-03-22 05:20:05','2015-03-22 05:20:05'),(180,'Mool Chand Hospital','cash_rulz','pass',28.981,77.7101,0,1,'2015-03-22 05:20:05','2015-03-22 05:20:05'),(181,'MAX Med Centre','cash_rulz','pass',17.3925,78.4785,0,1,'2015-03-22 05:20:06','2015-03-22 05:20:06'),(182,'The Heart Clinic','cash_rulz','pass',32.3344,-90.1653,0,1,'2015-03-22 05:20:06','2015-03-22 05:20:06'),(183,'Vasant Lok Hospital','cash_rulz','pass',19.0351,72.895,0,1,'2015-03-22 05:20:06','2015-03-22 05:20:06'),(184,'Walia Nursing Home','cash_rulz','pass',51.5951,-3.26355,0,1,'2015-03-22 05:20:06','2015-03-22 05:20:06'),(185,'Metro Heart Institute','cash_rulz','pass',28.4066,77.3179,0,1,'2015-03-22 05:20:06','2015-03-22 05:20:06'),(186,'Ayushman Hospital','cash_rulz','pass',28.5966,77.0493,0,1,'2015-03-22 05:20:07','2015-03-22 05:20:07'),(187,'Mohan Eye Institute','cash_rulz','pass',28.6414,77.1898,0,1,'2015-03-22 05:20:07','2015-03-22 05:20:07'),(188,'Fortis Hospital','cash_rulz','pass',28.6184,77.3736,0,1,'2015-03-22 05:20:08','2015-03-22 05:20:08'),(189,'Centre for Sight','cash_rulz','pass',37.7934,-121.2,0,1,'2015-03-22 05:20:08','2015-03-22 05:20:08'),(190,'Paras Hospital','cash_rulz','pass',30.149,77.3057,0,1,'2015-03-22 05:20:08','2015-03-22 05:20:08'),(191,'Pushpanjali Medical Center','cash_rulz','pass',28.5323,77.0529,0,1,'2015-03-22 05:20:09','2015-03-22 05:20:09'),(192,'M.G.S Hospital','cash_rulz','pass',38.5382,-94.8637,0,1,'2015-03-22 05:20:09','2015-03-22 05:20:09'),(193,'Indraprastha Apollo Hospital','cash_rulz','pass',28.5413,77.2834,0,1,'2015-03-22 05:20:10','2015-03-22 05:20:10'),(194,'Max Balaji Hospital','cash_rulz','pass',28.6334,77.3089,0,1,'2015-03-22 05:20:10','2015-03-22 05:20:10'),(195,'North Point Hospital','cash_rulz','pass',28.5237,77.2065,0,1,'2015-03-22 05:20:10','2015-03-22 05:20:10'),(196,'The Medicity','cash_rulz','pass',28.4384,77.0407,0,1,'2015-03-22 05:20:11','2015-03-22 05:20:11'),(197,'Fortis Hospital','cash_rulz','pass',28.6184,77.3736,0,1,'2015-03-22 05:20:11','2015-03-22 05:20:11');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hosp_id` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_routes_on_hospital_id` (`hospital_id`),
  CONSTRAINT `fk_rails_68f7b4dbdf` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150321120550'),('20150321222753'),('20150321224158');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-22  5:57:30
