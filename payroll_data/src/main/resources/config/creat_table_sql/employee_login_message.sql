/*
Navicat MySQL Data Transfer

Source Server         : localHost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : payroll

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-09-01 15:47:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employee_login_message
-- ----------------------------
DROP TABLE IF EXISTS `employee_login_message`;
CREATE TABLE `employee_login_message` (
  `EmpId` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `Username` varchar(45) NOT NULL COMMENT '用户名',
  `Password` varchar(45) CHARACTER SET latin1 NOT NULL COMMENT '密码',
  `Email` varchar(45) CHARACTER SET latin1 NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`EmpId`),
  CONSTRAINT `employee_login_message_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `employee` (`EmpId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工登陆信息表';
