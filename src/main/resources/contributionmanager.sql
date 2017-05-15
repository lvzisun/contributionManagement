/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50041
Source Host           : localhost:3306
Source Database       : contributionmanager

Target Server Type    : MYSQL
Target Server Version : 50041
File Encoding         : 65001

Date: 2017-05-15 21:05:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `appointment`
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL auto_increment,
  `openCard` varchar(6) NOT NULL,
  `publicationid` int(11) NOT NULL,
  `demand` varchar(1000) NOT NULL,
  `status` int(1) NOT NULL,
  `starttime` date NOT NULL,
  `endtime` date NOT NULL,
  `createid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES ('1', '201409', '1', '符合中小学生阅读', '1', '2017-04-27', '2017-05-01', '3');
INSERT INTO `appointment` VALUES ('2', '201909', '2', '女性', '0', '2014-02-02', '2015-03-09', '3');
INSERT INTO `appointment` VALUES ('3', '201208', '3', '男性', '0', '2015-03-09', '2015-03-09', '3');
INSERT INTO `appointment` VALUES ('4', '201509', '4', '的发盒饭', '1', '2014-03-09', '2019-09-02', '3');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `authorid` int(11) NOT NULL,
  `typeid` int(4) NOT NULL,
  `styleid` int(4) NOT NULL,
  `content` text,
  `status` int(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk-user` USING BTREE (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', null, '2', '1', '1', null, '0');
INSERT INTO `article` VALUES ('2', null, '2', '2', '1', null, '-1');
INSERT INTO `article` VALUES ('3', null, '2', '2', '1', null, '-1');
INSERT INTO `article` VALUES ('4', null, '2', '2', '1', null, '-1');
INSERT INTO `article` VALUES ('5', null, '5', '5', '1', null, '-1');
INSERT INTO `article` VALUES ('6', null, '5', '1', '1', null, '-1');
INSERT INTO `article` VALUES ('7', null, '5', '2', '1', null, '-1');
INSERT INTO `article` VALUES ('8', null, '5', '1', '1', null, '-1');

-- ----------------------------
-- Table structure for `articlestyle`
-- ----------------------------
DROP TABLE IF EXISTS `articlestyle`;
CREATE TABLE `articlestyle` (
  `id` int(4) NOT NULL auto_increment,
  `stylename` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articlestyle
-- ----------------------------

-- ----------------------------
-- Table structure for `articletype`
-- ----------------------------
DROP TABLE IF EXISTS `articletype`;
CREATE TABLE `articletype` (
  `id` int(4) NOT NULL auto_increment,
  `typename` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articletype
-- ----------------------------

-- ----------------------------
-- Table structure for `article_appointment_relation`
-- ----------------------------
DROP TABLE IF EXISTS `article_appointment_relation`;
CREATE TABLE `article_appointment_relation` (
  `id` int(11) NOT NULL auto_increment,
  `appointment_id` int(11) default NULL,
  `article_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_appointment_relation
-- ----------------------------
INSERT INTO `article_appointment_relation` VALUES ('1', '1', '1');
INSERT INTO `article_appointment_relation` VALUES ('2', '2', '2');
INSERT INTO `article_appointment_relation` VALUES ('3', '3', '3');
INSERT INTO `article_appointment_relation` VALUES ('4', '4', '4');
INSERT INTO `article_appointment_relation` VALUES ('5', '4', '5');
INSERT INTO `article_appointment_relation` VALUES ('6', '3', '6');
INSERT INTO `article_appointment_relation` VALUES ('7', '2', '7');
INSERT INTO `article_appointment_relation` VALUES ('8', '1', '8');

-- ----------------------------
-- Table structure for `email`
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL auto_increment,
  `sendid` int(11) NOT NULL,
  `reciveid` int(11) NOT NULL,
  `title` varchar(50) default NULL,
  `content` text,
  `file` varchar(200) default NULL,
  `filetype` varchar(20) default NULL,
  `status` int(1) NOT NULL,
  `maketime` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('1', '1', '2', '发邮件1', '1111', null, null, '4', '2017-04-05');
INSERT INTO `email` VALUES ('2', '3', '4', '发邮件', '2222', null, null, '4', '2017-04-26');
INSERT INTO `email` VALUES ('3', '2', '3', '发邮件', '222', null, null, '4', '2017-04-22');
INSERT INTO `email` VALUES ('4', '4', '2', '发邮件', '333', null, null, '5', '2017-04-20');
INSERT INTO `email` VALUES ('5', '3', '1', '收邮件1', '0', null, null, '6', '2017-03-31');
INSERT INTO `email` VALUES ('6', '1', '2', '发邮件', '2', null, null, '4', '2017-04-06');
INSERT INTO `email` VALUES ('7', '1', '3', '发邮件', '2', null, null, '4', '2017-04-08');
INSERT INTO `email` VALUES ('8', '1', '4', '发邮件', '2', null, null, '4', '2017-04-08');
INSERT INTO `email` VALUES ('9', '1', '3', '发邮件', '2', null, null, '4', '2017-04-08');
INSERT INTO `email` VALUES ('10', '1', '2', '发邮件', '2', null, null, '4', '2017-04-08');
INSERT INTO `email` VALUES ('11', '1', '3', '发邮件', '2', null, null, '4', '2017-04-08');
INSERT INTO `email` VALUES ('12', '1', '4', '发邮件', '2', null, null, '4', '2017-04-29');
INSERT INTO `email` VALUES ('13', '1', '2', '发邮件', '2', null, null, '4', '2017-04-29');
INSERT INTO `email` VALUES ('14', '2', '1', '收邮件', '2', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('15', '2', '1', '收邮件', '2', null, null, '3', '2017-04-05');
INSERT INTO `email` VALUES ('16', '3', '1', '收邮件', '3', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('17', '4', '1', '收邮件', '4', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('18', '3', '1', '收邮件', '5', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('19', '4', '1', '收邮件', '6', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('20', '2', '1', '收邮件', '7', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('22', '1', '2', '发邮件', '22222222222222222222222222222222222222222222222', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('23', '1', '4', '发邮件', '444444444444444', null, null, '2', '2017-04-05');
INSERT INTO `email` VALUES ('24', '1', '2', '发邮件', '44444', null, null, '0', '2017-04-27');
INSERT INTO `email` VALUES ('25', '1', '3', '发邮件', 'fmalmgkelwg', null, null, '0', '2017-04-27');
INSERT INTO `email` VALUES ('26', '1', '3', '发邮件', 'falkdngwelg;', null, null, '0', '2017-04-27');

-- ----------------------------
-- Table structure for `firstpower`
-- ----------------------------
DROP TABLE IF EXISTS `firstpower`;
CREATE TABLE `firstpower` (
  `id` int(4) NOT NULL auto_increment,
  `firstpowername` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of firstpower
-- ----------------------------
INSERT INTO `firstpower` VALUES ('1', '权限管理');
INSERT INTO `firstpower` VALUES ('2', '邮件系统');
INSERT INTO `firstpower` VALUES ('3', '通讯录');
INSERT INTO `firstpower` VALUES ('4', '我的约稿');
INSERT INTO `firstpower` VALUES ('5', '约稿管理');
INSERT INTO `firstpower` VALUES ('6', '成刊管理');
INSERT INTO `firstpower` VALUES ('7', '稿件信息管理');
INSERT INTO `firstpower` VALUES ('8', '个人信息管理');

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL auto_increment,
  `realname` varchar(20) default NULL,
  `sex` char(1) default NULL,
  `birthday` date default NULL,
  `age` int(4) default NULL,
  `phone` varchar(11) default NULL,
  `address` varchar(50) default NULL,
  `email` varchar(20) default NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '刘一一', '女', '2012-09-11', '12', '13311112222', '232323899', '1@qq.com', '4');
INSERT INTO `friend` VALUES ('2', '二二', '女', '2017-04-09', '23', '11122223333', 'dsfwwfw', '2@qq.com', '1');
INSERT INTO `friend` VALUES ('3', '三三', '男', '2017-04-15', '29', '11122223333', null, '3@qq.com', '1');
INSERT INTO `friend` VALUES ('4', '四四', '女', '2017-01-10', '30', '22233332222', null, '4@qq.com', '1');
INSERT INTO `friend` VALUES ('7', '五五', '男', '1992-09-09', null, 'fahuehuie', 'sfasdfa', '4@qq.com', '1');
INSERT INTO `friend` VALUES ('9', 'bb', '男', '1992-09-03', '32', 'b', 'eqwfcwlo', '4@qq.com', '2');
INSERT INTO `friend` VALUES ('10', 'cc', '女', '1992-09-01', '23', 'c', '阿三的方法', '4@qq.com', '2');
INSERT INTO `friend` VALUES ('11', 'dd', '女', '1993-08-02', '22', 'd', '都发哈撒地方', '4@qq.com', '2');
INSERT INTO `friend` VALUES ('12', null, null, '1992-09-03', null, 'aaa', null, null, '2');
INSERT INTO `friend` VALUES ('14', 'hewhol', '', '1882-09-09', null, 'djhfnjquw', 'fcnhiswef', 'ndejwvnwjue', '2');
INSERT INTO `friend` VALUES ('15', 'sdjhfniasd', '', '1990-02-02', null, 'djkanefjk', 'ncsjkdnjk', 'vnkjsednfke', '2');

-- ----------------------------
-- Table structure for `privatefriend`
-- ----------------------------
DROP TABLE IF EXISTS `privatefriend`;
CREATE TABLE `privatefriend` (
  `id` int(11) NOT NULL auto_increment,
  `homeid` int(11) NOT NULL,
  `visitorid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privatefriend
-- ----------------------------
INSERT INTO `privatefriend` VALUES ('1', '1', '2');
INSERT INTO `privatefriend` VALUES ('2', '1', '3');
INSERT INTO `privatefriend` VALUES ('3', '1', '4');
INSERT INTO `privatefriend` VALUES ('4', '2', '3');
INSERT INTO `privatefriend` VALUES ('5', '3', '4');
INSERT INTO `privatefriend` VALUES ('6', '4', '1');
INSERT INTO `privatefriend` VALUES ('7', '4', '3');

-- ----------------------------
-- Table structure for `publication`
-- ----------------------------
DROP TABLE IF EXISTS `publication`;
CREATE TABLE `publication` (
  `id` int(11) NOT NULL auto_increment,
  `publicationname` varchar(20) NOT NULL,
  `publicationidcard` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publication
-- ----------------------------
INSERT INTO `publication` VALUES ('1', '青年文摘', '0001');
INSERT INTO `publication` VALUES ('2', '读者', '0002');
INSERT INTO `publication` VALUES ('3', '意林', '0003');
INSERT INTO `publication` VALUES ('4', '知音', '0004');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(1) NOT NULL auto_increment,
  `rolename` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '采编人员');
INSERT INTO `role` VALUES ('3', '约稿人员');
INSERT INTO `role` VALUES ('4', '主编');

-- ----------------------------
-- Table structure for `rolepowerrelation`
-- ----------------------------
DROP TABLE IF EXISTS `rolepowerrelation`;
CREATE TABLE `rolepowerrelation` (
  `id` int(11) NOT NULL auto_increment,
  `roleid` int(20) NOT NULL,
  `fpowerid` int(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolepowerrelation
-- ----------------------------
INSERT INTO `rolepowerrelation` VALUES ('1', '1', '1');
INSERT INTO `rolepowerrelation` VALUES ('2', '1', '2');
INSERT INTO `rolepowerrelation` VALUES ('3', '1', '3');
INSERT INTO `rolepowerrelation` VALUES ('4', '1', '4');
INSERT INTO `rolepowerrelation` VALUES ('5', '1', '5');
INSERT INTO `rolepowerrelation` VALUES ('6', '1', '6');
INSERT INTO `rolepowerrelation` VALUES ('7', '1', '7');
INSERT INTO `rolepowerrelation` VALUES ('8', '1', '8');
INSERT INTO `rolepowerrelation` VALUES ('9', '2', '4');
INSERT INTO `rolepowerrelation` VALUES ('10', '2', '2');
INSERT INTO `rolepowerrelation` VALUES ('11', '2', '3');
INSERT INTO `rolepowerrelation` VALUES ('13', '2', '8');
INSERT INTO `rolepowerrelation` VALUES ('14', '3', '2');
INSERT INTO `rolepowerrelation` VALUES ('15', '3', '3');
INSERT INTO `rolepowerrelation` VALUES ('16', '3', '5');
INSERT INTO `rolepowerrelation` VALUES ('17', '3', '8');
INSERT INTO `rolepowerrelation` VALUES ('18', '4', '2');
INSERT INTO `rolepowerrelation` VALUES ('19', '4', '3');
INSERT INTO `rolepowerrelation` VALUES ('20', '4', '8');
INSERT INTO `rolepowerrelation` VALUES ('21', '4', '6');
INSERT INTO `rolepowerrelation` VALUES ('22', '2', '7');

-- ----------------------------
-- Table structure for `secondpower`
-- ----------------------------
DROP TABLE IF EXISTS `secondpower`;
CREATE TABLE `secondpower` (
  `id` int(4) NOT NULL auto_increment,
  `firstpowerid` int(4) NOT NULL,
  `secondpowername` varchar(20) NOT NULL,
  `href` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secondpower
-- ----------------------------
INSERT INTO `secondpower` VALUES ('1', '1', '人员管理', 'User/index.jsp');
INSERT INTO `secondpower` VALUES ('2', '1', '角色管理', 'Role/inde.jsp');
INSERT INTO `secondpower` VALUES ('3', '1', '菜单管理', 'Resource/index.jsp');
INSERT INTO `secondpower` VALUES ('4', '2', '发邮件', 'Email/sendemail.jsp');
INSERT INTO `secondpower` VALUES ('5', '2', '发件箱', 'Email/giveemail.jsp');
INSERT INTO `secondpower` VALUES ('6', '2', '收件箱', 'Email/receiveemail.jsp');
INSERT INTO `secondpower` VALUES ('7', '3', '内部通讯录', 'AddressList/index.jsp');
INSERT INTO `secondpower` VALUES ('8', '3', '个人通讯录', 'AddressList/index2.jsp');
INSERT INTO `secondpower` VALUES ('9', '4', '待回应约稿', 'MyManuscripts/index.jsp');
INSERT INTO `secondpower` VALUES ('10', '4', '待提交约稿', 'MyManuscripts/index2.jsp');
INSERT INTO `secondpower` VALUES ('11', '4', '已提交约稿', 'MyManuscripts/index3.jsp');
INSERT INTO `secondpower` VALUES ('12', '5', '已发布约稿', 'Manuscripts/listinfo.jsp');
INSERT INTO `secondpower` VALUES ('13', '5', '待审核约稿', 'Manuscripts/listinfo2.jsp');
INSERT INTO `secondpower` VALUES ('14', '5', '已审核约稿', 'Manuscripts/listinfo3.jsp');
INSERT INTO `secondpower` VALUES ('15', '6', '二次审核稿件', 'Journal/listinfo.jsp');
INSERT INTO `secondpower` VALUES ('16', '7', '我的稿件', 'MyFile/filelist.jsp');
INSERT INTO `secondpower` VALUES ('17', '8', '基本信息', 'Self/selfinfo.jsp');
INSERT INTO `secondpower` VALUES ('18', '8', '修改密码', 'Self/password.jsp');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `realname` varchar(20) default NULL,
  `sex` char(1) default NULL,
  `birthday` date default NULL,
  `age` int(4) default NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `status` int(1) NOT NULL,
  `roleid` int(1) NOT NULL,
  `credit` double(4,3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '222222', '一一', '女', '1993-01-01', '32', 'a', 'hfajdkfadwewqe', '1@qq.com', '1', '1', null);
INSERT INTO `user` VALUES ('2', 'caibian', '2222222', '二二', '男', '1993-01-01', '23', 'b', '阿凡达激发对方fankdsfksd', '2@qq.com', '1', '2', '0.982');
INSERT INTO `user` VALUES ('3', 'yuegao', '222222', '三三', '男', '2017-04-13', '32', 'c', null, '3@qq.com', '1', '3', null);
INSERT INTO `user` VALUES ('4', 'zhubian', '222222', '四四', '男', '2017-04-23', '32', 'd', null, '4@qq.com', '1', '4', null);
INSERT INTO `user` VALUES ('5', 'c2', '222222', '22', '女', '2017-09-23', '22', 'd', 'fsd', '5@qqcom', '1', '2', '0.880');
INSERT INTO `user` VALUES ('6', 'sdasj', 'fejwef', '22', '女', '1992-09-02', '22', 'd', 'dsfsdf', '6@qq/com', '1', '3', null);
