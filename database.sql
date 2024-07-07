/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.1.13-MariaDB : Database - e-agri
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`e-agri` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `e-agri`;

/*Table structure for table `buyer_chatting` */

DROP TABLE IF EXISTS `buyer_chatting`;

CREATE TABLE `buyer_chatting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `i_id` int(10) DEFAULT NULL,
  `f_id` int(10) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `femail` varchar(100) DEFAULT NULL,
  `iemail` varchar(100) DEFAULT NULL,
  `msg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `buyer_chatting` */

insert  into `buyer_chatting`(`id`,`i_id`,`f_id`,`user_type`,`femail`,`iemail`,`msg`) values (1,4,0,'Farmer','cse.takeoff@gmail.com','wheat','hi mahesh'),(2,4,2,'Farmer','lakshmi@gmail.com','30','hello lakshmi'),(3,1,1,'Buyer','lakshmi@gmail.com','30','hello'),(4,1,0,'Farmer','cse.takeoff@gmail.com','Paddy crop','hi');

/*Table structure for table `buyers` */

DROP TABLE IF EXISTS `buyers`;

CREATE TABLE `buyers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `buyers` */

insert  into `buyers`(`id`,`name`,`email`,`pwd`,`pno`,`addr`) values (1,'Mahesh','lakshmi@gmail.com','123','6876876567','as');

/*Table structure for table `crop_data` */

DROP TABLE IF EXISTS `crop_data`;

CREATE TABLE `crop_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `ctype` varchar(100) DEFAULT NULL,
  `cyear` int(100) DEFAULT NULL,
  `area` int(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `investment` int(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `crop_data` */

insert  into `crop_data`(`id`,`fname`,`cname`,`ctype`,`cyear`,`area`,`location`,`investment`,`profit`) values (1,'Keerthana','Paddy crop','Alluvial soils',2020,20,'tirupati',1000,'1200');

/*Table structure for table `crop_selling` */

DROP TABLE IF EXISTS `crop_selling`;

CREATE TABLE `crop_selling` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `crop_selling` */

insert  into `crop_selling`(`id`,`fname`,`email`,`pno`,`addr`,`cname`,`quantity`) values (1,'Keerthana','cse.takeoff@gmail.com','6876876567','tirupati','Paddy crop',30);

/*Table structure for table `farmer` */

DROP TABLE IF EXISTS `farmer`;

CREATE TABLE `farmer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `farmer` */

insert  into `farmer`(`id`,`name`,`email`,`pwd`,`pno`,`addr`) values (1,'Keerthana','cse.takeoff@gmail.com','123','9632587410','tirupati');

/*Table structure for table `fund_chatting` */

DROP TABLE IF EXISTS `fund_chatting`;

CREATE TABLE `fund_chatting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `i_id` int(10) DEFAULT NULL,
  `f_id` int(10) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `femail` varchar(100) DEFAULT NULL,
  `iemail` varchar(100) DEFAULT NULL,
  `msg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `fund_chatting` */

insert  into `fund_chatting`(`id`,`i_id`,`f_id`,`user_type`,`femail`,`iemail`,`msg`) values (1,1,1,'Investor','reshmaashok2000@gmail.com','cse.takeoff@gmail.com','hi'),(2,1,1,'Farmer','cse.takeoff@gmail.com','reshmaashok2000@gmail.com','hi');

/*Table structure for table `investment_data` */

DROP TABLE IF EXISTS `investment_data`;

CREATE TABLE `investment_data` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fid` int(10) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `yeild` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `femail` varchar(100) DEFAULT NULL,
  `fno` varchar(100) DEFAULT NULL,
  `faddr` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `iemail` varchar(100) DEFAULT NULL,
  `ino` varchar(100) DEFAULT NULL,
  `iaddr` varchar(100) DEFAULT NULL,
  `area` int(100) DEFAULT NULL,
  `money` varchar(100) DEFAULT NULL,
  `share` varchar(100) DEFAULT NULL,
  `e_money` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `investment_data` */

insert  into `investment_data`(`id`,`fid`,`cname`,`yeild`,`fname`,`femail`,`fno`,`faddr`,`iname`,`iemail`,`ino`,`iaddr`,`area`,`money`,`share`,`e_money`,`status`) values (1,1,'Paddy crop','Alluvial soils','keerthana','cse.takeoff@gmail.com','9515851969','tirupati','reshma','reshmaashok2000@gmail.com','6876876567','zax',10,'100000','30','50000','Accepted');

/*Table structure for table `investor` */

DROP TABLE IF EXISTS `investor`;

CREATE TABLE `investor` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `investor` */

insert  into `investor`(`id`,`name`,`email`,`pwd`,`pno`,`addr`) values (1,'reshma','reshmaashok2000@gmail.com','123','6876876567','aa');

/*Table structure for table `make_funds` */

DROP TABLE IF EXISTS `make_funds`;

CREATE TABLE `make_funds` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `yeild` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `area` int(100) DEFAULT NULL,
  `money` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `share` varchar(100) DEFAULT NULL,
  `e_money` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `make_funds` */

insert  into `make_funds`(`id`,`cname`,`yeild`,`fname`,`email`,`pno`,`area`,`money`,`addr`,`share`,`e_money`,`status`) values (1,'Paddy crop','Alluvial soils','keerthana','cse.takeoff@gmail.com','9515851969',10,'50000','tirupati','30','0','pending');

/*Table structure for table `profit_data` */

DROP TABLE IF EXISTS `profit_data`;

CREATE TABLE `profit_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(100) DEFAULT NULL,
  `i_id` int(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `yeild` varchar(100) DEFAULT NULL,
  `area` int(100) DEFAULT NULL,
  `money` varchar(100) DEFAULT NULL,
  `share` varchar(100) DEFAULT NULL,
  `i_money` varchar(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `final_amount` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `femail` varchar(100) DEFAULT NULL,
  `iname` varchar(100) DEFAULT NULL,
  `iemail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `profit_data` */

insert  into `profit_data`(`id`,`fid`,`i_id`,`cname`,`yeild`,`area`,`money`,`share`,`i_money`,`profit`,`final_amount`,`fname`,`femail`,`iname`,`iemail`) values (3,1,1,'Paddy crop','Alluvial soils',10,'100000','30','50000','120000','36000.0','Keerthana','cse.takeoff@gmail.com','reshma','reshmaashok2000@gmail.com');

/*Table structure for table `selling_buying` */

DROP TABLE IF EXISTS `selling_buying`;

CREATE TABLE `selling_buying` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `femail` varchar(100) DEFAULT NULL,
  `bname` varchar(100) DEFAULT NULL,
  `bemail` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `buyer_need` int(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `msg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `selling_buying` */

insert  into `selling_buying`(`id`,`sid`,`fname`,`femail`,`bname`,`bemail`,`pno`,`addr`,`cname`,`quantity`,`buyer_need`,`status`,`msg`) values (1,1,'Keerthana','cse.takeoff@gmail.com','Mahesh','lakshmi@gmail.com','6876876567','xz','Paddy crop',30,20,'Accepted',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
