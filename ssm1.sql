/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : ssm1

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-12-19 01:03:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '操作ID',
  `parent_id` int(10) DEFAULT NULL COMMENT '父级资源',
  `type` varchar(255) NOT NULL COMMENT '资源类型: 0:目录;1:菜单;2:按钮',
  `source_url` varchar(255) DEFAULT NULL COMMENT '资源链接',
  `key` varchar(200) NOT NULL COMMENT '操作简称',
  `name` varchar(200) NOT NULL COMMENT '操作名称',
  `description` varchar(400) DEFAULT NULL COMMENT '操作说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_resource
-- ----------------------------

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `name` varchar(200) NOT NULL COMMENT '权限中文标示',
  `description` varchar(255) DEFAULT NULL COMMENT '角色说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '111', '11111');

-- ----------------------------
-- Table structure for tb_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_resource`;
CREATE TABLE `tb_role_resource` (
  `id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `resource_id` int(10) NOT NULL,
  KEY `role_id_fk1` (`role_id`),
  KEY `resource_id_fk1` (`resource_id`),
  CONSTRAINT `role_id_fk1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `resource_id_fk1` FOREIGN KEY (`resource_id`) REFERENCES `tb_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '用户密码',
  `sex` int(1) DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `telephone` int(11) DEFAULT NULL COMMENT '电话',
  `email` varchar(200) NOT NULL COMMENT '用户邮箱',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '', '', null, null, null, '', '2016-12-18 23:13:39', null);
INSERT INTO `tb_user` VALUES ('2', '', '', null, null, null, '', '2016-12-18 23:20:36', null);
INSERT INTO `tb_user` VALUES ('3', '', '', null, null, null, '', '2016-12-18 23:29:12', null);
INSERT INTO `tb_user` VALUES ('4', '', '', null, null, null, '', '2016-12-18 23:36:52', null);
INSERT INTO `tb_user` VALUES ('5', '', '', null, null, null, '', '2016-12-19 00:15:05', null);
INSERT INTO `tb_user` VALUES ('6', '', '', null, null, null, '', '2016-12-19 00:21:41', null);
INSERT INTO `tb_user` VALUES ('7', '', '', null, null, null, '', '2016-12-19 00:23:25', null);
INSERT INTO `tb_user` VALUES ('8', '', '', null, null, null, '', '2016-12-19 00:29:31', null);
INSERT INTO `tb_user` VALUES ('9', '', '', null, null, null, '', '2016-12-19 00:30:43', null);
INSERT INTO `tb_user` VALUES ('10', '', '', null, null, null, '', '2016-12-19 00:31:46', null);
INSERT INTO `tb_user` VALUES ('11', '', '', null, null, null, '', '2016-12-19 00:36:03', null);
INSERT INTO `tb_user` VALUES ('12', '', '', null, null, null, '', '2016-12-19 00:47:25', null);
INSERT INTO `tb_user` VALUES ('13', '', '', null, null, null, '', '2016-12-19 00:54:57', null);
INSERT INTO `tb_user` VALUES ('14', '', '', null, null, null, '', '2016-12-19 00:59:44', null);
INSERT INTO `tb_user` VALUES ('15', '', '', null, null, null, '', '2016-12-19 01:02:21', null);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_fk` (`user_id`),
  KEY `role_id_fk` (`role_id`),
  CONSTRAINT `role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('5', '10', '1');
INSERT INTO `tb_user_role` VALUES ('6', '11', '1');
INSERT INTO `tb_user_role` VALUES ('7', '12', '1');
INSERT INTO `tb_user_role` VALUES ('8', '13', '1');
INSERT INTO `tb_user_role` VALUES ('9', '14', '1');
INSERT INTO `tb_user_role` VALUES ('10', '15', '1');
