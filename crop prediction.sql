/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 8.0.31 : Database - crop_prediction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`crop_prediction` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `crop_prediction`;

/*Table structure for table `agriculture_office` */

DROP TABLE IF EXISTS `agriculture_office`;

CREATE TABLE `agriculture_office` (
  `agri_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`agri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `agriculture_office` */

insert  into `agriculture_office`(`agri_id`,`name`,`email`,`phone_number`) values (3,'dfhddfjh','ad@gmail.com','8547507943'),(5,'ad@gmail.com','ad@gmail.com','9897656789'),(6,'sonu','sonu@gmail.com','0987678765'),(13,'kaleeshwaraprasad','kaali@gmail.com','9878987656'),(14,'sreepadh ramakrishna','sree@gmail.com','7867856785');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat_id` int NOT NULL AUTO_INCREMENT,
  `from_id` int DEFAULT NULL,
  `to_id` int DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat_id`,`from_id`,`to_id`,`message`,`date`) values (1,3,5,'hi','2023-05-02'),(2,3,5,'hi','2023-05-02'),(3,5,3,'helo','2023-05-02'),(4,3,5,'ok','2023-05-12'),(5,4,1,'hlo','2023-05-12 15:54:32'),(6,1,4,'hy',NULL),(7,3,6,'hy','2023-05-13'),(8,4,3,'hi','2023-05-13 10:25:32'),(9,4,1,'deyy','2023-05-13 10:26:46'),(10,4,3,'hlo','2023-05-13 10:30:33'),(11,3,5,'hlo','2023-05-13'),(12,6,3,'hi','2023-05-13 10:33:20'),(13,6,3,'','2023-05-13 10:33:24'),(37,3,6,'ok ok','2023-05-15'),(115,13,8,'hii visu','2023-06-22 18:11:30'),(114,13,8,'hiii sinu','2023-06-22 18:10:57'),(113,8,13,'heyy kaali','2023-06-22'),(112,4,1,'aaa','2023-06-20 10:16:03'),(111,6,8,'coconut','2023-06-17 13:28:59'),(110,8,6,'which is the best crop suitable for summer','2023-06-17'),(109,6,8,'hhh','2023-06-17 13:27:49'),(108,8,6,'ok ok ','2023-06-17'),(107,6,8,'yss','2023-06-17 13:27:27'),(106,8,6,'hloo','2023-06-17'),(105,6,8,'yss','2023-06-17 12:13:30'),(104,8,6,'hyy','2023-06-17'),(103,8,13,'hlo','2023-06-17'),(102,13,8,'yee','2023-06-17 11:56:42'),(101,8,13,'hyyy','2023-06-17'),(100,8,5,'hyyy','2023-06-17'),(99,5,9,'hloo','2023-06-17 11:04:25'),(98,6,9,'hloo','2023-06-17 11:02:55'),(97,9,5,'yy','2023-06-17'),(96,9,5,'hii','2023-06-17'),(95,8,14,'can you suggest some crops to cultivate during summer season','2023-06-16');

/*Table structure for table `crop` */

DROP TABLE IF EXISTS `crop`;

CREATE TABLE `crop` (
  `crop_id` int NOT NULL AUTO_INCREMENT,
  `crop_name` varchar(20) NOT NULL,
  `crop_rate` int NOT NULL,
  PRIMARY KEY (`crop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `crop` */

insert  into `crop`(`crop_id`,`crop_name`,`crop_rate`) values (7,'Rice',19),(8,'wheat',13),(9,'corn',8),(10,'Soybean',7),(11,'coffee',22),(12,'coconut',23),(13,'mango ',20);

/*Table structure for table `doubt` */

DROP TABLE IF EXISTS `doubt`;

CREATE TABLE `doubt` (
  `doubt_id` int NOT NULL AUTO_INCREMENT,
  `doubt` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `farmer_id` int DEFAULT NULL,
  `reply` varchar(200) DEFAULT NULL,
  `reply_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`doubt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `doubt` */

insert  into `doubt`(`doubt_id`,`doubt`,`date`,`farmer_id`,`reply`,`reply_date`) values (1,'ajsjejd','2023-03-23',3,'pending','0000-00-00'),(2,'hii ','2023-03-23',3,'pending','0000-00-00'),(3,'','2023-03-23',3,'assssj','2023-04-24'),(4,'rrfd','2023-03-23',3,'today is rainy','2023-06-20'),(5,'rrfd','2023-03-23',3,'pending','0000-00-00'),(11,'Which crop is mostly grown in Kerala','2023-05-18',3,'Rice is the most important food crop grown in Kerala.','2023-05-18'),(12,'which is the best crop suitable in kerala','2023-06-16',8,'pending','pending'),(13,'which is the best crop suitable in kerala','2023-06-16',8,'pending','pending'),(14,'which is the best crop suitable in kerala','2023-06-16',8,'pending','pending'),(15,'which is the best crop suitable in kerala','2023-06-16',8,'pending','pending'),(16,'which is the best crop suitable in kerala','2023-06-16',8,'pending','pending'),(17,'what is the climate today','2023-06-17',9,'expected rain at 2.00','2023-06-17'),(18,'suggest any good item','2023-06-17',8,'pending','pending');

/*Table structure for table `farmer` */

DROP TABLE IF EXISTS `farmer`;

CREATE TABLE `farmer` (
  `farmer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` bigint NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `farmer` */

insert  into `farmer`(`farmer_id`,`name`,`email`,`phone_number`) values (1,'vvv','a',113),(3,'a','a',2147483647),(8,'sinan','sinan@gmail.com',8659362580),(9,'ghh','f@gmail.com',9856325698),(10,'sabarukandh','sabaripp@gmail.com',8547507943),(11,'sabarukandh','sabaripp@gmail.com',8547507943),(12,'sabarukandh','sabaripp@gmail.com',8547507943);

/*Table structure for table `fertilizers` */

DROP TABLE IF EXISTS `fertilizers`;

CREATE TABLE `fertilizers` (
  `fertilizer_id` int NOT NULL AUTO_INCREMENT,
  `fertilizer_name` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `comments` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`fertilizer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `fertilizers` */

insert  into `fertilizers`(`fertilizer_id`,`fertilizer_name`,`rate`,`comments`) values (9,'Nitrogen Fertilizers','100','   - Ammonium nitrate: Contains both nitrogen and a small amount of ammonium. It is highly soluble and quickly releases nitrogen into the soil.    - Urea: A solid nitrogen fertilizer that contains the'),(11,'Potassium Fertilizer','120','Phosphorus fertilizer is a type of fertilizer that is specifically formulated to provide plants with phosphorus, which is an essential nutrient for their growth and development. '),(12,'Potassium Fertilizer','130','Potassium fertilizers are a type of fertilizer that is used to supply potassium, an essential nutrient for plant growth and development, to the soil'),(13,'Micronutrient Fertil','150','Micronutrient fertilizers are specifically designed to provide essential trace elements or micronutrients that are required by plants in small quantities.'),(14,'Nitrogen Fertilizers','100','Nitrogen is a key nutrient that plants need to grow. Nitrogen fertilizers are one of the most common types used to produce nitrogen in order to help plants flourish and grow strong.');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `user_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`user_name`,`password`,`user_type`) values (1,'admin','admin','admin'),(2,'ad@gmail.com','7166','weather'),(3,'a','a','farmer'),(4,'ad@gmail.com','1749','Agriculture_office'),(5,'ad@gmail.com','4746','Agriculture_office'),(6,'sonu@gmail.com','7825','Agriculture_office'),(7,'ad@gmail.com','2633','weather'),(8,'sinan@gmail.com','123','farmer'),(9,'f@gmail.com','123','farmer'),(10,'sabaripp@gmail.com','asdf','farmer'),(11,'sabaripp@gmail.com','asdf','farmer'),(12,'sabaripp@gmail.com','asdf','farmer'),(13,'kaali@gmail.com','6247','Agriculture_office'),(14,'sree@gmail.com','3963','Agriculture_office'),(15,'sub@gmail.com','8958','weather');

/*Table structure for table `pesticide` */

DROP TABLE IF EXISTS `pesticide`;

CREATE TABLE `pesticide` (
  `pest_id` int NOT NULL AUTO_INCREMENT,
  `pest_name` varchar(20) NOT NULL,
  `rate` int NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `pesticide` */

insert  into `pesticide`(`pest_id`,`pest_name`,`rate`,`comments`) values (6,'Herbicides',24,' Herbicides are used to control weeds that compete with crops for resources such as water, light, an'),(7,'Fungicides',25,'Fungicides are used to prevent or control fungal diseases in crops. They work by inhibiting the grow'),(8,'nitrogen',22,'Nitrogen is a key nutrient that plants need to grow. Nitrogen fertilizers are one of the most common');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`stock_id`,`product_id`,`type`,`stock`) values (1,7,'crop',10),(2,9,'fertilizer',3444),(4,5,'pesticide',600),(5,7,'crop',20),(6,7,'crop',78),(7,7,'crop',44),(8,12,'crop',100),(9,13,'crop',100);

/*Table structure for table `weather` */

DROP TABLE IF EXISTS `weather`;

CREATE TABLE `weather` (
  `weather_ID` int NOT NULL AUTO_INCREMENT,
  `weather_dept_id` int NOT NULL,
  `date` date NOT NULL,
  `weather` varchar(100) NOT NULL,
  PRIMARY KEY (`weather_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `weather` */

insert  into `weather`(`weather_ID`,`weather_dept_id`,`date`,`weather`) values (3,2,'2023-03-10','asds ad '),(2,2,'2023-03-10','sadsfa  '),(4,2,'2023-03-10','today is a sunny day. chance of rain is very less.current temp:35c'),(5,2,'2023-03-16','sunny'),(6,7,'2023-06-20','expected rain after 10.00am');

/*Table structure for table `weather_dept` */

DROP TABLE IF EXISTS `weather_dept`;

CREATE TABLE `weather_dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `weather_dept` */

insert  into `weather_dept`(`dept_id`,`name`,`email`,`phone_number`) values (2,'adwaid','ad@gmail.com','8979687234'),(7,'subas','ad@gmail.com','8979687765'),(14,'sinan','sjaks@gmail.com','9087676712'),(15,'subhash','sub@gmail.com','5678909876'),(19,'adarsh','adarshjc@gmail.com','987654398');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
