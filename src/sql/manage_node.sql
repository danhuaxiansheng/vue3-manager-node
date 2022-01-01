/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : manage_node

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 01/01/2022 21:46:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_common_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_common_config`;
CREATE TABLE `tb_common_config`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_common_config
-- ----------------------------
INSERT INTO `tb_common_config` VALUES (1, 'password', '79010e2bba4fcfb1b2bc150b8f17e030', '2021-12-27 17:25:08', NULL);
INSERT INTO `tb_common_config` VALUES (2, 'logintimes', '5', '2021-12-27 17:25:08', NULL);

-- ----------------------------
-- Table structure for tb_language
-- ----------------------------
DROP TABLE IF EXISTS `tb_language`;
CREATE TABLE `tb_language`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_language
-- ----------------------------
INSERT INTO `tb_language` VALUES (1, '2021-12-27 17:04:18', '华语', NULL);
INSERT INTO `tb_language` VALUES (2, '2021-12-27 17:04:34', '美国', NULL);
INSERT INTO `tb_language` VALUES (3, '2021-12-27 17:04:50', '欧洲', NULL);
INSERT INTO `tb_language` VALUES (4, '2021-12-27 17:04:55', '日本', NULL);
INSERT INTO `tb_language` VALUES (5, '2021-12-27 17:05:28', '韩国', NULL);
INSERT INTO `tb_language` VALUES (6, '2021-12-27 17:05:42', '泰国', NULL);
INSERT INTO `tb_language` VALUES (7, '2021-12-27 17:05:45', '印度', NULL);
INSERT INTO `tb_language` VALUES (8, '2021-12-27 17:05:51', '其他', NULL);

-- ----------------------------
-- Table structure for tb_means
-- ----------------------------
DROP TABLE IF EXISTS `tb_means`;
CREATE TABLE `tb_means`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `readtimes` int(0) UNSIGNED NOT NULL COMMENT '阅读次数',
  `goodtimes` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '点赞次数',
  `badtimes` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '踩次数',
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_means
-- ----------------------------

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路径别名',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板路径',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '重定向路径',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '页面名称',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '外链路径',
  `isHide` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '导航栏是否展示',
  `isKeepAlive` tinyint(0) UNSIGNED NULL DEFAULT 1 COMMENT '保持活跃',
  `isAffix` tinyint(0) UNSIGNED NULL DEFAULT NULL,
  `isIframe` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否内嵌',
  `roleids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色列表',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标class名称',
  `pid` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '父菜单id',
  `createid` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '创建人',
  `sort` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '排序顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (5, '2021-12-31 02:51:43', '/permission', 'permission', 'Layout', NULL, '权限配置', NULL, 0, 1, NULL, 0, NULL, 'users-cog', NULL, NULL, 30);
INSERT INTO `tb_menu` VALUES (6, '2021-12-31 06:09:33', 'user', 'user', 'personnelManagement/userManagement/index.vue', NULL, '用户管理', NULL, 0, 1, NULL, 0, NULL, 'user-cog', 5, NULL, 10);
INSERT INTO `tb_menu` VALUES (7, '2021-12-31 06:10:22', 'role', 'role', 'personnelManagement/roleManagement/index.vue', NULL, '角色管理', NULL, 0, 1, NULL, 0, NULL, 'user-shield', 5, NULL, 20);
INSERT INTO `tb_menu` VALUES (8, '2021-12-31 06:13:41', 'menu', 'menu', 'personnelManagement/menuManagement/index.vue', NULL, '菜单管理', NULL, 0, 1, NULL, 0, NULL, 'dice-six', 5, NULL, 30);
INSERT INTO `tb_menu` VALUES (9, '2021-12-31 06:14:45', '/meet', 'meet', 'Layout', NULL, '资料管理', NULL, 0, 1, NULL, 0, NULL, 'tasks', NULL, NULL, 40);
INSERT INTO `tb_menu` VALUES (10, '2021-12-31 06:17:19', 'meetlist', 'meetlist', 'vab/meet/index.vue', NULL, '资料列表', NULL, 0, 1, NULL, 0, NULL, 'list', 9, NULL, 10);
INSERT INTO `tb_menu` VALUES (11, '2021-12-31 06:23:12', 'meetcreate', 'meetcreate', 'vab/meet/components/create.vue', NULL, '创建资料', NULL, 0, 1, NULL, 0, NULL, 'plus', 9, NULL, 20);
INSERT INTO `tb_menu` VALUES (12, '2021-12-31 06:24:12', 'meetedit', 'meetedit', 'vab/meet/components/edit.vue', NULL, '资料编辑', NULL, 1, 1, NULL, 0, NULL, 'file-signature', 9, NULL, 30);
INSERT INTO `tb_menu` VALUES (13, '2021-12-31 06:24:49', 'meetdetils', 'meetdetils', 'vab/meet/components/details.vue', NULL, '资料详情', NULL, 1, 1, NULL, 0, NULL, 'money-check', 9, NULL, 40);
INSERT INTO `tb_menu` VALUES (14, '2021-12-31 06:26:21', '/personalCenter', 'personalCenter', 'Layout', NULL, '个人中心', NULL, 1, 1, NULL, 0, NULL, 'street-view', NULL, NULL, 80);
INSERT INTO `tb_menu` VALUES (15, '2021-12-31 06:28:50', 'personalInfo', 'personalInfo', 'personalCenter/index.vue', NULL, '基础信息', NULL, 1, 1, NULL, 0, NULL, 'street-view', 14, NULL, 0);
INSERT INTO `tb_menu` VALUES (16, '2021-12-31 06:30:50', 'material', 'material', 'Layout', NULL, '资料', NULL, 1, 1, NULL, 0, NULL, 'box-open', NULL, NULL, 20);
INSERT INTO `tb_menu` VALUES (17, '2021-12-31 06:31:50', 'studylist', 'studylist', 'vab/study/index.vue', NULL, '学习资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', 16, NULL, 11);
INSERT INTO `tb_menu` VALUES (18, '2021-12-31 06:32:20', 'audiolist', 'audiolist', 'vab/audio/index.vue', NULL, '音频资料', NULL, 0, 1, NULL, 0, NULL, 'box-open', 16, NULL, 2);

-- ----------------------------
-- Table structure for tb_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_role`;
CREATE TABLE `tb_menu_role`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `roleid` int(0) UNSIGNED NULL DEFAULT NULL,
  `menuid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleid`(`roleid`) USING BTREE,
  INDEX `menuid`(`menuid`) USING BTREE,
  CONSTRAINT `tb_menu_role_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_menu_role_ibfk_2` FOREIGN KEY (`menuid`) REFERENCES `tb_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu_role
-- ----------------------------
INSERT INTO `tb_menu_role` VALUES (6, '2021-12-31 07:59:48', 2, 16);
INSERT INTO `tb_menu_role` VALUES (7, '2021-12-31 07:59:48', 2, 18);
INSERT INTO `tb_menu_role` VALUES (8, '2021-12-31 07:59:48', 2, 17);
INSERT INTO `tb_menu_role` VALUES (9, '2021-12-31 07:59:48', 2, 5);
INSERT INTO `tb_menu_role` VALUES (10, '2021-12-31 07:59:48', 2, 6);
INSERT INTO `tb_menu_role` VALUES (11, '2021-12-31 07:59:48', 2, 7);
INSERT INTO `tb_menu_role` VALUES (12, '2021-12-31 07:59:48', 2, 8);
INSERT INTO `tb_menu_role` VALUES (13, '2021-12-31 07:59:48', 2, 9);
INSERT INTO `tb_menu_role` VALUES (14, '2021-12-31 07:59:48', 2, 10);
INSERT INTO `tb_menu_role` VALUES (15, '2021-12-31 07:59:48', 2, 11);
INSERT INTO `tb_menu_role` VALUES (16, '2021-12-31 07:59:48', 2, 12);
INSERT INTO `tb_menu_role` VALUES (17, '2021-12-31 07:59:48', 2, 13);
INSERT INTO `tb_menu_role` VALUES (18, '2021-12-31 07:59:48', 2, 14);
INSERT INTO `tb_menu_role` VALUES (19, '2021-12-31 07:59:48', 2, 15);
INSERT INTO `tb_menu_role` VALUES (20, '2021-12-31 07:59:48', 2, 16);
INSERT INTO `tb_menu_role` VALUES (21, '2021-12-31 07:59:48', 2, 18);
INSERT INTO `tb_menu_role` VALUES (22, '2021-12-31 07:59:48', 2, 17);
INSERT INTO `tb_menu_role` VALUES (23, '2021-12-31 07:59:48', 2, 5);
INSERT INTO `tb_menu_role` VALUES (24, '2021-12-31 07:59:48', 2, 6);
INSERT INTO `tb_menu_role` VALUES (25, '2021-12-31 07:59:48', 2, 7);
INSERT INTO `tb_menu_role` VALUES (26, '2021-12-31 07:59:48', 2, 8);
INSERT INTO `tb_menu_role` VALUES (27, '2021-12-31 07:59:48', 2, 9);
INSERT INTO `tb_menu_role` VALUES (28, '2021-12-31 07:59:48', 2, 10);
INSERT INTO `tb_menu_role` VALUES (29, '2021-12-31 07:59:48', 2, 11);
INSERT INTO `tb_menu_role` VALUES (30, '2021-12-31 07:59:48', 2, 12);
INSERT INTO `tb_menu_role` VALUES (31, '2021-12-31 07:59:48', 2, 13);
INSERT INTO `tb_menu_role` VALUES (32, '2021-12-31 07:59:48', 2, 14);
INSERT INTO `tb_menu_role` VALUES (33, '2021-12-31 07:59:48', 2, 15);
INSERT INTO `tb_menu_role` VALUES (56, '2021-12-31 08:08:03', 4, 16);
INSERT INTO `tb_menu_role` VALUES (57, '2021-12-31 08:08:03', 4, 18);
INSERT INTO `tb_menu_role` VALUES (58, '2021-12-31 08:08:03', 4, 17);
INSERT INTO `tb_menu_role` VALUES (59, '2021-12-31 08:08:03', 4, 9);
INSERT INTO `tb_menu_role` VALUES (60, '2021-12-31 08:08:03', 4, 10);
INSERT INTO `tb_menu_role` VALUES (61, '2021-12-31 08:08:03', 4, 11);
INSERT INTO `tb_menu_role` VALUES (62, '2021-12-31 08:08:03', 4, 12);
INSERT INTO `tb_menu_role` VALUES (63, '2021-12-31 08:08:03', 4, 13);
INSERT INTO `tb_menu_role` VALUES (64, '2021-12-31 08:08:03', 4, 14);
INSERT INTO `tb_menu_role` VALUES (65, '2021-12-31 08:08:03', 4, 15);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `createid` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `createid`(`createid`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (2, '2021-12-31 07:51:57', '管理员', NULL, NULL);
INSERT INTO `tb_role` VALUES (4, '2021-12-31 08:08:03', '普通用户', NULL, NULL);

-- ----------------------------
-- Table structure for tb_study_sort
-- ----------------------------
DROP TABLE IF EXISTS `tb_study_sort`;
CREATE TABLE `tb_study_sort`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `tagname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_study_sort
-- ----------------------------

-- ----------------------------
-- Table structure for tb_study_types
-- ----------------------------
DROP TABLE IF EXISTS `tb_study_types`;
CREATE TABLE `tb_study_types`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_study_types
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `phone` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '签名',
  `gender` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '性别',
  `logintimes` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '登录次数',
  `account` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账户名称',
  `roleids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色列表',
  `lastlogintime` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '2021-12-20 14:59:16', '/image/userheads/labixiaoxin.png', '超级管理员', '79010e2bba4fcfb1b2bc150b8f17e030', NULL, '建议唯一账户，拥有系统最高权限。', 1, 0, 'admin', '2', NULL);
INSERT INTO `tb_user` VALUES (2, '2021-12-31 08:21:40', NULL, '2222', '79010e2bba4fcfb1b2bc150b8f17e030', NULL, NULL, NULL, 0, 'danhua', '2,4', NULL);

SET FOREIGN_KEY_CHECKS = 1;
