-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: invoiceplane
-- ------------------------------------------------------
-- Server version 5.7.17

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
-- Current Database: `invoiceplane`
--

/*!40000 DROP DATABASE IF EXISTS `invoiceplane`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `invoiceplane` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `invoiceplane`;

--
-- Table structure for table `ip_client_custom`
--

DROP TABLE IF EXISTS `ip_client_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_client_custom` (
  `client_custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`client_custom_id`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_client_custom`
--

LOCK TABLES `ip_client_custom` WRITE;
/*!40000 ALTER TABLE `ip_client_custom` DISABLE KEYS */;
INSERT INTO `ip_client_custom` VALUES (1,1);
/*!40000 ALTER TABLE `ip_client_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_client_notes`
--

DROP TABLE IF EXISTS `ip_client_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_client_notes` (
  `client_note_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `client_note_date` date NOT NULL,
  `client_note` longtext NOT NULL,
  PRIMARY KEY (`client_note_id`),
  KEY `client_id` (`client_id`,`client_note_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_client_notes`
--

LOCK TABLES `ip_client_notes` WRITE;
/*!40000 ALTER TABLE `ip_client_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_client_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_clients`
--

DROP TABLE IF EXISTS `ip_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_date_created` datetime NOT NULL,
  `client_date_modified` datetime NOT NULL,
  `client_name` text,
  `client_address_1` text,
  `client_address_2` text,
  `client_city` text,
  `client_state` text,
  `client_zip` text,
  `client_country` text,
  `client_phone` text,
  `client_fax` text,
  `client_mobile` text,
  `client_email` text,
  `client_web` text,
  `client_vat_id` text,
  `client_tax_code` text,
  `client_active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`client_id`),
  KEY `client_active` (`client_active`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_clients`
--

LOCK TABLES `ip_clients` WRITE;
/*!40000 ALTER TABLE `ip_clients` DISABLE KEYS */;
INSERT INTO `ip_clients` VALUES (1,'2016-12-27 22:40:18','2016-12-27 22:40:18','Barry d\'Hoine','Brusselsesteenweg 99/0006','','Zemst','Brabant','1980','BE','','','','barry@byteshark.be','','BE 0800.029.022','',1);
/*!40000 ALTER TABLE `ip_clients` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_custom_fields`
--

LOCK TABLES `ip_custom_fields` WRITE;
/*!40000 ALTER TABLE `ip_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_email_templates`
--

DROP TABLE IF EXISTS `ip_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_email_templates` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_template_title` text,
  `email_template_type` varchar(255) DEFAULT NULL,
  `email_template_body` longtext NOT NULL,
  `email_template_subject` text,
  `email_template_from_name` text,
  `email_template_from_email` text,
  `email_template_cc` text,
  `email_template_bcc` text,
  `email_template_pdf_template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_email_templates`
--

LOCK TABLES `ip_email_templates` WRITE;
/*!40000 ALTER TABLE `ip_email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_families`
--

DROP TABLE IF EXISTS `ip_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_families` (
  `family_id` int(11) NOT NULL AUTO_INCREMENT,
  `family_name` text,
  PRIMARY KEY (`family_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_families`
--

LOCK TABLES `ip_families` WRITE;
/*!40000 ALTER TABLE `ip_families` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_import_details`
--

DROP TABLE IF EXISTS `ip_import_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_import_details` (
  `import_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `import_id` int(11) NOT NULL,
  `import_lang_key` varchar(35) NOT NULL,
  `import_table_name` varchar(35) NOT NULL,
  `import_record_id` int(11) NOT NULL,
  PRIMARY KEY (`import_detail_id`),
  KEY `import_id` (`import_id`,`import_record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_import_details`
--

LOCK TABLES `ip_import_details` WRITE;
/*!40000 ALTER TABLE `ip_import_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_import_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_imports`
--

DROP TABLE IF EXISTS `ip_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_imports` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT,
  `import_date` datetime NOT NULL,
  PRIMARY KEY (`import_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_imports`
--

LOCK TABLES `ip_imports` WRITE;
/*!40000 ALTER TABLE `ip_imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoice_amounts`
--

DROP TABLE IF EXISTS `ip_invoice_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoice_amounts` (
  `invoice_amount_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `invoice_sign` enum('1','-1') NOT NULL DEFAULT '1',
  `invoice_item_subtotal` decimal(20,2) DEFAULT NULL,
  `invoice_item_tax_total` decimal(20,2) DEFAULT NULL,
  `invoice_tax_total` decimal(20,2) DEFAULT NULL,
  `invoice_total` decimal(20,2) DEFAULT NULL,
  `invoice_paid` decimal(20,2) DEFAULT NULL,
  `invoice_balance` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`invoice_amount_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `invoice_paid` (`invoice_paid`,`invoice_balance`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoice_amounts`
--

LOCK TABLES `ip_invoice_amounts` WRITE;
/*!40000 ALTER TABLE `ip_invoice_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_invoice_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoice_custom`
--

DROP TABLE IF EXISTS `ip_invoice_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoice_custom` (
  `invoice_custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`invoice_custom_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoice_custom`
--

LOCK TABLES `ip_invoice_custom` WRITE;
/*!40000 ALTER TABLE `ip_invoice_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_invoice_custom` ENABLE KEYS */;
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
INSERT INTO `ip_invoice_groups` VALUES (3,'Facturen','FA-{{{year}}}-{{{month}}}-{{{id}}}',1,2),(4,'Offertes','OF-{{{year}}}-{{{month}}}-{{{id}}}',1,2);
/*!40000 ALTER TABLE `ip_invoice_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoice_item_amounts`
--

DROP TABLE IF EXISTS `ip_invoice_item_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoice_item_amounts` (
  `item_amount_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_subtotal` decimal(20,2) DEFAULT NULL,
  `item_tax_total` decimal(20,2) DEFAULT NULL,
  `item_discount` decimal(20,2) DEFAULT NULL,
  `item_total` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`item_amount_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoice_item_amounts`
--

LOCK TABLES `ip_invoice_item_amounts` WRITE;
/*!40000 ALTER TABLE `ip_invoice_item_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_invoice_item_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoice_items`
--

DROP TABLE IF EXISTS `ip_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoice_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `item_tax_rate_id` int(11) NOT NULL DEFAULT '0',
  `item_product_id` int(11) DEFAULT NULL,
  `item_date_added` date NOT NULL,
  `item_name` text,
  `item_description` longtext,
  `item_quantity` decimal(10,2) NOT NULL,
  `item_price` decimal(20,2) DEFAULT NULL,
  `item_discount_amount` decimal(20,2) DEFAULT NULL,
  `item_order` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `invoice_id` (`invoice_id`,`item_tax_rate_id`,`item_date_added`,`item_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoice_items`
--

LOCK TABLES `ip_invoice_items` WRITE;
/*!40000 ALTER TABLE `ip_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoice_tax_rates`
--

DROP TABLE IF EXISTS `ip_invoice_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoice_tax_rates` (
  `invoice_tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `include_item_tax` int(1) NOT NULL DEFAULT '0',
  `invoice_tax_rate_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`invoice_tax_rate_id`),
  KEY `invoice_id` (`invoice_id`,`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoice_tax_rates`
--

LOCK TABLES `ip_invoice_tax_rates` WRITE;
/*!40000 ALTER TABLE `ip_invoice_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_invoice_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoices`
--

DROP TABLE IF EXISTS `ip_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoices` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_group_id` int(11) NOT NULL,
  `invoice_status_id` tinyint(2) NOT NULL DEFAULT '1',
  `is_read_only` tinyint(1) DEFAULT NULL,
  `invoice_password` varchar(90) DEFAULT NULL,
  `invoice_date_created` date NOT NULL,
  `invoice_time_created` time NOT NULL DEFAULT '00:00:00',
  `invoice_date_modified` datetime NOT NULL,
  `invoice_date_due` date NOT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `invoice_discount_amount` decimal(20,2) DEFAULT NULL,
  `invoice_discount_percent` decimal(20,2) DEFAULT NULL,
  `invoice_terms` longtext NOT NULL,
  `invoice_url_key` char(32) NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT '0',
  `creditinvoice_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE KEY `invoice_url_key` (`invoice_url_key`),
  KEY `user_id` (`user_id`,`client_id`,`invoice_group_id`,`invoice_date_created`,`invoice_date_due`,`invoice_number`),
  KEY `invoice_status_id` (`invoice_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoices`
--

LOCK TABLES `ip_invoices` WRITE;
/*!40000 ALTER TABLE `ip_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_invoices_recurring`
--

DROP TABLE IF EXISTS `ip_invoices_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_invoices_recurring` (
  `invoice_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `recur_start_date` date NOT NULL,
  `recur_end_date` date NOT NULL,
  `recur_frequency` char(2) NOT NULL,
  `recur_next_date` date NOT NULL,
  PRIMARY KEY (`invoice_recurring_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_invoices_recurring`
--

LOCK TABLES `ip_invoices_recurring` WRITE;
/*!40000 ALTER TABLE `ip_invoices_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_invoices_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_item_lookups`
--

DROP TABLE IF EXISTS `ip_item_lookups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_item_lookups` (
  `item_lookup_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL DEFAULT '',
  `item_description` longtext NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`item_lookup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_item_lookups`
--

LOCK TABLES `ip_item_lookups` WRITE;
/*!40000 ALTER TABLE `ip_item_lookups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_item_lookups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_merchant_responses`
--

DROP TABLE IF EXISTS `ip_merchant_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_merchant_responses` (
  `merchant_response_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `merchant_response_date` date NOT NULL,
  `merchant_response_driver` varchar(35) NOT NULL,
  `merchant_response` varchar(255) NOT NULL,
  `merchant_response_reference` varchar(255) NOT NULL,
  PRIMARY KEY (`merchant_response_id`),
  KEY `merchant_response_date` (`merchant_response_date`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_merchant_responses`
--

LOCK TABLES `ip_merchant_responses` WRITE;
/*!40000 ALTER TABLE `ip_merchant_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_merchant_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_payment_custom`
--

DROP TABLE IF EXISTS `ip_payment_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_payment_custom` (
  `payment_custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_custom_id`),
  KEY `payment_id` (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_payment_custom`
--

LOCK TABLES `ip_payment_custom` WRITE;
/*!40000 ALTER TABLE `ip_payment_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_payment_custom` ENABLE KEYS */;
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
-- Table structure for table `ip_payments`
--

DROP TABLE IF EXISTS `ip_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL DEFAULT '0',
  `payment_date` date NOT NULL,
  `payment_amount` decimal(20,2) DEFAULT NULL,
  `payment_note` longtext NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `payment_method_id` (`payment_method_id`),
  KEY `payment_amount` (`payment_amount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_payments`
--

LOCK TABLES `ip_payments` WRITE;
/*!40000 ALTER TABLE `ip_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_products`
--

DROP TABLE IF EXISTS `ip_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` int(11) DEFAULT NULL,
  `product_sku` text,
  `product_name` text,
  `product_description` longtext NOT NULL,
  `product_price` decimal(20,2) DEFAULT NULL,
  `purchase_price` decimal(20,2) DEFAULT NULL,
  `provider_name` text,
  `tax_rate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_products`
--

LOCK TABLES `ip_products` WRITE;
/*!40000 ALTER TABLE `ip_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_projects`
--

DROP TABLE IF EXISTS `ip_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `project_name` text,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_projects`
--

LOCK TABLES `ip_projects` WRITE;
/*!40000 ALTER TABLE `ip_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_quote_amounts`
--

DROP TABLE IF EXISTS `ip_quote_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_quote_amounts` (
  `quote_amount_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `quote_item_subtotal` decimal(20,2) DEFAULT NULL,
  `quote_item_tax_total` decimal(20,2) DEFAULT NULL,
  `quote_tax_total` decimal(20,2) DEFAULT NULL,
  `quote_total` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`quote_amount_id`),
  KEY `quote_id` (`quote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_quote_amounts`
--

LOCK TABLES `ip_quote_amounts` WRITE;
/*!40000 ALTER TABLE `ip_quote_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_quote_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_quote_custom`
--

DROP TABLE IF EXISTS `ip_quote_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_quote_custom` (
  `quote_custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  PRIMARY KEY (`quote_custom_id`),
  KEY `quote_id` (`quote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_quote_custom`
--

LOCK TABLES `ip_quote_custom` WRITE;
/*!40000 ALTER TABLE `ip_quote_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_quote_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_quote_item_amounts`
--

DROP TABLE IF EXISTS `ip_quote_item_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_quote_item_amounts` (
  `item_amount_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_subtotal` decimal(20,2) DEFAULT NULL,
  `item_tax_total` decimal(20,2) DEFAULT NULL,
  `item_discount` decimal(20,2) DEFAULT NULL,
  `item_total` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`item_amount_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_quote_item_amounts`
--

LOCK TABLES `ip_quote_item_amounts` WRITE;
/*!40000 ALTER TABLE `ip_quote_item_amounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_quote_item_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_quote_items`
--

DROP TABLE IF EXISTS `ip_quote_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_quote_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `item_tax_rate_id` int(11) NOT NULL,
  `item_product_id` int(11) DEFAULT NULL,
  `item_date_added` date NOT NULL,
  `item_name` text,
  `item_description` text,
  `item_quantity` decimal(20,2) DEFAULT NULL,
  `item_price` decimal(20,2) DEFAULT NULL,
  `item_discount_amount` decimal(20,2) DEFAULT NULL,
  `item_order` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `quote_id` (`quote_id`,`item_date_added`,`item_order`),
  KEY `item_tax_rate_id` (`item_tax_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_quote_items`
--

LOCK TABLES `ip_quote_items` WRITE;
/*!40000 ALTER TABLE `ip_quote_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_quote_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_quote_tax_rates`
--

DROP TABLE IF EXISTS `ip_quote_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_quote_tax_rates` (
  `quote_tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `include_item_tax` int(1) NOT NULL DEFAULT '0',
  `quote_tax_rate_amount` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`quote_tax_rate_id`),
  KEY `quote_id` (`quote_id`),
  KEY `tax_rate_id` (`tax_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_quote_tax_rates`
--

LOCK TABLES `ip_quote_tax_rates` WRITE;
/*!40000 ALTER TABLE `ip_quote_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_quote_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_quotes`
--

DROP TABLE IF EXISTS `ip_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_quotes` (
  `quote_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_group_id` int(11) NOT NULL,
  `quote_status_id` tinyint(2) NOT NULL DEFAULT '1',
  `quote_date_created` date NOT NULL,
  `quote_date_modified` datetime NOT NULL,
  `quote_date_expires` date NOT NULL,
  `quote_number` varchar(100) DEFAULT NULL,
  `quote_discount_amount` decimal(20,2) DEFAULT NULL,
  `quote_discount_percent` decimal(20,2) DEFAULT NULL,
  `quote_url_key` char(32) NOT NULL,
  `quote_password` varchar(90) DEFAULT NULL,
  `notes` longtext,
  PRIMARY KEY (`quote_id`),
  KEY `user_id` (`user_id`,`client_id`,`invoice_group_id`,`quote_date_created`,`quote_date_expires`,`quote_number`),
  KEY `invoice_id` (`invoice_id`),
  KEY `quote_status_id` (`quote_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_quotes`
--

LOCK TABLES `ip_quotes` WRITE;
/*!40000 ALTER TABLE `ip_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_sessions`
--

DROP TABLE IF EXISTS `ip_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_sessions`
--

LOCK TABLES `ip_sessions` WRITE;
/*!40000 ALTER TABLE `ip_sessions` DISABLE KEYS */;
INSERT INTO `ip_sessions` VALUES ('2474bb16d1c120b03bae8a66c392f68c','172.18.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36',1482923373,'a:6:{s:9:\"user_data\";s:0:\"\";s:9:\"user_type\";s:1:\"1\";s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:9:\"Byteshark\";s:10:\"user_email\";s:18:\"barry@byteshark.be\";s:12:\"user_company\";N;}');
/*!40000 ALTER TABLE `ip_sessions` ENABLE KEYS */;
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
INSERT INTO `ip_settings` VALUES (19,'default_language','dutch'),(20,'date_format','d/m/Y'),(21,'currency_symbol','€'),(22,'currency_symbol_placement','before'),(23,'currency_code','EUR'),(24,'invoices_due_after','30'),(25,'quotes_expire_after','8'),(26,'default_invoice_group','3'),(27,'default_quote_group','4'),(28,'thousands_separator','.'),(29,'decimal_point',','),(30,'cron_key','ntmdwZoqjUZkN0Y9'),(31,'tax_rate_decimal_places','2'),(32,'pdf_invoice_template','InvoicePlane'),(33,'pdf_invoice_template_paid','InvoicePlane - paid'),(34,'pdf_invoice_template_overdue','InvoicePlane - overdue'),(35,'pdf_quote_template','InvoicePlane'),(36,'public_invoice_template','InvoicePlane_Web'),(37,'public_quote_template','InvoicePlane_Web'),(38,'disable_sidebar','1'),(39,'read_only_toggle','4'),(40,'invoice_pre_password',''),(41,'quote_pre_password',''),(42,'email_pdf_attachment','1'),(43,'generate_invoice_number_for_draft','0'),(44,'generate_quote_number_for_draft','0'),(45,'first_day_of_week','1'),(46,'default_country','BE'),(47,'default_list_limit','15'),(48,'quote_overview_period','this-month'),(49,'invoice_overview_period','this-month'),(50,'disable_quickactions','0'),(51,'custom_title','Byteshark Facturatie'),(52,'monospace_amounts','0'),(53,'bcc_mails_to_admin','0'),(54,'default_invoice_terms',''),(55,'invoice_default_payment_method','3'),(56,'mark_invoices_sent_pdf','0'),(57,'include_zugferd','1'),(58,'email_invoice_template',''),(59,'email_invoice_template_paid',''),(60,'email_invoice_template_overdue',''),(61,'pdf_invoice_footer',''),(62,'automatic_email_on_recur','0'),(63,'mark_quotes_sent_pdf','0'),(64,'default_quote_notes',''),(65,'email_quote_template',''),(66,'default_invoice_tax_rate','1'),(67,'default_include_item_tax','0'),(68,'default_item_tax_rate','1'),(69,'email_send_method','phpmail'),(70,'smtp_server_address',''),(71,'smtp_authentication','0'),(72,'smtp_username',''),(73,'smtp_port',''),(74,'smtp_security',''),(75,'merchant_enabled','0'),(76,'merchant_driver',''),(77,'merchant_test_mode','0'),(78,'merchant_username',''),(79,'merchant_signature',''),(80,'merchant_currency_code',''),(81,'online_payment_method',''),(82,'login_logo','logo.png'),(83,'invoice_logo','logo1.png');
/*!40000 ALTER TABLE `ip_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_tasks`
--

DROP TABLE IF EXISTS `ip_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `task_name` text,
  `task_description` longtext NOT NULL,
  `task_price` decimal(20,2) DEFAULT NULL,
  `task_finish_date` date NOT NULL,
  `task_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_tasks`
--

LOCK TABLES `ip_tasks` WRITE;
/*!40000 ALTER TABLE `ip_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_tasks` ENABLE KEYS */;
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
-- Table structure for table `ip_uploads`
--

DROP TABLE IF EXISTS `ip_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_uploads` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `url_key` char(32) NOT NULL,
  `file_name_original` longtext NOT NULL,
  `file_name_new` longtext NOT NULL,
  `uploaded_date` date NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_uploads`
--

LOCK TABLES `ip_uploads` WRITE;
/*!40000 ALTER TABLE `ip_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_user_clients`
--

DROP TABLE IF EXISTS `ip_user_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_user_clients` (
  `user_client_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`user_client_id`),
  KEY `user_id` (`user_id`,`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_user_clients`
--

LOCK TABLES `ip_user_clients` WRITE;
/*!40000 ALTER TABLE `ip_user_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_user_clients` ENABLE KEYS */;
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
  PRIMARY KEY (`user_custom_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_user_custom`
--

LOCK TABLES `ip_user_custom` WRITE;
/*!40000 ALTER TABLE `ip_user_custom` DISABLE KEYS */;
INSERT INTO `ip_user_custom` VALUES (1,1);
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
INSERT INTO `ip_users` VALUES (1,1,1,'2016-12-27 22:37:53','2016-12-28 11:06:40','Barry d\'Hoine','Byteshark','Brusselsesteenweg 99/0006','','Zemst','Vlaams-Brabant','1980','BE','+32 494 61 68 95','','','barry@byteshark.be','$2a$10$8b8272c38b9e0958d5566OpKa0XlDp.35DZEGiSTq6gOxreytRbw6','https://byteshark.be','BE 0655.846.593','','8b8272c38b9e0958d5566d','');
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

-- Dump completed on 2016-12-28 11:12:14
