-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: portal
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accessCode`
--

USE `portal`;

DROP TABLE IF EXISTS `accessCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessCode` (
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `myName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessCode`
--

LOCK TABLES `accessCode` WRITE;
/*!40000 ALTER TABLE `accessCode` DISABLE KEYS */;
INSERT INTO `accessCode` VALUES ('ne0J00n6XBMsI','Joni','Test',0,'2020-04-27 12:17:12');
/*!40000 ALTER TABLE `accessCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'landing_mail_sender','augustin@nebulae.co'),(2,'landing_name_sender','Augustin'),(3,'landing_subject','Suite contact Nebulae'),(4,'landing_cc','recrutement@list.nebulae.co'),(5, 'statistics_users','10'), (6, 'statistics_cloud_storage', '800Go');
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'onboarding','&lt;div&gt;Bonjour,&lt;br&gt;&lt;br&gt;Et merci de ton intérêt pour Nebulae ! &lt;br&gt;Je suis un des membres de Nebulae, et à ta disposition pour répondre à tes questions vis à vis de notre association, et des services que nous proposons.&lt;br&gt;&lt;br&gt;Pour commencer, tu peux en découvrir plus en parcourant notre wiki : &lt;a href=&quot;http://wiki.nebulae.co/&quot;&gt;http://wiki.nebulae.co/&lt;/a&gt;&lt;br&gt;&lt;br&gt;Nous organisons des apéros réguliers pour rencontrer les personnes qui souhaitent profiter de nos services et rejoindre l\'association.&amp;nbsp;&lt;br&gt;Tu seras prévenu.e par email.&lt;br&gt;&lt;br&gt;Bien à toi,&lt;br&gt;&lt;br&gt;Augustin pour Nebulae&lt;/div&gt;',1,'2018-06-26 12:34:08');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landingMails`
--

DROP TABLE IF EXISTS `landingMails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landingMails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inscription_date` datetime NOT NULL,
  `treated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landingMails`
--

LOCK TABLES `landingMails` WRITE;
/*!40000 ALTER TABLE `landingMails` DISABLE KEYS */;
INSERT INTO `landingMails` VALUES (3,'test@test.com','2018-02-13 15:35:25',1);
/*!40000 ALTER TABLE `landingMails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-18 14:22:33
