-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: invoiceplane
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `ip_custom_fields`
--

DROP TABLE IF EXISTS `ip_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_custom_fields` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_table` varchar(255) DEFAULT NULL,
  `custom_field_label` text,
  `custom_field_column` text,
  PRIMARY KEY (`custom_field_id`),
  KEY `custom_field_table` (`custom_field_table`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_custom_fields`
--

LOCK TABLES `ip_custom_fields` WRITE;
/*!40000 ALTER TABLE `ip_custom_fields` DISABLE KEYS */;
INSERT INTO `ip_custom_fields` VALUES (1,'ip_user_custom','Rekeningnummer','user_custom_rekeningnummer');
/*!40000 ALTER TABLE `ip_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoice_groups`
--

DROP TABLE IF EXISTS `ip_invoice_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoice_groups` (
  `invoice_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_group_name` text,
  `invoice_group_identifier_format` varchar(255) NOT NULL,
  `invoice_group_next_id` int(11) NOT NULL,
  `invoice_group_left_pad` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`invoice_group_id`),
  KEY `invoice_group_next_id` (`invoice_group_next_id`),
  KEY `invoice_group_left_pad` (`invoice_group_left_pad`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoice_groups`
--

LOCK TABLES `ip_invoice_groups` WRITE;
/*!40000 ALTER TABLE `ip_invoice_groups` DISABLE KEYS */;
INSERT INTO `ip_invoice_groups` VALUES (3,'Facturen','FA-{{{year}}}-{{{month}}}-{{{id}}}',2,2),(4,'Offertes','OF-{{{year}}}-{{{month}}}-{{{id}}}',1,2);
/*!40000 ALTER TABLE `ip_invoice_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_payment_methods`
--

DROP TABLE IF EXISTS `ip_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_payment_methods` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method_name` text,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_payment_methods`
--

LOCK TABLES `ip_payment_methods` WRITE;
/*!40000 ALTER TABLE `ip_payment_methods` DISABLE KEYS */;
INSERT INTO `ip_payment_methods` VALUES (1,'Cash'),(2,'Credit Card'),(3,'Overschrijving');
/*!40000 ALTER TABLE `ip_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_settings`
--

DROP TABLE IF EXISTS `ip_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` longtext NOT NULL,
  PRIMARY KEY (`setting_id`),
  KEY `setting_key` (`setting_key`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_settings`
--

LOCK TABLES `ip_settings` WRITE;
/*!40000 ALTER TABLE `ip_settings` DISABLE KEYS */;
INSERT INTO `ip_settings` VALUES (19,'default_language','dutch'),(20,'date_format','d/m/Y'),(21,'currency_symbol','€'),(22,'currency_symbol_placement','before'),(23,'currency_code','EUR'),(24,'invoices_due_after','30'),(25,'quotes_expire_after','8'),(26,'default_invoice_group','3'),(27,'default_quote_group','4'),(28,'thousands_separator','.'),(29,'decimal_point',','),(30,'cron_key','ntmdwZoqjUZkN0Y9'),(31,'tax_rate_decimal_places','2'),(32,'pdf_invoice_template','Byteshark'),(33,'pdf_invoice_template_paid','InvoicePlane - paid'),(34,'pdf_invoice_template_overdue','InvoicePlane - overdue'),(35,'pdf_quote_template','InvoicePlane'),(36,'public_invoice_template','Byteshark'),(37,'public_quote_template','InvoicePlane_Web'),(38,'disable_sidebar','1'),(39,'read_only_toggle','4'),(40,'invoice_pre_password',''),(41,'quote_pre_password',''),(42,'email_pdf_attachment','1'),(43,'generate_invoice_number_for_draft','0'),(44,'generate_quote_number_for_draft','0'),(45,'first_day_of_week','1'),(46,'default_country','BE'),(47,'default_list_limit','15'),(48,'quote_overview_period','this-month'),(49,'invoice_overview_period','this-month'),(50,'disable_quickactions','0'),(51,'custom_title','Byteshark'),(52,'monospace_amounts','0'),(53,'bcc_mails_to_admin','0'),(54,'default_invoice_terms',''),(55,'invoice_default_payment_method','3'),(56,'mark_invoices_sent_pdf','0'),(57,'include_zugferd','1'),(58,'email_invoice_template',''),(59,'email_invoice_template_paid',''),(60,'email_invoice_template_overdue',''),(61,'pdf_invoice_footer',''),(62,'automatic_email_on_recur','0'),(63,'mark_quotes_sent_pdf','0'),(64,'default_quote_notes',''),(65,'email_quote_template',''),(66,'default_invoice_tax_rate',''),(67,'default_include_item_tax',''),(68,'default_item_tax_rate','1'),(69,'email_send_method','phpmail'),(70,'smtp_server_address',''),(71,'smtp_authentication','0'),(72,'smtp_username',''),(73,'smtp_port',''),(74,'smtp_security',''),(75,'merchant_enabled','0'),(76,'merchant_driver',''),(77,'merchant_test_mode','0'),(78,'merchant_username',''),(79,'merchant_signature',''),(80,'merchant_currency_code',''),(81,'online_payment_method',''),(82,'login_logo','logo.png'),(83,'invoice_logo','logo.png');
/*!40000 ALTER TABLE `ip_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_tax_rates`
--

DROP TABLE IF EXISTS `ip_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_tax_rates` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_rate_name` text,
  `tax_rate_percent` decimal(5,2) NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_tax_rates`
--

LOCK TABLES `ip_tax_rates` WRITE;
/*!40000 ALTER TABLE `ip_tax_rates` DISABLE KEYS */;
INSERT INTO `ip_tax_rates` VALUES (1,'Standaard',21.00),(2,'Geen',0.00);
/*!40000 ALTER TABLE `ip_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_user_custom`
--

DROP TABLE IF EXISTS `ip_user_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_user_custom` (
  `user_custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_custom_rekeningnummer` varchar(2000) NOT NULL,
  PRIMARY KEY (`user_custom_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_user_custom`
--

LOCK TABLES `ip_user_custom` WRITE;
/*!40000 ALTER TABLE `ip_user_custom` DISABLE KEYS */;
INSERT INTO `ip_user_custom` VALUES (1,1,'BE26 0018 0437 7529');
/*!40000 ALTER TABLE `ip_user_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_users`
--

DROP TABLE IF EXISTS `ip_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` int(1) NOT NULL DEFAULT '0',
  `user_active` tinyint(1) DEFAULT '1',
  `user_date_created` datetime NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_name` text,
  `user_company` text,
  `user_address_1` text,
  `user_address_2` text,
  `user_city` text,
  `user_state` text,
  `user_zip` text,
  `user_country` text,
  `user_phone` text,
  `user_fax` text,
  `user_mobile` text,
  `user_email` text,
  `user_password` varchar(60) NOT NULL,
  `user_web` text,
  `user_vat_id` text,
  `user_tax_code` text,
  `user_psalt` text,
  `user_passwordreset_token` varchar(100) DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_users`
--

LOCK TABLES `ip_users` WRITE;
/*!40000 ALTER TABLE `ip_users` DISABLE KEYS */;
INSERT INTO `ip_users` VALUES (1,1,1,'2016-12-27 22:37:53','2017-01-01 22:40:12','Barry d\'Hoine','Byteshark','Brusselsesteenweg 99/0006','','Zemst','Vlaams-Brabant','1980','BE','+32 494 61 68 95','','','barry@byteshark.be','$2a$10$59fdadc0fd7a50a1dbc47OXo9FESJTlU3UuVtV.0eNxmR0bMcRavu','https://byteshark.be','BE 0655.846.593','','59fdadc0fd7a50a1dbc47b','');
/*!40000 ALTER TABLE `ip_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_versions`
--

DROP TABLE IF EXISTS `ip_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_versions` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `version_date_applied` varchar(14) NOT NULL,
  `version_file` varchar(45) NOT NULL,
  `version_sql_errors` int(2) NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `version_date_applied` (`version_date_applied`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_versions`
--

LOCK TABLES `ip_versions` WRITE;
/*!40000 ALTER TABLE `ip_versions` DISABLE KEYS */;
INSERT INTO `ip_versions` VALUES (1,'1483149732','001_1.0.1.sql',0),(2,'1483149732','002_1.0.2.sql',0),(3,'1483149843','003_1.1.0.sql',0),(4,'1483149843','004_1.1.1.sql',0),(5,'1483149843','005_1.1.2.sql',0),(6,'1483149843','006_1.2.0.sql',0),(7,'1483149843','007_1.2.1.sql',0),(8,'1483149843','008_1.3.0.sql',0),(9,'1483149843','009_1.3.1.sql',0),(10,'1483149843','010_1.3.2.sql',0),(11,'1483149843','011_1.3.3.sql',0),(12,'1483149843','012_1.4.0.sql',0),(13,'1483149843','013_1.4.1.sql',0),(14,'1483149843','014_1.4.2.sql',0),(15,'1483149843','015_1.4.3.sql',0),(16,'1483149843','016_1.4.4.sql',0),(17,'1483149843','017_1.4.5.sql',0),(18,'1483149843','018_1.4.6.sql',0),(19,'1483149843','019_1.4.7.sql',0),(20,'1483149843','020_1.4.8.sql',0),(21,'1483149843','021_1.4.9.sql',0),(22,'1483149843','022_1.4.10.sql',0);
/*!40000 ALTER TABLE `ip_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-02  2:07:47
