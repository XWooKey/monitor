/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : ssm1

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-12-22 01:11:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '操作ID',
  `parent_id` int(10) DEFAULT NULL COMMENT '父级资源',
  `has_child` int(10) DEFAULT NULL,
  `type` varchar(255) NOT NULL COMMENT '资源类型: 0:目录;1:菜单;2:按钮',
  `source_url` varchar(255) DEFAULT NULL COMMENT '资源链接',
  `key` varchar(200) NOT NULL COMMENT '操作简称',
  `name` varchar(200) NOT NULL COMMENT '操作名称',
  `icon` varchar(200) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL COMMENT '操作说明',
  PRIMARY KEY (`id`),
  KEY `parent_id_fk` (`parent_id`),
  CONSTRAINT `parent_id_fk` FOREIGN KEY (`parent_id`) REFERENCES `tb_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('19', null, '1', '0', 'null', 'SysManage', '系统管理', 'fa fa-desktop', '系统管理');
INSERT INTO `tb_resource` VALUES ('20', '40', '0', '1', '/BaseManage/Organize/Index', 'OrganizeManage', '机构管理', 'fa fa-sitemap', '机构管理');
INSERT INTO `tb_resource` VALUES ('21', '19', '0', '1', '/SystemManage/Area/Index', 'AreaManage', '行政区域', 'fa fa-leaf', '行政区域');
INSERT INTO `tb_resource` VALUES ('22', '60', '0', '1', '/SystemManage/DataBaseLink/Index', 'DataBaseLink', '数据库连接', 'fa fa-plug', '数据库连接');
INSERT INTO `tb_resource` VALUES ('23', '42', '0', '1', '/FlowManage/FlowLaunch/Index', '发起流程', '发起流程', 'fa fa-edit', '发起流程');
INSERT INTO `tb_resource` VALUES ('24', '67', '0', '1', '/WeChatManage/Token/Index', '企业号设置', '企业号设置', 'fa fa-plug', '企业号设置');
INSERT INTO `tb_resource` VALUES ('25', '81', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=FormSort', 'FormCategory', '表单类别', 'fa fa-tags', '表单类别');
INSERT INTO `tb_resource` VALUES ('26', '71', '1', '0', 'null', 'ClientBaseData', '基础设置', 'fa fa fa-book', '基础设置');
INSERT INTO `tb_resource` VALUES ('27', '61', '0', '1', '/ReportManage/Report/Index', 'ReportTemp', '报表管理', 'fa fa-cogs', '报表管理');
INSERT INTO `tb_resource` VALUES ('28', '62', '0', '1', '/PublicInfoManage/News/Index', 'NewManage', '新闻中心', 'fa fa-feed', '新闻中心');
INSERT INTO `tb_resource` VALUES ('29', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_ProductInfo', 'Client_ProductInfo', '产品信息', 'fa fa-shopping-bag', '产品信息');
INSERT INTO `tb_resource` VALUES ('30', '85', '0', '1', '/FlowManage/FlowProcess/MonitoringIndex', 'FlowMonitor', '流程监控', 'fa fa-eye', '流程监控');
INSERT INTO `tb_resource` VALUES ('31', '62', '0', '1', '/PublicInfoManage/Notice/Index', 'NoticeManage', '通知公告', 'fa fa-volume-up', '通知公告');
INSERT INTO `tb_resource` VALUES ('32', '71', '0', '1', '/CustomerManage/Chance/Index', 'ClientChance', '商机管理', 'fa fa-binoculars', '商机管理');
INSERT INTO `tb_resource` VALUES ('33', '61', '0', '1', '/ReportManage/ReportDemo/Purchase', 'PurchaseReport', '采购报表', 'fa fa-bar-chart', '采购报表');
INSERT INTO `tb_resource` VALUES ('34', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_Trade', 'Client_Trade', '客户行业', 'fa fa-tag', '客户行业');
INSERT INTO `tb_resource` VALUES ('35', '67', '0', '1', '/WeChatManage/Organize/Index', '企业号部门', '企业号部门', 'fa fa-sitemap', '企业号部门');
INSERT INTO `tb_resource` VALUES ('36', '81', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=FlowSort', 'FlowCategory', '流程类别', 'fa fa-tags', '流程类别');
INSERT INTO `tb_resource` VALUES ('37', '60', '0', '1', '/SystemManage/DataBaseBackup/Index', 'DataBaseBackup', '数据库备份', 'fa fa-cloud-download', '数据库备份');
INSERT INTO `tb_resource` VALUES ('38', '42', '0', '1', '/FlowManage/FlowRoughdraft/Index', '草稿流程', '草稿流程', 'fa fa-file-text-o', '草稿流程');
INSERT INTO `tb_resource` VALUES ('39', '40', '0', '1', '/BaseManage/Department/Index', 'DepartmentManage', '部门管理', 'fa fa-th-list', '部门管理');
INSERT INTO `tb_resource` VALUES ('40', null, '1', '0', 'null', 'BaseManage', '单位组织', 'fa fa-coffee', '单位组织');
INSERT INTO `tb_resource` VALUES ('41', '19', '0', '1', '/SystemManage/DataItemDetail/Index', 'DataItemManage', '通用字典', 'fa fa-book', '通用字典');
INSERT INTO `tb_resource` VALUES ('42', null, '1', '0', 'null', 'FlowManage', '工作流程', 'fa fa-share-alt', '工作流程');
INSERT INTO `tb_resource` VALUES ('43', '19', '0', '1', '/SystemManage/CodeRule/Index', 'CodeRule', '单据编码', 'fa fa-barcode', '单据编码');
INSERT INTO `tb_resource` VALUES ('44', '40', '0', '1', '/BaseManage/Role/Index', 'RoleManage', '角色管理', 'fa fa-paw', '角色管理');
INSERT INTO `tb_resource` VALUES ('45', '81', '0', '1', '/FlowManage/FormDesign/Index', 'FormDesign', '表单设计', 'fa fa-puzzle-piece', '表单设计');
INSERT INTO `tb_resource` VALUES ('46', '67', '0', '1', '/WeChatManage/User/Index', '企业号成员', '企业号成员', 'fa fa-users', '企业号成员');
INSERT INTO `tb_resource` VALUES ('47', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_Sort', 'Client_Sort', '客户类别', 'fa fa-tag', '客户类别');
INSERT INTO `tb_resource` VALUES ('48', '61', '0', '1', '/ReportManage/ReportDemo/Sales', 'SalesReport', '销售报表', 'fa fa-line-chart', '销售报表');
INSERT INTO `tb_resource` VALUES ('49', '42', '0', '1', '/FlowManage/FlowMyProcess/Index', '我的流程', '我的流程', 'fa fa-file-word-o', '我的流程');
INSERT INTO `tb_resource` VALUES ('50', '71', '0', '1', '/CustomerManage/Customer/Index', 'ClientInfoManage', '客户管理', 'fa fa-suitcase', '客户管理');
INSERT INTO `tb_resource` VALUES ('51', '62', '0', '1', '/PublicInfoManage/ResourceFile/Index', 'ResourceFileManage', '文件资料', 'fa fa-jsfiddle', '文件资料');
INSERT INTO `tb_resource` VALUES ('52', '60', '0', '1', '/SystemManage/DataBaseTable/Index', 'DataBaseTable', '数据表管理', 'fa fa-table', '数据表管理');
INSERT INTO `tb_resource` VALUES ('53', '85', '0', '1', '/FlowManage/FlowProcess/DesignationIndex', 'FlowDelegate', '流程指派', 'fa fa-random', '流程指派');
INSERT INTO `tb_resource` VALUES ('54', '61', '0', '1', '/ReportManage/ReportDemo/Store', 'StorageReport', '仓存报表', 'fa fa-area-chart', '仓存报表');
INSERT INTO `tb_resource` VALUES ('55', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_Degree', 'Client_Degree', '客户程度', 'fa fa-tag', '客户程度');
INSERT INTO `tb_resource` VALUES ('56', '71', '0', '1', '/CustomerManage/Invoice/Index', 'ClientInvoice', '客户开票', 'fa fa-coffee', '客户开票');
INSERT INTO `tb_resource` VALUES ('57', '67', '0', '1', '/WeChatManage/App/Index', '企业号应用', '企业号应用', 'fa fa-safari', '企业号应用');
INSERT INTO `tb_resource` VALUES ('58', '81', '0', '1', '/FlowManage/FlowDesign/Index', 'FlowDesign', '流程设计', 'fa fa-share-alt', '流程设计');
INSERT INTO `tb_resource` VALUES ('59', '42', '0', '1', '/FlowManage/FlowBeforeProcessing/Index', '待办流程', '待办流程', 'fa fa-hourglass-half', '待办流程');
INSERT INTO `tb_resource` VALUES ('60', '19', '1', '0', 'null', 'DatabaseManage', '数据管理', 'fa fa-database', '数据管理');
INSERT INTO `tb_resource` VALUES ('61', null, '1', '0', 'null', 'ReportManage', '报表中心', 'fa fa-area-chart', '报表中心');
INSERT INTO `tb_resource` VALUES ('62', null, '1', '0', 'null', 'CommonInfo', '公共信息', 'fa fa-globe', '公共信息');
INSERT INTO `tb_resource` VALUES ('63', '40', '0', '1', '/BaseManage/Post/Index', 'PostManage', '岗位管理', 'fa fa-graduation-cap', '岗位管理');
INSERT INTO `tb_resource` VALUES ('64', '42', '0', '1', '/FlowManage/FlowAferProcessing/Index', '已办流程', '已办流程', 'fa fa-flag', '已办流程');
INSERT INTO `tb_resource` VALUES ('65', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_Level', 'Client_Level', '客户级别', 'fa fa-tag', '客户级别');
INSERT INTO `tb_resource` VALUES ('66', '71', '0', '1', '/CustomerManage/Order/Index', 'ClientOrder', '客户订单', 'fa fa-modx', '客户订单');
INSERT INTO `tb_resource` VALUES ('67', '19', '1', '0', 'null', 'WeChatManage', '微信管理', 'fa fa-weixin', '微信管理');
INSERT INTO `tb_resource` VALUES ('68', '61', '0', '1', '/ReportManage/ReportDemo/Reconciliation', 'MoneyReport', '对账报表', 'fa fa-pie-chart', '对账报表');
INSERT INTO `tb_resource` VALUES ('69', '62', '0', '1', '/PublicInfoManage/Email/Index', 'EmailManage', '邮件中心', 'fa fa-send', '邮件中心');
INSERT INTO `tb_resource` VALUES ('70', '62', '0', '1', '/PublicInfoManage/Schedule/Index', 'ScheduleManage', '日程管理', 'fa fa-calendar', '日程管理');
INSERT INTO `tb_resource` VALUES ('71', null, '1', '0', 'null', 'CustomerManage', '客户关系', 'fa fa-briefcase', '客户关系');
INSERT INTO `tb_resource` VALUES ('72', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_ChanceSource', 'Client_ChanceSource', '商机来源', 'fa fa-tag', '商机来源');
INSERT INTO `tb_resource` VALUES ('73', '71', '0', '1', '/CustomerManage/Receivable/Index', 'ClienReceivable', '收款管理', 'fa fa-money', '收款管理');
INSERT INTO `tb_resource` VALUES ('74', '42', '0', '1', '/FlowManage/FlowDelegate/Index', '工作委托', '工作委托', 'fa fa-coffee', '工作委托');
INSERT INTO `tb_resource` VALUES ('75', '40', '0', '1', '/BaseManage/Job/Index', 'JobManage', '职位管理', 'fa fa-briefcase', '职位管理');
INSERT INTO `tb_resource` VALUES ('76', '19', '0', '1', '/SystemManage/Log/Index', 'SystemLog', '系统日志', 'fa fa-warning', '系统日志');
INSERT INTO `tb_resource` VALUES ('77', '40', '0', '1', '/BaseManage/UserGroup/Index', 'UserGroupManage', '用户组管理', 'fa fa-group', '用户组管理');
INSERT INTO `tb_resource` VALUES ('78', '19', '0', '1', '/AuthorizeManage/Module/Index', 'SystemModule', '系统功能', 'fa fa-navicon', '系统功能');
INSERT INTO `tb_resource` VALUES ('79', '71', '0', '1', '/CustomerManage/ReceivableReport/Index', 'ClienReceivableReport', '收款报表', 'fa fa-bar-chart', '收款报表');
INSERT INTO `tb_resource` VALUES ('80', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_ChancePhase', 'Client_ChancePhase', '商机阶段', 'fa fa-tag', '商机阶段');
INSERT INTO `tb_resource` VALUES ('81', '42', '1', '0', 'null', '流程配置', '流程配置', 'fa fa-wrench', '流程配置');
INSERT INTO `tb_resource` VALUES ('82', '19', '0', '1', '/AuthorizeManage/ModuleForm/Index', 'SystemForm', '系统表单', 'fa fa-paw', '系统表单');
INSERT INTO `tb_resource` VALUES ('83', '71', '0', '1', '/CustomerManage/Expenses/Index', 'ClienExpenses', '支出管理', 'fa fa-credit-card-alt', '支出管理');
INSERT INTO `tb_resource` VALUES ('84', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_PaymentMode', 'Client_PaymentMode', '收支方式', 'fa fa-tag', '收支方式');
INSERT INTO `tb_resource` VALUES ('85', '42', '1', '0', 'null', 'FlowManage', '流程管理', 'fa fa-cogs', '流程管理');
INSERT INTO `tb_resource` VALUES ('86', '19', '0', '1', '/GeneratorManage/Template/Index', 'CodeCreate', '快速开发', 'fa fa-code', '快速开发');
INSERT INTO `tb_resource` VALUES ('87', '40', '0', '1', '/BaseManage/User/Index', 'UserManage', '用户管理', 'fa fa-user', '用户管理');
INSERT INTO `tb_resource` VALUES ('88', '19', '0', '1', '/AppManage/AppProjects/Index', 'AppCreate', '移动开发', 'fa fa-file-code-o', '移动开发');
INSERT INTO `tb_resource` VALUES ('89', '71', '0', '1', '/CustomerManage/CashBalanceReport/Index', 'ClienCashBalanceReport', '现金报表', 'fa fa-bar-chart', '现金报表');
INSERT INTO `tb_resource` VALUES ('90', '61', '0', '1', '/ReportManage/Report/ReportPreview?keyValue=a9762855-cd45-4815-a8e1-c8b818f79ad5', 'rpt001', '销售日报表', 'fa fa-pie-chart', '销售日报表');
INSERT INTO `tb_resource` VALUES ('91', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_PaymentAccount', 'Client_PaymentAccount', '收支账户', 'fa fa-tag', '收支账户');
INSERT INTO `tb_resource` VALUES ('92', '26', '0', '1', '/SystemManage/DataItemList/Index?ItemCode=Client_ExpensesType', 'Client_ExpensesType', '支出种类', 'fa fa-tag', '支出种类');

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
INSERT INTO `tb_role` VALUES ('1', '系统管理员', '系统管理员');

-- ----------------------------
-- Table structure for tb_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_resource`;
CREATE TABLE `tb_role_resource` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL,
  `resource_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id_fk1` (`role_id`),
  KEY `resource_id_fk1` (`resource_id`),
  CONSTRAINT `resource_id_fk1` FOREIGN KEY (`resource_id`) REFERENCES `tb_resource` (`id`),
  CONSTRAINT `role_id_fk1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_resource
-- ----------------------------
INSERT INTO `tb_role_resource` VALUES ('6', '1', '19');
INSERT INTO `tb_role_resource` VALUES ('7', '1', '20');
INSERT INTO `tb_role_resource` VALUES ('8', '1', '21');
INSERT INTO `tb_role_resource` VALUES ('9', '1', '22');
INSERT INTO `tb_role_resource` VALUES ('10', '1', '23');
INSERT INTO `tb_role_resource` VALUES ('11', '1', '24');
INSERT INTO `tb_role_resource` VALUES ('12', '1', '25');
INSERT INTO `tb_role_resource` VALUES ('13', '1', '26');
INSERT INTO `tb_role_resource` VALUES ('14', '1', '27');
INSERT INTO `tb_role_resource` VALUES ('15', '1', '28');
INSERT INTO `tb_role_resource` VALUES ('16', '1', '29');
INSERT INTO `tb_role_resource` VALUES ('17', '1', '30');
INSERT INTO `tb_role_resource` VALUES ('18', '1', '31');
INSERT INTO `tb_role_resource` VALUES ('19', '1', '32');
INSERT INTO `tb_role_resource` VALUES ('20', '1', '33');
INSERT INTO `tb_role_resource` VALUES ('21', '1', '34');
INSERT INTO `tb_role_resource` VALUES ('22', '1', '35');
INSERT INTO `tb_role_resource` VALUES ('23', '1', '36');
INSERT INTO `tb_role_resource` VALUES ('24', '1', '37');
INSERT INTO `tb_role_resource` VALUES ('25', '1', '38');
INSERT INTO `tb_role_resource` VALUES ('26', '1', '39');
INSERT INTO `tb_role_resource` VALUES ('27', '1', '40');
INSERT INTO `tb_role_resource` VALUES ('28', '1', '41');
INSERT INTO `tb_role_resource` VALUES ('29', '1', '42');
INSERT INTO `tb_role_resource` VALUES ('30', '1', '43');
INSERT INTO `tb_role_resource` VALUES ('31', '1', '44');
INSERT INTO `tb_role_resource` VALUES ('32', '1', '45');
INSERT INTO `tb_role_resource` VALUES ('33', '1', '46');
INSERT INTO `tb_role_resource` VALUES ('34', '1', '47');
INSERT INTO `tb_role_resource` VALUES ('35', '1', '48');
INSERT INTO `tb_role_resource` VALUES ('36', '1', '49');
INSERT INTO `tb_role_resource` VALUES ('37', '1', '50');
INSERT INTO `tb_role_resource` VALUES ('38', '1', '51');
INSERT INTO `tb_role_resource` VALUES ('39', '1', '52');
INSERT INTO `tb_role_resource` VALUES ('40', '1', '53');
INSERT INTO `tb_role_resource` VALUES ('41', '1', '54');
INSERT INTO `tb_role_resource` VALUES ('42', '1', '55');
INSERT INTO `tb_role_resource` VALUES ('43', '1', '56');
INSERT INTO `tb_role_resource` VALUES ('44', '1', '57');
INSERT INTO `tb_role_resource` VALUES ('45', '1', '58');
INSERT INTO `tb_role_resource` VALUES ('46', '1', '59');
INSERT INTO `tb_role_resource` VALUES ('47', '1', '60');
INSERT INTO `tb_role_resource` VALUES ('48', '1', '61');
INSERT INTO `tb_role_resource` VALUES ('49', '1', '62');
INSERT INTO `tb_role_resource` VALUES ('50', '1', '63');
INSERT INTO `tb_role_resource` VALUES ('51', '1', '64');
INSERT INTO `tb_role_resource` VALUES ('52', '1', '65');
INSERT INTO `tb_role_resource` VALUES ('53', '1', '66');
INSERT INTO `tb_role_resource` VALUES ('54', '1', '67');
INSERT INTO `tb_role_resource` VALUES ('55', '1', '68');
INSERT INTO `tb_role_resource` VALUES ('56', '1', '69');
INSERT INTO `tb_role_resource` VALUES ('57', '1', '70');
INSERT INTO `tb_role_resource` VALUES ('58', '1', '71');
INSERT INTO `tb_role_resource` VALUES ('59', '1', '72');
INSERT INTO `tb_role_resource` VALUES ('60', '1', '73');
INSERT INTO `tb_role_resource` VALUES ('61', '1', '74');
INSERT INTO `tb_role_resource` VALUES ('62', '1', '75');
INSERT INTO `tb_role_resource` VALUES ('63', '1', '76');
INSERT INTO `tb_role_resource` VALUES ('64', '1', '77');
INSERT INTO `tb_role_resource` VALUES ('65', '1', '78');
INSERT INTO `tb_role_resource` VALUES ('66', '1', '79');
INSERT INTO `tb_role_resource` VALUES ('67', '1', '80');
INSERT INTO `tb_role_resource` VALUES ('68', '1', '81');
INSERT INTO `tb_role_resource` VALUES ('69', '1', '82');
INSERT INTO `tb_role_resource` VALUES ('70', '1', '83');
INSERT INTO `tb_role_resource` VALUES ('71', '1', '84');
INSERT INTO `tb_role_resource` VALUES ('72', '1', '85');
INSERT INTO `tb_role_resource` VALUES ('73', '1', '86');
INSERT INTO `tb_role_resource` VALUES ('74', '1', '87');
INSERT INTO `tb_role_resource` VALUES ('75', '1', '88');
INSERT INTO `tb_role_resource` VALUES ('76', '1', '89');
INSERT INTO `tb_role_resource` VALUES ('77', '1', '90');
INSERT INTO `tb_role_resource` VALUES ('78', '1', '91');
INSERT INTO `tb_role_resource` VALUES ('79', '1', '92');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('26', '22', '22', '2', '2016-05-05 00:00:00', '2', '2', '2016-12-19 13:46:38', null);
INSERT INTO `tb_user` VALUES ('27', '55', '11', '1', '2016-05-05 00:00:00', '11', '11', '2016-12-19 14:16:22', null);
INSERT INTO `tb_user` VALUES ('28', '11', '11', '1', '2016-05-05 00:00:00', '1', '1', '2016-12-19 14:42:45', null);
INSERT INTO `tb_user` VALUES ('29', '555', '5', '5', '2016-05-05 00:00:00', '43', '3', '2016-12-19 14:56:58', null);
INSERT INTO `tb_user` VALUES ('30', '33', '33', '3', '0000-00-00 00:00:00', '33', '3', '2016-12-20 17:12:49', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('21', '26', '1');
INSERT INTO `tb_user_role` VALUES ('22', '27', '1');
INSERT INTO `tb_user_role` VALUES ('23', '28', '1');
INSERT INTO `tb_user_role` VALUES ('24', '29', '1');
INSERT INTO `tb_user_role` VALUES ('25', '30', '1');
