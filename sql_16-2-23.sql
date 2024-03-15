/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.6.12-log : Database - crop_prediction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crop_prediction` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `crop_prediction`;

/*Table structure for table `agriculture_office` */

DROP TABLE IF EXISTS `agriculture_office`;

CREATE TABLE `agriculture_office` (
  `agri_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`agri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `agriculture_office` */

/*Table structure for table `crop` */

DROP TABLE IF EXISTS `crop`;

CREATE TABLE `crop` (
  `crop_id` int(10) NOT NULL AUTO_INCREMENT,
  `crop_name` varchar(20) NOT NULL,
  `crop_rate` int(10) NOT NULL,
  PRIMARY KEY (`crop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `crop` */

/*Table structure for table `doubt` */

DROP TABLE IF EXISTS `doubt`;

CREATE TABLE `doubt` (
  `doubt_id` int(10) NOT NULL,
  `doubt` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `farmer_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`doubt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doubt` */

/*Table structure for table `farmer` */

DROP TABLE IF EXISTS `farmer`;

CREATE TABLE `farmer` (
  `farmer_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` int(10) NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `farmer` */

/*Table structure for table `fertilizers` */

DROP TABLE IF EXISTS `fertilizers`;

CREATE TABLE `fertilizers` (
  `fertilizer_id` int(10) NOT NULL AUTO_INCREMENT,
  `fertilizer_name` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fertilizer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fertilizers` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

/*Table structure for table `pesticide` */

DROP TABLE IF EXISTS `pesticide`;

CREATE TABLE `pesticide` (
  `pest_id` int(10) NOT NULL AUTO_INCREMENT,
  `pest_name` varchar(20) NOT NULL,
  `rate` int(10) NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pesticide` */

/*Table structure for table `weather_dept` */

DROP TABLE IF EXISTS `weather_dept`;

CREATE TABLE `weather_dept` (
  `dept_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `weather_dept` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
