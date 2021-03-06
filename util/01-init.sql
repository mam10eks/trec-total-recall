-- Prefix to create and use total_recall_db in docker-container
create database if not exists total_recall;
use total_recall;

-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: total_recall
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

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
-- Table structure for table `allowed_modes`
--

DROP TABLE IF EXISTS `allowed_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allowed_modes` (
  `groupid` text,
  `mode` text,
  KEY `amindex` (`groupid`(40),`mode`(40))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowed_modes`
--

LOCK TABLES `allowed_modes` WRITE;
/*!40000 ALTER TABLE `allowed_modes` DISABLE KEYS */;
/*!40000 ALTER TABLE `allowed_modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `called_shots`
--

DROP TABLE IF EXISTS `called_shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `called_shots` (
  `shot` text,
  `topid` text,
  `runid` text,
  KEY `shot` (`shot`(40),`topid`(40),`runid`(40))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `called_shots`
--

LOCK TABLES `called_shots` WRITE;
/*!40000 ALTER TABLE `called_shots` DISABLE KEYS */;
/*!40000 ALTER TABLE `called_shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corpora`
--

DROP TABLE IF EXISTS `corpora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corpora` (
  `corpid` text,
  `lang` text,
  `type` text,
  `uri` text,
  `restricted` text,
  `mode` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpora`
--

LOCK TABLES `corpora` WRITE;
/*!40000 ALTER TABLE `corpora` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disallowed_ips`
--

DROP TABLE IF EXISTS `disallowed_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disallowed_ips` (
  `ip` text,
  KEY `ip` (`ip`(40))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disallowed_ips`
--

LOCK TABLES `disallowed_ips` WRITE;
/*!40000 ALTER TABLE `disallowed_ips` DISABLE KEYS */;
INSERT INTO `disallowed_ips` VALUES ('129.97.186.125');
/*!40000 ALTER TABLE `disallowed_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errlog`
--

DROP TABLE IF EXISTS `errlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errlog` (
  `runid` text,
  `code` int(11) DEFAULT NULL,
  `msg` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `errindex` (`runid`(40))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errlog`
--

LOCK TABLES `errlog` WRITE;
/*!40000 ALTER TABLE `errlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `errlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eval_modes`
--

DROP TABLE IF EXISTS `eval_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eval_modes` (
  `mode` text,
  KEY `mode` (`mode`(40))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eval_modes`
--

LOCK TABLES `eval_modes` WRITE;
/*!40000 ALTER TABLE `eval_modes` DISABLE KEYS */;
INSERT INTO `eval_modes` VALUES ('trivial'),('test'),('bigtest');
/*!40000 ALTER TABLE `eval_modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_groups`
--

DROP TABLE IF EXISTS `finished_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finished_groups` (
  `groupid` text,
  KEY `groupid` (`groupid`(40))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_groups`
--

LOCK TABLES `finished_groups` WRITE;
/*!40000 ALTER TABLE `finished_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `finished_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_runs`
--

DROP TABLE IF EXISTS `finished_runs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finished_runs` (
  `runid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_runs`
--

LOCK TABLES `finished_runs` WRITE;
/*!40000 ALTER TABLE `finished_runs` DISABLE KEYS */;
/*!40000 ALTER TABLE `finished_runs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manual_runs`
--

DROP TABLE IF EXISTS `manual_runs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manual_runs` (
  `groupid` text,
  `runid` text,
  `mode` text,
  `alias` text,
  `finalized` int(11) DEFAULT '0',
  `ip` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `groupid` (`groupid`(40),`runid`(40),`mode`(40),`alias`(40),`finalized`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manual_runs`
--

LOCK TABLES `manual_runs` WRITE;
/*!40000 ALTER TABLE `manual_runs` DISABLE KEYS */;
/*!40000 ALTER TABLE `manual_runs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shots`
--

DROP TABLE IF EXISTS `shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shots` (
  `type` text,
  KEY `shotindex` (`type`(40))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
INSERT INTO `shots` VALUES ('70recall'),('80recall'),('reasonable');
/*!40000 ALTER TABLE `shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamids`
--

DROP TABLE IF EXISTS `teamids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamids` (
  `groupid` text,
  `runid` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mode` text,
  `type` text,
  `finalized` int(11) DEFAULT '0',
  `alias` text,
  `ip` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamids`
--

LOCK TABLES `teamids` WRITE;
/*!40000 ALTER TABLE `teamids` DISABLE KEYS */;
/*!40000 ALTER TABLE `teamids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `topid` text,
  `corpid` text,
  `need` text,
  `rel` int(11) DEFAULT NULL,
  `mode` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trec_groups`
--

DROP TABLE IF EXISTS `trec_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trec_groups` (
  `groupid` text,
  `mode` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trec_groups`
--

LOCK TABLES `trec_groups` WRITE;
/*!40000 ALTER TABLE `trec_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `trec_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-11 13:25:13

-- Dummy-data to simplify the setup/bootstrapping:
INSERT INTO `trec_groups` (
  `groupid`,
  `mode`
)
VALUES
  ('group', 'trivial'),
  ('test-group', 'trivial');
