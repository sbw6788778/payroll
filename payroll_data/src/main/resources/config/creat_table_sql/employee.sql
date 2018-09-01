/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EmpId` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `Name` varchar(45) NOT NULL COMMENT '员工姓名',
  `Address` varchar(45) NOT NULL COMMENT '家庭住址',
  `ScheduleType` varchar(45) NOT NULL COMMENT '时间表',
  `PaymentMethodType` varchar(45) NOT NULL COMMENT '工资支付方式',
  `PaymentClassificationType` varchar(45) NOT NULL COMMENT '员工类型',
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
