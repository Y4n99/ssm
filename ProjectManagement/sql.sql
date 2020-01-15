/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.5.28 : Database - projectdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`projectdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `projectdb`;

/*Table structure for table `projectinfo` */

DROP TABLE IF EXISTS `projectinfo`;

CREATE TABLE `projectinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `projectname` varchar(40) NOT NULL COMMENT '项目名称',
  `startDate` date NOT NULL COMMENT '开始日期',
  `endDate` date NOT NULL COMMENT '结束日期',
  `status` int(1) NOT NULL COMMENT '申报状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='项目信息表';

/*Data for the table `projectinfo` */

insert  into `projectinfo`(`id`,`projectname`,`startDate`,`endDate`,`status`) values (1,'北京社会科学基金2011年度申报','2011-03-09','2011-09-30',2),(2,'国家自然科学基金2010年度申报','2010-01-09','2010-03-30',1),(3,'国家社会科学基金2011年度申报','2011-03-09','2011-09-30',2),(4,'北京社会科学基金2012年度申报','2012-04-21','2012-07-21',0),(5,'国家社会科学基金2012年度申报','2012-03-12','2012-06-12',2),(6,'国家社会科学基金2013年度申报','2013-01-12','2013-04-12',1),(7,'国家社会科学基金2011年度申报','2011-06-10','2011-09-10',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
