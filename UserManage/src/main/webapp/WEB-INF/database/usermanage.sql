/*
Navicat MySQL Data Transfer

Source Server         : navicat
Source Server Version : 50718
Source Host           : localhost:2808
Source Database       : usermanage

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-11-05 15:41:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for batch
-- ----------------------------
DROP TABLE IF EXISTS `batch`;
CREATE TABLE `batch` (
  `year` int(255) NOT NULL,
  `state` int(255) NOT NULL,
  `level` int(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of batch
-- ----------------------------

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `file` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `projectId` int(255) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(255) NOT NULL,
  `projectTeacher` int(255) NOT NULL,
  `projectLeading` int(255) NOT NULL,
  `projectDate` int(11) NOT NULL,
  `projectState` int(255) NOT NULL,
  `projectType` int(255) NOT NULL,
  `projectExpert` varchar(255) DEFAULT NULL,
  `firstGrade` int(11) DEFAULT NULL,
  `secondGrade` int(11) DEFAULT NULL,
  `projectGrade` int(11) DEFAULT NULL,
  `projectLevel` int(255) DEFAULT NULL,
  `expertName` varchar(255) DEFAULT NULL,
  `leadingName` varchar(255) DEFAULT NULL,
  `teacherName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`projectId`),
  KEY `projectId` (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for projectmember
-- ----------------------------
DROP TABLE IF EXISTS `projectmember`;
CREATE TABLE `projectmember` (
  `projectId` int(255) DEFAULT NULL,
  `projectMemberId` int(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `projectMemberId` (`projectMemberId`),
  KEY `projectId` (`projectId`),
  CONSTRAINT `projectId` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `projectMemberId` FOREIGN KEY (`projectMemberId`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of projectmember
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentname` varchar(20) DEFAULT NULL,
  `studentpassword` varchar(50) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'wq', '123', '女');
INSERT INTO `student` VALUES ('7', 'wxq', '123', '女');
INSERT INTO `student` VALUES ('8', 'www', '123', '女');
INSERT INTO `student` VALUES ('9', 'dtl', '123', '男');
INSERT INTO `student` VALUES ('11', 'dxl', '123', '男');
INSERT INTO `student` VALUES ('12', 'dzl', '123', '男');
INSERT INTO `student` VALUES ('14', '温乔', 'wq038300', '女');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(11) NOT NULL,
  `teacherName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `power` int(11) NOT NULL,
  `college` varchar(255) NOT NULL,
  `colllege` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'admin', '123', '1', '理工学部', null);
INSERT INTO `teacher` VALUES ('2', 'lcf', '123', '2', '计算机学院', null);
INSERT INTO `teacher` VALUES ('3', 'shls', '123', '3', '信息工程学院', null);
INSERT INTO `teacher` VALUES ('4', 'dtl', '123', '3', '理学院', null);
INSERT INTO `teacher` VALUES ('5', 'lyf', '123', '2', '计算机学院', null);
