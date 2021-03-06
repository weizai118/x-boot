/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : xboot

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-05-07 16:56:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `access` int(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` bit(1) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('5129710648430592', null, '2018-05-05 17:56:01', '0', null, '2018-05-05 17:56:01', null, 'Main', 'ios-gear', 'sys', '', '', '/form', '系统管理');
INSERT INTO `t_menu` VALUES ('5180911259750400', null, '2018-05-05 21:19:26', '0', null, '2018-05-05 21:19:26', null, 'sys/user-manage/userManage', 'android-person', 'user-manage', '\0', '5129710648430592', 'user-manage', '用户管理');
INSERT INTO `t_menu` VALUES ('5180911259750401', null, '2018-05-06 15:35:49', '0', null, '2018-05-06 15:35:53', null, 'sys/role-manage/roleManage', 'android-contacts', 'role-manage', '\0', '5129710648430592', 'role-manage', '角色管理');
INSERT INTO `t_menu` VALUES ('5180911259750402', null, '2018-05-06 15:37:13', '0', null, '2018-05-06 15:37:17', null, 'sys/menu-manage/menuManage', 'navicon-round', 'menu-manage', '\0', '5129710648430592', 'menu-manage', '菜单管理');
INSERT INTO `t_menu` VALUES ('5180911259750403', null, '2018-05-06 15:38:17', '0', null, '2018-05-06 15:38:21', null, 'sys/log-manage/logManage', 'android-list', 'log-manage', '\0', '5129710648430592', 'log-manage', '日志管理');
INSERT INTO `t_menu` VALUES ('5469445191372800', null, '2018-05-06 16:25:58', '0', null, '2018-05-06 16:25:58', null, 'Main', 'key', 'access', '', '', '/access', '权限管理');
INSERT INTO `t_menu` VALUES ('5470922253275136', null, '2018-05-06 16:31:50', '0', null, '2018-05-06 16:31:50', null, 'access/access', 'locked', 'access_index', '\0', '5469445191372800', 'index', '权限管理');
INSERT INTO `t_menu` VALUES ('5471478141161472', null, '2018-05-06 16:34:03', '0', null, '2018-05-06 16:34:03', '0', 'Main', 'lock-combination', 'accesstest', '', '', '/access-test', '权限测试页');
INSERT INTO `t_menu` VALUES ('5472290074529792', '', '2018-05-06 16:37:16', '0', '', '2018-05-06 16:45:21', '0', 'access/access-test', 'alert-circled', 'accesstest_index', '\0', '5471478141161472', 'index', '权限测试页');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('496138616573952', '', '2018-04-22 23:03:49', '', '2018-05-04 12:56:23', 'ROLE_ADMIN', '0', '0');
INSERT INTO `t_role` VALUES ('496138616573953', '', '2018-05-02 21:40:03', '', '2018-05-04 13:11:59', 'ROLE_USER', '0', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('682265633886208', '', '2018-05-01 16:13:51', '', '2018-05-02 21:02:28', '[\"510000\",\"510100\",\"510104\"]', 'http://ow2h3ee9w.bkt.clouddn.com/%E4%B8%8B%E8%BD%BD.png', 'null', '1012139570@qq.com', '18782059038', 'null', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '1', '0', '1', 'admin', '0');
INSERT INTO `t_user` VALUES ('7', 'null', '2018-04-30 23:28:42', 'null', '2018-05-03 15:48:14', 'null', 'null', 'null', '', '', 'null', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '0', '-1', '1', 'xhy', '0');
INSERT INTO `t_user` VALUES ('4363087427670016', '', '2018-05-03 15:09:42', '', '2018-05-03 16:06:55', '', 'http://ow2h3ee9w.bkt.clouddn.com/%E4%B8%8B%E8%BD%BD.png', '', '1012139570@qq.com', '18782059038', '', '$2a$10$O0V2GlON6OHeUinx8CsJYOt1xQbD8/rjQ1ZuqPaQo5v600jwW7Uem', '1', '0', '0', 'test', '0');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('4111483902365696', null, '2018-05-02 22:29:55', '0', null, '2018-05-02 22:29:55', '496138616573952', '10');
INSERT INTO `t_user_role` VALUES ('4121238364491776', null, '2018-05-02 23:08:40', '0', null, '2018-05-02 23:08:40', '496138616573953', '6');
INSERT INTO `t_user_role` VALUES ('4122685630058496', null, '2018-05-02 23:14:25', '0', null, '2018-05-02 23:14:25', '496138616573952', '7');
INSERT INTO `t_user_role` VALUES ('4122685667807232', null, '2018-05-02 23:14:25', '0', null, '2018-05-02 23:14:25', '496138616573953', '7');
INSERT INTO `t_user_role` VALUES ('4318102581940224', null, '2018-05-03 12:10:56', '0', null, '2018-05-03 12:10:56', '496138616573952', '8');
INSERT INTO `t_user_role` VALUES ('4365473638518784', null, '2018-05-03 15:19:11', '0', null, '2018-05-03 15:19:11', '496138616573953', '4363087427670016');
INSERT INTO `t_user_role` VALUES ('4823554205945856', null, '2018-05-04 21:39:25', '0', null, '2018-05-04 21:39:25', '496138616573952', '682265633886208');
