-- MySQL dump 10.13  Distrib 5.1.39, for portbld-freebsd7.2 (i386)
--
-- Host: db2.quilted.gaiahost.coop    Database: mass
-- ------------------------------------------------------
-- Server version	5.1.39-log

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--
-- ORDER BY:  `aid`

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `aid` varchar(255) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `callback` varchar(255) NOT NULL DEFAULT '',
  `parameters` longtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--
-- ORDER BY:  `aid`

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('comment_publish_action','comment','comment_publish_action','','Publish comment');
INSERT INTO `actions` VALUES ('comment_unpublish_action','comment','comment_unpublish_action','','Unpublish comment');
INSERT INTO `actions` VALUES ('node_make_sticky_action','node','node_make_sticky_action','','Make post sticky');
INSERT INTO `actions` VALUES ('node_make_unsticky_action','node','node_make_unsticky_action','','Make post unsticky');
INSERT INTO `actions` VALUES ('node_promote_action','node','node_promote_action','','Promote post to front page');
INSERT INTO `actions` VALUES ('node_publish_action','node','node_publish_action','','Publish post');
INSERT INTO `actions` VALUES ('node_save_action','node','node_save_action','','Save post');
INSERT INTO `actions` VALUES ('node_unpromote_action','node','node_unpromote_action','','Remove post from front page');
INSERT INTO `actions` VALUES ('node_unpublish_action','node','node_unpublish_action','','Unpublish post');
INSERT INTO `actions` VALUES ('user_block_ip_action','user','user_block_ip_action','','Ban IP address of current user');
INSERT INTO `actions` VALUES ('user_block_user_action','user','user_block_user_action','','Block current user');
INSERT INTO `actions` VALUES ('views_bulk_operations_delete_comment_action','comment','views_bulk_operations_delete_comment_action','','Delete comment');
INSERT INTO `actions` VALUES ('views_bulk_operations_delete_node_action','node','views_bulk_operations_delete_node_action','','Delete node');
INSERT INTO `actions` VALUES ('views_bulk_operations_delete_term_action','term','views_bulk_operations_delete_term_action','','Delete term');
INSERT INTO `actions` VALUES ('views_bulk_operations_delete_user_action','user','views_bulk_operations_delete_user_action','','Delete user');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions_aid`
--

DROP TABLE IF EXISTS `actions_aid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions_aid` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions_aid`
--
-- ORDER BY:  `aid`

LOCK TABLES `actions_aid` WRITE;
/*!40000 ALTER TABLE `actions_aid` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions_aid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advanced_help_index`
--

DROP TABLE IF EXISTS `advanced_help_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advanced_help_index` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '',
  `topic` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advanced_help_index`
--
-- ORDER BY:  `sid`

LOCK TABLES `advanced_help_index` WRITE;
/*!40000 ALTER TABLE `advanced_help_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `advanced_help_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authmap`
--

DROP TABLE IF EXISTS `authmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authmap` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `authname` varchar(128) NOT NULL DEFAULT '',
  `module` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `authname` (`authname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authmap`
--
-- ORDER BY:  `aid`

LOCK TABLES `authmap` WRITE;
/*!40000 ALTER TABLE `authmap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `batch` longtext,
  PRIMARY KEY (`bid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--
-- ORDER BY:  `bid`

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(64) NOT NULL DEFAULT '',
  `delta` varchar(32) NOT NULL DEFAULT '0',
  `theme` varchar(64) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `region` varchar(64) NOT NULL DEFAULT '',
  `custom` tinyint(4) NOT NULL DEFAULT '0',
  `throttle` tinyint(4) NOT NULL DEFAULT '0',
  `visibility` tinyint(4) NOT NULL DEFAULT '0',
  `pages` text NOT NULL,
  `title` varchar(64) NOT NULL DEFAULT '',
  `cache` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `tmd` (`theme`,`module`,`delta`),
  KEY `list` (`theme`,`status`,`region`,`weight`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--
-- ORDER BY:  `bid`

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'user','0','garland',1,0,'left',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (2,'user','1','garland',1,0,'left',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (3,'system','0','garland',1,-7,'footer',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (4,'system','0','seven',1,-5,'content',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (5,'user','0','seven',1,-6,'content',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (6,'user','1','seven',1,-7,'content',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (7,'menu','admin_menu','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (8,'menu','devel','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (9,'menu','features','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (10,'menu','primary-links','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (11,'menu','secondary-links','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (12,'node','0','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (13,'user','2','seven',0,0,'',0,0,0,'','',1);
INSERT INTO `blocks` VALUES (14,'user','3','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (15,'logintoboggan','0','seven',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (16,'devel','0','seven',0,0,'',0,0,0,'','',1);
INSERT INTO `blocks` VALUES (17,'devel','2','seven',1,0,'content',0,0,0,'devel/php','',1);
INSERT INTO `blocks` VALUES (18,'menu','admin_menu','garland',0,-7,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (19,'menu','devel','garland',0,-6,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (20,'menu','features','garland',0,-5,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (21,'menu','primary-links','garland',0,-3,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (22,'menu','secondary-links','garland',0,-2,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (23,'node','0','garland',0,0,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (24,'user','2','garland',0,1,'',0,0,0,'','',1);
INSERT INTO `blocks` VALUES (25,'user','3','garland',0,2,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (26,'logintoboggan','0','garland',0,-4,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (27,'devel','0','garland',0,-1,'',0,0,0,'','',1);
INSERT INTO `blocks` VALUES (28,'devel','2','garland',1,0,'right',0,0,0,'devel/php','',1);
INSERT INTO `blocks` VALUES (29,'devel','0','quilted_custom',0,-1,'',0,0,0,'','',1);
INSERT INTO `blocks` VALUES (30,'devel','2','quilted_custom',0,0,'',0,0,0,'devel/php','',1);
INSERT INTO `blocks` VALUES (31,'logintoboggan','0','quilted_custom',0,-4,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (32,'menu','admin_menu','quilted_custom',0,-7,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (33,'menu','devel','quilted_custom',0,-6,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (34,'menu','features','quilted_custom',0,-5,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (35,'menu','primary-links','quilted_custom',0,-5,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (36,'menu','secondary-links','quilted_custom',0,-2,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (37,'node','0','quilted_custom',0,1,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (38,'system','0','quilted_custom',0,-3,'',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (39,'user','0','quilted_custom',1,-6,'left',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (40,'user','1','quilted_custom',1,-7,'left',0,0,0,'','',-1);
INSERT INTO `blocks` VALUES (41,'user','2','quilted_custom',0,2,'',0,0,0,'','',1);
INSERT INTO `blocks` VALUES (42,'user','3','quilted_custom',0,3,'',0,0,0,'','',-1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_roles`
--

DROP TABLE IF EXISTS `blocks_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks_roles` (
  `module` varchar(64) NOT NULL,
  `delta` varchar(32) NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`module`,`delta`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks_roles`
--
-- ORDER BY:  `module`,`delta`,`rid`

LOCK TABLES `blocks_roles` WRITE;
/*!40000 ALTER TABLE `blocks_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxes` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext,
  `info` varchar(128) NOT NULL DEFAULT '',
  `format` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `info` (`info`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxes`
--
-- ORDER BY:  `bid`

LOCK TABLES `boxes` WRITE;
/*!40000 ALTER TABLE `boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `nid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(64) NOT NULL DEFAULT '',
  `comment` longtext NOT NULL,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `format` smallint(6) NOT NULL DEFAULT '0',
  `thread` varchar(255) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `mail` varchar(64) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`),
  KEY `nid` (`nid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--
-- ORDER BY:  `cid`

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_group`
--

DROP TABLE IF EXISTS `content_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_group` (
  `group_type` varchar(32) NOT NULL DEFAULT 'standard',
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `settings` mediumtext NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type_name`,`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_group`
--
-- ORDER BY:  `type_name`,`group_name`

LOCK TABLES `content_group` WRITE;
/*!40000 ALTER TABLE `content_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_group_fields`
--

DROP TABLE IF EXISTS `content_group_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_group_fields` (
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `field_name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_name`,`group_name`,`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_group_fields`
--
-- ORDER BY:  `type_name`,`group_name`,`field_name`

LOCK TABLES `content_group_fields` WRITE;
/*!40000 ALTER TABLE `content_group_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_group_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_node_field`
--

DROP TABLE IF EXISTS `content_node_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_node_field` (
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(127) NOT NULL DEFAULT '',
  `global_settings` mediumtext NOT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `multiple` tinyint(4) NOT NULL DEFAULT '0',
  `db_storage` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(127) NOT NULL DEFAULT '',
  `db_columns` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_node_field`
--
-- ORDER BY:  `field_name`

LOCK TABLES `content_node_field` WRITE;
/*!40000 ALTER TABLE `content_node_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_node_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_node_field_instance`
--

DROP TABLE IF EXISTS `content_node_field_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_node_field_instance` (
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `widget_type` varchar(32) NOT NULL DEFAULT '',
  `widget_settings` mediumtext NOT NULL,
  `display_settings` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `widget_module` varchar(127) NOT NULL DEFAULT '',
  `widget_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_name`,`type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_node_field_instance`
--
-- ORDER BY:  `field_name`,`type_name`

LOCK TABLES `content_node_field_instance` WRITE;
/*!40000 ALTER TABLE `content_node_field_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_node_field_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctools_css_cache`
--

DROP TABLE IF EXISTS `ctools_css_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctools_css_cache` (
  `cid` varchar(128) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `css` longtext,
  `filter` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctools_css_cache`
--
-- ORDER BY:  `cid`

LOCK TABLES `ctools_css_cache` WRITE;
/*!40000 ALTER TABLE `ctools_css_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctools_css_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctools_object_cache`
--

DROP TABLE IF EXISTS `ctools_object_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctools_object_cache` (
  `sid` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `obj` varchar(32) NOT NULL,
  `updated` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`sid`,`obj`,`name`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctools_object_cache`
--
-- ORDER BY:  `sid`,`obj`,`name`

LOCK TABLES `ctools_object_cache` WRITE;
/*!40000 ALTER TABLE `ctools_object_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctools_object_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devel_queries`
--

DROP TABLE IF EXISTS `devel_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devel_queries` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devel_queries`
--
-- ORDER BY:  `hash`

LOCK TABLES `devel_queries` WRITE;
/*!40000 ALTER TABLE `devel_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `devel_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devel_times`
--

DROP TABLE IF EXISTS `devel_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devel_times` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL DEFAULT '0',
  `time` float DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devel_times`
--
-- ORDER BY:  `tid`

LOCK TABLES `devel_times` WRITE;
/*!40000 ALTER TABLE `devel_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `devel_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filemime` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--
-- ORDER BY:  `fid`

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (6,1,'IntegrationTester.swf','sites/default/files/flash/IntegrationTester_1.swf','application/x-shockwave-flash',490414,1,1282229785);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_formats`
--

DROP TABLE IF EXISTS `filter_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_formats` (
  `format` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `roles` varchar(255) NOT NULL DEFAULT '',
  `cache` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`format`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_formats`
--
-- ORDER BY:  `format`

LOCK TABLES `filter_formats` WRITE;
/*!40000 ALTER TABLE `filter_formats` DISABLE KEYS */;
INSERT INTO `filter_formats` VALUES (1,'Filtered HTML',',1,2,',1);
INSERT INTO `filter_formats` VALUES (2,'Full HTML','',1);
INSERT INTO `filter_formats` VALUES (3,'PHP code',',2,',0);
INSERT INTO `filter_formats` VALUES (5,'Flash XML Data',',4,3,',1);
/*!40000 ALTER TABLE `filter_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `format` int(11) NOT NULL DEFAULT '0',
  `module` varchar(64) NOT NULL DEFAULT '',
  `delta` tinyint(4) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fmd` (`format`,`module`,`delta`),
  KEY `list` (`format`,`weight`,`module`,`delta`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--
-- ORDER BY:  `fid`

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (1,1,'filter',2,0);
INSERT INTO `filters` VALUES (2,1,'filter',0,1);
INSERT INTO `filters` VALUES (3,1,'filter',1,2);
INSERT INTO `filters` VALUES (4,1,'filter',3,10);
INSERT INTO `filters` VALUES (5,2,'filter',2,0);
INSERT INTO `filters` VALUES (6,2,'filter',1,1);
INSERT INTO `filters` VALUES (7,2,'filter',3,10);
INSERT INTO `filters` VALUES (12,3,'php',0,0);
INSERT INTO `filters` VALUES (15,5,'filter',0,1);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flashnode`
--

DROP TABLE IF EXISTS `flashnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flashnode` (
  `vid` int(10) unsigned NOT NULL,
  `fid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `display` tinyint(3) unsigned NOT NULL,
  `substitution` longtext NOT NULL,
  `flashvars` longtext NOT NULL,
  `base` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flashnode`
--
-- ORDER BY:  `vid`

LOCK TABLES `flashnode` WRITE;
/*!40000 ALTER TABLE `flashnode` DISABLE KEYS */;
INSERT INTO `flashnode` VALUES (41,6,41,600,960,2,'!default','','','');
/*!40000 ALTER TABLE `flashnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flood`
--

DROP TABLE IF EXISTS `flood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flood` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(64) NOT NULL DEFAULT '',
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `allow` (`event`,`hostname`,`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flood`
--
-- ORDER BY:  `fid`

LOCK TABLES `flood` WRITE;
/*!40000 ALTER TABLE `flood` DISABLE KEYS */;
INSERT INTO `flood` VALUES (172,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151843);
INSERT INTO `flood` VALUES (173,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151850);
INSERT INTO `flood` VALUES (174,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151881);
INSERT INTO `flood` VALUES (175,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151909);
INSERT INTO `flood` VALUES (176,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151914);
INSERT INTO `flood` VALUES (177,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151930);
INSERT INTO `flood` VALUES (178,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151935);
INSERT INTO `flood` VALUES (179,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282151942);
INSERT INTO `flood` VALUES (180,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152084);
INSERT INTO `flood` VALUES (181,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152087);
INSERT INTO `flood` VALUES (182,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152100);
INSERT INTO `flood` VALUES (183,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152103);
INSERT INTO `flood` VALUES (184,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152120);
INSERT INTO `flood` VALUES (185,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152124);
INSERT INTO `flood` VALUES (186,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152127);
INSERT INTO `flood` VALUES (187,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152127);
INSERT INTO `flood` VALUES (188,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152130);
INSERT INTO `flood` VALUES (189,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152133);
INSERT INTO `flood` VALUES (190,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152144);
INSERT INTO `flood` VALUES (191,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152145);
INSERT INTO `flood` VALUES (192,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152529);
INSERT INTO `flood` VALUES (193,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152732);
INSERT INTO `flood` VALUES (194,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152762);
INSERT INTO `flood` VALUES (195,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152765);
INSERT INTO `flood` VALUES (196,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152768);
INSERT INTO `flood` VALUES (197,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152773);
INSERT INTO `flood` VALUES (198,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152774);
INSERT INTO `flood` VALUES (199,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152788);
INSERT INTO `flood` VALUES (200,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282152788);
INSERT INTO `flood` VALUES (201,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153732);
INSERT INTO `flood` VALUES (202,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153735);
INSERT INTO `flood` VALUES (203,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153741);
INSERT INTO `flood` VALUES (204,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153751);
INSERT INTO `flood` VALUES (205,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153753);
INSERT INTO `flood` VALUES (206,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153760);
INSERT INTO `flood` VALUES (207,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153761);
INSERT INTO `flood` VALUES (208,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153766);
INSERT INTO `flood` VALUES (209,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153768);
INSERT INTO `flood` VALUES (210,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153809);
INSERT INTO `flood` VALUES (211,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153815);
INSERT INTO `flood` VALUES (212,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153818);
INSERT INTO `flood` VALUES (213,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153827);
INSERT INTO `flood` VALUES (214,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282153828);
INSERT INTO `flood` VALUES (215,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282154164);
INSERT INTO `flood` VALUES (216,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282154168);
INSERT INTO `flood` VALUES (217,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282154428);
INSERT INTO `flood` VALUES (218,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282154430);
INSERT INTO `flood` VALUES (219,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282155744);
INSERT INTO `flood` VALUES (220,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282155745);
INSERT INTO `flood` VALUES (221,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282155748);
INSERT INTO `flood` VALUES (222,'quilted_custom_rebuild_registry_warning','18.134.6.249',1282156380);
INSERT INTO `flood` VALUES (223,'quilted_custom_rebuild_registry_warning','18.134.6.249',1282156381);
INSERT INTO `flood` VALUES (224,'quilted_custom_rebuild_registry_warning','18.134.6.249',1282221839);
INSERT INTO `flood` VALUES (225,'quilted_custom_rebuild_registry_warning','18.134.6.249',1282221844);
INSERT INTO `flood` VALUES (226,'quilted_custom_rebuild_registry_warning','18.134.6.249',1282221850);
INSERT INTO `flood` VALUES (227,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282228098);
INSERT INTO `flood` VALUES (228,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282228098);
INSERT INTO `flood` VALUES (229,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282228103);
INSERT INTO `flood` VALUES (230,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282231576);
INSERT INTO `flood` VALUES (231,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282231597);
INSERT INTO `flood` VALUES (232,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282231615);
INSERT INTO `flood` VALUES (233,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282231628);
INSERT INTO `flood` VALUES (234,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282232529);
INSERT INTO `flood` VALUES (235,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282232582);
INSERT INTO `flood` VALUES (236,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282233432);
INSERT INTO `flood` VALUES (237,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282233466);
INSERT INTO `flood` VALUES (238,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282233488);
INSERT INTO `flood` VALUES (239,'quilted_custom_rebuild_registry_warning','76.127.176.62',1282233492);
/*!40000 ALTER TABLE `flood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_custom`
--

DROP TABLE IF EXISTS `menu_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_custom` (
  `menu_name` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`menu_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_custom`
--
-- ORDER BY:  `menu_name`

LOCK TABLES `menu_custom` WRITE;
/*!40000 ALTER TABLE `menu_custom` DISABLE KEYS */;
INSERT INTO `menu_custom` VALUES ('admin_menu','Administration menu','');
INSERT INTO `menu_custom` VALUES ('devel','Development','Development links.');
INSERT INTO `menu_custom` VALUES ('features','Features','Menu items for any enabled features.');
INSERT INTO `menu_custom` VALUES ('navigation','Navigation','The navigation menu is provided by Drupal and is the main interactive menu for any site. It is usually the only menu that contains personalized links for authenticated users, and is often not even visible to anonymous users.');
INSERT INTO `menu_custom` VALUES ('primary-links','Primary links','Primary links are often used at the theme layer to show the major sections of a site. A typical representation for primary links would be tabs along the top.');
INSERT INTO `menu_custom` VALUES ('secondary-links','Secondary links','Secondary links are often used for pages like legal notices, contact details, and other secondary navigation items that play a lesser role than primary links');
/*!40000 ALTER TABLE `menu_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_links`
--

DROP TABLE IF EXISTS `menu_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_links` (
  `menu_name` varchar(32) NOT NULL DEFAULT '',
  `mlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plid` int(10) unsigned NOT NULL DEFAULT '0',
  `link_path` varchar(255) NOT NULL DEFAULT '',
  `router_path` varchar(255) NOT NULL DEFAULT '',
  `link_title` varchar(255) NOT NULL DEFAULT '',
  `options` text,
  `module` varchar(255) NOT NULL DEFAULT 'system',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `external` smallint(6) NOT NULL DEFAULT '0',
  `has_children` smallint(6) NOT NULL DEFAULT '0',
  `expanded` smallint(6) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `depth` smallint(6) NOT NULL DEFAULT '0',
  `customized` smallint(6) NOT NULL DEFAULT '0',
  `p1` int(10) unsigned NOT NULL DEFAULT '0',
  `p2` int(10) unsigned NOT NULL DEFAULT '0',
  `p3` int(10) unsigned NOT NULL DEFAULT '0',
  `p4` int(10) unsigned NOT NULL DEFAULT '0',
  `p5` int(10) unsigned NOT NULL DEFAULT '0',
  `p6` int(10) unsigned NOT NULL DEFAULT '0',
  `p7` int(10) unsigned NOT NULL DEFAULT '0',
  `p8` int(10) unsigned NOT NULL DEFAULT '0',
  `p9` int(10) unsigned NOT NULL DEFAULT '0',
  `updated` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mlid`),
  KEY `path_menu` (`link_path`(128),`menu_name`),
  KEY `menu_plid_expand_child` (`menu_name`,`plid`,`expanded`,`has_children`),
  KEY `menu_parents` (`menu_name`,`p1`,`p2`,`p3`,`p4`,`p5`,`p6`,`p7`,`p8`,`p9`),
  KEY `router_path` (`router_path`(128))
) ENGINE=MyISAM AUTO_INCREMENT=342 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_links`
--
-- ORDER BY:  `mlid`

LOCK TABLES `menu_links` WRITE;
/*!40000 ALTER TABLE `menu_links` DISABLE KEYS */;
INSERT INTO `menu_links` VALUES ('navigation',1,0,'batch','batch','','a:0:{}','system',-1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',2,0,'admin','admin','Administer','a:0:{}','system',0,0,1,0,9,1,0,2,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',3,0,'node','node','Content','a:0:{}','system',-1,0,0,0,0,1,0,3,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',4,0,'logout','logout','Log out','a:0:{}','system',0,0,0,0,10,1,0,4,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',5,0,'rss.xml','rss.xml','RSS feed','a:0:{}','system',-1,0,0,0,0,1,0,5,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',6,0,'user','user','User account','a:0:{}','system',-1,0,0,0,0,1,0,6,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',7,0,'node/%','node/%','','a:0:{}','system',-1,0,0,0,0,1,0,7,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',8,2,'admin/compact','admin/compact','Compact mode','a:0:{}','system',-1,0,0,0,0,2,0,2,8,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',9,0,'filter/tips','filter/tips','Compose tips','a:0:{}','system',1,0,0,0,0,1,0,9,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',10,2,'admin/content','admin/content','Content management','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:27:\"Manage your site\'s content.\";}}','system',0,0,1,0,-10,2,0,2,10,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',11,0,'node/add','node/add','Create content','a:0:{}','system',0,0,1,0,1,1,0,11,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',14,0,'system/files','system/files','File download','a:0:{}','system',-1,0,0,0,0,1,0,14,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',15,2,'admin/help','admin/help','Help','a:0:{}','system',0,0,0,0,9,2,0,2,15,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',16,2,'admin/reports','admin/reports','Reports','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:59:\"View reports from system logs and other status information.\";}}','system',0,0,1,0,5,2,0,2,16,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',17,2,'admin/build','admin/build','Site building','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:38:\"Control how your site looks and feels.\";}}','system',0,0,1,0,-10,2,0,2,17,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',18,2,'admin/settings','admin/settings','Site configuration','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:40:\"Adjust basic site configuration options.\";}}','system',0,0,1,0,-5,2,0,2,18,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',19,0,'user/autocomplete','user/autocomplete','User autocomplete','a:0:{}','system',-1,0,0,0,0,1,0,19,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',20,2,'admin/user','admin/user','User management','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:61:\"Manage your site\'s users, groups and access to site features.\";}}','system',0,0,1,0,0,2,0,2,20,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',21,0,'user/%','user/%','My account','a:0:{}','system',0,0,0,0,0,1,0,21,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',22,20,'admin/user/rules','admin/user/rules','Access rules','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:80:\"List and create rules to disallow usernames, e-mail addresses, and IP addresses.\";}}','system',0,0,1,0,0,3,0,2,20,22,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',23,18,'admin/settings/actions','admin/settings/actions','Actions','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:41:\"Manage the actions defined for your site.\";}}','system',0,0,1,0,0,3,0,2,18,23,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',24,18,'admin/settings/admin','admin/settings/admin','Administration theme','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:55:\"Settings for how your administrative pages should look.\";}}','system',0,0,0,0,0,3,0,2,18,24,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',25,17,'admin/build/block','admin/build/block','Blocks','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:79:\"Configure what block content appears in your site\'s sidebars and other regions.\";}}','system',0,0,1,0,0,3,0,2,17,25,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',26,18,'admin/settings/clean-urls','admin/settings/clean-urls','Clean URLs','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:43:\"Enable or disable clean URLs for your site.\";}}','system',0,0,0,0,0,3,0,2,18,26,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',28,10,'admin/content/node','admin/content/node','Content','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:43:\"View, edit, and delete your site\'s content.\";}}','system',0,0,1,0,0,3,0,2,10,28,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',29,10,'admin/content/types','admin/content/types','Content types','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:82:\"Manage posts by content type, including default status, front page promotion, etc.\";}}','system',0,0,1,0,0,3,0,2,10,29,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',30,18,'admin/settings/date-time','admin/settings/date-time','Date and time','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:89:\"Settings for how Drupal displays date and time, as well as the system\'s default timezone.\";}}','system',0,0,0,0,0,3,0,2,18,30,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',31,0,'node/%/delete','node/%/delete','Delete','a:0:{}','system',-1,0,0,0,1,1,0,31,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',32,21,'user/%/delete','user/%/delete','Delete','a:0:{}','system',-1,0,0,0,0,2,0,21,32,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',33,18,'admin/settings/error-reporting','admin/settings/error-reporting','Error reporting','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:93:\"Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.\";}}','system',0,0,0,0,0,3,0,2,18,33,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',34,18,'admin/settings/file-system','admin/settings/file-system','File system','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:68:\"Tell Drupal where to store uploaded files and how they are accessed.\";}}','system',0,0,0,0,0,3,0,2,18,34,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',35,18,'admin/settings/image-toolkit','admin/settings/image-toolkit','Image toolkit','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:74:\"Choose which image toolkit to use if you have installed optional toolkits.\";}}','system',0,0,0,0,0,3,0,2,18,35,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',36,18,'admin/settings/filters','admin/settings/filters','Input formats','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:127:\"Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.\";}}','system',0,0,1,0,0,3,0,2,18,36,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',37,18,'admin/settings/logging','admin/settings/logging','Logging and alerts','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:156:\"Settings for logging and alerts modules. Various modules can route Drupal\'s system events to different destination, such as syslog, database, email, ...etc.\";}}','system',0,0,1,0,0,3,0,2,18,37,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',38,17,'admin/build/menu','admin/build/menu','Menus','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:116:\"Control your site\'s navigation menu, primary links and secondary links. as well as rename and reorganize menu items.\";}}','system',0,0,1,0,0,3,0,2,17,38,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',39,17,'admin/build/modules','admin/build/modules','Modules','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:47:\"Enable or disable add-on modules for your site.\";}}','system',0,0,1,0,0,3,0,2,17,39,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',40,18,'admin/settings/performance','admin/settings/performance','Performance','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:101:\"Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.\";}}','system',0,0,0,0,0,3,0,2,18,40,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',41,20,'admin/user/permissions','admin/user/permissions','Permissions','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:64:\"Determine access to features by selecting permissions for roles.\";}}','system',0,0,0,0,0,3,0,2,20,41,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',42,10,'admin/content/node-settings','admin/content/node-settings','Post settings','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:126:\"Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.\";}}','system',0,0,0,0,0,3,0,2,10,42,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',43,10,'admin/content/rss-publishing','admin/content/rss-publishing','RSS publishing','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:92:\"Configure the number of items per feed and whether feeds should be titles/teasers/full-text.\";}}','system',0,0,0,0,0,3,0,2,10,43,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',45,20,'admin/user/roles','admin/user/roles','Roles','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:30:\"List, edit, or add user roles.\";}}','system',0,0,0,0,0,3,0,2,20,45,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',46,18,'admin/settings/site-information','admin/settings/site-information','Site information','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:107:\"Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.\";}}','system',0,0,0,0,0,3,0,2,18,46,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',47,18,'admin/settings/site-maintenance','admin/settings/site-maintenance','Site maintenance','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:63:\"Take the site off-line for maintenance or bring it back online.\";}}','system',0,0,0,0,0,3,0,2,18,47,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',48,16,'admin/reports/status','admin/reports/status','Status report','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:74:\"Get a status report about your site\'s operation and any detected problems.\";}}','system',0,0,0,0,10,3,0,2,16,48,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',49,17,'admin/build/themes','admin/build/themes','Themes','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:57:\"Change which theme your site uses or allows users to set.\";}}','system',0,0,1,0,0,3,0,2,17,49,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',50,20,'admin/user/settings','admin/user/settings','User settings','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:101:\"Configure default behavior of users, including registration requirements, e-mails, and user pictures.\";}}','system',0,0,0,0,0,3,0,2,20,50,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',51,20,'admin/user/user','admin/user/user','Users','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:26:\"List, add, and edit users.\";}}','system',0,0,1,0,0,3,0,2,20,51,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',52,15,'admin/help/block','admin/help/block','block','a:0:{}','system',-1,0,0,0,0,3,0,2,15,52,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',55,15,'admin/help/filter','admin/help/filter','filter','a:0:{}','system',-1,0,0,0,0,3,0,2,15,55,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',56,15,'admin/help/help','admin/help/help','help','a:0:{}','system',-1,0,0,0,0,3,0,2,15,56,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',57,15,'admin/help/menu','admin/help/menu','menu','a:0:{}','system',-1,0,0,0,0,3,0,2,15,57,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',58,15,'admin/help/node','admin/help/node','node','a:0:{}','system',-1,0,0,0,0,3,0,2,15,58,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',59,15,'admin/help/system','admin/help/system','system','a:0:{}','system',-1,0,0,0,0,3,0,2,15,59,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',60,15,'admin/help/user','admin/help/user','user','a:0:{}','system',-1,0,0,0,0,3,0,2,15,60,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',61,36,'admin/settings/filters/%','admin/settings/filters/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,18,36,61,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',62,26,'admin/settings/clean-urls/check','admin/settings/clean-urls/check','Clean URL check','a:0:{}','system',-1,0,0,0,0,4,0,2,18,26,62,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',63,23,'admin/settings/actions/configure','admin/settings/actions/configure','Configure an advanced action','a:0:{}','system',-1,0,0,0,0,4,0,2,18,23,63,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',64,25,'admin/build/block/configure','admin/build/block/configure','Configure block','a:0:{}','system',-1,0,0,0,0,4,0,2,17,25,64,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',65,17,'admin/build/menu-customize/%','admin/build/menu-customize/%','Customize menu','a:0:{}','system',-1,0,0,0,0,3,0,2,17,65,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',66,30,'admin/settings/date-time/lookup','admin/settings/date-time/lookup','Date and time lookup','a:0:{}','system',-1,0,0,0,0,4,0,2,18,30,66,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',67,25,'admin/build/block/delete','admin/build/block/delete','Delete block','a:0:{}','system',-1,0,0,0,0,4,0,2,17,25,67,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',68,36,'admin/settings/filters/delete','admin/settings/filters/delete','Delete input format','a:0:{}','system',-1,0,0,0,0,4,0,2,18,36,68,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',69,22,'admin/user/rules/delete','admin/user/rules/delete','Delete rule','a:0:{}','system',-1,0,0,0,0,4,0,2,20,22,69,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',70,45,'admin/user/roles/edit','admin/user/roles/edit','Edit role','a:0:{}','system',-1,0,0,0,0,4,0,2,20,45,70,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',71,22,'admin/user/rules/edit','admin/user/rules/edit','Edit rule','a:0:{}','system',-1,0,0,0,0,4,0,2,20,22,71,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',72,48,'admin/reports/status/php','admin/reports/status/php','PHP','a:0:{}','system',-1,0,0,0,0,4,0,2,16,48,72,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',73,42,'admin/content/node-settings/rebuild','admin/content/node-settings/rebuild','Rebuild permissions','a:0:{}','system',-1,0,0,0,0,4,0,2,10,42,73,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',74,23,'admin/settings/actions/orphan','admin/settings/actions/orphan','Remove orphans','a:0:{}','system',-1,0,0,0,0,4,0,2,18,23,74,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',75,48,'admin/reports/status/run-cron','admin/reports/status/run-cron','Run cron','a:1:{s:5:\"alter\";b:1;}','system',-1,0,0,0,0,4,0,2,16,48,75,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',76,48,'admin/reports/status/sql','admin/reports/status/sql','SQL','a:0:{}','system',-1,0,0,0,0,4,0,2,16,48,76,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',77,23,'admin/settings/actions/delete/%','admin/settings/actions/delete/%','Delete action','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:17:\"Delete an action.\";}}','system',-1,0,0,0,0,4,0,2,18,23,77,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',78,0,'admin/build/menu-customize/%/delete','admin/build/menu-customize/%/delete','Delete menu','a:0:{}','system',-1,0,0,0,0,1,0,78,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',79,162,'admin/build/block/list/js','admin/build/block/list/js','JavaScript List Form','a:0:{}','system',-1,0,0,0,0,5,0,2,17,25,162,79,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',80,168,'admin/build/modules/list/confirm','admin/build/modules/list/confirm','List','a:0:{}','system',-1,0,0,0,0,5,0,2,17,39,168,80,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',81,0,'user/reset/%/%/%','user/reset/%/%/%','Reset password','a:0:{}','system',-1,0,0,0,0,1,0,81,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',82,180,'admin/build/modules/uninstall/confirm','admin/build/modules/uninstall/confirm','Uninstall','a:0:{}','system',-1,0,0,0,0,5,0,2,17,39,180,82,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',83,0,'node/%/revisions/%/delete','node/%/revisions/%/delete','Delete earlier revision','a:0:{}','system',-1,0,0,0,0,1,0,83,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',84,0,'node/%/revisions/%/revert','node/%/revisions/%/revert','Revert to earlier revision','a:0:{}','system',-1,0,0,0,0,1,0,84,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',85,0,'node/%/revisions/%/view','node/%/revisions/%/view','Revisions','a:0:{}','system',-1,0,0,0,0,1,0,85,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',86,38,'admin/build/menu/item/%/delete','admin/build/menu/item/%/delete','Delete menu item','a:0:{}','system',-1,0,0,0,0,4,0,2,17,38,86,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',87,38,'admin/build/menu/item/%/edit','admin/build/menu/item/%/edit','Edit menu item','a:0:{}','system',-1,0,0,0,0,4,0,2,17,38,87,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',88,38,'admin/build/menu/item/%/reset','admin/build/menu/item/%/reset','Reset menu item','a:0:{}','system',-1,0,0,0,0,4,0,2,17,38,88,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',89,38,'admin/build/menu-customize/navigation','admin/build/menu-customize/%','Navigation','a:0:{}','menu',0,0,0,0,0,4,0,2,17,38,89,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',90,38,'admin/build/menu-customize/primary-links','admin/build/menu-customize/%','Primary links','a:0:{}','menu',0,0,0,0,0,4,0,2,17,38,90,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',91,38,'admin/build/menu-customize/secondary-links','admin/build/menu-customize/%','Secondary links','a:0:{}','menu',0,0,0,0,0,4,0,2,17,38,91,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',92,0,'taxonomy/autocomplete','taxonomy/autocomplete','Autocomplete taxonomy','a:0:{}','system',-1,0,0,0,0,1,0,92,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',93,16,'admin/reports/dblog','admin/reports/dblog','Recent log entries','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:43:\"View events that have recently been logged.\";}}','system',0,0,0,0,-1,3,0,2,16,93,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',94,10,'admin/content/taxonomy','admin/content/taxonomy','Taxonomy','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:67:\"Manage tagging, categorization, and classification of your content.\";}}','system',0,0,1,0,0,3,0,2,10,94,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',95,0,'taxonomy/term/%','taxonomy/term/%','Taxonomy term','a:0:{}','system',-1,0,0,0,0,1,0,95,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',96,16,'admin/reports/access-denied','admin/reports/access-denied','Top \'access denied\' errors','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:35:\"View \'access denied\' errors (403s).\";}}','system',0,0,0,0,0,3,0,2,16,96,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',97,16,'admin/reports/page-not-found','admin/reports/page-not-found','Top \'page not found\' errors','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:36:\"View \'page not found\' errors (404s).\";}}','system',0,0,0,0,0,3,0,2,16,97,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',98,15,'admin/help/dblog','admin/help/dblog','dblog','a:0:{}','system',-1,0,0,0,0,3,0,2,15,98,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',99,15,'admin/help/taxonomy','admin/help/taxonomy','taxonomy','a:0:{}','system',-1,0,0,0,0,3,0,2,15,99,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',100,37,'admin/settings/logging/dblog','admin/settings/logging/dblog','Database logging','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:169:\"Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.\";}}','system',0,0,0,0,0,4,0,2,18,37,100,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',101,16,'admin/reports/event/%','admin/reports/event/%','Details','a:0:{}','system',-1,0,0,0,0,3,0,2,16,101,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',102,94,'admin/content/taxonomy/%','admin/content/taxonomy/%','List terms','a:0:{}','system',-1,0,0,0,0,4,0,2,10,94,102,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',103,94,'admin/content/taxonomy/edit/term','admin/content/taxonomy/edit/term','Edit term','a:0:{}','system',-1,0,0,0,0,4,0,2,10,94,103,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',104,94,'admin/content/taxonomy/edit/vocabulary/%','admin/content/taxonomy/edit/vocabulary/%','Edit vocabulary','a:0:{}','system',-1,0,0,0,0,4,0,2,10,94,104,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',105,16,'admin/reports/updates','admin/reports/updates','Available updates','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:82:\"Get a status report about available updates for your installed modules and themes.\";}}','system',0,0,1,0,10,3,0,2,16,105,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',106,11,'node/add/page','node/add/page','Page','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";}}','system',0,0,0,0,0,2,0,11,106,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',108,15,'admin/help/update','admin/help/update','update','a:0:{}','system',-1,0,0,0,0,3,0,2,15,108,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',109,105,'admin/reports/updates/check','admin/reports/updates/check','Manual update check','a:0:{}','system',-1,0,0,0,0,4,0,2,16,105,109,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',110,10,'admin/content/node-type/page','admin/content/node-type/page','Page','a:0:{}','system',-1,0,0,0,0,3,0,2,10,110,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',112,0,'admin/content/node-type/page/delete','admin/content/node-type/page/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,112,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',114,0,'admin/reports/status/run-cron','admin/reports/status/run-cron','Run cron','a:0:{}','devel',0,0,0,0,0,1,0,114,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',115,0,'admin/settings/devel','admin/settings','Devel settings','a:0:{}','devel',0,0,0,0,0,1,0,115,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',116,0,'admin_menu/flush-cache','admin_menu/flush-cache','','a:0:{}','system',-1,0,0,0,0,1,0,116,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',117,0,'admin_menu/toggle-modules','admin_menu/toggle-modules','','a:0:{}','system',-1,0,0,0,0,1,0,117,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',118,0,'content/js_add_more','content/js_add_more','','a:0:{}','system',-1,0,0,0,0,1,0,118,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',119,2,'admin/advanced_help','admin/advanced_help','Advanced help','a:0:{}','system',0,0,0,0,9,2,0,2,119,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',120,0,'devel/queries','devel/queries','Database queries','a:0:{}','system',0,0,1,0,0,1,0,120,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',121,0,'devel/source','devel/source','Display the PHP code of any file in your Drupal installation','a:0:{}','system',-1,0,0,0,0,1,0,121,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',122,0,'devel/php','devel/php','Execute PHP Code','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:21:\"Execute some PHP code\";}}','system',0,0,0,0,0,1,0,122,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',123,0,'devel/reference','devel/reference','Function reference','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:73:\"View a list of currently defined user functions with documentation links.\";}}','system',0,0,0,0,0,1,0,123,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',124,0,'devel/elements','devel/elements','Hook_elements()','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:51:\"View the active form/render elements for this site.\";}}','system',0,0,0,0,0,1,0,124,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',125,0,'devel/phpinfo','devel/phpinfo','PHPinfo()','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:36:\"View your server\'s PHP configuration\";}}','system',0,0,0,0,0,1,0,125,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',126,0,'devel/reinstall','devel/reinstall','Reinstall modules','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:64:\"Run hook_uninstall() and then hook_install() for a given module.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,126,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',127,0,'devel/session','devel/session','Session viewer','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:31:\"List the contents of $_SESSION.\";}}','system',0,0,0,0,0,1,0,127,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',128,0,'devel/switch','devel/switch','Switch user','a:0:{}','system',-1,0,0,0,0,1,0,128,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',129,0,'devel/variable','devel/variable','Variable editor','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:31:\"Edit and delete site variables.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,129,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',130,0,'search/advanced_help/%','search/advanced_help/%','','a:0:{}','system',0,0,0,0,0,1,0,130,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',131,0,'js/admin_menu/cache','js/admin_menu/cache','','a:0:{}','system',-1,0,0,0,0,1,0,131,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',132,0,'help/%/%','help/%/%','','a:0:{}','system',-1,0,0,0,0,1,0,132,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',133,0,'ctools/autocomplete/node','ctools/autocomplete/node','','a:0:{}','system',-1,0,0,0,0,1,0,133,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',134,18,'admin/settings/admin_menu','admin/settings/admin_menu','Administration menu','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:36:\"Adjust administration menu settings.\";}}','system',0,0,0,0,0,3,0,2,18,134,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',135,18,'admin/settings/devel','admin/settings/devel','Devel settings','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:164:\"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href=\"/admin/build/block\">block administration</a> page.\";}}','system',0,0,0,0,0,3,0,2,18,135,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',136,0,'devel/cache/clear','devel/cache/clear','Empty cache','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:100:\"Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,136,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',137,120,'devel/queries/empty','devel/queries/empty','Empty database queries','a:0:{}','system',0,0,0,0,0,2,0,120,137,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',138,17,'admin/build/features','admin/build/features','Features','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:16:\"Manage features.\";}}','system',0,0,1,0,0,3,0,2,17,138,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',139,0,'devel/menu/reset','devel/menu/reset','Rebuild menus','a:2:{s:10:\"attributes\";a:1:{s:5:\"title\";s:113:\"Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.\";}s:5:\"alter\";b:1;}','system',0,0,0,0,0,1,0,139,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',140,0,'advanced_help/search/%','advanced_help/search/%','Search help','a:0:{}','system',0,0,0,0,0,1,0,140,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',141,0,'devel/theme/registry','devel/theme/registry','Theme registry','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:63:\"View a list of available theme functions across the whole site.\";}}','system',0,0,0,0,0,1,0,141,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',142,15,'admin/help/admin_menu','admin/help/admin_menu','admin_menu','a:0:{}','system',-1,0,0,0,0,3,0,2,15,142,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',143,15,'admin/help/content','admin/help/content','content','a:0:{}','system',-1,0,0,0,0,3,0,2,15,143,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',144,15,'admin/help/devel','admin/help/devel','devel','a:0:{}','system',-1,0,0,0,0,3,0,2,15,144,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',145,15,'admin/help/features','admin/help/features','features','a:0:{}','system',-1,0,0,0,0,3,0,2,15,145,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',146,138,'admin/build/features/%','admin/build/features/%','','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:32:\"Display components of a feature.\";}}','system',-1,0,0,0,0,4,0,2,17,138,146,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',147,0,'ctools/context/ajax/configure','ctools/context/ajax/configure','','a:0:{}','system',-1,0,0,0,0,1,0,147,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',148,0,'ctools/context/ajax/add','ctools/context/ajax/add','','a:0:{}','system',-1,0,0,0,0,1,0,148,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',149,0,'ctools/context/ajax/delete','ctools/context/ajax/delete','','a:0:{}','system',-1,0,0,0,0,1,0,149,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',150,25,'admin/build/block/add','admin/build/block/add','Add block','a:0:{}','system',0,0,0,0,0,4,0,2,17,25,150,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',151,29,'admin/content/types/add','admin/content/types/add','Add content type','a:0:{}','system',0,0,0,0,0,4,0,2,10,29,151,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',152,36,'admin/settings/filters/add','admin/settings/filters/add','Add input format','a:0:{}','system',0,0,0,0,1,4,0,2,18,36,152,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',153,38,'admin/build/menu/add','admin/build/menu/add','Add menu','a:0:{}','system',0,0,0,0,0,4,0,2,17,38,153,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',154,22,'admin/user/rules/add','admin/user/rules/add','Add rule','a:0:{}','system',0,0,0,0,0,4,0,2,20,22,154,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',155,51,'admin/user/user/create','admin/user/user/create','Add user','a:0:{}','system',0,0,0,0,0,4,0,2,20,51,155,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',157,22,'admin/user/rules/check','admin/user/rules/check','Check rules','a:0:{}','system',0,0,0,0,0,4,0,2,20,22,157,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',158,138,'admin/build/features/cleanup','admin/build/features/cleanup','Cleanup','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:53:\"Detect and disable any orphaned feature dependencies.\";}}','system',-1,0,0,0,1,4,0,2,17,138,158,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',159,49,'admin/build/themes/settings','admin/build/themes/settings','Configure','a:0:{}','system',0,0,1,0,0,4,0,2,17,49,159,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',160,138,'admin/build/features/create','admin/build/features/create','Create feature','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:21:\"Create a new feature.\";}}','system',0,0,0,0,10,4,0,2,17,138,160,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',161,29,'admin/content/types/fields','admin/content/types/fields','Fields','a:0:{}','system',0,0,0,0,0,4,0,2,10,29,161,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',162,25,'admin/build/block/list','admin/build/block/list','List','a:0:{}','system',0,0,1,0,-10,4,0,2,17,25,162,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',163,28,'admin/content/node/overview','admin/content/node/overview','List','a:0:{}','system',0,0,0,0,-10,4,0,2,10,28,163,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',164,94,'admin/content/taxonomy/list','admin/content/taxonomy/list','List','a:0:{}','system',0,0,0,0,-10,4,0,2,10,94,164,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',165,29,'admin/content/types/list','admin/content/types/list','List','a:0:{}','system',0,0,0,0,-10,4,0,2,10,29,165,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',166,22,'admin/user/rules/list','admin/user/rules/list','List','a:0:{}','system',0,0,0,0,-10,4,0,2,20,22,166,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',167,51,'admin/user/user/list','admin/user/user/list','List','a:0:{}','system',0,0,0,0,-10,4,0,2,20,51,167,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',168,39,'admin/build/modules/list','admin/build/modules/list','List','a:0:{}','system',0,0,0,0,0,4,0,2,17,39,168,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',169,105,'admin/reports/updates/list','admin/reports/updates/list','List','a:0:{}','system',0,0,0,0,0,4,0,2,16,105,169,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',170,49,'admin/build/themes/select','admin/build/themes/select','List','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:25:\"Select the default theme.\";}}','system',0,0,0,0,-1,4,0,2,17,49,170,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',171,36,'admin/settings/filters/list','admin/settings/filters/list','List','a:0:{}','system',0,0,0,0,0,4,0,2,18,36,171,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',172,38,'admin/build/menu/list','admin/build/menu/list','List menus','a:0:{}','system',0,0,0,0,-10,4,0,2,17,38,172,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',173,138,'admin/build/features/manage','admin/build/features/manage','Manage','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:28:\"Enable and disable features.\";}}','system',0,0,0,0,0,4,0,2,17,138,173,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',174,23,'admin/settings/actions/manage','admin/settings/actions/manage','Manage actions','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:41:\"Manage the actions defined for your site.\";}}','system',0,0,0,0,-2,4,0,2,18,23,174,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',175,29,'admin/content/types/page','admin/content/types/page','Page','a:0:{}','system',0,0,1,0,0,4,0,2,10,29,175,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',177,38,'admin/build/menu/settings','admin/build/menu/settings','Settings','a:0:{}','system',0,0,0,0,5,4,0,2,17,38,177,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',178,105,'admin/reports/updates/settings','admin/reports/updates/settings','Settings','a:0:{}','system',0,0,0,0,0,4,0,2,16,105,178,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',180,39,'admin/build/modules/uninstall','admin/build/modules/uninstall','Uninstall','a:0:{}','system',0,0,0,0,0,4,0,2,17,39,180,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('devel',181,129,'devel/variable/edit/%','devel/variable/edit/%','Variable editor','a:0:{}','system',-1,0,0,0,0,2,0,129,181,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',182,0,'admin/build/menu-customize/%/add','admin/build/menu-customize/%/add','Add item','a:0:{}','system',0,0,0,0,0,1,0,182,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',183,162,'admin/build/block/list/bluemarine','admin/build/block/list/bluemarine','Bluemarine','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,183,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',184,159,'admin/build/themes/settings/bluemarine','admin/build/themes/settings/bluemarine','Bluemarine','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,184,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',185,162,'admin/build/block/list/chameleon','admin/build/block/list/chameleon','Chameleon','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,185,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',186,0,'ctools/context/ajax/access/add','ctools/context/ajax/access/add','','a:0:{}','system',-1,0,0,0,0,1,0,186,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',187,0,'ctools/context/ajax/access/delete','ctools/context/ajax/access/delete','','a:0:{}','system',-1,0,0,0,0,1,0,187,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',188,0,'ctools/context/ajax/access/configure','ctools/context/ajax/access/configure','','a:0:{}','system',-1,0,0,0,0,1,0,188,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',189,159,'admin/build/themes/settings/chameleon','admin/build/themes/settings/chameleon','Chameleon','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,189,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',190,0,'admin/settings/filters/%/configure','admin/settings/filters/%/configure','Configure','a:0:{}','system',0,0,0,0,1,1,0,190,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',191,175,'admin/content/types/page/delete','admin/content/types/page/delete','Delete','a:0:{}','system',0,0,0,0,0,5,0,2,10,29,175,191,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',193,175,'admin/content/types/page/display','admin/content/types/page/display','Display fields','a:0:{}','system',0,0,1,0,2,5,0,2,10,29,175,193,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',195,175,'admin/content/types/page/edit','admin/content/types/page/edit','Edit','a:0:{}','system',0,0,0,0,0,5,0,2,10,29,175,195,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',197,0,'admin/settings/filters/%/edit','admin/settings/filters/%/edit','Edit','a:0:{}','system',0,0,0,0,0,1,0,197,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',198,0,'admin/build/menu-customize/%/edit','admin/build/menu-customize/%/edit','Edit menu','a:0:{}','system',0,0,0,0,0,1,0,198,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',199,162,'admin/build/block/list/garland','admin/build/block/list/garland','Garland','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,199,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',200,159,'admin/build/themes/settings/garland','admin/build/themes/settings/garland','Garland','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,200,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',201,159,'admin/build/themes/settings/global','admin/build/themes/settings/global','Global settings','a:0:{}','system',0,0,0,0,-1,5,0,2,17,49,159,201,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',202,0,'admin/content/taxonomy/%/list','admin/content/taxonomy/%/list','List','a:0:{}','system',0,0,0,0,-10,1,0,202,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',203,0,'admin/build/menu-customize/%/list','admin/build/menu-customize/%/list','List items','a:0:{}','system',0,0,0,0,-10,1,0,203,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',204,175,'admin/content/types/page/fields','admin/content/types/page/fields','Manage fields','a:0:{}','system',0,0,0,0,1,5,0,2,10,29,175,204,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',206,162,'admin/build/block/list/marvin','admin/build/block/list/marvin','Marvin','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,206,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',207,159,'admin/build/themes/settings/marvin','admin/build/themes/settings/marvin','Marvin','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,207,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',208,162,'admin/build/block/list/minnelli','admin/build/block/list/minnelli','Minnelli','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,208,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',209,159,'admin/build/themes/settings/minnelli','admin/build/themes/settings/minnelli','Minnelli','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,209,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',210,138,'admin/build/features/export/populate','admin/build/features/export/populate','Populate feature','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:61:\"AHAH callback to populate a feature from selected components.\";}}','system',-1,0,0,0,0,4,0,2,17,138,210,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',211,162,'admin/build/block/list/pushbutton','admin/build/block/list/pushbutton','Pushbutton','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,211,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',212,159,'admin/build/themes/settings/pushbutton','admin/build/themes/settings/pushbutton','Pushbutton','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,212,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',213,0,'admin/settings/filters/%/order','admin/settings/filters/%/order','Rearrange','a:0:{}','system',0,0,0,0,2,1,0,213,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',214,0,'admin/build/features/%/recreate','admin/build/features/%/recreate','Recreate','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:29:\"Recreate an existing feature.\";}}','system',0,0,0,0,11,1,0,214,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',215,162,'admin/build/block/list/seven','admin/build/block/list/seven','Seven','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,215,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',216,159,'admin/build/themes/settings/seven','admin/build/themes/settings/seven','Seven','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,216,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',217,0,'admin/build/features/%/status','admin/build/features/%/status','Status','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:28:\"Javascript status call back.\";}}','system',-1,0,0,0,0,1,0,217,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',218,0,'admin/build/features/%/view','admin/build/features/%/view','View','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:32:\"Display components of a feature.\";}}','system',0,0,0,0,-10,1,0,218,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',219,162,'admin/build/block/list/zen','admin/build/block/list/zen','Zen','a:0:{}','system',0,0,0,0,0,5,0,2,17,25,162,219,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',220,159,'admin/build/themes/settings/zen','admin/build/themes/settings/zen','Zen','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,220,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',221,94,'admin/content/taxonomy/add/vocabulary','admin/content/taxonomy/add/vocabulary','Add vocabulary','a:0:{}','system',0,0,0,0,0,4,0,2,10,94,221,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',222,193,'admin/content/types/page/display/basic','admin/content/types/page/display/basic','Basic','a:0:{}','system',0,0,0,0,0,6,0,2,10,29,175,193,222,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',224,193,'admin/content/types/page/display/rss','admin/content/types/page/display/rss','RSS','a:0:{}','system',0,0,0,0,1,6,0,2,10,29,175,193,224,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',226,0,'admin/content/taxonomy/%/add/term','admin/content/taxonomy/%/add/term','Add term','a:0:{}','system',0,0,0,0,0,1,0,226,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',228,0,'toboggan/denied','toboggan/denied','Access denied','a:0:{}','system',-1,0,0,0,0,1,0,228,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',229,0,'panels/ajax','panels/ajax','','a:0:{}','system',-1,0,0,0,0,1,0,229,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',230,0,'openid/authenticate','openid/authenticate','OpenID Login','a:0:{}','system',-1,0,0,0,0,1,0,230,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',231,0,'views/ajax','views/ajax','Views','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:31:\"Ajax callback for view loading.\";}}','system',-1,0,0,0,0,1,0,231,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',232,20,'admin/user/logintoboggan','admin/user/logintoboggan','LoginToboggan','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:102:\"Set up custom login options like instant login, login redirects, pre-authorized validation roles, etc.\";}}','system',0,0,0,0,0,3,0,2,20,232,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',233,17,'admin/build/panels','admin/build/panels','Panels','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:49:\"Get a bird\'s eye view of items related to Panels.\";}}','system',0,0,1,0,0,3,0,2,17,233,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',234,0,'toboggan/revalidate/%','toboggan/revalidate/%','Re-send validation e-mail','a:0:{}','system',-1,0,0,0,0,1,0,234,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',235,18,'admin/settings/strongarm','admin/settings/strongarm','Strongarm','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:59:\"Manage Drupal variable settings that have been strongarmed.\";}}','system',0,0,0,0,0,3,0,2,18,235,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',236,17,'admin/build/path','admin/build/path','URL aliases','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:46:\"Change your site\'s URL paths by aliasing them.\";}}','system',0,0,1,0,0,3,0,2,17,236,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',237,15,'admin/help/logintoboggan','admin/help/logintoboggan','logintoboggan','a:0:{}','system',-1,0,0,0,0,3,0,2,15,237,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',238,15,'admin/help/openid','admin/help/openid','openid','a:0:{}','system',-1,0,0,0,0,3,0,2,15,238,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',239,15,'admin/help/path','admin/help/path','path','a:0:{}','system',-1,0,0,0,0,3,0,2,15,239,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',240,15,'admin/help/php','admin/help/php','php','a:0:{}','system',-1,0,0,0,0,3,0,2,15,240,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',241,15,'admin/help/strongarm','admin/help/strongarm','strongarm','a:0:{}','system',-1,0,0,0,0,3,0,2,15,241,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',242,236,'admin/build/path/add','admin/build/path/add','Add alias','a:0:{}','system',0,0,0,0,0,4,0,2,17,236,242,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',243,233,'admin/build/panels/dashboard','admin/build/panels/dashboard','Dashboard','a:0:{}','system',0,0,0,0,-10,4,0,2,17,233,243,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',244,21,'user/%/openid/delete','user/%/openid/delete','Delete OpenID','a:0:{}','system',-1,0,0,0,0,2,0,21,244,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',245,236,'admin/build/path/delete','admin/build/path/delete','Delete alias','a:0:{}','system',-1,0,0,0,0,4,0,2,17,236,245,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',246,236,'admin/build/path/edit','admin/build/path/edit','Edit alias','a:0:{}','system',-1,0,0,0,0,4,0,2,17,236,246,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',247,29,'admin/content/types/export','admin/content/types/export','Export','a:0:{}','system',0,0,0,0,3,4,0,2,10,29,247,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',248,29,'admin/content/types/import','admin/content/types/import','Import','a:0:{}','system',0,0,0,0,4,4,0,2,10,29,248,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',249,236,'admin/build/path/list','admin/build/path/list','List','a:0:{}','system',0,0,0,0,-10,4,0,2,17,236,249,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',250,233,'admin/build/panels/settings','admin/build/panels/settings','Settings','a:0:{}','system',0,0,1,0,0,4,0,2,17,233,250,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',251,2,'admin/views/ajax/autocomplete/user','admin/views/ajax/autocomplete/user','','a:0:{}','system',-1,0,0,0,0,2,0,2,251,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',252,250,'admin/build/panels/settings/general','admin/build/panels/settings/general','General','a:0:{}','system',0,0,0,0,-10,5,0,2,17,233,250,252,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',253,0,'user/validate/%/%/%','user/validate/%/%/%','Validate e-mail address','a:0:{}','system',-1,0,0,0,0,1,0,253,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',254,0,'admin/content/node-type/page/groups/%','admin/content/node-type/page/groups/%','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,254,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',255,175,'admin/content/types/page/groups/%','admin/content/types/page/groups/%','Edit group','a:0:{}','system',0,0,1,0,0,5,0,2,10,29,175,255,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',258,0,'admin/content/node-type/page/groups/%/remove','admin/content/node-type/page/groups/%/remove','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,258,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',259,255,'admin/content/types/page/groups/%/remove','admin/content/types/page/groups/%/remove','Edit group','a:0:{}','system',0,0,0,0,0,6,0,2,10,29,175,255,259,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',262,0,'nodereference/autocomplete','nodereference/autocomplete','Nodereference autocomplete','a:0:{}','system',-1,0,0,0,0,1,0,262,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',263,0,'userreference/autocomplete','userreference/autocomplete','Userreference autocomplete','a:0:{}','system',-1,0,0,0,0,1,0,263,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',264,11,'node/add/flashnode','node/add/flashnode','Flash','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:128:\"Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.\";}}','system',0,0,0,0,0,2,0,11,264,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',265,18,'admin/settings/flashnode','admin/settings/flashnode','Flash node','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:39:\"Set various flash node default options.\";}}','system',0,0,0,0,0,3,0,2,18,265,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',266,10,'admin/content/flashnode','admin/content/flashnode','Import Flash','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:82:\"Import and create nodes from files that have been uploaded directly to the server.\";}}','system',0,0,0,0,0,3,0,2,10,266,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',267,15,'admin/help/flashnode','admin/help/flashnode','flashnode','a:0:{}','system',-1,0,0,0,0,3,0,2,15,267,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',268,17,'admin/build/views','admin/build/views','Views','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:144:\"Views are customized lists of content on your system; they are highly configurable and give you control over how lists of content are presented.\";}}','system',0,0,1,0,0,3,0,2,17,268,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',269,15,'admin/help/views_ui','admin/help/views_ui','views_ui','a:0:{}','system',-1,0,0,0,0,3,0,2,15,269,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',270,10,'admin/content/node2','admin/content/node2','','a:0:{}','system',-1,0,0,0,0,3,0,2,10,270,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',271,17,'admin/build/views1/convert','admin/build/views1/convert','Convert view','a:0:{}','system',-1,0,0,0,0,3,0,2,17,271,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',272,17,'admin/build/views1/delete','admin/build/views1/delete','Delete view','a:0:{}','system',-1,0,0,0,0,3,0,2,17,272,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',273,10,'admin/content/node-type/flashnode','admin/content/node-type/flashnode','Flash','a:0:{}','system',-1,0,0,0,0,3,0,2,10,273,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',274,29,'admin/content/types/flashnode','admin/content/types/flashnode','Flash','a:0:{}','system',0,0,1,0,0,4,0,2,10,29,274,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',275,268,'admin/build/views/import','admin/build/views/import','Import','a:0:{}','system',0,0,0,0,0,4,0,2,17,268,275,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',276,233,'admin/build/panels/layouts','admin/build/panels/layouts','Layouts','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:43:\"Add, edit or delete custom content layouts.\";}}','system',0,0,1,0,0,4,0,2,17,233,276,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',277,268,'admin/build/views/add','admin/build/views/add','Add','a:0:{}','system',0,0,0,0,0,4,0,2,17,268,277,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',278,268,'admin/build/views/list','admin/build/views/list','List','a:0:{}','system',0,0,0,0,-1,4,0,2,17,268,278,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',279,268,'admin/build/views/tools','admin/build/views/tools','Tools','a:0:{}','system',0,0,1,0,0,4,0,2,17,268,279,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',280,276,'admin/build/panels/layouts/add-flexible','admin/build/panels/layouts/add-flexible','Add flexible layout','a:0:{}','system',0,0,0,0,0,5,0,2,17,233,276,280,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',281,0,'admin/content/node-type/flashnode/delete','admin/content/node-type/flashnode/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,281,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',282,274,'admin/content/types/flashnode/display','admin/content/types/flashnode/display','Display fields','a:0:{}','system',0,0,1,0,2,5,0,2,10,29,274,282,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',283,274,'admin/content/types/flashnode/delete','admin/content/types/flashnode/delete','Delete','a:0:{}','system',0,0,0,0,0,5,0,2,10,29,274,283,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',284,274,'admin/content/types/flashnode/edit','admin/content/types/flashnode/edit','Edit','a:0:{}','system',0,0,0,0,0,5,0,2,10,29,274,284,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',285,268,'admin/build/views/export/%','admin/build/views/export/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,285,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',286,2,'admin/views/ajax/autocomplete/tag','admin/views/ajax/autocomplete/tag','','a:0:{}','system',-1,0,0,0,0,2,0,2,286,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',287,276,'admin/build/panels/layouts/import','admin/build/panels/layouts/import','Import','a:0:{}','system',0,0,0,0,0,5,0,2,17,233,276,287,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',288,268,'admin/build/views/clone/%','admin/build/views/clone/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,288,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',289,268,'admin/build/views/disable/%','admin/build/views/disable/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,289,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',290,274,'admin/content/types/flashnode/fields','admin/content/types/flashnode/fields','Manage fields','a:0:{}','system',0,0,0,0,1,5,0,2,10,29,274,290,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',291,268,'admin/build/views/enable/%','admin/build/views/enable/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,291,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',292,276,'admin/build/panels/layouts/list','admin/build/panels/layouts/list','List','a:0:{}','system',0,0,0,0,-10,5,0,2,17,233,276,292,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',293,268,'admin/build/views/break-lock/%','admin/build/views/break-lock/%','Delete view','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,293,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',294,268,'admin/build/views/delete/%','admin/build/views/delete/%','Delete view','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,294,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',295,279,'admin/build/views/tools/convert','admin/build/views/tools/convert','Convert','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:29:\"Convert stored Views 1 views.\";}}','system',0,0,0,0,1,5,0,2,17,268,279,295,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',296,279,'admin/build/views/tools/basic','admin/build/views/tools/basic','Basic','a:0:{}','system',0,0,0,0,-10,5,0,2,17,268,279,296,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',297,268,'admin/build/views/edit/%','admin/build/views/edit/%','Edit','a:0:{}','system',0,0,0,0,0,4,0,2,17,268,297,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',298,282,'admin/content/types/flashnode/display/basic','admin/content/types/flashnode/display/basic','Basic','a:0:{}','system',0,0,0,0,0,6,0,2,10,29,274,282,298,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',299,0,'admin/content/node-type/flashnode/groups/%','admin/content/node-type/flashnode/groups/%','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,299,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',300,274,'admin/content/types/flashnode/groups/%','admin/content/types/flashnode/groups/%','Edit group','a:0:{}','system',0,0,1,0,0,5,0,2,10,29,274,300,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',301,268,'admin/build/views/%/add-display/%','admin/build/views/%/add-display/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,301,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',302,282,'admin/content/types/flashnode/display/rss','admin/content/types/flashnode/display/rss','RSS','a:0:{}','system',0,0,0,0,1,6,0,2,10,29,274,282,302,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',303,268,'admin/build/views/%/%/%','admin/build/views/%/%/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,303,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',304,268,'admin/build/views/%/analyze/%','admin/build/views/%/analyze/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,304,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',305,268,'admin/build/views/%/details/%','admin/build/views/%/details/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,305,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',306,268,'admin/build/views/%/preview/%','admin/build/views/%/preview/%','','a:0:{}','system',-1,0,0,0,0,4,0,2,17,268,306,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',307,292,'admin/build/panels/layouts/list/%','admin/build/panels/layouts/list/%','','a:0:{}','system',-1,0,0,0,0,6,0,2,17,233,276,292,307,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',308,0,'admin/content/node-type/flashnode/groups/%/remove','admin/content/node-type/flashnode/groups/%/remove','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,308,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',309,300,'admin/content/types/flashnode/groups/%/remove','admin/content/types/flashnode/groups/%/remove','Edit group','a:0:{}','system',0,0,0,0,0,6,0,2,10,29,274,300,309,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',310,0,'admin/build/panels/layouts/list/%/clone','admin/build/panels/layouts/list/%/clone','Clone','a:0:{}','system',-1,0,0,0,0,1,0,310,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',311,0,'admin/build/panels/layouts/list/%/delete','admin/build/panels/layouts/list/%/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,311,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',312,0,'admin/build/panels/layouts/list/%/disable','admin/build/panels/layouts/list/%/disable','Disable','a:0:{}','system',-1,0,0,0,0,1,0,312,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',313,0,'admin/build/panels/layouts/list/%/edit','admin/build/panels/layouts/list/%/edit','Edit','a:0:{}','system',0,0,0,0,0,1,0,313,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',314,0,'admin/build/panels/layouts/list/%/enable','admin/build/panels/layouts/list/%/enable','Enable','a:0:{}','system',-1,0,0,0,0,1,0,314,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',315,0,'admin/build/panels/layouts/list/%/export','admin/build/panels/layouts/list/%/export','Export','a:0:{}','system',0,0,0,0,0,1,0,315,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',316,0,'admin/build/panels/layouts/list/%/revert','admin/build/panels/layouts/list/%/revert','Revert','a:0:{}','system',-1,0,0,0,0,1,0,316,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',324,162,'admin/build/block/list/quilted_custom','admin/build/block/list/quilted_custom','The Quilted base theme','a:0:{}','system',0,0,0,0,-10,5,0,2,17,25,162,324,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',325,159,'admin/build/themes/settings/quilted_custom','admin/build/themes/settings/quilted_custom','The Quilted base theme','a:0:{}','system',0,0,0,0,0,5,0,2,17,49,159,325,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',326,11,'node/add/flash-data','node/add/flash-data','Flash Data','a:1:{s:10:\"attributes\";a:1:{s:5:\"title\";s:53:\"Each node logs XML data sent from a Flash application\";}}','system',0,0,0,0,0,2,0,11,326,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',327,10,'admin/content/node-type/flash-data','admin/content/node-type/flash-data','Flash Data','a:0:{}','system',-1,0,0,0,0,3,0,2,10,327,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',328,29,'admin/content/types/flash-data','admin/content/types/flash-data','Flash Data','a:0:{}','system',0,0,1,0,0,4,0,2,10,29,328,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',329,0,'admin/content/node-type/flash-data/delete','admin/content/node-type/flash-data/delete','Delete','a:0:{}','system',-1,0,0,0,0,1,0,329,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',330,328,'admin/content/types/flash-data/delete','admin/content/types/flash-data/delete','Delete','a:0:{}','system',0,0,0,0,0,5,0,2,10,29,328,330,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',331,328,'admin/content/types/flash-data/display','admin/content/types/flash-data/display','Display fields','a:0:{}','system',0,0,1,0,2,5,0,2,10,29,328,331,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',332,328,'admin/content/types/flash-data/edit','admin/content/types/flash-data/edit','Edit','a:0:{}','system',0,0,0,0,0,5,0,2,10,29,328,332,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',333,328,'admin/content/types/flash-data/fields','admin/content/types/flash-data/fields','Manage fields','a:0:{}','system',0,0,0,0,1,5,0,2,10,29,328,333,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',334,331,'admin/content/types/flash-data/display/basic','admin/content/types/flash-data/display/basic','Basic','a:0:{}','system',0,0,0,0,0,6,0,2,10,29,328,331,334,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',335,0,'admin/content/node-type/flash-data/groups/%','admin/content/node-type/flash-data/groups/%','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,335,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',336,328,'admin/content/types/flash-data/groups/%','admin/content/types/flash-data/groups/%','Edit group','a:0:{}','system',0,0,1,0,0,5,0,2,10,29,328,336,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',337,331,'admin/content/types/flash-data/display/rss','admin/content/types/flash-data/display/rss','RSS','a:0:{}','system',0,0,0,0,1,6,0,2,10,29,328,331,337,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',338,0,'admin/content/node-type/flash-data/groups/%/remove','admin/content/node-type/flash-data/groups/%/remove','Edit group','a:0:{}','system',-1,0,0,0,0,1,0,338,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('admin_menu',339,336,'admin/content/types/flash-data/groups/%/remove','admin/content/types/flash-data/groups/%/remove','Edit group','a:0:{}','system',0,0,0,0,0,6,0,2,10,29,328,336,339,0,0,0,0);
INSERT INTO `menu_links` VALUES ('primary-links',340,0,'flash_data','flash_data','Flash Data','a:0:{}','system',0,0,0,0,0,1,0,340,0,0,0,0,0,0,0,0,0);
INSERT INTO `menu_links` VALUES ('navigation',341,0,'flash_input','flash_input','Testing','a:0:{}','system',-1,0,0,0,0,1,0,341,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_router`
--

DROP TABLE IF EXISTS `menu_router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_router` (
  `path` varchar(255) NOT NULL DEFAULT '',
  `load_functions` text NOT NULL,
  `to_arg_functions` text NOT NULL,
  `access_callback` varchar(255) NOT NULL DEFAULT '',
  `access_arguments` text,
  `page_callback` varchar(255) NOT NULL DEFAULT '',
  `page_arguments` text,
  `fit` int(11) NOT NULL DEFAULT '0',
  `number_parts` smallint(6) NOT NULL DEFAULT '0',
  `tab_parent` varchar(255) NOT NULL DEFAULT '',
  `tab_root` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_callback` varchar(255) NOT NULL DEFAULT '',
  `title_arguments` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `block_callback` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `position` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  `file` mediumtext,
  PRIMARY KEY (`path`),
  KEY `fit` (`fit`),
  KEY `tab_parent` (`tab_parent`),
  KEY `tab_root_weight_title` (`tab_root`(64),`weight`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_router`
--
-- ORDER BY:  `path`

LOCK TABLES `menu_router` WRITE;
/*!40000 ALTER TABLE `menu_router` DISABLE KEYS */;
INSERT INTO `menu_router` VALUES ('admin','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_main_admin_page','a:0:{}',1,1,'','admin','Administer','t','',6,'','','',9,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/advanced_help','','','user_access','a:1:{i:0;s:24:\"view advanced help index\";}','advanced_help_index_page','a:0:{}',3,2,'','admin/advanced_help','Advanced help','t','',6,'','','',9,'');
INSERT INTO `menu_router` VALUES ('admin/build','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/build','Site building','t','',6,'','Control how your site looks and feels.','right',-10,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','block_admin_display','a:0:{}',7,3,'','admin/build/block','Blocks','t','',6,'','Configure what block content appears in your site\'s sidebars and other regions.','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/add','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','drupal_get_form','a:1:{i:0;s:20:\"block_add_block_form\";}',15,4,'admin/build/block','admin/build/block','Add block','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/configure','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','drupal_get_form','a:1:{i:0;s:21:\"block_admin_configure\";}',15,4,'','admin/build/block/configure','Configure block','t','',4,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/delete','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','drupal_get_form','a:1:{i:0;s:16:\"block_box_delete\";}',15,4,'','admin/build/block/delete','Delete block','t','',4,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','block_admin_display','a:0:{}',15,4,'admin/build/block','admin/build/block','List','t','',136,'','','',-10,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/bluemarine','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/bluemarine/bluemarine.info\";s:4:\"name\";s:10:\"bluemarine\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Bluemarine\";s:11:\"description\";s:66:\"Table-based multi-column theme with a marine and ash color scheme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/bluemarine/script.js\";}s:10:\"screenshot\";s:32:\"themes/bluemarine/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:10:\"bluemarine\";}',31,5,'admin/build/block/list','admin/build/block','Bluemarine','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/chameleon','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":11:{s:8:\"filename\";s:31:\"themes/chameleon/chameleon.info\";s:4:\"name\";s:9:\"chameleon\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:32:\"themes/chameleon/chameleon.theme\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:12:{s:4:\"name\";s:9:\"Chameleon\";s:11:\"description\";s:42:\"Minimalist tabled theme with light colors.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:8:\"features\";a:4:{i:0;s:4:\"logo\";i:1;s:7:\"favicon\";i:2;s:4:\"name\";i:3;s:6:\"slogan\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"scripts\";a:1:{s:9:\"script.js\";s:26:\"themes/chameleon/script.js\";}s:10:\"screenshot\";s:31:\"themes/chameleon/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}}}','block_admin_display','a:1:{i:0;s:9:\"chameleon\";}',31,5,'admin/build/block/list','admin/build/block','Chameleon','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/garland','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:27:\"themes/garland/garland.info\";s:4:\"name\";s:7:\"garland\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:7:\"Garland\";s:11:\"description\";s:66:\"Tableless, recolorable, multi-column, fluid width theme (default).\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:24:\"themes/garland/script.js\";}s:10:\"screenshot\";s:29:\"themes/garland/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:7:\"garland\";}',31,5,'admin/build/block/list','admin/build/block','Garland','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/js','','','user_access','a:1:{i:0;s:17:\"administer blocks\";}','block_admin_display_js','a:0:{}',31,5,'','admin/build/block/list/js','JavaScript List Form','t','',4,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/marvin','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:35:\"themes/chameleon/marvin/marvin.info\";s:4:\"name\";s:6:\"marvin\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:0:\"\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:6:\"Marvin\";s:11:\"description\";s:31:\"Boxy tabled theme in all grays.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:9:\"chameleon\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/chameleon/marvin/script.js\";}s:10:\"screenshot\";s:38:\"themes/chameleon/marvin/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:10:\"base_theme\";s:9:\"chameleon\";}}','block_admin_display','a:1:{i:0;s:6:\"marvin\";}',31,5,'admin/build/block/list','admin/build/block','Marvin','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/minnelli','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":13:{s:8:\"filename\";s:37:\"themes/garland/minnelli/minnelli.info\";s:4:\"name\";s:8:\"minnelli\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:14:{s:4:\"name\";s:8:\"Minnelli\";s:11:\"description\";s:56:\"Tableless, recolorable, multi-column, fixed width theme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:7:\"garland\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/garland/minnelli/script.js\";}s:10:\"screenshot\";s:38:\"themes/garland/minnelli/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:6:\"engine\";s:11:\"phptemplate\";s:10:\"base_theme\";s:7:\"garland\";}}','block_admin_display','a:1:{i:0;s:8:\"minnelli\";}',31,5,'admin/build/block/list','admin/build/block','Minnelli','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/pushbutton','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/pushbutton/pushbutton.info\";s:4:\"name\";s:10:\"pushbutton\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Pushbutton\";s:11:\"description\";s:52:\"Tabled, multi-column theme in blue and orange tones.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/pushbutton/script.js\";}s:10:\"screenshot\";s:32:\"themes/pushbutton/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:10:\"pushbutton\";}',31,5,'admin/build/block/list','admin/build/block','Pushbutton','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/quilted_custom','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":14:{s:8:\"filename\";s:51:\"sites/all/themes/quilted_custom/quilted_custom.info\";s:4:\"name\";s:14:\"quilted_custom\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:12:{s:4:\"name\";s:22:\"The Quilted base theme\";s:11:\"description\";s:55:\"A custom Zen subtheme with some Quilted customizations.\";s:10:\"screenshot\";s:53:\"sites/all/themes/quilted_custom/images/screenshot.png\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:3:\"zen\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:22:\"css/quilted_custom.css\";s:54:\"sites/all/themes/quilted_custom/css/quilted_custom.css\";}s:5:\"print\";a:1:{s:13:\"css/print.css\";s:45:\"sites/all/themes/quilted_custom/css/print.css\";}}s:7:\"regions\";a:8:{s:4:\"left\";s:12:\"left sidebar\";s:5:\"right\";s:13:\"right sidebar\";s:6:\"navbar\";s:14:\"navigation bar\";s:11:\"content_top\";s:11:\"content top\";s:14:\"content_bottom\";s:14:\"content bottom\";s:6:\"header\";s:6:\"header\";s:6:\"footer\";s:6:\"footer\";s:14:\"closure_region\";s:7:\"closure\";}s:8:\"features\";a:10:{i:0;s:4:\"logo\";i:1;s:4:\"name\";i:2;s:6:\"slogan\";i:3;s:7:\"mission\";i:4;s:17:\"node_user_picture\";i:5;s:20:\"comment_user_picture\";i:6;s:6:\"search\";i:7;s:7:\"favicon\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:8:\"settings\";a:8:{s:17:\"zen_block_editing\";s:1:\"1\";s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";s:1:\"1\";s:23:\"zen_breadcrumb_trailing\";s:1:\"1\";s:20:\"zen_breadcrumb_title\";s:1:\"0\";s:20:\"zen_rebuild_registry\";s:1:\"1\";s:14:\"zen_wireframes\";s:1:\"0\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:41:\"sites/all/themes/quilted_custom/script.js\";}s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:22:\"css/quilted_custom.css\";s:54:\"sites/all/themes/quilted_custom/css/quilted_custom.css\";}s:5:\"print\";a:1:{s:13:\"css/print.css\";s:45:\"sites/all/themes/quilted_custom/css/print.css\";}}s:6:\"engine\";s:11:\"phptemplate\";s:10:\"base_theme\";s:3:\"zen\";s:11:\"base_themes\";a:1:{s:3:\"zen\";s:3:\"Zen\";}}}','block_admin_display','a:1:{i:0;s:14:\"quilted_custom\";}',31,5,'admin/build/block/list','admin/build/block','The Quilted base theme','t','',136,'','','',-10,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/seven','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"sites/all/themes/seven/seven.info\";s:4:\"name\";s:5:\"seven\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:5:\"Seven\";s:11:\"description\";s:65:\"A simple one-column, tableless, fluid width administration theme.\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:3:{s:9:\"reset.css\";s:32:\"sites/all/themes/seven/reset.css\";s:9:\"style.css\";s:32:\"sites/all/themes/seven/style.css\";s:17:\"vertical-tabs.css\";s:40:\"sites/all/themes/seven/vertical-tabs.css\";}}s:7:\"regions\";a:1:{s:7:\"content\";s:7:\"Content\";}s:7:\"version\";s:14:\"6.x-1.0-beta11\";s:7:\"project\";s:5:\"seven\";s:9:\"datestamp\";s:10:\"1280856675\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:32:\"sites/all/themes/seven/script.js\";}s:10:\"screenshot\";s:37:\"sites/all/themes/seven/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:3:{s:9:\"reset.css\";s:32:\"sites/all/themes/seven/reset.css\";s:9:\"style.css\";s:32:\"sites/all/themes/seven/style.css\";s:17:\"vertical-tabs.css\";s:40:\"sites/all/themes/seven/vertical-tabs.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:5:\"seven\";}',31,5,'admin/build/block/list','admin/build/block','Seven','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/block/list/zen','','','_block_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:29:\"sites/all/themes/zen/zen.info\";s:4:\"name\";s:3:\"zen\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:15:{s:4:\"name\";s:3:\"Zen\";s:11:\"description\";s:189:\"Zen sub-themes are the ultimate starting themes for Drupal 6. Read the <a href=\"http://drupal.org/node/226507\">online docs</a> or the included README-FIRST.txt on how to create a sub-theme.\";s:10:\"screenshot\";s:49:\"sites/all/themes/zen/zen-internals/screenshot.png\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"regions\";a:9:{s:13:\"sidebar_first\";s:13:\"First sidebar\";s:14:\"sidebar_second\";s:14:\"Second sidebar\";s:10:\"navigation\";s:14:\"Navigation bar\";s:9:\"highlight\";s:19:\"Highlighted content\";s:11:\"content_top\";s:11:\"Content top\";s:14:\"content_bottom\";s:14:\"Content bottom\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";s:12:\"page_closure\";s:12:\"Page closure\";}s:8:\"features\";a:10:{i:0;s:4:\"logo\";i:1;s:4:\"name\";i:2;s:6:\"slogan\";i:3;s:7:\"mission\";i:4;s:17:\"node_user_picture\";i:5;s:20:\"comment_user_picture\";i:6;s:6:\"search\";i:7;s:7:\"favicon\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:8:\"settings\";a:9:{s:17:\"zen_block_editing\";s:1:\"1\";s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";s:1:\"1\";s:23:\"zen_breadcrumb_trailing\";s:1:\"1\";s:20:\"zen_breadcrumb_title\";s:1:\"0\";s:10:\"zen_layout\";s:18:\"zen-columns-liquid\";s:20:\"zen_rebuild_registry\";s:1:\"0\";s:14:\"zen_wireframes\";s:1:\"0\";}s:7:\"plugins\";a:1:{s:6:\"panels\";a:1:{s:7:\"layouts\";s:7:\"layouts\";}}s:7:\"version\";s:7:\"6.x-2.0\";s:7:\"project\";s:3:\"zen\";s:9:\"datestamp\";s:10:\"1277583313\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:30:\"sites/all/themes/zen/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:30:\"sites/all/themes/zen/script.js\";}s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:30:\"sites/all/themes/zen/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','block_admin_display','a:1:{i:0;s:3:\"zen\";}',31,5,'admin/build/block/list','admin/build/block','Zen','t','',128,'','','',0,'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features','','','user_access','a:1:{i:0;s:15:\"manage features\";}','drupal_get_form','a:1:{i:0;s:19:\"features_admin_form\";}',7,3,'','admin/build/features','Features','t','',6,'','Manage features.','',0,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/%','a:1:{i:3;s:12:\"feature_load\";}','','user_access','a:1:{i:0;s:19:\"administer features\";}','drupal_get_form','a:2:{i:0;s:25:\"features_admin_components\";i:1;i:3;}',14,4,'','admin/build/features/%','','features_get_feature_title','a:1:{i:0;i:3;}',4,'','Display components of a feature.','',0,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/%/recreate','a:1:{i:3;s:12:\"feature_load\";}','','user_access','a:1:{i:0;s:19:\"administer features\";}','drupal_get_form','a:2:{i:0;s:20:\"features_export_form\";i:1;i:3;}',29,5,'admin/build/features/%','admin/build/features/%','Recreate','t','',128,'','Recreate an existing feature.','',11,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/%/status','a:1:{i:3;s:12:\"feature_load\";}','','user_access','a:1:{i:0;s:19:\"administer features\";}','features_feature_status','a:1:{i:0;i:3;}',29,5,'','admin/build/features/%/status','Status','t','',4,'','Javascript status call back.','',0,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/%/view','a:1:{i:3;s:12:\"feature_load\";}','','user_access','a:1:{i:0;s:19:\"administer features\";}','drupal_get_form','a:2:{i:0;s:25:\"features_admin_components\";i:1;i:3;}',29,5,'admin/build/features/%','admin/build/features/%','View','t','',136,'','Display components of a feature.','',-10,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/cleanup','','','user_access','a:1:{i:0;s:15:\"manage features\";}','drupal_get_form','a:2:{i:0;s:21:\"features_cleanup_form\";i:1;i:4;}',15,4,'','admin/build/features/cleanup','Cleanup','t','',4,'','Detect and disable any orphaned feature dependencies.','',1,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/create','','','user_access','a:1:{i:0;s:19:\"administer features\";}','drupal_get_form','a:1:{i:0;s:20:\"features_export_form\";}',15,4,'admin/build/features','admin/build/features','Create feature','t','',128,'','Create a new feature.','',10,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/export/populate','','','user_access','a:1:{i:0;s:19:\"administer features\";}','features_export_build_form_populate','a:0:{}',31,5,'','admin/build/features/export/populate','Populate feature','t','',4,'','AHAH callback to populate a feature from selected components.','',0,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/features/manage','','','user_access','a:1:{i:0;s:15:\"manage features\";}','drupal_get_form','a:1:{i:0;s:19:\"features_admin_form\";}',15,4,'admin/build/features','admin/build/features','Manage','t','',136,'','Enable and disable features.','',0,'sites/all/modules/features/features.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_overview_page','a:0:{}',7,3,'','admin/build/menu','Menus','t','',6,'','Control your site\'s navigation menu, primary links and secondary links. as well as rename and reorganize menu items.','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu-customize/%','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:18:\"menu_overview_form\";i:1;i:3;}',14,4,'','admin/build/menu-customize/%','Customize menu','menu_overview_title','a:1:{i:0;i:3;}',4,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu-customize/%/add','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:4:{i:0;s:14:\"menu_edit_item\";i:1;s:3:\"add\";i:2;N;i:3;i:3;}',29,5,'admin/build/menu-customize/%','admin/build/menu-customize/%','Add item','t','',128,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu-customize/%/delete','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_delete_menu_page','a:1:{i:0;i:3;}',29,5,'','admin/build/menu-customize/%/delete','Delete menu','t','',4,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu-customize/%/edit','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:3:{i:0;s:14:\"menu_edit_menu\";i:1;s:4:\"edit\";i:2;i:3;}',29,5,'admin/build/menu-customize/%','admin/build/menu-customize/%','Edit menu','t','',128,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu-customize/%/list','a:1:{i:3;s:9:\"menu_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:18:\"menu_overview_form\";i:1;i:3;}',29,5,'admin/build/menu-customize/%','admin/build/menu-customize/%','List items','t','',136,'','','',-10,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu/add','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:14:\"menu_edit_menu\";i:1;s:3:\"add\";}',15,4,'admin/build/menu','admin/build/menu','Add menu','t','',128,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu/item/%/delete','a:1:{i:4;s:14:\"menu_link_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_item_delete_page','a:1:{i:0;i:4;}',61,6,'','admin/build/menu/item/%/delete','Delete menu item','t','',4,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu/item/%/edit','a:1:{i:4;s:14:\"menu_link_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:4:{i:0;s:14:\"menu_edit_item\";i:1;s:4:\"edit\";i:2;i:4;i:3;N;}',61,6,'','admin/build/menu/item/%/edit','Edit menu item','t','',4,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu/item/%/reset','a:1:{i:4;s:14:\"menu_link_load\";}','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:2:{i:0;s:23:\"menu_reset_item_confirm\";i:1;i:4;}',61,6,'','admin/build/menu/item/%/reset','Reset menu item','t','',4,'','','',0,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu/list','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','menu_overview_page','a:0:{}',15,4,'admin/build/menu','admin/build/menu','List menus','t','',136,'','','',-10,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/menu/settings','','','user_access','a:1:{i:0;s:15:\"administer menu\";}','drupal_get_form','a:1:{i:0;s:14:\"menu_configure\";}',15,4,'admin/build/menu','admin/build/menu','Settings','t','',128,'','','',5,'modules/menu/menu.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/modules','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:14:\"system_modules\";}',7,3,'','admin/build/modules','Modules','t','',6,'','Enable or disable add-on modules for your site.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/modules/list','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:14:\"system_modules\";}',15,4,'admin/build/modules','admin/build/modules','List','t','',136,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/modules/list/confirm','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:14:\"system_modules\";}',31,5,'','admin/build/modules/list/confirm','List','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/modules/uninstall','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:24:\"system_modules_uninstall\";}',15,4,'admin/build/modules','admin/build/modules','Uninstall','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/modules/uninstall/confirm','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:24:\"system_modules_uninstall\";}',31,5,'','admin/build/modules/uninstall/confirm','Uninstall','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels','','','user_access','a:1:{i:0;s:20:\"use panels dashboard\";}','panels_admin_page','a:0:{}',7,3,'','admin/build/panels','Panels','t','',6,'','Get a bird\'s eye view of items related to Panels.','',0,'sites/all/modules/panels/includes/callbacks.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/dashboard','','','user_access','a:1:{i:0;s:20:\"use panels dashboard\";}','panels_admin_page','a:0:{}',15,4,'admin/build/panels','admin/build/panels','Dashboard','t','',136,'','','',-10,'sites/all/modules/panels/includes/callbacks.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}',15,4,'admin/build/panels','admin/build/panels','Layouts','t','',128,'','Add, edit or delete custom content layouts.','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/add-flexible','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:3:\"add\";}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:3:\"add\";i:2;s:8:\"flexible\";}',31,5,'admin/build/panels/layouts','admin/build/panels','Add flexible layout','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/import','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"import\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"import\";}',31,5,'admin/build/panels/layouts','admin/build/panels','Import','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list','','','ctools_export_ui_task_access','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}','ctools_export_ui_switcher_page','a:2:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"list\";}',31,5,'admin/build/panels/layouts','admin/build/panels','List','t','',136,'','','',-10,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}',62,6,'','admin/build/panels/layouts/list/%','','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%/clone','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:5:\"clone\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:5:\"clone\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/clone','Clone','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%/delete','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"delete\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"delete\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/delete','Delete','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%/disable','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:7:\"disable\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:7:\"disable\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/disable','Disable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%/edit','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:4:\"edit\";i:2;i:5;}',125,7,'admin/build/panels/layouts/list/%','admin/build/panels/layouts/list/%','Edit','t','',136,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%/enable','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"enable\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"enable\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/enable','Enable','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%/export','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"export\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"export\";i:2;i:5;}',125,7,'admin/build/panels/layouts/list/%','admin/build/panels/layouts/list/%','Export','t','',128,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/layouts/list/%/revert','a:1:{i:5;a:1:{s:21:\"ctools_export_ui_load\";a:1:{i:0;s:14:\"panels_layouts\";}}}','','ctools_export_ui_task_access','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"revert\";i:2;i:5;}','ctools_export_ui_switcher_page','a:3:{i:0;s:14:\"panels_layouts\";i:1;s:6:\"delete\";i:2;i:5;}',125,7,'','admin/build/panels/layouts/list/%/revert','Revert','t','',4,'','','',0,'sites/all/modules/ctools/includes/export-ui.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/settings','','','user_access','a:1:{i:0;s:20:\"use panels dashboard\";}','drupal_get_form','a:1:{i:0;s:26:\"panels_admin_settings_page\";}',15,4,'admin/build/panels','admin/build/panels','Settings','t','',128,'','','',0,'sites/all/modules/panels/includes/callbacks.inc');
INSERT INTO `menu_router` VALUES ('admin/build/panels/settings/general','','','user_access','a:1:{i:0;s:23:\"administer page manager\";}','drupal_get_form','a:1:{i:0;s:26:\"panels_admin_settings_page\";}',31,5,'admin/build/panels/settings','admin/build/panels','General','t','',136,'','','',-10,'sites/all/modules/panels/includes/callbacks.inc');
INSERT INTO `menu_router` VALUES ('admin/build/path','','','user_access','a:1:{i:0;s:22:\"administer url aliases\";}','path_admin_overview','a:0:{}',7,3,'','admin/build/path','URL aliases','t','',6,'','Change your site\'s URL paths by aliasing them.','',0,'modules/path/path.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/path/add','','','user_access','a:1:{i:0;s:22:\"administer url aliases\";}','path_admin_edit','a:0:{}',15,4,'admin/build/path','admin/build/path','Add alias','t','',128,'','','',0,'modules/path/path.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/path/delete','','','user_access','a:1:{i:0;s:22:\"administer url aliases\";}','drupal_get_form','a:1:{i:0;s:25:\"path_admin_delete_confirm\";}',15,4,'','admin/build/path/delete','Delete alias','t','',4,'','','',0,'modules/path/path.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/path/edit','','','user_access','a:1:{i:0;s:22:\"administer url aliases\";}','path_admin_edit','a:0:{}',15,4,'','admin/build/path/edit','Edit alias','t','',4,'','','',0,'modules/path/path.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/path/list','','','user_access','a:1:{i:0;s:22:\"administer url aliases\";}','path_admin_overview','a:0:{}',15,4,'admin/build/path','admin/build/path','List','t','',136,'','','',-10,'modules/path/path.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:2:{i:0;s:18:\"system_themes_form\";i:1;N;}',7,3,'','admin/build/themes','Themes','t','',6,'','Change which theme your site uses or allows users to set.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/select','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:2:{i:0;s:18:\"system_themes_form\";i:1;N;}',15,4,'admin/build/themes','admin/build/themes','List','t','',136,'','Select the default theme.','',-1,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:21:\"system_theme_settings\";}',15,4,'admin/build/themes','admin/build/themes','Configure','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/bluemarine','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/bluemarine/bluemarine.info\";s:4:\"name\";s:10:\"bluemarine\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Bluemarine\";s:11:\"description\";s:66:\"Table-based multi-column theme with a marine and ash color scheme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/bluemarine/script.js\";}s:10:\"screenshot\";s:32:\"themes/bluemarine/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:10:\"bluemarine\";}',31,5,'admin/build/themes/settings','admin/build/themes','Bluemarine','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/chameleon','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":11:{s:8:\"filename\";s:31:\"themes/chameleon/chameleon.info\";s:4:\"name\";s:9:\"chameleon\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:32:\"themes/chameleon/chameleon.theme\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:12:{s:4:\"name\";s:9:\"Chameleon\";s:11:\"description\";s:42:\"Minimalist tabled theme with light colors.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:8:\"features\";a:4:{i:0;s:4:\"logo\";i:1;s:7:\"favicon\";i:2;s:4:\"name\";i:3;s:6:\"slogan\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"scripts\";a:1:{s:9:\"script.js\";s:26:\"themes/chameleon/script.js\";}s:10:\"screenshot\";s:31:\"themes/chameleon/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:9:\"chameleon\";}',31,5,'admin/build/themes/settings','admin/build/themes','Chameleon','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/garland','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:27:\"themes/garland/garland.info\";s:4:\"name\";s:7:\"garland\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:7:\"Garland\";s:11:\"description\";s:66:\"Tableless, recolorable, multi-column, fluid width theme (default).\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:24:\"themes/garland/script.js\";}s:10:\"screenshot\";s:29:\"themes/garland/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:7:\"garland\";}',31,5,'admin/build/themes/settings','admin/build/themes','Garland','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/global','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:21:\"system_theme_settings\";}',31,5,'admin/build/themes/settings','admin/build/themes','Global settings','t','',136,'','','',-1,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/marvin','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:35:\"themes/chameleon/marvin/marvin.info\";s:4:\"name\";s:6:\"marvin\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:0:\"\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:6:\"Marvin\";s:11:\"description\";s:31:\"Boxy tabled theme in all grays.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:9:\"chameleon\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/chameleon/marvin/script.js\";}s:10:\"screenshot\";s:38:\"themes/chameleon/marvin/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:10:\"base_theme\";s:9:\"chameleon\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:6:\"marvin\";}',31,5,'admin/build/themes/settings','admin/build/themes','Marvin','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/minnelli','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":13:{s:8:\"filename\";s:37:\"themes/garland/minnelli/minnelli.info\";s:4:\"name\";s:8:\"minnelli\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:14:{s:4:\"name\";s:8:\"Minnelli\";s:11:\"description\";s:56:\"Tableless, recolorable, multi-column, fixed width theme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:7:\"garland\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/garland/minnelli/script.js\";}s:10:\"screenshot\";s:38:\"themes/garland/minnelli/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:6:\"engine\";s:11:\"phptemplate\";s:10:\"base_theme\";s:7:\"garland\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:8:\"minnelli\";}',31,5,'admin/build/themes/settings','admin/build/themes','Minnelli','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/pushbutton','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"themes/pushbutton/pushbutton.info\";s:4:\"name\";s:10:\"pushbutton\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:10:\"Pushbutton\";s:11:\"description\";s:52:\"Tabled, multi-column theme in blue and orange tones.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/pushbutton/script.js\";}s:10:\"screenshot\";s:32:\"themes/pushbutton/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:10:\"pushbutton\";}',31,5,'admin/build/themes/settings','admin/build/themes','Pushbutton','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/quilted_custom','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":14:{s:8:\"filename\";s:51:\"sites/all/themes/quilted_custom/quilted_custom.info\";s:4:\"name\";s:14:\"quilted_custom\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:12:{s:4:\"name\";s:22:\"The Quilted base theme\";s:11:\"description\";s:55:\"A custom Zen subtheme with some Quilted customizations.\";s:10:\"screenshot\";s:53:\"sites/all/themes/quilted_custom/images/screenshot.png\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:3:\"zen\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:22:\"css/quilted_custom.css\";s:54:\"sites/all/themes/quilted_custom/css/quilted_custom.css\";}s:5:\"print\";a:1:{s:13:\"css/print.css\";s:45:\"sites/all/themes/quilted_custom/css/print.css\";}}s:7:\"regions\";a:8:{s:4:\"left\";s:12:\"left sidebar\";s:5:\"right\";s:13:\"right sidebar\";s:6:\"navbar\";s:14:\"navigation bar\";s:11:\"content_top\";s:11:\"content top\";s:14:\"content_bottom\";s:14:\"content bottom\";s:6:\"header\";s:6:\"header\";s:6:\"footer\";s:6:\"footer\";s:14:\"closure_region\";s:7:\"closure\";}s:8:\"features\";a:10:{i:0;s:4:\"logo\";i:1;s:4:\"name\";i:2;s:6:\"slogan\";i:3;s:7:\"mission\";i:4;s:17:\"node_user_picture\";i:5;s:20:\"comment_user_picture\";i:6;s:6:\"search\";i:7;s:7:\"favicon\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:8:\"settings\";a:8:{s:17:\"zen_block_editing\";s:1:\"1\";s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";s:1:\"1\";s:23:\"zen_breadcrumb_trailing\";s:1:\"1\";s:20:\"zen_breadcrumb_title\";s:1:\"0\";s:20:\"zen_rebuild_registry\";s:1:\"1\";s:14:\"zen_wireframes\";s:1:\"0\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:41:\"sites/all/themes/quilted_custom/script.js\";}s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:22:\"css/quilted_custom.css\";s:54:\"sites/all/themes/quilted_custom/css/quilted_custom.css\";}s:5:\"print\";a:1:{s:13:\"css/print.css\";s:45:\"sites/all/themes/quilted_custom/css/print.css\";}}s:6:\"engine\";s:11:\"phptemplate\";s:10:\"base_theme\";s:3:\"zen\";s:11:\"base_themes\";a:1:{s:3:\"zen\";s:3:\"Zen\";}}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:14:\"quilted_custom\";}',31,5,'admin/build/themes/settings','admin/build/themes','The Quilted base theme','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/seven','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:33:\"sites/all/themes/seven/seven.info\";s:4:\"name\";s:5:\"seven\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"1\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:13:{s:4:\"name\";s:5:\"Seven\";s:11:\"description\";s:65:\"A simple one-column, tableless, fluid width administration theme.\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:3:{s:9:\"reset.css\";s:32:\"sites/all/themes/seven/reset.css\";s:9:\"style.css\";s:32:\"sites/all/themes/seven/style.css\";s:17:\"vertical-tabs.css\";s:40:\"sites/all/themes/seven/vertical-tabs.css\";}}s:7:\"regions\";a:1:{s:7:\"content\";s:7:\"Content\";}s:7:\"version\";s:14:\"6.x-1.0-beta11\";s:7:\"project\";s:5:\"seven\";s:9:\"datestamp\";s:10:\"1280856675\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:32:\"sites/all/themes/seven/script.js\";}s:10:\"screenshot\";s:37:\"sites/all/themes/seven/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:3:{s:9:\"reset.css\";s:32:\"sites/all/themes/seven/reset.css\";s:9:\"style.css\";s:32:\"sites/all/themes/seven/style.css\";s:17:\"vertical-tabs.css\";s:40:\"sites/all/themes/seven/vertical-tabs.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:5:\"seven\";}',31,5,'admin/build/themes/settings','admin/build/themes','Seven','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/themes/settings/zen','','','_system_themes_access','a:1:{i:0;O:8:\"stdClass\":12:{s:8:\"filename\";s:29:\"sites/all/themes/zen/zen.info\";s:4:\"name\";s:3:\"zen\";s:4:\"type\";s:5:\"theme\";s:5:\"owner\";s:45:\"themes/engines/phptemplate/phptemplate.engine\";s:6:\"status\";s:1:\"0\";s:8:\"throttle\";s:1:\"0\";s:9:\"bootstrap\";s:1:\"0\";s:14:\"schema_version\";s:2:\"-1\";s:6:\"weight\";s:1:\"0\";s:4:\"info\";a:15:{s:4:\"name\";s:3:\"Zen\";s:11:\"description\";s:189:\"Zen sub-themes are the ultimate starting themes for Drupal 6. Read the <a href=\"http://drupal.org/node/226507\">online docs</a> or the included README-FIRST.txt on how to create a sub-theme.\";s:10:\"screenshot\";s:49:\"sites/all/themes/zen/zen-internals/screenshot.png\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"regions\";a:9:{s:13:\"sidebar_first\";s:13:\"First sidebar\";s:14:\"sidebar_second\";s:14:\"Second sidebar\";s:10:\"navigation\";s:14:\"Navigation bar\";s:9:\"highlight\";s:19:\"Highlighted content\";s:11:\"content_top\";s:11:\"Content top\";s:14:\"content_bottom\";s:14:\"Content bottom\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";s:12:\"page_closure\";s:12:\"Page closure\";}s:8:\"features\";a:10:{i:0;s:4:\"logo\";i:1;s:4:\"name\";i:2;s:6:\"slogan\";i:3;s:7:\"mission\";i:4;s:17:\"node_user_picture\";i:5;s:20:\"comment_user_picture\";i:6;s:6:\"search\";i:7;s:7:\"favicon\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:8:\"settings\";a:9:{s:17:\"zen_block_editing\";s:1:\"1\";s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";s:1:\"1\";s:23:\"zen_breadcrumb_trailing\";s:1:\"1\";s:20:\"zen_breadcrumb_title\";s:1:\"0\";s:10:\"zen_layout\";s:18:\"zen-columns-liquid\";s:20:\"zen_rebuild_registry\";s:1:\"0\";s:14:\"zen_wireframes\";s:1:\"0\";}s:7:\"plugins\";a:1:{s:6:\"panels\";a:1:{s:7:\"layouts\";s:7:\"layouts\";}}s:7:\"version\";s:7:\"6.x-2.0\";s:7:\"project\";s:3:\"zen\";s:9:\"datestamp\";s:10:\"1277583313\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:30:\"sites/all/themes/zen/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:30:\"sites/all/themes/zen/script.js\";}s:3:\"php\";s:5:\"4.3.5\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:30:\"sites/all/themes/zen/style.css\";}}s:6:\"engine\";s:11:\"phptemplate\";}}','drupal_get_form','a:2:{i:0;s:21:\"system_theme_settings\";i:1;s:3:\"zen\";}',31,5,'admin/build/themes/settings','admin/build/themes','Zen','t','',128,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_list_views','a:0:{}',7,3,'','admin/build/views','Views','t','',6,'','Views are customized lists of content on your system; they are highly configurable and give you control over how lists of content are presented.','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/%/%/%','a:3:{i:3;s:16:\"views_ui_js_load\";i:4;N;i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_ajax_form','a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}',56,6,'','admin/build/views/%/%/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/%/add-display/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_add_display','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/add-display/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/%/analyze/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_analyze_view','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/analyze/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/%/details/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_edit_details','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/details/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/%/preview/%','a:2:{i:3;s:16:\"views_ui_js_load\";i:5;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_preview','a:2:{i:0;i:3;i:1;i:5;}',58,6,'','admin/build/views/%/preview/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/add','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_add_page','a:0:{}',15,4,'admin/build/views','admin/build/views','Add','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/break-lock/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:27:\"views_ui_break_lock_confirm\";i:1;i:4;}',30,5,'','admin/build/views/break-lock/%','Delete view','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/clone/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_clone_page','a:1:{i:0;i:4;}',30,5,'','admin/build/views/clone/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/delete/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:23:\"views_ui_delete_confirm\";i:1;i:4;}',30,5,'','admin/build/views/delete/%','Delete view','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/disable/%','a:1:{i:4;s:21:\"views_ui_default_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_disable_page','a:1:{i:0;i:4;}',30,5,'','admin/build/views/disable/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/edit/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_edit_page','a:1:{i:0;i:4;}',30,5,'admin/build/views','admin/build/views','Edit','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/enable/%','a:1:{i:4;s:21:\"views_ui_default_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_enable_page','a:1:{i:0;i:4;}',30,5,'','admin/build/views/enable/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/export/%','a:1:{i:4;s:19:\"views_ui_cache_load\";}','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:20:\"views_ui_export_page\";i:1;i:4;}',30,5,'','admin/build/views/export/%','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/import','','','views_import_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:1:{i:0;s:20:\"views_ui_import_page\";}',15,4,'admin/build/views','admin/build/views','Import','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/list','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_list_views','a:0:{}',15,4,'admin/build/views','admin/build/views','List','t','',136,'','','',-1,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/tools','','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:1:{i:0;s:20:\"views_ui_admin_tools\";}',15,4,'admin/build/views','admin/build/views','Tools','t','',128,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/tools/basic','','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:1:{i:0;s:20:\"views_ui_admin_tools\";}',31,5,'admin/build/views/tools','admin/build/views','Basic','t','',136,'','','',-10,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views/tools/convert','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_admin_convert','a:0:{}',31,5,'admin/build/views/tools','admin/build/views','Convert','t','',128,'','Convert stored Views 1 views.','',1,'sites/all/modules/views/includes/convert.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views1/convert','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_convert1','a:1:{i:0;i:4;}',15,4,'','admin/build/views1/convert','Convert view','t','',4,'','','',0,'sites/all/modules/views/includes/convert.inc');
INSERT INTO `menu_router` VALUES ('admin/build/views1/delete','','','user_access','a:1:{i:0;s:16:\"administer views\";}','drupal_get_form','a:2:{i:0;s:24:\"views_ui_delete1_confirm\";i:1;i:4;}',15,4,'','admin/build/views1/delete','Delete view','t','',4,'','','',0,'sites/all/modules/views/includes/convert.inc');
INSERT INTO `menu_router` VALUES ('admin/by-module','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_by_module','a:0:{}',3,2,'admin','admin','By module','t','',128,'','','',2,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/by-task','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_main_admin_page','a:0:{}',3,2,'admin','admin','By task','t','',136,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/compact','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_compact_page','a:0:{}',3,2,'','admin/compact','Compact mode','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/content','Content management','t','',6,'','Manage your site\'s content.','left',-10,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/flashnode','','','user_access','a:1:{i:0;s:12:\"import flash\";}','drupal_get_form','a:1:{i:0;s:16:\"flashnode_import\";}',7,3,'','admin/content/flashnode','Import Flash','t','',6,'','Import and create nodes from files that have been uploaded directly to the server.','',0,'sites/all/modules/flashnode/flashnode.import.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node','','','user_access','a:1:{i:0;s:16:\"administer nodes\";}','drupal_get_form','a:1:{i:0;s:18:\"node_admin_content\";}',7,3,'','admin/content/node','Content','t','',6,'','View, edit, and delete your site\'s content.','',0,'modules/node/node.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-settings','','','user_access','a:1:{i:0;s:16:\"administer nodes\";}','drupal_get_form','a:1:{i:0;s:14:\"node_configure\";}',7,3,'','admin/content/node-settings','Post settings','t','',6,'','Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.','',0,'modules/node/node.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-settings/rebuild','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','drupal_get_form','a:1:{i:0;s:30:\"node_configure_rebuild_confirm\";}',15,4,'','admin/content/node-settings/rebuild','Rebuild permissions','t','',4,'','','',0,'modules/node/node.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:10:\"flash_data\";s:4:\"name\";s:10:\"Flash Data\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:53:\"Each node logs XML data sent from a Flash application\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:0:\"\";}}',15,4,'','admin/content/node-type/flash-data','Flash Data','t','',4,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:10:\"flash_data\";s:4:\"name\";s:10:\"Flash Data\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:53:\"Each node logs XML data sent from a Flash application\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:0:\"\";}}',31,5,'','admin/content/node-type/flash-data/delete','Delete','t','',4,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:10:\"flash_data\";}',31,5,'admin/content/node-type/flash-data','admin/content/node-type/flash-data','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:10:\"flash_data\";i:2;s:5:\"basic\";}',63,6,'admin/content/node-type/flash-data/display','admin/content/node-type/flash-data','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:10:\"flash_data\";i:2;s:3:\"rss\";}',63,6,'admin/content/node-type/flash-data/display','admin/content/node-type/flash-data','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:10:\"flash_data\";s:4:\"name\";s:10:\"Flash Data\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:53:\"Each node logs XML data sent from a Flash application\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:0:\"\";}}',31,5,'admin/content/node-type/flash-data','admin/content/node-type/flash-data','Edit','t','',136,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:10:\"flash_data\";}',31,5,'admin/content/node-type/flash-data','admin/content/node-type/flash-data','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:10:\"flash_data\";i:2;i:5;}',62,6,'','admin/content/node-type/flash-data/groups/%','Edit group','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flash-data/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:10:\"flash_data\";i:2;i:5;}',125,7,'','admin/content/node-type/flash-data/groups/%/remove','Edit group','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:9:\"flashnode\";s:4:\"name\";s:5:\"Flash\";s:6:\"module\";s:9:\"flashnode\";s:11:\"description\";s:128:\"Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"0\";s:10:\"body_label\";s:0:\"\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"0\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"1\";s:9:\"orig_type\";s:9:\"flashnode\";}}',15,4,'','admin/content/node-type/flashnode','Flash','t','',4,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:9:\"flashnode\";s:4:\"name\";s:5:\"Flash\";s:6:\"module\";s:9:\"flashnode\";s:11:\"description\";s:128:\"Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"0\";s:10:\"body_label\";s:0:\"\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"0\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"1\";s:9:\"orig_type\";s:9:\"flashnode\";}}',31,5,'','admin/content/node-type/flashnode/delete','Delete','t','',4,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:9:\"flashnode\";}',31,5,'admin/content/node-type/flashnode','admin/content/node-type/flashnode','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:9:\"flashnode\";i:2;s:5:\"basic\";}',63,6,'admin/content/node-type/flashnode/display','admin/content/node-type/flashnode','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:9:\"flashnode\";i:2;s:3:\"rss\";}',63,6,'admin/content/node-type/flashnode/display','admin/content/node-type/flashnode','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:9:\"flashnode\";s:4:\"name\";s:5:\"Flash\";s:6:\"module\";s:9:\"flashnode\";s:11:\"description\";s:128:\"Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"0\";s:10:\"body_label\";s:0:\"\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"0\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"1\";s:9:\"orig_type\";s:9:\"flashnode\";}}',31,5,'admin/content/node-type/flashnode','admin/content/node-type/flashnode','Edit','t','',136,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:9:\"flashnode\";}',31,5,'admin/content/node-type/flashnode','admin/content/node-type/flashnode','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:9:\"flashnode\";i:2;i:5;}',62,6,'','admin/content/node-type/flashnode/groups/%','Edit group','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/flashnode/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:9:\"flashnode\";i:2;i:5;}',125,7,'','admin/content/node-type/flashnode/groups/%/remove','Edit group','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',15,4,'','admin/content/node-type/page','Page','t','',4,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',31,5,'','admin/content/node-type/page/delete','Delete','t','',4,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";}',31,5,'admin/content/node-type/page','admin/content/node-type/page','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";i:2;s:5:\"basic\";}',63,6,'admin/content/node-type/page/display','admin/content/node-type/page','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";i:2;s:3:\"rss\";}',63,6,'admin/content/node-type/page/display','admin/content/node-type/page','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',31,5,'admin/content/node-type/page','admin/content/node-type/page','Edit','t','',136,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:4:\"page\";}',31,5,'admin/content/node-type/page','admin/content/node-type/page','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:4:\"page\";i:2;i:5;}',62,6,'','admin/content/node-type/page/groups/%','Edit group','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/node-type/page/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:4:\"page\";i:2;i:5;}',125,7,'','admin/content/node-type/page/groups/%/remove','Edit group','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/node/overview','','','user_access','a:1:{i:0;s:16:\"administer nodes\";}','drupal_get_form','a:1:{i:0;s:18:\"node_admin_content\";}',15,4,'admin/content/node','admin/content/node','List','t','',136,'','','',-10,'modules/node/node.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/node2','','','views_access','a:1:{i:0;a:2:{i:0;s:16:\"views_check_perm\";i:1;a:1:{i:0;s:16:\"administer nodes\";}}}','views_page','a:2:{i:0;s:13:\"admin_content\";i:1;s:4:\"page\";}',7,3,'','admin/content/node2','','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/rss-publishing','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"system_rss_feeds_settings\";}',7,3,'','admin/content/rss-publishing','RSS publishing','t','',6,'','Configure the number of items per feed and whether feeds should be titles/teasers/full-text.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:1:{i:0;s:30:\"taxonomy_overview_vocabularies\";}',7,3,'','admin/content/taxonomy','Taxonomy','t','',6,'','Manage tagging, categorization, and classification of your content.','',0,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy/%','a:1:{i:3;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:2:{i:0;s:23:\"taxonomy_overview_terms\";i:1;i:3;}',14,4,'','admin/content/taxonomy/%','List terms','t','',4,'','','',0,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy/%/add/term','a:1:{i:3;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','taxonomy_add_term_page','a:1:{i:0;i:3;}',59,6,'admin/content/taxonomy/%','admin/content/taxonomy/%','Add term','t','',128,'','','',0,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy/%/list','a:1:{i:3;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:2:{i:0;s:23:\"taxonomy_overview_terms\";i:1;i:3;}',29,5,'admin/content/taxonomy/%','admin/content/taxonomy/%','List','t','',136,'','','',-10,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy/add/vocabulary','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:1:{i:0;s:24:\"taxonomy_form_vocabulary\";}',31,5,'admin/content/taxonomy','admin/content/taxonomy','Add vocabulary','t','',128,'','','',0,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy/edit/term','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','taxonomy_admin_term_edit','a:0:{}',31,5,'','admin/content/taxonomy/edit/term','Edit term','t','',4,'','','',0,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy/edit/vocabulary/%','a:1:{i:5;s:24:\"taxonomy_vocabulary_load\";}','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','taxonomy_admin_vocabulary_edit','a:1:{i:0;i:5;}',62,6,'','admin/content/taxonomy/edit/vocabulary/%','Edit vocabulary','t','',4,'','','',0,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/taxonomy/list','','','user_access','a:1:{i:0;s:19:\"administer taxonomy\";}','drupal_get_form','a:1:{i:0;s:30:\"taxonomy_overview_vocabularies\";}',15,4,'admin/content/taxonomy','admin/content/taxonomy','List','t','',136,'','','',-10,'modules/taxonomy/taxonomy.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','content_types_overview','a:0:{}',7,3,'','admin/content/types','Content types','t','',6,'','Manage posts by content type, including default status, front page promotion, etc.','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/add','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:1:{i:0;s:14:\"node_type_form\";}',15,4,'admin/content/types','admin/content/types','Add content type','t','',128,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/export','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:1:{i:0;s:24:\"content_copy_export_form\";}',15,4,'admin/content/types','admin/content/types','Export','t','',128,'','','',3,'');
INSERT INTO `menu_router` VALUES ('admin/content/types/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','content_fields_list','a:0:{}',15,4,'admin/content/types','admin/content/types','Fields','t','',128,'','','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:10:\"flash_data\";s:4:\"name\";s:10:\"Flash Data\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:53:\"Each node logs XML data sent from a Flash application\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:0:\"\";}}',15,4,'','admin/content/types/flash-data','Flash Data','t','',6,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:10:\"flash_data\";s:4:\"name\";s:10:\"Flash Data\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:53:\"Each node logs XML data sent from a Flash application\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:0:\"\";}}',31,5,'','admin/content/types/flash-data/delete','Delete','t','',6,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:10:\"flash_data\";}',31,5,'admin/content/types/flash-data','admin/content/types/flash-data','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:10:\"flash_data\";i:2;s:5:\"basic\";}',63,6,'admin/content/types/flash-data/display','admin/content/types/flash-data','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:10:\"flash_data\";i:2;s:3:\"rss\";}',63,6,'admin/content/types/flash-data/display','admin/content/types/flash-data','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:10:\"flash_data\";s:4:\"name\";s:10:\"Flash Data\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:53:\"Each node logs XML data sent from a Flash application\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:0:\"\";}}',31,5,'admin/content/types/flash-data','admin/content/types/flash-data','Edit','t','',136,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:10:\"flash_data\";}',31,5,'admin/content/types/flash-data','admin/content/types/flash-data','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:10:\"flash_data\";i:2;i:5;}',62,6,'','admin/content/types/flash-data/groups/%','Edit group','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/types/flash-data/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:10:\"flash_data\";i:2;i:5;}',125,7,'','admin/content/types/flash-data/groups/%/remove','Edit group','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:9:\"flashnode\";s:4:\"name\";s:5:\"Flash\";s:6:\"module\";s:9:\"flashnode\";s:11:\"description\";s:128:\"Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"0\";s:10:\"body_label\";s:0:\"\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"0\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"1\";s:9:\"orig_type\";s:9:\"flashnode\";}}',15,4,'','admin/content/types/flashnode','Flash','t','',6,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:9:\"flashnode\";s:4:\"name\";s:5:\"Flash\";s:6:\"module\";s:9:\"flashnode\";s:11:\"description\";s:128:\"Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"0\";s:10:\"body_label\";s:0:\"\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"0\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"1\";s:9:\"orig_type\";s:9:\"flashnode\";}}',31,5,'','admin/content/types/flashnode/delete','Delete','t','',6,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:9:\"flashnode\";}',31,5,'admin/content/types/flashnode','admin/content/types/flashnode','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:9:\"flashnode\";i:2;s:5:\"basic\";}',63,6,'admin/content/types/flashnode/display','admin/content/types/flashnode','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:9:\"flashnode\";i:2;s:3:\"rss\";}',63,6,'admin/content/types/flashnode/display','admin/content/types/flashnode','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:9:\"flashnode\";s:4:\"name\";s:5:\"Flash\";s:6:\"module\";s:9:\"flashnode\";s:11:\"description\";s:128:\"Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"0\";s:10:\"body_label\";s:0:\"\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"0\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"1\";s:9:\"orig_type\";s:9:\"flashnode\";}}',31,5,'admin/content/types/flashnode','admin/content/types/flashnode','Edit','t','',136,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:9:\"flashnode\";}',31,5,'admin/content/types/flashnode','admin/content/types/flashnode','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:9:\"flashnode\";i:2;i:5;}',62,6,'','admin/content/types/flashnode/groups/%','Edit group','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/types/flashnode/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:9:\"flashnode\";i:2;i:5;}',125,7,'','admin/content/types/flashnode/groups/%/remove','Edit group','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/types/import','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:1:{i:0;s:24:\"content_copy_import_form\";}',15,4,'admin/content/types','admin/content/types','Import','t','',128,'','','',4,'');
INSERT INTO `menu_router` VALUES ('admin/content/types/list','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','content_types_overview','a:0:{}',15,4,'admin/content/types','admin/content/types','List','t','',136,'','','',-10,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',15,4,'','admin/content/types/page','Page','t','',6,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/delete','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:24:\"node_type_delete_confirm\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',31,5,'','admin/content/types/page/delete','Delete','t','',6,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/display','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";}',31,5,'admin/content/types/page','admin/content/types/page','Display fields','t','',128,'','','',2,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/display/basic','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";i:2;s:5:\"basic\";}',63,6,'admin/content/types/page/display','admin/content/types/page','Basic','t','',136,'','','',0,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/display/rss','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:29:\"content_display_overview_form\";i:1;s:4:\"page\";i:2;s:3:\"rss\";}',63,6,'admin/content/types/page/display','admin/content/types/page','RSS','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/edit','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:14:\"node_type_form\";i:1;O:8:\"stdClass\":14:{s:4:\"type\";s:4:\"page\";s:4:\"name\";s:4:\"Page\";s:6:\"module\";s:4:\"node\";s:11:\"description\";s:296:\"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.\";s:4:\"help\";s:0:\"\";s:9:\"has_title\";s:1:\"1\";s:11:\"title_label\";s:5:\"Title\";s:8:\"has_body\";s:1:\"1\";s:10:\"body_label\";s:4:\"Body\";s:14:\"min_word_count\";s:1:\"0\";s:6:\"custom\";s:1:\"1\";s:8:\"modified\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:9:\"orig_type\";s:4:\"page\";}}',31,5,'admin/content/types/page','admin/content/types/page','Edit','t','',136,'','','',0,'modules/node/content_types.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/fields','','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:2:{i:0;s:27:\"content_field_overview_form\";i:1;s:4:\"page\";}',31,5,'admin/content/types/page','admin/content/types/page','Manage fields','t','',128,'','','',1,'sites/all/modules/cck/includes/content.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/groups/%','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:26:\"fieldgroup_group_edit_form\";i:1;s:4:\"page\";i:2;i:5;}',62,6,'','admin/content/types/page/groups/%','Edit group','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/content/types/page/groups/%/remove','a:1:{i:5;N;}','','user_access','a:1:{i:0;s:24:\"administer content types\";}','drupal_get_form','a:3:{i:0;s:23:\"fieldgroup_remove_group\";i:1;s:4:\"page\";i:2;i:5;}',125,7,'','admin/content/types/page/groups/%/remove','Edit group','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/help','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_main','a:0:{}',3,2,'','admin/help','Help','t','',6,'','','',9,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/admin_menu','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/admin_menu','admin_menu','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/block','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/block','block','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/content','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/content','content','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/dblog','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/dblog','dblog','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/devel','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/devel','devel','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/features','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/features','features','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/filter','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/filter','filter','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/flashnode','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/flashnode','flashnode','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/help','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/help','help','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/logintoboggan','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/logintoboggan','logintoboggan','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/menu','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/menu','menu','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/node','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/node','node','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/openid','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/openid','openid','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/path','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/path','path','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/php','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/php','php','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/strongarm','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/strongarm','strongarm','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/system','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/system','system','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/taxonomy','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/taxonomy','taxonomy','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/update','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/update','update','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/user','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/user','user','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/help/views_ui','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','help_page','a:1:{i:0;i:2;}',7,3,'','admin/help/views_ui','views_ui','t','',4,'','','',0,'modules/help/help.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/reports','Reports','t','',6,'','View reports from system logs and other status information.','left',5,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/access-denied','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_top','a:1:{i:0;s:13:\"access denied\";}',7,3,'','admin/reports/access-denied','Top \'access denied\' errors','t','',6,'','View \'access denied\' errors (403s).','',0,'modules/dblog/dblog.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/dblog','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_overview','a:0:{}',7,3,'','admin/reports/dblog','Recent log entries','t','',6,'','View events that have recently been logged.','',-1,'modules/dblog/dblog.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/event/%','a:1:{i:3;N;}','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_event','a:1:{i:0;i:3;}',14,4,'','admin/reports/event/%','Details','t','',4,'','','',0,'modules/dblog/dblog.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/page-not-found','','','user_access','a:1:{i:0;s:19:\"access site reports\";}','dblog_top','a:1:{i:0;s:14:\"page not found\";}',7,3,'','admin/reports/page-not-found','Top \'page not found\' errors','t','',6,'','View \'page not found\' errors (404s).','',0,'modules/dblog/dblog.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/status','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_status','a:0:{}',7,3,'','admin/reports/status','Status report','t','',6,'','Get a status report about your site\'s operation and any detected problems.','',10,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/status/php','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_php','a:0:{}',15,4,'','admin/reports/status/php','PHP','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/status/run-cron','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_run_cron','a:0:{}',15,4,'','admin/reports/status/run-cron','Run cron','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/status/sql','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_sql','a:0:{}',15,4,'','admin/reports/status/sql','SQL','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/updates','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','update_status','a:0:{}',7,3,'','admin/reports/updates','Available updates','t','',6,'','Get a status report about available updates for your installed modules and themes.','',10,'modules/update/update.report.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/updates/check','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','update_manual_status','a:0:{}',15,4,'','admin/reports/updates/check','Manual update check','t','',4,'','','',0,'modules/update/update.fetch.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/updates/list','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','update_status','a:0:{}',15,4,'admin/reports/updates','admin/reports/updates','List','t','',136,'','','',0,'modules/update/update.report.inc');
INSERT INTO `menu_router` VALUES ('admin/reports/updates/settings','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:15:\"update_settings\";}',15,4,'admin/reports/updates','admin/reports/updates','Settings','t','',128,'','','',0,'modules/update/update.settings.inc');
INSERT INTO `menu_router` VALUES ('admin/settings','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_settings_overview','a:0:{}',3,2,'','admin/settings','Site configuration','t','',6,'','Adjust basic site configuration options.','right',-5,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/actions','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','system_actions_manage','a:0:{}',7,3,'','admin/settings/actions','Actions','t','',6,'','Manage the actions defined for your site.','',0,'');
INSERT INTO `menu_router` VALUES ('admin/settings/actions/configure','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','drupal_get_form','a:1:{i:0;s:24:\"system_actions_configure\";}',15,4,'','admin/settings/actions/configure','Configure an advanced action','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/settings/actions/delete/%','a:1:{i:4;s:12:\"actions_load\";}','','user_access','a:1:{i:0;s:18:\"administer actions\";}','drupal_get_form','a:2:{i:0;s:26:\"system_actions_delete_form\";i:1;i:4;}',30,5,'','admin/settings/actions/delete/%','Delete action','t','',4,'','Delete an action.','',0,'');
INSERT INTO `menu_router` VALUES ('admin/settings/actions/manage','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','system_actions_manage','a:0:{}',15,4,'admin/settings/actions','admin/settings/actions','Manage actions','t','',136,'','Manage the actions defined for your site.','',-2,'');
INSERT INTO `menu_router` VALUES ('admin/settings/actions/orphan','','','user_access','a:1:{i:0;s:18:\"administer actions\";}','system_actions_remove_orphans','a:0:{}',15,4,'','admin/settings/actions/orphan','Remove orphans','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/settings/admin','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:27:\"system_admin_theme_settings\";}',7,3,'','admin/settings/admin','Administration theme','t','',6,'system_admin_theme_settings','Settings for how your administrative pages should look.','left',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/admin_menu','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"admin_menu_theme_settings\";}',7,3,'','admin/settings/admin_menu','Administration menu','t','',6,'','Adjust administration menu settings.','',0,'sites/all/modules/admin_menu/admin_menu.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/clean-urls','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"system_clean_url_settings\";}',7,3,'','admin/settings/clean-urls','Clean URLs','t','',6,'','Enable or disable clean URLs for your site.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/clean-urls/check','','','1','a:0:{}','drupal_json','a:1:{i:0;a:1:{s:6:\"status\";b:1;}}',15,4,'','admin/settings/clean-urls/check','Clean URL check','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('admin/settings/date-time','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:25:\"system_date_time_settings\";}',7,3,'','admin/settings/date-time','Date and time','t','',6,'','Settings for how Drupal displays date and time, as well as the system\'s default timezone.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/date-time/lookup','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_date_time_lookup','a:0:{}',15,4,'','admin/settings/date-time/lookup','Date and time lookup','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/devel','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:20:\"devel_admin_settings\";}',7,3,'','admin/settings/devel','Devel settings','t','',6,'','Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href=\"/admin/build/block\">block administration</a> page.','',0,'');
INSERT INTO `menu_router` VALUES ('admin/settings/error-reporting','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:31:\"system_error_reporting_settings\";}',7,3,'','admin/settings/error-reporting','Error reporting','t','',6,'','Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/file-system','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:27:\"system_file_system_settings\";}',7,3,'','admin/settings/file-system','File system','t','',6,'','Tell Drupal where to store uploaded files and how they are accessed.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','drupal_get_form','a:1:{i:0;s:21:\"filter_admin_overview\";}',7,3,'','admin/settings/filters','Input formats','t','',6,'','Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.','',0,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters/%','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_format_page','a:1:{i:0;i:3;}',14,4,'','admin/settings/filters/%','','filter_admin_format_title','a:1:{i:0;i:3;}',4,'','','',0,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters/%/configure','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_configure_page','a:1:{i:0;i:3;}',29,5,'admin/settings/filters/%','admin/settings/filters/%','Configure','t','',128,'','','',1,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters/%/edit','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_format_page','a:1:{i:0;i:3;}',29,5,'admin/settings/filters/%','admin/settings/filters/%','Edit','t','',136,'','','',0,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters/%/order','a:1:{i:3;s:18:\"filter_format_load\";}','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_order_page','a:1:{i:0;i:3;}',29,5,'admin/settings/filters/%','admin/settings/filters/%','Rearrange','t','',128,'','','',2,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters/add','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','filter_admin_format_page','a:0:{}',15,4,'admin/settings/filters','admin/settings/filters','Add input format','t','',128,'','','',1,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters/delete','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','drupal_get_form','a:1:{i:0;s:19:\"filter_admin_delete\";}',15,4,'','admin/settings/filters/delete','Delete input format','t','',4,'','','',0,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/filters/list','','','user_access','a:1:{i:0;s:18:\"administer filters\";}','drupal_get_form','a:1:{i:0;s:21:\"filter_admin_overview\";}',15,4,'admin/settings/filters','admin/settings/filters','List','t','',136,'','','',0,'modules/filter/filter.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/flashnode','','','user_access','a:1:{i:0;s:21:\"administer flash node\";}','drupal_get_form','a:1:{i:0;s:24:\"flashnode_admin_settings\";}',7,3,'','admin/settings/flashnode','Flash node','t','',6,'','Set various flash node default options.','',0,'sites/all/modules/flashnode/flashnode.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/image-toolkit','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:29:\"system_image_toolkit_settings\";}',7,3,'','admin/settings/image-toolkit','Image toolkit','t','',6,'','Choose which image toolkit to use if you have installed optional toolkits.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/logging','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','system_logging_overview','a:0:{}',7,3,'','admin/settings/logging','Logging and alerts','t','',6,'','Settings for logging and alerts modules. Various modules can route Drupal\'s system events to different destination, such as syslog, database, email, ...etc.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/logging/dblog','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:20:\"dblog_admin_settings\";}',15,4,'','admin/settings/logging/dblog','Database logging','t','',6,'','Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.','',0,'modules/dblog/dblog.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/performance','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:27:\"system_performance_settings\";}',7,3,'','admin/settings/performance','Performance','t','',6,'','Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/site-information','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:32:\"system_site_information_settings\";}',7,3,'','admin/settings/site-information','Site information','t','',6,'','Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/site-maintenance','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:32:\"system_site_maintenance_settings\";}',7,3,'','admin/settings/site-maintenance','Site maintenance','t','',6,'','Take the site off-line for maintenance or bring it back online.','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/settings/strongarm','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:20:\"strongarm_admin_form\";}',7,3,'','admin/settings/strongarm','Strongarm','t','',6,'','Manage Drupal variable settings that have been strongarmed.','',0,'sites/all/modules/strongarm/strongarm.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user','','','user_access','a:1:{i:0;s:27:\"access administration pages\";}','system_admin_menu_block_page','a:0:{}',3,2,'','admin/user','User management','t','',6,'','Manage your site\'s users, groups and access to site features.','left',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/logintoboggan','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','drupal_get_form','a:1:{i:0;s:27:\"logintoboggan_main_settings\";}',7,3,'','admin/user/logintoboggan','LoginToboggan','t','',6,'','Set up custom login options like instant login, login redirects, pre-authorized validation roles, etc.','',0,'');
INSERT INTO `menu_router` VALUES ('admin/user/permissions','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:15:\"user_admin_perm\";}',7,3,'','admin/user/permissions','Permissions','t','',6,'','Determine access to features by selecting permissions for roles.','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/roles','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:19:\"user_admin_new_role\";}',7,3,'','admin/user/roles','Roles','t','',6,'','List, edit, or add user roles.','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/roles/edit','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:15:\"user_admin_role\";}',15,4,'','admin/user/roles/edit','Edit role','t','',4,'','','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/rules','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access','a:0:{}',7,3,'','admin/user/rules','Access rules','t','',6,'','List and create rules to disallow usernames, e-mail addresses, and IP addresses.','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/rules/add','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access_add','a:0:{}',15,4,'admin/user/rules','admin/user/rules','Add rule','t','',128,'','','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/rules/check','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access_check','a:0:{}',15,4,'admin/user/rules','admin/user/rules','Check rules','t','',128,'','','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/rules/delete','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','drupal_get_form','a:1:{i:0;s:32:\"user_admin_access_delete_confirm\";}',15,4,'','admin/user/rules/delete','Delete rule','t','',4,'','','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/rules/edit','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access_edit','a:0:{}',15,4,'','admin/user/rules/edit','Edit rule','t','',4,'','','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/rules/list','','','user_access','a:1:{i:0;s:22:\"administer permissions\";}','user_admin_access','a:0:{}',15,4,'admin/user/rules','admin/user/rules','List','t','',136,'','','',-10,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/settings','','','user_access','a:1:{i:0;s:16:\"administer users\";}','drupal_get_form','a:1:{i:0;s:19:\"user_admin_settings\";}',7,3,'','admin/user/settings','User settings','t','',6,'','Configure default behavior of users, including registration requirements, e-mails, and user pictures.','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/user','','','user_access','a:1:{i:0;s:16:\"administer users\";}','user_admin','a:1:{i:0;s:4:\"list\";}',7,3,'','admin/user/user','Users','t','',6,'','List, add, and edit users.','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/user/create','','','user_access','a:1:{i:0;s:16:\"administer users\";}','user_admin','a:1:{i:0;s:6:\"create\";}',15,4,'admin/user/user','admin/user/user','Add user','t','',128,'','','',0,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/user/user/list','','','user_access','a:1:{i:0;s:16:\"administer users\";}','user_admin','a:1:{i:0;s:4:\"list\";}',15,4,'admin/user/user','admin/user/user','List','t','',136,'','','',-10,'modules/user/user.admin.inc');
INSERT INTO `menu_router` VALUES ('admin/views/ajax/autocomplete/tag','','','user_access','a:1:{i:0;s:16:\"administer views\";}','views_ui_autocomplete_tag','a:0:{}',31,5,'','admin/views/ajax/autocomplete/tag','','t','',4,'','','',0,'sites/all/modules/views/includes/admin.inc');
INSERT INTO `menu_router` VALUES ('admin/views/ajax/autocomplete/user','','','user_access','a:1:{i:0;s:14:\"access content\";}','views_ajax_autocomplete_user','a:0:{}',31,5,'','admin/views/ajax/autocomplete/user','','t','',4,'','','',0,'sites/all/modules/views/includes/ajax.inc');
INSERT INTO `menu_router` VALUES ('admin_menu/flush-cache','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','admin_menu_flush_cache','a:0:{}',3,2,'','admin_menu/flush-cache','','t','',4,'','','',0,'sites/all/modules/admin_menu/admin_menu.inc');
INSERT INTO `menu_router` VALUES ('admin_menu/toggle-modules','','','user_access','a:1:{i:0;s:29:\"administer site configuration\";}','admin_menu_toggle_modules','a:0:{}',3,2,'','admin_menu/toggle-modules','','t','',4,'','','',0,'sites/all/modules/admin_menu/admin_menu.inc');
INSERT INTO `menu_router` VALUES ('advanced_help/search/%','a:1:{i:2;N;}','a:1:{i:2;s:16:\"menu_tail_to_arg\";}','user_access','a:1:{i:0;s:24:\"view advanced help index\";}','advanced_help_search_view','a:1:{i:0;s:13:\"advanced_help\";}',6,3,'','advanced_help/search/%','Search help','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('batch','','','1','a:0:{}','system_batch_page','a:0:{}',1,1,'','batch','','t','',4,'','','',0,'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES ('content/js_add_more','','','user_access','a:1:{i:0;s:14:\"access content\";}','content_add_more_js','a:0:{}',3,2,'','content/js_add_more','','t','',4,'','','',0,'sites/all/modules/cck/includes/content.node_form.inc');
INSERT INTO `menu_router` VALUES ('ctools/autocomplete/node','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_content_autocomplete_node','a:0:{}',7,3,'','ctools/autocomplete/node','','t','',4,'','','',0,'sites/all/modules/ctools/includes/content.menu.inc');
INSERT INTO `menu_router` VALUES ('ctools/context/ajax/access/add','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_access_ajax_add','a:0:{}',31,5,'','ctools/context/ajax/access/add','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-access-admin.inc');
INSERT INTO `menu_router` VALUES ('ctools/context/ajax/access/configure','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_access_ajax_edit','a:0:{}',31,5,'','ctools/context/ajax/access/configure','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-access-admin.inc');
INSERT INTO `menu_router` VALUES ('ctools/context/ajax/access/delete','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_access_ajax_delete','a:0:{}',31,5,'','ctools/context/ajax/access/delete','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-access-admin.inc');
INSERT INTO `menu_router` VALUES ('ctools/context/ajax/add','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_context_ajax_item_add','a:0:{}',15,4,'','ctools/context/ajax/add','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-admin.inc');
INSERT INTO `menu_router` VALUES ('ctools/context/ajax/configure','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_context_ajax_item_edit','a:0:{}',15,4,'','ctools/context/ajax/configure','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-admin.inc');
INSERT INTO `menu_router` VALUES ('ctools/context/ajax/delete','','','user_access','a:1:{i:0;s:14:\"access content\";}','ctools_context_ajax_item_delete','a:0:{}',15,4,'','ctools/context/ajax/delete','','t','',4,'','','',0,'sites/all/modules/ctools/includes/context-admin.inc');
INSERT INTO `menu_router` VALUES ('devel/cache/clear','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_cache_clear','a:0:{}',7,3,'','devel/cache/clear','Empty cache','t','',6,'','Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/elements','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_elements_page','a:0:{}',3,2,'','devel/elements','Hook_elements()','t','',6,'','View the active form/render elements for this site.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/menu/reset','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','drupal_get_form','a:1:{i:0;s:18:\"devel_menu_rebuild\";}',7,3,'','devel/menu/reset','Rebuild menus','t','',6,'','Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/php','','','user_access','a:1:{i:0;s:16:\"execute php code\";}','drupal_get_form','a:1:{i:0;s:18:\"devel_execute_form\";}',3,2,'','devel/php','Execute PHP Code','t','',6,'','Execute some PHP code','',0,'');
INSERT INTO `menu_router` VALUES ('devel/phpinfo','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_phpinfo','a:0:{}',3,2,'','devel/phpinfo','PHPinfo()','t','',6,'','View your server\'s PHP configuration','',0,'');
INSERT INTO `menu_router` VALUES ('devel/queries','','','devel_menu_access_store_queries','a:0:{}','devel_queries','a:0:{}',3,2,'','devel/queries','Database queries','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('devel/queries/empty','','','devel_menu_access_store_queries','a:0:{}','devel_queries_empty','a:0:{}',7,3,'','devel/queries/empty','Empty database queries','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('devel/reference','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_function_reference','a:0:{}',3,2,'','devel/reference','Function reference','t','',6,'','View a list of currently defined user functions with documentation links.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/reinstall','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','drupal_get_form','a:1:{i:0;s:15:\"devel_reinstall\";}',3,2,'','devel/reinstall','Reinstall modules','t','',6,'','Run hook_uninstall() and then hook_install() for a given module.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/session','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_session','a:0:{}',3,2,'','devel/session','Session viewer','t','',6,'','List the contents of $_SESSION.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/source','','','user_access','a:1:{i:0;s:19:\"display source code\";}','devel_display_source','a:0:{}',3,2,'','devel/source','Display the PHP code of any file in your Drupal installation','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('devel/switch','','','user_access','a:1:{i:0;s:12:\"switch users\";}','devel_switch_user','a:0:{}',3,2,'','devel/switch','Switch user','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('devel/theme/registry','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_theme_registry','a:0:{}',7,3,'','devel/theme/registry','Theme registry','t','',6,'','View a list of available theme functions across the whole site.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/variable','','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_variable_page','a:0:{}',3,2,'','devel/variable','Variable editor','t','',6,'','Edit and delete site variables.','',0,'');
INSERT INTO `menu_router` VALUES ('devel/variable/edit/%','a:1:{i:3;N;}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','drupal_get_form','a:2:{i:0;s:19:\"devel_variable_edit\";i:1;i:3;}',14,4,'','devel/variable/edit/%','Variable editor','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('filter/tips','','','1','a:0:{}','filter_tips_long','a:0:{}',3,2,'','filter/tips','Compose tips','t','',20,'','','',0,'modules/filter/filter.pages.inc');
INSERT INTO `menu_router` VALUES ('flash_data','','','views_access','a:1:{i:0;b:1;}','views_page','a:2:{i:0;s:10:\"flash_node\";i:1;s:6:\"page_1\";}',1,1,'','flash_data','Flash Data','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('flash_input','','','user_access','a:1:{i:0;s:14:\"access content\";}','flash_data_receive','a:0:{}',1,1,'','flash_input','Testing','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('help/%/%','a:2:{i:1;N;i:2;N;}','','user_access','a:1:{i:0;s:24:\"view advanced help topic\";}','advanced_help_topic_page','a:2:{i:0;i:1;i:1;i:2;}',4,3,'','help/%/%','','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('js/admin_menu/cache','','','user_access','a:1:{i:0;s:26:\"access administration menu\";}','admin_menu_js_cache','a:0:{}',7,3,'','js/admin_menu/cache','','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('logout','','','user_is_logged_in','a:0:{}','user_logout','a:0:{}',1,1,'','logout','Log out','t','',6,'','','',10,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('node','','','user_access','a:1:{i:0;s:14:\"access content\";}','node_page_default','a:0:{}',1,1,'','node','Content','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('node/%','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:4:\"view\";i:1;i:1;}','node_page_view','a:1:{i:0;i:1;}',2,2,'','node/%','','node_page_title','a:1:{i:0;i:1;}',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('node/%/delete','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:6:\"delete\";i:1;i:1;}','drupal_get_form','a:2:{i:0;s:19:\"node_delete_confirm\";i:1;i:1;}',5,3,'','node/%/delete','Delete','t','',4,'','','',1,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/%/devel','a:1:{i:1;s:9:\"node_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"node\";}',5,3,'node/%','node/%','Devel','t','',128,'','','',100,'');
INSERT INTO `menu_router` VALUES ('node/%/devel/load','a:1:{i:1;s:9:\"node_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"node\";}',11,4,'node/%/devel','node/%','Dev load','t','',136,'','','',0,'');
INSERT INTO `menu_router` VALUES ('node/%/devel/render','a:1:{i:1;s:9:\"node_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_render_object','a:2:{i:0;s:4:\"node\";i:1;i:1;}',11,4,'node/%/devel','node/%','Dev render','t','',128,'','','',10,'');
INSERT INTO `menu_router` VALUES ('node/%/edit','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:6:\"update\";i:1;i:1;}','node_page_edit','a:1:{i:0;i:1;}',5,3,'node/%','node/%','Edit','t','',128,'','','',1,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/%/revisions','a:1:{i:1;s:9:\"node_load\";}','','_node_revision_access','a:1:{i:0;i:1;}','node_revision_overview','a:1:{i:0;i:1;}',5,3,'node/%','node/%','Revisions','t','',128,'','','',2,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/%/revisions/%/delete','a:2:{i:1;a:1:{s:9:\"node_load\";a:1:{i:0;i:3;}}i:3;N;}','','_node_revision_access','a:2:{i:0;i:1;i:1;s:6:\"delete\";}','drupal_get_form','a:2:{i:0;s:28:\"node_revision_delete_confirm\";i:1;i:1;}',21,5,'','node/%/revisions/%/delete','Delete earlier revision','t','',4,'','','',0,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/%/revisions/%/revert','a:2:{i:1;a:1:{s:9:\"node_load\";a:1:{i:0;i:3;}}i:3;N;}','','_node_revision_access','a:2:{i:0;i:1;i:1;s:6:\"update\";}','drupal_get_form','a:2:{i:0;s:28:\"node_revision_revert_confirm\";i:1;i:1;}',21,5,'','node/%/revisions/%/revert','Revert to earlier revision','t','',4,'','','',0,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/%/revisions/%/view','a:2:{i:1;a:1:{s:9:\"node_load\";a:1:{i:0;i:3;}}i:3;N;}','','_node_revision_access','a:1:{i:0;i:1;}','node_show','a:3:{i:0;i:1;i:1;N;i:2;b:1;}',21,5,'','node/%/revisions/%/view','Revisions','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('node/%/view','a:1:{i:1;s:9:\"node_load\";}','','node_access','a:2:{i:0;s:4:\"view\";i:1;i:1;}','node_page_view','a:1:{i:0;i:1;}',5,3,'node/%','node/%','View','t','',136,'','','',-10,'');
INSERT INTO `menu_router` VALUES ('node/add','','','_node_add_access','a:0:{}','node_add_page','a:0:{}',3,2,'','node/add','Create content','t','',6,'','','',1,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/add/flash-data','','','node_access','a:2:{i:0;s:6:\"create\";i:1;s:10:\"flash_data\";}','node_add','a:1:{i:0;i:2;}',7,3,'','node/add/flash-data','Flash Data','check_plain','',6,'','Each node logs XML data sent from a Flash application','',0,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/add/flashnode','','','node_access','a:2:{i:0;s:6:\"create\";i:1;s:9:\"flashnode\";}','node_add','a:1:{i:0;i:2;}',7,3,'','node/add/flashnode','Flash','check_plain','',6,'','Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.','',0,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('node/add/page','','','node_access','a:2:{i:0;s:6:\"create\";i:1;s:4:\"page\";}','node_add','a:1:{i:0;i:2;}',7,3,'','node/add/page','Page','check_plain','',6,'','A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.','',0,'modules/node/node.pages.inc');
INSERT INTO `menu_router` VALUES ('nodereference/autocomplete','','','nodereference_autocomplete_access','a:1:{i:0;i:2;}','nodereference_autocomplete','a:0:{}',3,2,'','nodereference/autocomplete','Nodereference autocomplete','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('openid/authenticate','','','user_is_anonymous','a:0:{}','openid_authentication_page','a:0:{}',3,2,'','openid/authenticate','OpenID Login','t','',4,'','','',0,'modules/openid/openid.pages.inc');
INSERT INTO `menu_router` VALUES ('panels/ajax','','','user_access','a:1:{i:0;s:14:\"access content\";}','panels_ajax_router','a:0:{}',3,2,'','panels/ajax','','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('rss.xml','','','user_access','a:1:{i:0;s:14:\"access content\";}','node_feed','a:0:{}',1,1,'','rss.xml','RSS feed','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('search/advanced_help/%','a:1:{i:2;N;}','a:1:{i:2;s:16:\"menu_tail_to_arg\";}','0','a:1:{i:0;s:24:\"view advanced help index\";}','','a:0:{}',6,3,'','search/advanced_help/%','','t','',6,'','','',0,'');
INSERT INTO `menu_router` VALUES ('system/files','','','1','a:0:{}','file_download','a:0:{}',3,2,'','system/files','File download','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('taxonomy/autocomplete','','','user_access','a:1:{i:0;s:14:\"access content\";}','taxonomy_autocomplete','a:0:{}',3,2,'','taxonomy/autocomplete','Autocomplete taxonomy','t','',4,'','','',0,'modules/taxonomy/taxonomy.pages.inc');
INSERT INTO `menu_router` VALUES ('taxonomy/term/%','a:1:{i:2;N;}','','user_access','a:1:{i:0;s:14:\"access content\";}','taxonomy_term_page','a:1:{i:0;i:2;}',6,3,'','taxonomy/term/%','Taxonomy term','t','',4,'','','',0,'modules/taxonomy/taxonomy.pages.inc');
INSERT INTO `menu_router` VALUES ('toboggan/denied','','','1','a:0:{}','logintoboggan_denied','a:0:{}',3,2,'','toboggan/denied','Access denied','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('toboggan/revalidate/%','a:1:{i:2;s:9:\"user_load\";}','','logintoboggan_revalidate_access','a:1:{i:0;i:2;}','logintoboggan_resend_validation','a:1:{i:0;i:2;}',6,3,'','toboggan/revalidate/%','Re-send validation e-mail','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('user','','','1','a:0:{}','user_page','a:0:{}',1,1,'','user','User account','t','',4,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/%','a:1:{i:1;s:22:\"user_uid_optional_load\";}','a:1:{i:1;s:24:\"user_uid_optional_to_arg\";}','user_view_access','a:1:{i:0;i:1;}','user_view','a:1:{i:0;i:1;}',2,2,'','user/%','My account','user_page_title','a:1:{i:0;i:1;}',6,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/%/delete','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:16:\"administer users\";}','drupal_get_form','a:2:{i:0;s:19:\"user_confirm_delete\";i:1;i:1;}',5,3,'','user/%/delete','Delete','t','',4,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/%/devel','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"user\";}',5,3,'user/%','user/%','Devel','t','',128,'','','',100,'');
INSERT INTO `menu_router` VALUES ('user/%/devel/load','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_load_object','a:2:{i:0;i:1;i:1;s:4:\"user\";}',11,4,'user/%/devel','user/%','Dev load','t','',136,'','','',0,'');
INSERT INTO `menu_router` VALUES ('user/%/devel/render','a:1:{i:1;s:9:\"user_load\";}','','user_access','a:1:{i:0;s:24:\"access devel information\";}','devel_render_object','a:2:{i:0;s:4:\"user\";i:1;i:1;}',11,4,'user/%/devel','user/%','Dev render','t','',128,'','','',10,'');
INSERT INTO `menu_router` VALUES ('user/%/edit','a:1:{i:1;a:1:{s:18:\"user_category_load\";a:2:{i:0;s:4:\"%map\";i:1;s:6:\"%index\";}}}','','user_edit_access','a:1:{i:0;i:1;}','user_edit','a:1:{i:0;i:1;}',5,3,'user/%','user/%','Edit','t','',128,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/%/edit/account','a:1:{i:1;a:1:{s:18:\"user_category_load\";a:2:{i:0;s:4:\"%map\";i:1;s:6:\"%index\";}}}','','user_edit_access','a:1:{i:0;i:1;}','user_edit','a:1:{i:0;i:1;}',11,4,'user/%/edit','user/%','Account','t','',136,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/%/openid','a:1:{i:1;s:9:\"user_load\";}','','user_edit_access','a:1:{i:0;i:1;}','openid_user_identities','a:1:{i:0;i:1;}',5,3,'user/%','user/%','OpenID identities','t','',128,'','','',0,'modules/openid/openid.pages.inc');
INSERT INTO `menu_router` VALUES ('user/%/openid/delete','a:1:{i:1;s:9:\"user_load\";}','','user_edit_access','a:1:{i:0;i:1;}','drupal_get_form','a:2:{i:0;s:23:\"openid_user_delete_form\";i:1;i:1;}',11,4,'','user/%/openid/delete','Delete OpenID','t','',4,'','','',0,'modules/openid/openid.pages.inc');
INSERT INTO `menu_router` VALUES ('user/%/view','a:1:{i:1;s:9:\"user_load\";}','','user_view_access','a:1:{i:0;i:1;}','user_view','a:1:{i:0;i:1;}',5,3,'user/%','user/%','View','t','',136,'','','',-10,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/autocomplete','','','user_access','a:1:{i:0;s:20:\"access user profiles\";}','user_autocomplete','a:0:{}',3,2,'','user/autocomplete','User autocomplete','t','',4,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/login','','','user_is_anonymous','a:0:{}','user_page','a:0:{}',3,2,'user','user','Log in','t','',136,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/password','','','user_is_anonymous','a:0:{}','drupal_get_form','a:1:{i:0;s:9:\"user_pass\";}',3,2,'user','user','Request new password','t','',128,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/register','','','user_register_access','a:0:{}','drupal_get_form','a:1:{i:0;s:13:\"user_register\";}',3,2,'user','user','Create new account','t','',128,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/reset/%/%/%','a:3:{i:2;N;i:3;N;i:4;N;}','','1','a:0:{}','drupal_get_form','a:4:{i:0;s:15:\"user_pass_reset\";i:1;i:2;i:2;i:3;i:3;i:4;}',24,5,'','user/reset/%/%/%','Reset password','t','',4,'','','',0,'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES ('user/validate/%/%/%','a:3:{i:2;s:9:\"user_load\";i:3;N;i:4;N;}','','logintoboggan_validate_email_access','a:2:{i:0;i:2;i:1;i:3;}','logintoboggan_validate_email','a:3:{i:0;i:2;i:1;i:3;i:2;i:4;}',24,5,'','user/validate/%/%/%','Validate e-mail address','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('userreference/autocomplete','','','user_access','a:1:{i:0;s:14:\"access content\";}','userreference_autocomplete','a:0:{}',3,2,'','userreference/autocomplete','Userreference autocomplete','t','',4,'','','',0,'');
INSERT INTO `menu_router` VALUES ('views/ajax','','','1','a:0:{}','views_ajax','a:0:{}',3,2,'','views/ajax','Views','t','',4,'','Ajax callback for view loading.','',0,'sites/all/modules/views/includes/ajax.inc');
/*!40000 ALTER TABLE `menu_router` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(12) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created` int(11) NOT NULL DEFAULT '0',
  `changed` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL DEFAULT '0',
  `promote` int(11) NOT NULL DEFAULT '0',
  `moderate` int(11) NOT NULL DEFAULT '0',
  `sticky` int(11) NOT NULL DEFAULT '0',
  `tnid` int(10) unsigned NOT NULL DEFAULT '0',
  `translate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`),
  UNIQUE KEY `vid` (`vid`),
  KEY `node_changed` (`changed`),
  KEY `node_created` (`created`),
  KEY `node_moderate` (`moderate`),
  KEY `node_promote_status` (`promote`,`status`),
  KEY `node_status_type` (`status`,`type`,`nid`),
  KEY `node_title_type` (`title`,`type`(4)),
  KEY `node_type` (`type`(4)),
  KEY `uid` (`uid`),
  KEY `tnid` (`tnid`),
  KEY `translate` (`translate`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--
-- ORDER BY:  `nid`

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (6,6,'flash_data','','IntegrationTest: 2010-08-17 17:43:58',0,1,1282081438,1282081438,0,0,0,0,0,0);
INSERT INTO `node` VALUES (7,7,'flash_data','','IntegrationTest: 2010-08-17 17:52:10',1,1,1282081930,1282082046,0,0,0,0,0,0);
INSERT INTO `node` VALUES (8,8,'flash_data','','IntegrationTest: 2010-08-17 17:54:32',0,1,1282082072,1282082072,0,0,0,0,0,0);
INSERT INTO `node` VALUES (9,9,'flash_data','','IntegrationTest: 2010-08-17 17:58:32',0,1,1282082312,1282082312,0,0,0,0,0,0);
INSERT INTO `node` VALUES (10,10,'flash_data','','IntegrationTest: 2010-08-17 17:59:16',2,1,1282082356,1282082356,0,0,0,0,0,0);
INSERT INTO `node` VALUES (11,11,'flash_data','','IntegrationTest: 2010-08-17 18:02:58',0,1,1282082578,1282082578,0,0,0,0,0,0);
INSERT INTO `node` VALUES (12,12,'flash_data','','IntegrationTest: 2010-08-18 13:47:40',0,1,1282153660,1282153660,0,0,0,0,0,0);
INSERT INTO `node` VALUES (13,13,'flash_data','','IntegrationTest: 2010-08-18 13:49:43',0,1,1282153783,1282153783,0,0,0,0,0,0);
INSERT INTO `node` VALUES (14,14,'flash_data','','IntegrationTest: 2010-08-18 13:49:55',0,1,1282153795,1282153795,0,0,0,0,0,0);
INSERT INTO `node` VALUES (15,15,'flash_data','','IntegrationTest: 2010-08-18 13:50:39',0,1,1282153839,1282153839,0,0,0,0,0,0);
INSERT INTO `node` VALUES (16,16,'flash_data','','IntegrationTest: 2010-08-18 13:52:57',0,1,1282153977,1282153977,0,0,0,0,0,0);
INSERT INTO `node` VALUES (17,17,'flash_data','','IntegrationTest: 2010-08-18 13:54:47',0,1,1282154087,1282154087,0,0,0,0,0,0);
INSERT INTO `node` VALUES (18,18,'flash_data','','IntegrationTest: 2010-08-18 13:55:17',0,1,1282154117,1282154117,0,0,0,0,0,0);
INSERT INTO `node` VALUES (19,19,'flash_data','','IntegrationTest: 2010-08-18 13:55:39',0,1,1282154139,1282154139,0,0,0,0,0,0);
INSERT INTO `node` VALUES (20,20,'flash_data','','IntegrationTest: 2010-08-18 13:55:57',0,1,1282154157,1282154157,0,0,0,0,0,0);
INSERT INTO `node` VALUES (21,21,'flash_data','','IntegrationTest: 2010-08-18 13:56:16',0,1,1282154176,1282154176,0,0,0,0,0,0);
INSERT INTO `node` VALUES (22,22,'flash_data','','IntegrationTest: 2010-08-18 13:57:41',0,1,1282154261,1282154261,0,0,0,0,0,0);
INSERT INTO `node` VALUES (23,23,'flash_data','','IntegrationTest: 2010-08-18 13:58:59',0,1,1282154339,1282154339,0,0,0,0,0,0);
INSERT INTO `node` VALUES (24,24,'flash_data','','IntegrationTest: 2010-08-18 14:00:24',0,1,1282154424,1282154424,0,0,0,0,0,0);
INSERT INTO `node` VALUES (25,25,'flash_data','','IntegrationTest: 2010-08-18 14:00:40',0,1,1282154440,1282154440,0,0,0,0,0,0);
INSERT INTO `node` VALUES (26,26,'flash_data','','IntegrationTest: 2010-08-18 14:01:07',0,1,1282154467,1282154467,0,0,0,0,0,0);
INSERT INTO `node` VALUES (27,27,'flash_data','','IntegrationTest: 2010-08-18 14:02:34',0,1,1282154554,1282154554,0,0,0,0,0,0);
INSERT INTO `node` VALUES (28,28,'flash_data','','IntegrationTest: 2010-08-18 14:02:48',0,1,1282154568,1282154568,0,0,0,0,0,0);
INSERT INTO `node` VALUES (29,29,'flash_data','','IntegrationTest: 2010-08-18 14:03:06',0,1,1282154586,1282154586,0,0,0,0,0,0);
INSERT INTO `node` VALUES (30,30,'flash_data','','IntegrationTest: 2010-08-18 14:03:23',0,1,1282154603,1282154603,0,0,0,0,0,0);
INSERT INTO `node` VALUES (31,31,'flash_data','','IntegrationTest: 2010-08-18 14:04:12',0,1,1282154652,1282154652,0,0,0,0,0,0);
INSERT INTO `node` VALUES (32,32,'flash_data','','IntegrationTest: 2010-08-18 14:04:27',0,1,1282154667,1282154667,0,0,0,0,0,0);
INSERT INTO `node` VALUES (33,33,'flash_data','','IntegrationTest: 2010-08-19 10:32:19',0,1,1282228339,1282228339,0,0,0,0,0,0);
INSERT INTO `node` VALUES (34,34,'flash_data','','IntegrationTest: 2010-08-19 10:32:35',0,1,1282228355,1282228355,0,0,0,0,0,0);
INSERT INTO `node` VALUES (35,35,'flash_data','','IntegrationTest: 2010-08-19 10:41:32',0,1,1282228892,1282228892,0,0,0,0,0,0);
INSERT INTO `node` VALUES (36,36,'flash_data','','IntegrationTest: 2010-08-19 10:42:29',0,1,1282228949,1282228949,0,0,0,0,0,0);
INSERT INTO `node` VALUES (37,37,'flash_data','','IntegrationTest: 2010-08-19 10:46:50',0,1,1282229210,1282229210,0,0,0,0,0,0);
INSERT INTO `node` VALUES (38,38,'flash_data','','IntegrationTest: 2010-08-19 10:48:29',0,1,1282229309,1282229309,0,0,0,0,0,0);
INSERT INTO `node` VALUES (39,39,'flash_data','','IntegrationTest: 2010-08-19 10:51:42',0,1,1282229502,1282229502,0,0,0,0,0,0);
INSERT INTO `node` VALUES (40,40,'flash_data','','IntegrationTest: 2010-08-19 10:55:00',0,1,1282229700,1282229700,0,0,0,0,0,0);
INSERT INTO `node` VALUES (41,41,'flashnode','','IntegrationTester2',1,1,1282229785,1282229785,0,1,0,0,0,0);
INSERT INTO `node` VALUES (42,42,'flash_data','','IntegrationTester2: 2010-08-19 10:56:42',0,1,1282229802,1282229802,0,0,0,0,0,0);
INSERT INTO `node` VALUES (43,43,'flash_data','','IntegrationTester2: 2010-08-19 10:57:40',0,1,1282229860,1282229860,0,0,0,0,0,0);
INSERT INTO `node` VALUES (44,44,'flash_data','','IntegrationTester2: 2010-08-19 10:58:16',0,1,1282229896,1282229896,0,0,0,0,0,0);
INSERT INTO `node` VALUES (45,45,'flash_data','','IntegrationTester2: 2010-08-19 10:59:15',0,1,1282229955,1282229955,0,0,0,0,0,0);
INSERT INTO `node` VALUES (46,46,'flash_data','','IntegrationTester2: 2010-08-19 11:00:52',0,1,1282230052,1282230052,0,0,0,0,0,0);
INSERT INTO `node` VALUES (47,47,'flash_data','','IntegrationTester2: 2010-08-19 11:08:01',0,1,1282230481,1282230481,0,0,0,0,0,0);
INSERT INTO `node` VALUES (48,48,'flash_data','',': 2010-08-19 11:11:09',0,1,1282230669,1282230669,0,0,0,0,0,0);
INSERT INTO `node` VALUES (49,49,'flash_data','',': 2010-08-19 11:20:06',0,1,1282231206,1282231206,0,0,0,0,0,0);
INSERT INTO `node` VALUES (50,50,'flash_data','','IntegrationTester2: 2010-08-19 11:24:46',0,1,1282231486,1282231486,0,0,0,0,0,0);
INSERT INTO `node` VALUES (51,51,'flash_data','','IntegrationTester2: 2010-08-19 11:28:19',0,1,1282231699,1282231699,0,0,0,0,0,0);
INSERT INTO `node` VALUES (52,52,'flash_data','','IntegrationTester2: 2010-08-19 11:28:59',0,1,1282231739,1282231739,0,0,0,0,0,0);
INSERT INTO `node` VALUES (53,53,'flash_data','','IntegrationTester2: 2010-08-19 11:29:46',0,1,1282231786,1282231786,0,0,0,0,0,0);
INSERT INTO `node` VALUES (54,54,'flash_data','','IntegrationTester2: 2010-08-19 11:30:47',0,1,1282231847,1282231847,0,0,0,0,0,0);
INSERT INTO `node` VALUES (55,55,'flash_data','','IntegrationTester2: 2010-08-19 11:31:11',0,1,1282231871,1282231871,0,0,0,0,0,0);
INSERT INTO `node` VALUES (56,56,'flash_data','','IntegrationTester2: 2010-08-19 11:31:21',0,1,1282231881,1282231881,0,0,0,0,0,0);
INSERT INTO `node` VALUES (57,57,'flash_data','','IntegrationTester2: 2010-08-19 11:33:01',0,1,1282231981,1282231981,0,0,0,0,0,0);
INSERT INTO `node` VALUES (58,58,'flash_data','','IntegrationTester2: 2010-08-19 11:37:51',0,1,1282232271,1282232271,0,0,0,0,0,0);
INSERT INTO `node` VALUES (59,59,'flash_data','','IntegrationTester2: 2010-08-19 11:38:03',0,1,1282232283,1282232283,0,0,0,0,0,0);
INSERT INTO `node` VALUES (60,60,'flash_data','','IntegrationTester2: 2010-08-19 11:38:15',0,1,1282232295,1282232295,0,0,0,0,0,0);
INSERT INTO `node` VALUES (61,61,'flash_data','','IntegrationTester2: 2010-08-19 11:38:27',0,1,1282232307,1282232307,0,0,0,0,0,0);
INSERT INTO `node` VALUES (62,62,'flash_data','','IntegrationTester2: 2010-08-19 11:38:35',0,1,1282232315,1282232315,0,0,0,0,0,0);
INSERT INTO `node` VALUES (63,63,'flash_data','','IntegrationTester2: 2010-08-19 12:00:12',0,1,1282233612,1282233612,0,0,0,0,0,0);
INSERT INTO `node` VALUES (64,64,'flash_data','','IntegrationTester2: 2010-08-19 12:00:26',0,1,1282233626,1282233626,0,0,0,0,0,0);
INSERT INTO `node` VALUES (65,65,'flash_data','',': 2010-08-19 12:00:37',0,1,1282233637,1282233637,0,0,0,0,0,0);
INSERT INTO `node` VALUES (66,66,'flash_data','','IntegrationTester2: 2010-08-19 12:00:47',0,1,1282233647,1282233647,0,0,0,0,0,0);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_access`
--

DROP TABLE IF EXISTS `node_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_access` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `gid` int(10) unsigned NOT NULL DEFAULT '0',
  `realm` varchar(255) NOT NULL DEFAULT '',
  `grant_view` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_update` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_delete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`,`gid`,`realm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_access`
--
-- ORDER BY:  `nid`,`gid`,`realm`

LOCK TABLES `node_access` WRITE;
/*!40000 ALTER TABLE `node_access` DISABLE KEYS */;
INSERT INTO `node_access` VALUES (0,0,'all',1,0,0);
/*!40000 ALTER TABLE `node_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_comment_statistics`
--

DROP TABLE IF EXISTS `node_comment_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_comment_statistics` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_timestamp` int(11) NOT NULL DEFAULT '0',
  `last_comment_name` varchar(60) DEFAULT NULL,
  `last_comment_uid` int(11) NOT NULL DEFAULT '0',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`),
  KEY `node_comment_timestamp` (`last_comment_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_comment_statistics`
--
-- ORDER BY:  `nid`

LOCK TABLES `node_comment_statistics` WRITE;
/*!40000 ALTER TABLE `node_comment_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_comment_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_counter`
--

DROP TABLE IF EXISTS `node_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_counter` (
  `nid` int(11) NOT NULL DEFAULT '0',
  `totalcount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `daycount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_counter`
--
-- ORDER BY:  `nid`

LOCK TABLES `node_counter` WRITE;
/*!40000 ALTER TABLE `node_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_revisions`
--

DROP TABLE IF EXISTS `node_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_revisions` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `teaser` longtext NOT NULL,
  `log` longtext NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `format` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_revisions`
--
-- ORDER BY:  `vid`

LOCK TABLES `node_revisions` WRITE;
/*!40000 ALTER TABLE `node_revisions` DISABLE KEYS */;
INSERT INTO `node_revisions` VALUES (6,6,1,'IntegrationTest: 2010-08-17 17:43:58','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 000\n','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 000\n','',1282081438,0);
INSERT INTO `node_revisions` VALUES (7,7,1,'IntegrationTest: 2010-08-17 17:52:10','Player ID: 1\r\nGame ID: IntegrationTest\r\nAchievement ID: 3453\r\n','Player ID: 1\r\nGame ID: IntegrationTest\r\nAchievement ID: 3453\r\n','',1282082046,1);
INSERT INTO `node_revisions` VALUES (8,8,1,'IntegrationTest: 2010-08-17 17:54:32','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 3435\n','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 3435\n','',1282082072,0);
INSERT INTO `node_revisions` VALUES (9,9,1,'IntegrationTest: 2010-08-17 17:58:32','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 2342\n','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 2342\n','',1282082312,0);
INSERT INTO `node_revisions` VALUES (10,10,1,'IntegrationTest: 2010-08-17 17:59:16','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 11321\n','','',1282082356,0);
INSERT INTO `node_revisions` VALUES (11,11,1,'IntegrationTest: 2010-08-17 18:02:58','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 2342\n','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 2342\n','',1282082578,1);
INSERT INTO `node_revisions` VALUES (12,12,1,'IntegrationTest: 2010-08-18 13:47:40','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 99999\n','','',1282153660,1);
INSERT INTO `node_revisions` VALUES (13,13,1,'IntegrationTest: 2010-08-18 13:49:43','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 008080\n','','',1282153783,1);
INSERT INTO `node_revisions` VALUES (14,14,1,'IntegrationTest: 2010-08-18 13:49:55','Player ID: 1\nGame ID: IntegrationTest\n','','',1282153795,1);
INSERT INTO `node_revisions` VALUES (15,15,1,'IntegrationTest: 2010-08-18 13:50:39','Player ID: 1\nGame ID: IntegrationTest\n','','',1282153839,1);
INSERT INTO `node_revisions` VALUES (16,16,1,'IntegrationTest: 2010-08-18 13:52:57','Player ID: 1\nGame ID: IntegrationTest\n','','',1282153977,1);
INSERT INTO `node_revisions` VALUES (17,17,1,'IntegrationTest: 2010-08-18 13:54:47','Player ID: 1\nGame ID: IntegrationTest\nDocument ID: 6356\n','','',1282154087,1);
INSERT INTO `node_revisions` VALUES (18,18,1,'IntegrationTest: 2010-08-18 13:55:17','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 23423\n','','',1282154117,1);
INSERT INTO `node_revisions` VALUES (19,19,1,'IntegrationTest: 2010-08-18 13:55:39','Player ID: 1\nGame ID: IntegrationTest\nDocument ID: 2341\n','','',1282154139,1);
INSERT INTO `node_revisions` VALUES (20,20,1,'IntegrationTest: 2010-08-18 13:55:57','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154157,1);
INSERT INTO `node_revisions` VALUES (21,21,1,'IntegrationTest: 2010-08-18 13:56:16','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154176,1);
INSERT INTO `node_revisions` VALUES (22,22,1,'IntegrationTest: 2010-08-18 13:57:41','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154261,1);
INSERT INTO `node_revisions` VALUES (23,23,1,'IntegrationTest: 2010-08-18 13:58:59','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154339,1);
INSERT INTO `node_revisions` VALUES (24,24,1,'IntegrationTest: 2010-08-18 14:00:24','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154424,1);
INSERT INTO `node_revisions` VALUES (25,25,1,'IntegrationTest: 2010-08-18 14:00:40','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154440,1);
INSERT INTO `node_revisions` VALUES (26,26,1,'IntegrationTest: 2010-08-18 14:01:07','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154467,1);
INSERT INTO `node_revisions` VALUES (27,27,1,'IntegrationTest: 2010-08-18 14:02:34','Player ID: 1\nGame ID: IntegrationTest\nDocument ID: 123\n','','',1282154554,1);
INSERT INTO `node_revisions` VALUES (28,28,1,'IntegrationTest: 2010-08-18 14:02:48','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 123\n','','',1282154568,1);
INSERT INTO `node_revisions` VALUES (29,29,1,'IntegrationTest: 2010-08-18 14:03:06','Player ID: 1\nGame ID: IntegrationTest\nResearch: this is resear h\n','','',1282154586,1);
INSERT INTO `node_revisions` VALUES (30,30,1,'IntegrationTest: 2010-08-18 14:03:23','Player ID: 1\nGame ID: IntegrationTest\n','','',1282154603,1);
INSERT INTO `node_revisions` VALUES (31,31,1,'IntegrationTest: 2010-08-18 14:04:12','Player ID: 1\nGame ID: IntegrationTest\nCheckpoint: 1234\n','','',1282154652,1);
INSERT INTO `node_revisions` VALUES (32,32,1,'IntegrationTest: 2010-08-18 14:04:27','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 89\nForum message: \n','','',1282154667,1);
INSERT INTO `node_revisions` VALUES (33,33,1,'IntegrationTest: 2010-08-19 10:32:19','Player ID: 1\nGame ID: IntegrationTest\nAchievement ID: 112\n','','',1282228339,1);
INSERT INTO `node_revisions` VALUES (34,34,1,'IntegrationTest: 2010-08-19 10:32:35','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 21\nForum message: \n','','',1282228355,1);
INSERT INTO `node_revisions` VALUES (35,35,1,'IntegrationTest: 2010-08-19 10:41:32','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 13\nForum message: \n','','',1282228892,1);
INSERT INTO `node_revisions` VALUES (36,36,1,'IntegrationTest: 2010-08-19 10:42:29','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 123\nForum message: \n','','',1282228949,1);
INSERT INTO `node_revisions` VALUES (37,37,1,'IntegrationTest: 2010-08-19 10:46:50','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 1\nForum message: \n','','',1282229210,1);
INSERT INTO `node_revisions` VALUES (38,38,1,'IntegrationTest: 2010-08-19 10:48:29','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 123\nForum message: \n','','',1282229309,1);
INSERT INTO `node_revisions` VALUES (39,39,1,'IntegrationTest: 2010-08-19 10:51:42','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 14\nForum message: \n','','',1282229502,1);
INSERT INTO `node_revisions` VALUES (40,40,1,'IntegrationTest: 2010-08-19 10:55:00','Player ID: 1\nGame ID: IntegrationTest\nForum ID: 8\nForum message: \n','','',1282229700,1);
INSERT INTO `node_revisions` VALUES (41,41,1,'IntegrationTester2','','','',1282229785,0);
INSERT INTO `node_revisions` VALUES (42,42,1,'IntegrationTester2: 2010-08-19 10:56:42','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 7\nForum message: \n','','',1282229802,1);
INSERT INTO `node_revisions` VALUES (43,43,1,'IntegrationTester2: 2010-08-19 10:57:40','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 6\nForum message: \n','','',1282229860,1);
INSERT INTO `node_revisions` VALUES (44,44,1,'IntegrationTester2: 2010-08-19 10:58:16','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 16\nForum message: \n','','',1282229896,1);
INSERT INTO `node_revisions` VALUES (45,45,1,'IntegrationTester2: 2010-08-19 10:59:15','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 15\nForum message: \n','','',1282229955,1);
INSERT INTO `node_revisions` VALUES (46,46,1,'IntegrationTester2: 2010-08-19 11:00:52','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 14\nForum message: \n','','',1282230052,1);
INSERT INTO `node_revisions` VALUES (47,47,1,'IntegrationTester2: 2010-08-19 11:08:01','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 1\nForum message: \n','','',1282230481,1);
INSERT INTO `node_revisions` VALUES (48,48,1,': 2010-08-19 11:11:09','Player ID: \nGame ID: \n','','',1282230669,1);
INSERT INTO `node_revisions` VALUES (49,49,1,': 2010-08-19 11:20:06','Player ID: \nGame ID: \n','','',1282231206,1);
INSERT INTO `node_revisions` VALUES (50,50,1,'IntegrationTester2: 2010-08-19 11:24:46','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 8\nForum message: \n    workkk\n  \n','','',1282231486,1);
INSERT INTO `node_revisions` VALUES (51,51,1,'IntegrationTester2: 2010-08-19 11:28:19','Player ID: 1\nGame ID: IntegrationTester2\n','','',1282231699,1);
INSERT INTO `node_revisions` VALUES (52,52,1,'IntegrationTester2: 2010-08-19 11:28:59','Player ID: 1\nGame ID: IntegrationTester2\n','','',1282231739,1);
INSERT INTO `node_revisions` VALUES (53,53,1,'IntegrationTester2: 2010-08-19 11:29:46','Player ID: 1\nGame ID: IntegrationTester2\nAchievement ID: 1\n','','',1282231786,1);
INSERT INTO `node_revisions` VALUES (54,54,1,'IntegrationTester2: 2010-08-19 11:30:47','Player ID: 1\nGame ID: IntegrationTester2\nDocument ID: 8\n','','',1282231847,1);
INSERT INTO `node_revisions` VALUES (55,55,1,'IntegrationTester2: 2010-08-19 11:31:11','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 9\nForum message: \n    message\n  \n','','',1282231871,1);
INSERT INTO `node_revisions` VALUES (56,56,1,'IntegrationTester2: 2010-08-19 11:31:21','Player ID: 1\nGame ID: IntegrationTester2\nCheckpoint: sdkfjh8\n','','',1282231881,1);
INSERT INTO `node_revisions` VALUES (57,57,1,'IntegrationTester2: 2010-08-19 11:33:01','Player ID: 1\nGame ID: IntegrationTester2\nAchievement ID: 76\n','','',1282231981,1);
INSERT INTO `node_revisions` VALUES (58,58,1,'IntegrationTester2: 2010-08-19 11:37:51','Player ID: 1\nGame ID: IntegrationTester2\nAchievement ID: 12\n','','',1282232271,1);
INSERT INTO `node_revisions` VALUES (59,59,1,'IntegrationTester2: 2010-08-19 11:38:03','Player ID: 1\nGame ID: IntegrationTester2\nDocument ID: 8\n','','',1282232283,1);
INSERT INTO `node_revisions` VALUES (60,60,1,'IntegrationTester2: 2010-08-19 11:38:15','Player ID: 1\nGame ID: IntegrationTester2\nResearch: research message\n','','',1282232295,1);
INSERT INTO `node_revisions` VALUES (61,61,1,'IntegrationTester2: 2010-08-19 11:38:27','Player ID: 1\nGame ID: IntegrationTester2\nForum ID: 9\nForum message: \n    forum message\n  \n','','',1282232307,1);
INSERT INTO `node_revisions` VALUES (62,62,1,'IntegrationTester2: 2010-08-19 11:38:35','Player ID: 1\nGame ID: IntegrationTester2\nCheckpoint: checkpoint2222\n','','',1282232315,1);
INSERT INTO `node_revisions` VALUES (63,63,1,'IntegrationTester2: 2010-08-19 12:00:12','Player ID: 1\nGame ID: IntegrationTester2\nAchievement ID: 1\n','','',1282233612,1);
INSERT INTO `node_revisions` VALUES (64,64,4,'IntegrationTester2: 2010-08-19 12:00:26','Player ID: 4\nGame ID: IntegrationTester2\nAchievement ID: 2\n','','',1282233626,1);
INSERT INTO `node_revisions` VALUES (65,65,4,': 2010-08-19 12:00:37','Player ID: \nGame ID: \n','','',1282233637,1);
INSERT INTO `node_revisions` VALUES (66,66,4,'IntegrationTester2: 2010-08-19 12:00:47','Player ID: 4\nGame ID: IntegrationTester2\nDocument ID: 1\n','','',1282233647,1);
/*!40000 ALTER TABLE `node_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_type`
--

DROP TABLE IF EXISTS `node_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_type` (
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `help` mediumtext NOT NULL,
  `has_title` tinyint(3) unsigned NOT NULL,
  `title_label` varchar(255) NOT NULL DEFAULT '',
  `has_body` tinyint(3) unsigned NOT NULL,
  `body_label` varchar(255) NOT NULL DEFAULT '',
  `min_word_count` smallint(5) unsigned NOT NULL,
  `custom` tinyint(4) NOT NULL DEFAULT '0',
  `modified` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `orig_type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_type`
--
-- ORDER BY:  `type`

LOCK TABLES `node_type` WRITE;
/*!40000 ALTER TABLE `node_type` DISABLE KEYS */;
INSERT INTO `node_type` VALUES ('flashnode','Flash','flashnode','Allows you to easily upload and display a Flash file. You can choose whether the movie appears in the teaser, the body, or both.','',1,'Title',0,'',0,0,1,1,'flashnode');
INSERT INTO `node_type` VALUES ('flash_data','Flash Data','node','Each node logs XML data sent from a Flash application','',1,'Title',1,'Body',0,1,1,0,'');
INSERT INTO `node_type` VALUES ('page','Page','node','A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.','',1,'Title',1,'Body',0,1,1,0,'page');
/*!40000 ALTER TABLE `node_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openid_association`
--

DROP TABLE IF EXISTS `openid_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_association` (
  `idp_endpoint_uri` varchar(255) DEFAULT NULL,
  `assoc_handle` varchar(255) NOT NULL,
  `assoc_type` varchar(32) DEFAULT NULL,
  `session_type` varchar(32) DEFAULT NULL,
  `mac_key` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `expires_in` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assoc_handle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openid_association`
--
-- ORDER BY:  `assoc_handle`

LOCK TABLES `openid_association` WRITE;
/*!40000 ALTER TABLE `openid_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `openid_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openid_nonce`
--

DROP TABLE IF EXISTS `openid_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_nonce` (
  `idp_endpoint_uri` varchar(255) DEFAULT NULL,
  `nonce` varchar(255) DEFAULT NULL,
  `expires` int(11) NOT NULL DEFAULT '0',
  KEY `nonce` (`nonce`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openid_nonce`
--

LOCK TABLES `openid_nonce` WRITE;
/*!40000 ALTER TABLE `openid_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `openid_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_display`
--

DROP TABLE IF EXISTS `panels_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_display` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `layout` varchar(32) DEFAULT '',
  `layout_settings` longtext,
  `panel_settings` longtext,
  `cache` text,
  `title` varchar(255) DEFAULT '',
  `hide_title` tinyint(4) DEFAULT '0',
  `title_pane` int(11) DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panels_display`
--
-- ORDER BY:  `did`

LOCK TABLES `panels_display` WRITE;
/*!40000 ALTER TABLE `panels_display` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_layout`
--

DROP TABLE IF EXISTS `panels_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_layout` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `admin_title` varchar(255) DEFAULT NULL,
  `admin_description` longtext,
  `category` varchar(255) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT NULL,
  `settings` longtext,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panels_layout`
--
-- ORDER BY:  `lid`

LOCK TABLES `panels_layout` WRITE;
/*!40000 ALTER TABLE `panels_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_pane`
--

DROP TABLE IF EXISTS `panels_pane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_pane` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL DEFAULT '0',
  `panel` varchar(32) DEFAULT '',
  `type` varchar(32) DEFAULT '',
  `subtype` varchar(64) DEFAULT '',
  `shown` tinyint(4) DEFAULT '1',
  `access` longtext,
  `configuration` longtext,
  `cache` longtext,
  `style` longtext,
  `css` longtext,
  `extras` longtext,
  `position` smallint(6) DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `did_idx` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panels_pane`
--
-- ORDER BY:  `pid`

LOCK TABLES `panels_pane` WRITE;
/*!40000 ALTER TABLE `panels_pane` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_pane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels_renderer_pipeline`
--

DROP TABLE IF EXISTS `panels_renderer_pipeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_renderer_pipeline` (
  `rpid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `admin_title` varchar(255) DEFAULT NULL,
  `admin_description` longtext,
  `weight` smallint(6) DEFAULT '0',
  `settings` longtext,
  PRIMARY KEY (`rpid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panels_renderer_pipeline`
--
-- ORDER BY:  `rpid`

LOCK TABLES `panels_renderer_pipeline` WRITE;
/*!40000 ALTER TABLE `panels_renderer_pipeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_renderer_pipeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `perm` longtext,
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--
-- ORDER BY:  `pid`

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (9,2,'access content',0);
INSERT INTO `permission` VALUES (10,3,'access administration menu, administer blocks, access devel information, display source code, switch users, administer features, manage features, administer filters, administer flash node, create flash nodes, delete any flash node, delete own flash nodes, edit any flash node, edit own flash nodes, import flash, use advanced options, use basic options, use display options, administer menu, access content, administer content types, administer nodes, create flash_data content, create page content, delete any flash_data content, delete any page content, delete own flash_data content, delete own page content, edit any flash_data content, edit any page content, edit own flash_data content, edit own page content, administer advanced pane settings, administer pane access, administer pane visibility, administer panels layouts, use panels caching features, use panels dashboard, use panels in place editing, view all panes, view pane admin links, administer url aliases, create url aliases, access administration pages, access site reports, administer actions, administer files, administer site configuration, select different theme, administer taxonomy, access user profiles, administer permissions, administer users, change own username, access all views, administer views',0);
INSERT INTO `permission` VALUES (11,4,'access administration menu, administer filters, administer flash node, create flash nodes, delete any flash node, delete own flash nodes, edit any flash node, edit own flash nodes, import flash, use advanced options, use basic options, use display options, access content, administer nodes, create flash_data content, create page content, delete any flash_data content, delete any page content, delete own flash_data content, delete own page content, edit any flash_data content, edit any page content, edit own flash_data content, edit own page content, administer url aliases, create url aliases, access administration pages, access site reports, administer site configuration, access user profiles, administer users, change own username, access all views',0);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--
-- ORDER BY:  `rid`

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'anonymous user');
INSERT INTO `role` VALUES (2,'authenticated user');
INSERT INTO `role` VALUES (3,'web administrator');
INSERT INTO `role` VALUES (4,'game administrator');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semaphore`
--

DROP TABLE IF EXISTS `semaphore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semaphore` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `expire` double NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semaphore`
--
-- ORDER BY:  `name`

LOCK TABLES `semaphore` WRITE;
/*!40000 ALTER TABLE `semaphore` DISABLE KEYS */;
/*!40000 ALTER TABLE `semaphore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system` (
  `filename` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `owner` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `throttle` tinyint(4) NOT NULL DEFAULT '0',
  `bootstrap` int(11) NOT NULL DEFAULT '0',
  `schema_version` smallint(6) NOT NULL DEFAULT '-1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `info` text,
  PRIMARY KEY (`filename`),
  KEY `modules` (`type`(12),`status`,`weight`,`filename`),
  KEY `bootstrap` (`type`(12),`status`,`bootstrap`,`weight`,`filename`),
  KEY `type_name` (`type`(12),`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system`
--
-- ORDER BY:  `filename`

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` VALUES ('modules/aggregator/aggregator.module','aggregator','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"Aggregator\";s:11:\"description\";s:57:\"Aggregates syndicated content (RSS, RDF, and Atom feeds).\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/block/block.module','block','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:5:\"Block\";s:11:\"description\";s:62:\"Controls the boxes that are displayed around the main content.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/blog/blog.module','blog','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Blog\";s:11:\"description\";s:69:\"Enables keeping easily and regularly updated user web pages or blogs.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/blogapi/blogapi.module','blogapi','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:8:\"Blog API\";s:11:\"description\";s:79:\"Allows users to post content using applications that support XML-RPC blog APIs.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/book/book.module','book','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Book\";s:11:\"description\";s:63:\"Allows users to structure site pages in a hierarchy or outline.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/color/color.module','color','module','',0,0,0,0,0,'a:10:{s:4:\"name\";s:5:\"Color\";s:11:\"description\";s:61:\"Allows the user to change the color scheme of certain themes.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/comment/comment.module','comment','module','',0,0,0,6003,0,'a:10:{s:4:\"name\";s:7:\"Comment\";s:11:\"description\";s:57:\"Allows users to comment on and discuss published content.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/contact/contact.module','contact','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Contact\";s:11:\"description\";s:61:\"Enables the use of both personal and site-wide contact forms.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/dblog/dblog.module','dblog','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:16:\"Database logging\";s:11:\"description\";s:47:\"Logs and records system events to the database.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/filter/filter.module','filter','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:6:\"Filter\";s:11:\"description\";s:60:\"Handles the filtering of content in preparation for display.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/forum/forum.module','forum','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:5:\"Forum\";s:11:\"description\";s:50:\"Enables threaded discussions about general topics.\";s:12:\"dependencies\";a:2:{i:0;s:8:\"taxonomy\";i:1;s:7:\"comment\";}s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/help/help.module','help','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"Help\";s:11:\"description\";s:35:\"Manages the display of online help.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/locale/locale.module','locale','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Locale\";s:11:\"description\";s:119:\"Adds language handling functionality and enables the translation of the user interface to languages other than English.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/menu/menu.module','menu','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"Menu\";s:11:\"description\";s:60:\"Allows administrators to customize the site navigation menu.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/node/node.module','node','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"Node\";s:11:\"description\";s:66:\"Allows content to be submitted to the site and displayed on pages.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/openid/openid.module','openid','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:6:\"OpenID\";s:11:\"description\";s:48:\"Allows users to log into your site using OpenID.\";s:7:\"version\";s:4:\"6.19\";s:7:\"package\";s:15:\"Core - optional\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/path/path.module','path','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"Path\";s:11:\"description\";s:28:\"Allows users to rename URLs.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/php/php.module','php','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:10:\"PHP filter\";s:11:\"description\";s:50:\"Allows embedded PHP code/snippets to be evaluated.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/ping/ping.module','ping','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Ping\";s:11:\"description\";s:51:\"Alerts other sites when your site has been updated.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/poll/poll.module','poll','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:4:\"Poll\";s:11:\"description\";s:95:\"Allows your site to capture votes on different topics in the form of multiple choice questions.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/profile/profile.module','profile','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Profile\";s:11:\"description\";s:36:\"Supports configurable user profiles.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/search/search.module','search','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:36:\"Enables site-wide keyword searching.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/statistics/statistics.module','statistics','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"Statistics\";s:11:\"description\";s:37:\"Logs access statistics for your site.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/syslog/syslog.module','syslog','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Syslog\";s:11:\"description\";s:41:\"Logs and records system events to syslog.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/system/system.module','system','module','',1,0,0,6055,0,'a:10:{s:4:\"name\";s:6:\"System\";s:11:\"description\";s:54:\"Handles general site configuration for administrators.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/taxonomy/taxonomy.module','taxonomy','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:8:\"Taxonomy\";s:11:\"description\";s:38:\"Enables the categorization of content.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/throttle/throttle.module','throttle','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:8:\"Throttle\";s:11:\"description\";s:66:\"Handles the auto-throttling mechanism, to control site congestion.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/tracker/tracker.module','tracker','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Tracker\";s:11:\"description\";s:43:\"Enables tracking of recent posts for users.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"comment\";}s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/translation/translation.module','translation','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:19:\"Content translation\";s:11:\"description\";s:57:\"Allows content to be translated into different languages.\";s:12:\"dependencies\";a:1:{i:0;s:6:\"locale\";}s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/trigger/trigger.module','trigger','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:7:\"Trigger\";s:11:\"description\";s:90:\"Enables actions to be fired on certain system events, such as when new content is created.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/update/update.module','update','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:13:\"Update status\";s:11:\"description\";s:88:\"Checks the status of available updates for Drupal and your installed modules and themes.\";s:7:\"version\";s:4:\"6.19\";s:7:\"package\";s:15:\"Core - optional\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/upload/upload.module','upload','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:6:\"Upload\";s:11:\"description\";s:51:\"Allows users to upload and attach files to content.\";s:7:\"package\";s:15:\"Core - optional\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('modules/user/user.module','user','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:4:\"User\";s:11:\"description\";s:47:\"Manages the user registration and login system.\";s:7:\"package\";s:15:\"Core - required\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/admin_menu/admin_menu.module','admin_menu','module','',1,0,0,6302,100,'a:10:{s:4:\"name\";s:19:\"Administration menu\";s:11:\"description\";s:123:\"Provides a dropdown menu to most administrative tasks and other common destinations (to users with the proper permissions).\";s:7:\"package\";s:14:\"Administration\";s:7:\"version\";s:14:\"6.x-3.0-alpha4\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:10:\"admin_menu\";s:12:\"dependencies\";a:1:{i:0;s:4:\"menu\";}s:9:\"datestamp\";s:10:\"1268274903\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/admin_menu/admin_menu_toolbar/admin_menu_toolbar.module','admin_menu_toolbar','module','',1,0,0,6300,101,'a:10:{s:4:\"name\";s:33:\"Administration menu Toolbar style\";s:11:\"description\";s:17:\"A better Toolbar.\";s:7:\"package\";s:14:\"Administration\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:10:\"admin_menu\";}s:7:\"version\";s:14:\"6.x-3.0-alpha4\";s:7:\"project\";s:10:\"admin_menu\";s:9:\"datestamp\";s:10:\"1268274903\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/admin_menu/admin_views/admin_views.module','admin_views','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:20:\"Administration views\";s:11:\"description\";s:75:\"Replaces all system object management pages in Drupal core with real views.\";s:7:\"package\";s:14:\"Administration\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:2:{i:0;s:5:\"views\";i:1;s:21:\"views_bulk_operations\";}s:7:\"version\";s:14:\"6.x-3.0-alpha4\";s:7:\"project\";s:10:\"admin_menu\";s:9:\"datestamp\";s:10:\"1268274903\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/advanced_help/advanced_help.module','advanced_help','module','',1,0,0,0,0,'a:9:{s:4:\"name\";s:13:\"Advanced help\";s:11:\"description\";s:38:\"Allow advanced help and documentation.\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.2\";s:7:\"project\";s:13:\"advanced_help\";s:9:\"datestamp\";s:10:\"1238954409\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/advanced_help/help_example/help_example.module','help_example','module','',0,0,0,-1,0,'a:9:{s:4:\"name\";s:21:\"Advanced help example\";s:11:\"description\";s:62:\"A example help module to demonstrate the advanced help module.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:13:\"advanced_help\";}s:7:\"version\";s:7:\"6.x-1.2\";s:7:\"project\";s:13:\"advanced_help\";s:9:\"datestamp\";s:10:\"1238954409\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/content.module','content','module','',1,0,0,6010,0,'a:10:{s:4:\"name\";s:7:\"Content\";s:11:\"description\";s:50:\"Allows administrators to define new content types.\";s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/content_copy/content_copy.module','content_copy','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:12:\"Content Copy\";s:11:\"description\";s:51:\"Enables ability to import/export field definitions.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/content_permissions/content_permissions.module','content_permissions','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:19:\"Content Permissions\";s:11:\"description\";s:43:\"Set field-level permissions for CCK fields.\";s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/fieldgroup/fieldgroup.module','fieldgroup','module','',1,0,0,6007,9,'a:10:{s:4:\"name\";s:10:\"Fieldgroup\";s:11:\"description\";s:37:\"Create display groups for CCK fields.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/nodereference/nodereference.module','nodereference','module','',1,0,0,6001,0,'a:10:{s:4:\"name\";s:14:\"Node Reference\";s:11:\"description\";s:59:\"Defines a field type for referencing one node from another.\";s:12:\"dependencies\";a:3:{i:0;s:7:\"content\";i:1;s:4:\"text\";i:2;s:13:\"optionwidgets\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/number/number.module','number','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:6:\"Number\";s:11:\"description\";s:28:\"Defines numeric field types.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/optionwidgets/optionwidgets.module','optionwidgets','module','',1,0,0,6001,0,'a:10:{s:4:\"name\";s:14:\"Option Widgets\";s:11:\"description\";s:82:\"Defines selection, check box and radio button widgets for text and numeric fields.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/text/text.module','text','module','',1,0,0,6003,0,'a:10:{s:4:\"name\";s:4:\"Text\";s:11:\"description\";s:32:\"Defines simple text field types.\";s:12:\"dependencies\";a:1:{i:0;s:7:\"content\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/cck/modules/userreference/userreference.module','userreference','module','',1,0,0,6002,0,'a:10:{s:4:\"name\";s:14:\"User Reference\";s:11:\"description\";s:56:\"Defines a field type for referencing a user from a node.\";s:12:\"dependencies\";a:3:{i:0;s:7:\"content\";i:1;s:4:\"text\";i:2;s:13:\"optionwidgets\";}s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-2.8\";s:7:\"project\";s:3:\"cck\";s:9:\"datestamp\";s:10:\"1281570988\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/contemplate/contemplate.module','contemplate','module','',0,0,0,-1,10,'a:10:{s:4:\"name\";s:17:\"Content Templates\";s:11:\"description\";s:64:\"Create templates to customize output of teaser and body content.\";s:7:\"package\";s:3:\"CCK\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.2\";s:7:\"project\";s:11:\"contemplate\";s:9:\"datestamp\";s:10:\"1279686006\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/bulk_export/bulk_export.module','bulk_export','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:11:\"Bulk Export\";s:11:\"description\";s:67:\"Performs bulk exporting of data objects known about by Chaos tools.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"package\";s:16:\"Chaos tool suite\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/ctools.module','ctools','module','',1,0,0,6007,0,'a:10:{s:4:\"name\";s:11:\"Chaos tools\";s:11:\"description\";s:46:\"A library of helpful tools by Merlin of Chaos.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/ctools_access_ruleset/ctools_access_ruleset.module','ctools_access_ruleset','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:15:\"Custom rulesets\";s:11:\"description\";s:81:\"Create custom, exportable, reusable access rulesets for applications like Panels.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/ctools_custom_content/ctools_custom_content.module','ctools_custom_content','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:20:\"Custom content panes\";s:11:\"description\";s:79:\"Create custom, exportable, reusable content panes for applications like Panels.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/ctools_plugin_example/ctools_plugin_example.module','ctools_plugin_example','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:35:\"Chaos Tools (CTools) Plugin Example\";s:11:\"description\";s:75:\"Shows how an external module can provide ctools plugins (for Panels, etc.).\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:4:{i:0;s:6:\"ctools\";i:1;s:6:\"panels\";i:2;s:12:\"page_manager\";i:3;s:13:\"advanced_help\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/page_manager/page_manager.module','page_manager','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:12:\"Page manager\";s:11:\"description\";s:54:\"Provides a UI and API to manage pages within the site.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"package\";s:16:\"Chaos tool suite\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/stylizer/stylizer.module','stylizer','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:8:\"Stylizer\";s:11:\"description\";s:53:\"Create custom styles for applications such as Panels.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:2:{i:0;s:6:\"ctools\";i:1;s:5:\"color\";}s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/ctools/views_content/views_content.module','views_content','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:19:\"Views content panes\";s:11:\"description\";s:104:\"Allows Views content to be used in Panels, Dashboard and other modules which use the CTools Content API.\";s:7:\"package\";s:16:\"Chaos tool suite\";s:12:\"dependencies\";a:2:{i:0;s:6:\"ctools\";i:1;s:5:\"views\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:6:\"ctools\";s:9:\"datestamp\";s:10:\"1280189115\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/custom_mass/flash_data/flash_data.module','flash_data','module','',1,0,0,0,0,'a:8:{s:4:\"name\";s:10:\"Flash Data\";s:11:\"description\";s:56:\"Receives and parses Flash data sent via URL POST request\";s:7:\"package\";s:5:\"Other\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:7:\"version\";N;s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/devel/devel.module','devel','module','',1,0,1,6003,88,'a:10:{s:4:\"name\";s:5:\"Devel\";s:11:\"description\";s:52:\"Various blocks, pages, and functions for developers.\";s:7:\"package\";s:11:\"Development\";s:12:\"dependencies\";a:1:{i:0;s:4:\"menu\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/devel/devel_generate.module','devel_generate','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:14:\"Devel generate\";s:11:\"description\";s:48:\"Generate dummy users, nodes, and taxonomy terms.\";s:7:\"package\";s:11:\"Development\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/devel/devel_node_access.module','devel_node_access','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:17:\"Devel node access\";s:11:\"description\";s:67:\"Developer block and page illustrating relevant node_access records.\";s:7:\"package\";s:11:\"Development\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/devel/performance/performance.module','performance','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:19:\"Performance Logging\";s:11:\"description\";s:91:\"Logs detailed and/or summary page generation time and memory consumption for page requests.\";s:7:\"package\";s:11:\"Development\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-1.22\";s:7:\"project\";s:5:\"devel\";s:9:\"datestamp\";s:10:\"1281718291\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/features/features.module','features','module','',1,0,0,6101,20,'a:10:{s:4:\"name\";s:8:\"Features\";s:11:\"description\";s:39:\"Provides feature management for Drupal.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:8:\"Features\";s:7:\"version\";s:11:\"6.x-1.0-rc1\";s:7:\"project\";s:8:\"features\";s:9:\"datestamp\";s:10:\"1281641792\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/features/tests/features_test.module','features_test','module','',0,0,0,-1,0,'a:11:{s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:4:{i:0;s:8:\"features\";i:1;s:10:\"fieldgroup\";i:2;s:4:\"text\";i:3;s:5:\"views\";}s:11:\"description\";s:33:\"Test module for Features testing.\";s:8:\"features\";a:8:{s:7:\"content\";a:3:{i:0;s:33:\"features_test-field_features_test\";i:1;s:41:\"features_test-field_features_test_child_a\";i:2;s:41:\"features_test-field_features_test_child_b\";}s:10:\"fieldgroup\";a:1:{i:0;s:33:\"features_test-group_features_test\";}s:6:\"filter\";a:1:{i:0;s:13:\"features_test\";}s:10:\"imagecache\";a:1:{i:0;s:13:\"features_test\";}s:4:\"node\";a:1:{i:0;s:13:\"features_test\";}s:15:\"user_permission\";a:1:{i:0;s:28:\"create features_test content\";}s:5:\"views\";a:1:{i:0;s:13:\"features_test\";}s:9:\"views_api\";a:1:{i:0;s:5:\"api:2\";}}s:4:\"name\";s:14:\"Features Tests\";s:7:\"package\";s:7:\"Testing\";s:7:\"version\";s:11:\"6.x-1.0-rc1\";s:7:\"project\";s:8:\"features\";s:9:\"datestamp\";s:10:\"1281641792\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/features_custom/flash/flash.module','flash','module','',1,0,0,0,0,'a:10:{s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:2:{i:0;s:9:\"flashnode\";i:1;s:9:\"strongarm\";}s:11:\"description\";s:39:\"Handles Flash components of the website\";s:8:\"features\";a:2:{s:6:\"ctools\";a:1:{i:0;s:21:\"strongarm:strongarm:1\";}s:8:\"variable\";a:14:{i:0;s:22:\"flashnode_default_base\";i:1;s:25:\"flashnode_default_display\";i:2;s:28:\"flashnode_default_extensions\";i:3;s:26:\"flashnode_default_html_alt\";i:4;s:31:\"flashnode_default_import_status\";i:5;s:22:\"flashnode_default_path\";i:6;s:20:\"flashnode_max_height\";i:7;s:27:\"flashnode_max_teaser_height\";i:8;s:26:\"flashnode_max_teaser_width\";i:9;s:19:\"flashnode_max_width\";i:10;s:22:\"flashnode_teaser_scale\";i:11;s:17:\"flashnode_updated\";i:12;s:16:\"flashnode_weight\";i:13;s:22:\"node_options_flashnode\";}}s:4:\"name\";s:5:\"Flash\";s:7:\"package\";s:8:\"Features\";s:7:\"project\";s:5:\"flash\";s:7:\"version\";s:7:\"6.x-1.0\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/flashnode/flashnode.module','flashnode','module','',1,0,0,6001,0,'a:9:{s:4:\"name\";s:10:\"Flash node\";s:11:\"description\";s:51:\"Allows easy uploading and display of Flash content.\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-3.1\";s:7:\"project\";s:9:\"flashnode\";s:9:\"datestamp\";s:10:\"1236334232\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/globalredirect/globalredirect.module','globalredirect','module','',0,0,0,-1,0,'a:9:{s:4:\"name\";s:15:\"Global Redirect\";s:11:\"description\";s:129:\"Searches for an alias of the current URL and 301 redirects if found. Stops duplicate content arising when path module is enabled.\";s:12:\"dependencies\";a:1:{i:0;s:4:\"path\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.2\";s:7:\"project\";s:14:\"globalredirect\";s:9:\"datestamp\";s:10:\"1229943020\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/google_analytics/googleanalytics.module','googleanalytics','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:72:\"Adds Google Analytics javascript tracking code to all your site\'s pages.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:10:\"Statistics\";s:7:\"version\";s:7:\"6.x-2.2\";s:7:\"project\";s:16:\"google_analytics\";s:9:\"datestamp\";s:10:\"1238610067\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/logintoboggan/contrib/logintoboggan_rules/logintoboggan_rules.module','logintoboggan_rules','module','',0,0,0,-1,0,'a:9:{s:4:\"name\";s:31:\"LoginToboggan Rules Integration\";s:11:\"description\";s:42:\"Integrates LoginToboggan with Rules module\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:2:{i:0;s:13:\"logintoboggan\";i:1;s:5:\"rules\";}s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:13:\"logintoboggan\";s:9:\"datestamp\";s:10:\"1273686612\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/logintoboggan/logintoboggan.module','logintoboggan','module','',1,0,0,6001,0,'a:9:{s:4:\"name\";s:13:\"LoginToboggan\";s:11:\"description\";s:31:\"Improves Drupal\'s login system.\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.7\";s:7:\"project\";s:13:\"logintoboggan\";s:9:\"datestamp\";s:10:\"1273686612\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/panels/panels.module','panels','module','',1,0,0,6310,0,'a:10:{s:4:\"name\";s:6:\"Panels\";s:11:\"description\";s:107:\"Core Panels display functions; provides no external UI, at least one other Panels module should be enabled.\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/panels/panels_ipe/panels_ipe.module','panels_ipe','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:22:\"Panels In-Place Editor\";s:11:\"description\";s:101:\"Provide a UI for managing some Panels directly on the frontend, instead of having to use the backend.\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:2:{i:0;s:6:\"panels\";i:1;s:9:\"jquery_ui\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/panels/panels_mini/panels_mini.module','panels_mini','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:11:\"Mini panels\";s:11:\"description\";s:89:\"Create mini panels that can be used as blocks by Drupal and panes by other panel modules.\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:1:{i:0;s:6:\"panels\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/panels/panels_node/panels_node.module','panels_node','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:11:\"Panel nodes\";s:11:\"description\";s:65:\"Create nodes that are divided into areas with selectable content.\";s:7:\"package\";s:6:\"Panels\";s:12:\"dependencies\";a:1:{i:0;s:6:\"panels\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-3.7\";s:7:\"project\";s:6:\"panels\";s:9:\"datestamp\";s:10:\"1280189119\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/simpletest/simpletest.module','simpletest','module','',0,0,0,-1,0,'a:11:{s:4:\"name\";s:10:\"SimpleTest\";s:11:\"description\";s:53:\"Provides a framework for unit and functional testing.\";s:7:\"package\";s:11:\"Development\";s:4:\"core\";s:3:\"6.x\";s:3:\"php\";s:12:\"5 ; Drupal 6\";s:5:\"files\";a:6:{i:0;s:17:\"simpletest.module\";i:1;s:20:\"simpletest.pages.inc\";i:2;s:18:\"simpletest.install\";i:3;s:15:\"simpletest.test\";i:4;s:24:\"drupal_web_test_case.php\";i:5;s:16:\"tests/block.test\";}s:7:\"version\";s:8:\"6.x-2.10\";s:7:\"project\";s:10:\"simpletest\";s:9:\"datestamp\";s:10:\"1262212859\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}}');
INSERT INTO `system` VALUES ('sites/all/modules/strongarm/strongarm.module','strongarm','module','',1,0,0,6201,-1000,'a:9:{s:4:\"name\";s:9:\"Strongarm\";s:11:\"description\";s:87:\"Enforces variable values defined by modules that need settings set to operate properly.\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:6:\"ctools\";}s:7:\"version\";s:7:\"6.x-2.0\";s:7:\"project\";s:9:\"strongarm\";s:9:\"datestamp\";s:10:\"1281369974\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/views/views.module','views','module','',1,0,0,6009,10,'a:10:{s:4:\"name\";s:5:\"Views\";s:11:\"description\";s:55:\"Create customized lists and queries from your database.\";s:7:\"package\";s:5:\"Views\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-2.11\";s:7:\"project\";s:5:\"views\";s:9:\"datestamp\";s:10:\"1276743614\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/views/views_export/views_export.module','views_export','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:14:\"Views exporter\";s:11:\"description\";s:40:\"Allows exporting multiple views at once.\";s:7:\"package\";s:5:\"Views\";s:12:\"dependencies\";a:1:{i:0;s:5:\"views\";}s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:8:\"6.x-2.11\";s:7:\"project\";s:5:\"views\";s:9:\"datestamp\";s:10:\"1276743614\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/views/views_ui.module','views_ui','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:8:\"Views UI\";s:11:\"description\";s:93:\"Administrative interface to views. Without this module, you cannot create or edit your views.\";s:7:\"package\";s:5:\"Views\";s:4:\"core\";s:3:\"6.x\";s:12:\"dependencies\";a:1:{i:0;s:5:\"views\";}s:7:\"version\";s:8:\"6.x-2.11\";s:7:\"project\";s:5:\"views\";s:9:\"datestamp\";s:10:\"1276743614\";s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/views_bulk_operations/actions_permissions.module','actions_permissions','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:19:\"Actions permissions\";s:11:\"description\";s:46:\"Integrates actions with the permission system.\";s:7:\"package\";s:14:\"Administration\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.9\";s:7:\"project\";s:21:\"views_bulk_operations\";s:9:\"datestamp\";s:10:\"1265245814\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/views_bulk_operations/views_bulk_operations.module','views_bulk_operations','module','',1,0,0,6000,0,'a:10:{s:4:\"name\";s:21:\"Views Bulk Operations\";s:11:\"description\";s:103:\"Exposes new Views style \'Bulk Operations\' for selecting multiple nodes and applying operations on them.\";s:12:\"dependencies\";a:1:{i:0;s:5:\"views\";}s:7:\"package\";s:5:\"Views\";s:4:\"core\";s:3:\"6.x\";s:3:\"php\";s:3:\"5.0\";s:7:\"version\";s:7:\"6.x-1.9\";s:7:\"project\";s:21:\"views_bulk_operations\";s:9:\"datestamp\";s:10:\"1265245814\";s:10:\"dependents\";a:0:{}}');
INSERT INTO `system` VALUES ('sites/all/modules/xmlcontent/xmlcontent.module','xmlcontent','module','',1,0,0,0,0,'a:10:{s:4:\"name\";s:11:\"XML Content\";s:11:\"description\";s:114:\"An XML validator and content filter that changes XML node Body to HTML according to a configurable XSLT stylesheet\";s:4:\"core\";s:3:\"6.x\";s:7:\"package\";s:15:\"Content Filters\";s:7:\"project\";s:10:\"xmlcontent\";s:7:\"version\";s:11:\"6.x-1.x-dev\";s:9:\"datestamp\";s:10:\"1278836404\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/modules/xml_parser/xml_parser.module','xml_parser','module','',0,0,0,-1,0,'a:10:{s:4:\"name\";s:10:\"XML Parser\";s:11:\"description\";s:48:\"Module containing a class for parsing XML Feeds.\";s:7:\"package\";s:17:\"CMS Professionals\";s:4:\"core\";s:3:\"6.x\";s:7:\"version\";s:7:\"6.x-1.0\";s:7:\"project\";s:10:\"xml_parser\";s:9:\"datestamp\";s:10:\"1265911227\";s:12:\"dependencies\";a:0:{}s:10:\"dependents\";a:0:{}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/themes/quilted_custom/quilted_custom.info','quilted_custom','theme','themes/engines/phptemplate/phptemplate.engine',1,0,0,-1,0,'a:12:{s:4:\"name\";s:22:\"The Quilted base theme\";s:11:\"description\";s:55:\"A custom Zen subtheme with some Quilted customizations.\";s:10:\"screenshot\";s:53:\"sites/all/themes/quilted_custom/images/screenshot.png\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:3:\"zen\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:22:\"css/quilted_custom.css\";s:54:\"sites/all/themes/quilted_custom/css/quilted_custom.css\";}s:5:\"print\";a:1:{s:13:\"css/print.css\";s:45:\"sites/all/themes/quilted_custom/css/print.css\";}}s:7:\"regions\";a:8:{s:4:\"left\";s:12:\"left sidebar\";s:5:\"right\";s:13:\"right sidebar\";s:6:\"navbar\";s:14:\"navigation bar\";s:11:\"content_top\";s:11:\"content top\";s:14:\"content_bottom\";s:14:\"content bottom\";s:6:\"header\";s:6:\"header\";s:6:\"footer\";s:6:\"footer\";s:14:\"closure_region\";s:7:\"closure\";}s:8:\"features\";a:10:{i:0;s:4:\"logo\";i:1;s:4:\"name\";i:2;s:6:\"slogan\";i:3;s:7:\"mission\";i:4;s:17:\"node_user_picture\";i:5;s:20:\"comment_user_picture\";i:6;s:6:\"search\";i:7;s:7:\"favicon\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:8:\"settings\";a:8:{s:17:\"zen_block_editing\";s:1:\"1\";s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";s:1:\"1\";s:23:\"zen_breadcrumb_trailing\";s:1:\"1\";s:20:\"zen_breadcrumb_title\";s:1:\"0\";s:20:\"zen_rebuild_registry\";s:1:\"1\";s:14:\"zen_wireframes\";s:1:\"0\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:41:\"sites/all/themes/quilted_custom/script.js\";}s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}');
INSERT INTO `system` VALUES ('sites/all/themes/seven/seven.info','seven','theme','themes/engines/phptemplate/phptemplate.engine',1,0,0,-1,0,'a:13:{s:4:\"name\";s:5:\"Seven\";s:11:\"description\";s:65:\"A simple one-column, tableless, fluid width administration theme.\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:3:{s:9:\"reset.css\";s:32:\"sites/all/themes/seven/reset.css\";s:9:\"style.css\";s:32:\"sites/all/themes/seven/style.css\";s:17:\"vertical-tabs.css\";s:40:\"sites/all/themes/seven/vertical-tabs.css\";}}s:7:\"regions\";a:1:{s:7:\"content\";s:7:\"Content\";}s:7:\"version\";s:14:\"6.x-1.0-beta11\";s:7:\"project\";s:5:\"seven\";s:9:\"datestamp\";s:10:\"1280856675\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:32:\"sites/all/themes/seven/script.js\";}s:10:\"screenshot\";s:37:\"sites/all/themes/seven/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('sites/all/themes/zen/zen.info','zen','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:15:{s:4:\"name\";s:3:\"Zen\";s:11:\"description\";s:189:\"Zen sub-themes are the ultimate starting themes for Drupal 6. Read the <a href=\"http://drupal.org/node/226507\">online docs</a> or the included README-FIRST.txt on how to create a sub-theme.\";s:10:\"screenshot\";s:49:\"sites/all/themes/zen/zen-internals/screenshot.png\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"regions\";a:9:{s:13:\"sidebar_first\";s:13:\"First sidebar\";s:14:\"sidebar_second\";s:14:\"Second sidebar\";s:10:\"navigation\";s:14:\"Navigation bar\";s:9:\"highlight\";s:19:\"Highlighted content\";s:11:\"content_top\";s:11:\"Content top\";s:14:\"content_bottom\";s:14:\"Content bottom\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";s:12:\"page_closure\";s:12:\"Page closure\";}s:8:\"features\";a:10:{i:0;s:4:\"logo\";i:1;s:4:\"name\";i:2;s:6:\"slogan\";i:3;s:7:\"mission\";i:4;s:17:\"node_user_picture\";i:5;s:20:\"comment_user_picture\";i:6;s:6:\"search\";i:7;s:7:\"favicon\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:8:\"settings\";a:9:{s:17:\"zen_block_editing\";s:1:\"1\";s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";s:1:\"1\";s:23:\"zen_breadcrumb_trailing\";s:1:\"1\";s:20:\"zen_breadcrumb_title\";s:1:\"0\";s:10:\"zen_layout\";s:18:\"zen-columns-liquid\";s:20:\"zen_rebuild_registry\";s:1:\"0\";s:14:\"zen_wireframes\";s:1:\"0\";}s:7:\"plugins\";a:1:{s:6:\"panels\";a:1:{s:7:\"layouts\";s:7:\"layouts\";}}s:7:\"version\";s:7:\"6.x-2.0\";s:7:\"project\";s:3:\"zen\";s:9:\"datestamp\";s:10:\"1277583313\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:30:\"sites/all/themes/zen/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:30:\"sites/all/themes/zen/script.js\";}s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('themes/bluemarine/bluemarine.info','bluemarine','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:13:{s:4:\"name\";s:10:\"Bluemarine\";s:11:\"description\";s:66:\"Table-based multi-column theme with a marine and ash color scheme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/bluemarine/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/bluemarine/script.js\";}s:10:\"screenshot\";s:32:\"themes/bluemarine/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('themes/chameleon/chameleon.info','chameleon','theme','themes/chameleon/chameleon.theme',0,0,0,-1,0,'a:12:{s:4:\"name\";s:9:\"Chameleon\";s:11:\"description\";s:42:\"Minimalist tabled theme with light colors.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:8:\"features\";a:4:{i:0;s:4:\"logo\";i:1;s:7:\"favicon\";i:2;s:4:\"name\";i:3;s:6:\"slogan\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:2:{s:9:\"style.css\";s:26:\"themes/chameleon/style.css\";s:10:\"common.css\";s:27:\"themes/chameleon/common.css\";}}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"scripts\";a:1:{s:9:\"script.js\";s:26:\"themes/chameleon/script.js\";}s:10:\"screenshot\";s:31:\"themes/chameleon/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('themes/chameleon/marvin/marvin.info','marvin','theme','',0,0,0,-1,0,'a:13:{s:4:\"name\";s:6:\"Marvin\";s:11:\"description\";s:31:\"Boxy tabled theme in all grays.\";s:7:\"regions\";a:2:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";}s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:9:\"chameleon\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:33:\"themes/chameleon/marvin/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/chameleon/marvin/script.js\";}s:10:\"screenshot\";s:38:\"themes/chameleon/marvin/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('themes/garland/garland.info','garland','theme','themes/engines/phptemplate/phptemplate.engine',1,0,0,-1,0,'a:13:{s:4:\"name\";s:7:\"Garland\";s:11:\"description\";s:66:\"Tableless, recolorable, multi-column, fluid width theme (default).\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:11:\"stylesheets\";a:2:{s:3:\"all\";a:1:{s:9:\"style.css\";s:24:\"themes/garland/style.css\";}s:5:\"print\";a:1:{s:9:\"print.css\";s:24:\"themes/garland/print.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:24:\"themes/garland/script.js\";}s:10:\"screenshot\";s:29:\"themes/garland/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}');
INSERT INTO `system` VALUES ('themes/garland/minnelli/minnelli.info','minnelli','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:14:{s:4:\"name\";s:8:\"Minnelli\";s:11:\"description\";s:56:\"Tableless, recolorable, multi-column, fixed width theme.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:10:\"base theme\";s:7:\"garland\";s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:12:\"minnelli.css\";s:36:\"themes/garland/minnelli/minnelli.css\";}}s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:33:\"themes/garland/minnelli/script.js\";}s:10:\"screenshot\";s:38:\"themes/garland/minnelli/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";s:6:\"engine\";s:11:\"phptemplate\";}');
INSERT INTO `system` VALUES ('themes/pushbutton/pushbutton.info','pushbutton','theme','themes/engines/phptemplate/phptemplate.engine',0,0,0,-1,0,'a:13:{s:4:\"name\";s:10:\"Pushbutton\";s:11:\"description\";s:52:\"Tabled, multi-column theme in blue and orange tones.\";s:7:\"version\";s:4:\"6.19\";s:4:\"core\";s:3:\"6.x\";s:6:\"engine\";s:11:\"phptemplate\";s:7:\"project\";s:6:\"drupal\";s:9:\"datestamp\";s:10:\"1281559292\";s:7:\"regions\";a:5:{s:4:\"left\";s:12:\"Left sidebar\";s:5:\"right\";s:13:\"Right sidebar\";s:7:\"content\";s:7:\"Content\";s:6:\"header\";s:6:\"Header\";s:6:\"footer\";s:6:\"Footer\";}s:8:\"features\";a:10:{i:0;s:20:\"comment_user_picture\";i:1;s:7:\"favicon\";i:2;s:7:\"mission\";i:3;s:4:\"logo\";i:4;s:4:\"name\";i:5;s:17:\"node_user_picture\";i:6;s:6:\"search\";i:7;s:6:\"slogan\";i:8;s:13:\"primary_links\";i:9;s:15:\"secondary_links\";}s:11:\"stylesheets\";a:1:{s:3:\"all\";a:1:{s:9:\"style.css\";s:27:\"themes/pushbutton/style.css\";}}s:7:\"scripts\";a:1:{s:9:\"script.js\";s:27:\"themes/pushbutton/script.js\";}s:10:\"screenshot\";s:32:\"themes/pushbutton/screenshot.png\";s:3:\"php\";s:5:\"4.3.5\";}');
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_data`
--

DROP TABLE IF EXISTS `term_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_data` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `taxonomy_tree` (`vid`,`weight`,`name`),
  KEY `vid_name` (`vid`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_data`
--
-- ORDER BY:  `tid`

LOCK TABLES `term_data` WRITE;
/*!40000 ALTER TABLE `term_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_hierarchy`
--

DROP TABLE IF EXISTS `term_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_hierarchy` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`parent`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_hierarchy`
--
-- ORDER BY:  `tid`,`parent`

LOCK TABLES `term_hierarchy` WRITE;
/*!40000 ALTER TABLE `term_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_node`
--

DROP TABLE IF EXISTS `term_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_node` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`vid`),
  KEY `vid` (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_node`
--
-- ORDER BY:  `tid`,`vid`

LOCK TABLES `term_node` WRITE;
/*!40000 ALTER TABLE `term_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_relation`
--

DROP TABLE IF EXISTS `term_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_relation` (
  `trid` int(11) NOT NULL AUTO_INCREMENT,
  `tid1` int(10) unsigned NOT NULL DEFAULT '0',
  `tid2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`trid`),
  UNIQUE KEY `tid1_tid2` (`tid1`,`tid2`),
  KEY `tid2` (`tid2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_relation`
--
-- ORDER BY:  `trid`

LOCK TABLES `term_relation` WRITE;
/*!40000 ALTER TABLE `term_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_synonym`
--

DROP TABLE IF EXISTS `term_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_synonym` (
  `tsid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tsid`),
  KEY `tid` (`tid`),
  KEY `name_tid` (`name`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_synonym`
--
-- ORDER BY:  `tsid`

LOCK TABLES `term_synonym` WRITE;
/*!40000 ALTER TABLE `term_synonym` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_alias` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(128) NOT NULL DEFAULT '',
  `dst` varchar(128) NOT NULL DEFAULT '',
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `dst_language_pid` (`dst`,`language`,`pid`),
  KEY `src_language_pid` (`src`,`language`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_alias`
--
-- ORDER BY:  `pid`

LOCK TABLES `url_alias` WRITE;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `pass` varchar(32) NOT NULL DEFAULT '',
  `mail` varchar(64) DEFAULT '',
  `mode` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) DEFAULT '0',
  `threshold` tinyint(4) DEFAULT '0',
  `theme` varchar(255) NOT NULL DEFAULT '',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `signature_format` smallint(6) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(8) DEFAULT NULL,
  `language` varchar(12) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `init` varchar(64) DEFAULT '',
  `data` longtext,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  KEY `access` (`access`),
  KEY `created` (`created`),
  KEY `mail` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--
-- ORDER BY:  `uid`

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'','','',0,0,0,'','',0,0,0,0,0,NULL,'','','',NULL);
INSERT INTO `users` VALUES (1,'admin','c4fa0d13030693f7d4cc9477428f760b','michelle@quilted.coop',0,0,0,'','',0,1281993280,1282233457,1282233457,1,'-14400','','','michelle@quilted.coop','a:1:{s:13:\"form_build_id\";s:37:\"form-c540b5b287b784903277a6c507cfbaf2\";}');
INSERT INTO `users` VALUES (3,'datennes','8865ed4a9bae17c39664c729b29f8b91','datennes@mit.edu',0,0,0,'','',0,1282077625,1282221841,1282136851,1,'-14400','','','datennes@mit.edu','a:1:{s:13:\"form_build_id\";s:37:\"form-b08ab96cdfe97b7726731f7d41f6c072\";}');
INSERT INTO `users` VALUES (4,'game admin tester','c4fa0d13030693f7d4cc9477428f760b','qa@quilted.coop',0,0,0,'','',0,1282077663,1282233618,1282232768,1,'-14400','','','qa@quilted.coop','a:1:{s:13:\"form_build_id\";s:37:\"form-d31ea5219cb0c6f455214791de83714c\";}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--
-- ORDER BY:  `uid`,`rid`

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (3,4);
INSERT INTO `users_roles` VALUES (4,4);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variable` (
  `name` varchar(128) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variable`
--
-- ORDER BY:  `name`

LOCK TABLES `variable` WRITE;
/*!40000 ALTER TABLE `variable` DISABLE KEYS */;
INSERT INTO `variable` VALUES ('allowed_html_5','s:58:\"<game><achievement><checkpoint><document><forum><research>\";');
INSERT INTO `variable` VALUES ('block_cache','s:1:\"0\";');
INSERT INTO `variable` VALUES ('cache','s:1:\"0\";');
INSERT INTO `variable` VALUES ('cache_lifetime','s:1:\"0\";');
INSERT INTO `variable` VALUES ('clean_url','s:1:\"1\";');
INSERT INTO `variable` VALUES ('clear','s:17:\"Clear cached data\";');
INSERT INTO `variable` VALUES ('comment_page','i:0;');
INSERT INTO `variable` VALUES ('content_schema_version','i:6009;');
INSERT INTO `variable` VALUES ('cron_last','i:1282152528;');
INSERT INTO `variable` VALUES ('css_js_query_string','s:20:\"76ZjXNiGM5CUbcfLaV00\";');
INSERT INTO `variable` VALUES ('ctools_last_cron','i:1282152528;');
INSERT INTO `variable` VALUES ('date_default_timezone','s:6:\"-14400\";');
INSERT INTO `variable` VALUES ('drupal_http_request_fails','b:0;');
INSERT INTO `variable` VALUES ('drupal_private_key','s:64:\"823f64437e9db9ed1944802e70ce0b2c444993e37ffd4001a1e2e685bd4d643d\";');
INSERT INTO `variable` VALUES ('features_codecache','a:1:{s:5:\"flash\";a:1:{s:12:\"dependencies\";s:32:\"23de76a6bbb7240ae606e572051e2bbe\";}}');
INSERT INTO `variable` VALUES ('features_ignored_orphans','a:0:{}');
INSERT INTO `variable` VALUES ('fieldgroup_schema_version','i:6000;');
INSERT INTO `variable` VALUES ('file_directory_path','s:19:\"sites/default/files\";');
INSERT INTO `variable` VALUES ('file_directory_temp','s:19:\"sites/default/files\";');
INSERT INTO `variable` VALUES ('file_downloads','s:1:\"1\";');
INSERT INTO `variable` VALUES ('filter_default_format','s:1:\"1\";');
INSERT INTO `variable` VALUES ('filter_html_1','i:1;');
INSERT INTO `variable` VALUES ('filter_html_5','s:1:\"1\";');
INSERT INTO `variable` VALUES ('filter_html_help_5','i:0;');
INSERT INTO `variable` VALUES ('filter_html_nofollow_5','i:0;');
INSERT INTO `variable` VALUES ('format','s:1:\"5\";');
INSERT INTO `variable` VALUES ('form_build_id_flashnode','s:37:\"form-180ab9035bd9e05344df8d694905cf06\";');
INSERT INTO `variable` VALUES ('form_build_id_flash_data','s:37:\"form-82a6672f0f5887c3b2cbd703e9ce8a7a\";');
INSERT INTO `variable` VALUES ('install_profile','s:7:\"default\";');
INSERT INTO `variable` VALUES ('install_task','s:4:\"done\";');
INSERT INTO `variable` VALUES ('install_time','i:1281993305;');
INSERT INTO `variable` VALUES ('javascript_parsed','a:0:{}');
INSERT INTO `variable` VALUES ('menu_expanded','a:0:{}');
INSERT INTO `variable` VALUES ('menu_masks','a:22:{i:0;i:125;i:1;i:63;i:2;i:62;i:3;i:61;i:4;i:59;i:5;i:58;i:6;i:56;i:7;i:31;i:8;i:30;i:9;i:29;i:10;i:24;i:11;i:21;i:12;i:15;i:13;i:14;i:14;i:11;i:15;i:7;i:16;i:6;i:17;i:5;i:18;i:4;i:19;i:3;i:20;i:2;i:21;i:1;}');
INSERT INTO `variable` VALUES ('node_options_flashnode','a:2:{i:0;s:6:\"status\";i:1;s:7:\"promote\";}');
INSERT INTO `variable` VALUES ('node_options_flash_data','a:1:{i:0;s:6:\"status\";}');
INSERT INTO `variable` VALUES ('node_options_forum','a:1:{i:0;s:6:\"status\";}');
INSERT INTO `variable` VALUES ('node_options_page','a:1:{i:0;s:6:\"status\";}');
INSERT INTO `variable` VALUES ('page_compression','s:1:\"1\";');
INSERT INTO `variable` VALUES ('panels_legacy_rendering_mode','b:0;');
INSERT INTO `variable` VALUES ('preprocess_css','s:1:\"0\";');
INSERT INTO `variable` VALUES ('preprocess_js','s:1:\"0\";');
INSERT INTO `variable` VALUES ('site_mail','s:21:\"michelle@quilted.coop\";');
INSERT INTO `variable` VALUES ('site_name','s:15:\"Mass Extinction\";');
INSERT INTO `variable` VALUES ('theme_default','s:14:\"quilted_custom\";');
INSERT INTO `variable` VALUES ('theme_quilted_custom_settings','a:24:{s:17:\"zen_block_editing\";i:1;s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";i:1;s:23:\"zen_breadcrumb_trailing\";i:1;s:20:\"zen_breadcrumb_title\";i:0;s:20:\"zen_rebuild_registry\";i:1;s:14:\"zen_wireframes\";i:0;s:11:\"toggle_logo\";i:1;s:11:\"toggle_name\";i:1;s:13:\"toggle_slogan\";i:0;s:14:\"toggle_mission\";i:1;s:24:\"toggle_node_user_picture\";i:0;s:27:\"toggle_comment_user_picture\";i:0;s:13:\"toggle_search\";i:0;s:14:\"toggle_favicon\";i:1;s:20:\"toggle_primary_links\";i:1;s:22:\"toggle_secondary_links\";i:1;s:12:\"default_logo\";i:1;s:9:\"logo_path\";s:0:\"\";s:11:\"logo_upload\";s:0:\"\";s:15:\"default_favicon\";i:1;s:12:\"favicon_path\";s:0:\"\";s:14:\"favicon_upload\";s:0:\"\";}');
INSERT INTO `variable` VALUES ('theme_settings','a:1:{s:21:\"toggle_node_info_page\";b:0;}');
INSERT INTO `variable` VALUES ('theme_zen_settings','a:9:{s:17:\"zen_block_editing\";s:1:\"1\";s:14:\"zen_breadcrumb\";s:3:\"yes\";s:24:\"zen_breadcrumb_separator\";s:5:\" › \";s:19:\"zen_breadcrumb_home\";s:1:\"1\";s:23:\"zen_breadcrumb_trailing\";s:1:\"1\";s:20:\"zen_breadcrumb_title\";s:1:\"0\";s:10:\"zen_layout\";s:18:\"zen-columns-liquid\";s:20:\"zen_rebuild_registry\";s:1:\"0\";s:14:\"zen_wireframes\";s:1:\"0\";}');
INSERT INTO `variable` VALUES ('update_last_check','i:1282152528;');
INSERT INTO `variable` VALUES ('user_email_verification','b:1;');
/*!40000 ALTER TABLE `variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views_display`
--

DROP TABLE IF EXISTS `views_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views_display` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `id` varchar(64) NOT NULL DEFAULT '',
  `display_title` varchar(64) NOT NULL DEFAULT '',
  `display_plugin` varchar(64) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '0',
  `display_options` longtext,
  PRIMARY KEY (`vid`,`id`),
  KEY `vid` (`vid`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views_display`
--
-- ORDER BY:  `vid`,`id`

LOCK TABLES `views_display` WRITE;
/*!40000 ALTER TABLE `views_display` DISABLE KEYS */;
INSERT INTO `views_display` VALUES (1,'default','Defaults','default',1,'a:9:{s:7:\"filters\";a:2:{s:4:\"type\";a:9:{s:8:\"operator\";s:2:\"in\";s:5:\"value\";a:1:{s:10:\"flash_data\";s:10:\"flash_data\";}s:5:\"group\";s:1:\"0\";s:7:\"exposed\";b:0;s:6:\"expose\";a:2:{s:8:\"operator\";b:0;s:5:\"label\";s:0:\"\";}s:2:\"id\";s:4:\"type\";s:5:\"table\";s:4:\"node\";s:5:\"field\";s:4:\"type\";s:12:\"relationship\";s:4:\"none\";}s:6:\"status\";a:9:{s:8:\"operator\";s:1:\"=\";s:5:\"value\";s:1:\"1\";s:5:\"group\";s:1:\"0\";s:7:\"exposed\";b:0;s:6:\"expose\";a:2:{s:8:\"operator\";b:0;s:5:\"label\";s:0:\"\";}s:2:\"id\";s:6:\"status\";s:5:\"table\";s:4:\"node\";s:5:\"field\";s:6:\"status\";s:12:\"relationship\";s:4:\"none\";}}s:5:\"title\";s:10:\"Flash Data\";s:10:\"row_plugin\";s:4:\"node\";s:11:\"row_options\";a:4:{s:12:\"relationship\";s:4:\"none\";s:10:\"build_mode\";s:4:\"full\";s:5:\"links\";i:0;s:8:\"comments\";i:0;}s:14:\"items_per_page\";i:30;s:6:\"offset\";i:0;s:9:\"use_pager\";s:4:\"mini\";s:13:\"pager_element\";i:0;s:5:\"sorts\";a:1:{s:7:\"changed\";a:6:{s:5:\"order\";s:4:\"DESC\";s:11:\"granularity\";s:6:\"second\";s:2:\"id\";s:7:\"changed\";s:5:\"table\";s:4:\"node\";s:5:\"field\";s:7:\"changed\";s:12:\"relationship\";s:4:\"none\";}}}');
INSERT INTO `views_display` VALUES (1,'page_1','Page','page',3,'a:2:{s:4:\"path\";s:10:\"flash_data\";s:4:\"menu\";a:5:{s:4:\"type\";s:6:\"normal\";s:5:\"title\";s:10:\"Flash Data\";s:11:\"description\";s:0:\"\";s:4:\"name\";s:13:\"primary-links\";s:6:\"weight\";s:1:\"0\";}}');
INSERT INTO `views_display` VALUES (1,'panel_pane_1','Content pane','panel_pane',2,'a:0:{}');
/*!40000 ALTER TABLE `views_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views_object_cache`
--

DROP TABLE IF EXISTS `views_object_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views_object_cache` (
  `sid` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `obj` varchar(32) DEFAULT NULL,
  `updated` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  KEY `sid_obj_name` (`sid`,`obj`,`name`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views_object_cache`
--

LOCK TABLES `views_object_cache` WRITE;
/*!40000 ALTER TABLE `views_object_cache` DISABLE KEYS */;
INSERT INTO `views_object_cache` VALUES ('n7f8f3ikuotfptsdjabnc84066','flash_data','view',1282081496,'O:4:\"view\":23:{s:8:\"db_table\";s:10:\"views_view\";s:10:\"base_table\";s:4:\"node\";s:5:\"built\";b:0;s:8:\"executed\";b:0;s:4:\"args\";a:0:{}s:10:\"build_info\";a:0:{}s:8:\"use_ajax\";b:0;s:6:\"result\";a:0:{}s:5:\"pager\";a:5:{s:9:\"use_pager\";b:0;s:14:\"items_per_page\";i:10;s:7:\"element\";i:0;s:6:\"offset\";i:0;s:12:\"current_page\";i:0;}s:17:\"attachment_before\";s:0:\"\";s:16:\"attachment_after\";s:0:\"\";s:12:\"exposed_data\";a:0:{}s:13:\"exposed_input\";a:0:{}s:8:\"old_view\";a:0:{}s:3:\"vid\";s:3:\"new\";s:4:\"name\";s:10:\"flash_data\";s:11:\"description\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:8:\"view_php\";s:0:\"\";s:12:\"is_cacheable\";i:0;s:7:\"display\";a:1:{s:7:\"default\";O:13:\"views_display\":7:{s:8:\"db_table\";s:13:\"views_display\";s:3:\"vid\";i:0;s:2:\"id\";s:7:\"default\";s:13:\"display_title\";s:8:\"Defaults\";s:14:\"display_plugin\";s:7:\"default\";s:8:\"position\";i:0;s:15:\"display_options\";a:0:{}}}s:5:\"query\";O:8:\"stdClass\":0:{}s:7:\"changed\";b:1;}');
/*!40000 ALTER TABLE `views_object_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views_view`
--

DROP TABLE IF EXISTS `views_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views_view` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT '',
  `view_php` blob,
  `base_table` varchar(64) NOT NULL DEFAULT '',
  `is_cacheable` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views_view`
--
-- ORDER BY:  `vid`

LOCK TABLES `views_view` WRITE;
/*!40000 ALTER TABLE `views_view` DISABLE KEYS */;
INSERT INTO `views_view` VALUES (1,'flash_node','','','','node',0);
/*!40000 ALTER TABLE `views_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `help` varchar(255) NOT NULL DEFAULT '',
  `relations` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hierarchy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `multiple` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) NOT NULL DEFAULT '',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `list` (`weight`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--
-- ORDER BY:  `vid`

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary_node_types`
--

DROP TABLE IF EXISTS `vocabulary_node_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary_node_types` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`,`vid`),
  KEY `vid` (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary_node_types`
--
-- ORDER BY:  `type`,`vid`

LOCK TABLES `vocabulary_node_types` WRITE;
/*!40000 ALTER TABLE `vocabulary_node_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocabulary_node_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-19 12:04:12
-- MySQL dump 10.13  Distrib 5.1.39, for portbld-freebsd7.2 (i386)
--
-- Host: db2.quilted.gaiahost.coop    Database: mass
-- ------------------------------------------------------
-- Server version	5.1.39-log

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_admin_menu`
--

DROP TABLE IF EXISTS `cache_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_admin_menu` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_block`
--

DROP TABLE IF EXISTS `cache_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_block` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_content`
--

DROP TABLE IF EXISTS `cache_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_content` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_filter`
--

DROP TABLE IF EXISTS `cache_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_filter` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_form`
--

DROP TABLE IF EXISTS `cache_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_form` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_menu`
--

DROP TABLE IF EXISTS `cache_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_menu` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_page`
--

DROP TABLE IF EXISTS `cache_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_page` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_update`
--

DROP TABLE IF EXISTS `cache_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_update` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_views`
--

DROP TABLE IF EXISTS `cache_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_views` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_views_data`
--

DROP TABLE IF EXISTS `cache_views_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_views_data` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `nid` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`nid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `uid` int(10) unsigned NOT NULL,
  `sid` varchar(64) NOT NULL DEFAULT '',
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `cache` int(11) NOT NULL DEFAULT '0',
  `session` longtext,
  PRIMARY KEY (`sid`),
  KEY `timestamp` (`timestamp`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `watchdog`
--

DROP TABLE IF EXISTS `watchdog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchdog` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `variables` longtext NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `location` text NOT NULL,
  `referer` text,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=1053 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-19 12:04:13
