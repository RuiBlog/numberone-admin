/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : numberone-admin

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 03/11/2017 15:58:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ly_buttom
-- ----------------------------
DROP TABLE IF EXISTS `ly_buttom`;
CREATE TABLE `ly_buttom`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `buttom` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_buttom
-- ----------------------------
INSERT INTO `ly_buttom` VALUES (1, '新增', '<button type=\"button\" id=\"addFun\" class=\"btn btn-primary marR10\">新增</button>', '');
INSERT INTO `ly_buttom` VALUES (2, '编辑', '<button type=\"button\" id=\"editFun\" class=\"btn btn-info marR10\">编辑</button>', NULL);
INSERT INTO `ly_buttom` VALUES (3, '删除', '<button type=\"button\" id=\"delFun\" class=\"btn btn-danger marR10\">删除</button>', NULL);
INSERT INTO `ly_buttom` VALUES (4, '上传', '<button type=\"button\" id=\"upLoad\" class=\"btn btn-primary marR10\">上传</button>', NULL);
INSERT INTO `ly_buttom` VALUES (5, '下载', '<button type=\"button\" id=\"downLoad\" class=\"btn btn-primary marR10\">下载</button>', NULL);
INSERT INTO `ly_buttom` VALUES (6, '上移', '<button type=\"button\" id=\"lyGridUp\" class=\"btn btn-success marR10\">上移</button>', NULL);
INSERT INTO `ly_buttom` VALUES (7, '下移', '<button type=\"button\" id=\"lyGridDown\" class=\"btn btn btn-grey marR10\">下移</button>', NULL);
INSERT INTO `ly_buttom` VALUES (8, '分配权限', '<button type=\"button\" id=\"permissions\" class=\"btn btn btn-grey marR10\">分配权限</button>', NULL);

-- ----------------------------
-- Table structure for ly_log
-- ----------------------------
DROP TABLE IF EXISTS `ly_log`;
CREATE TABLE `ly_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `methods` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `actionTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userIP` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_log
-- ----------------------------
INSERT INTO `ly_log` VALUES (1, 'admin', '系统管理', '资源管理-新增资源', '6', '0:0:0:0:0:0:0:1', '2017-11-02 16:15:17', '执行成功!');
INSERT INTO `ly_log` VALUES (2, 'admin', '系统管理', '用户管理/组管理-修改权限', '17', '0:0:0:0:0:0:0:1', '2017-11-02 16:15:42', '执行成功!');
INSERT INTO `ly_log` VALUES (3, 'admin', '系统管理', '资源管理-修改资源', '3', '0:0:0:0:0:0:0:1', '2017-11-02 16:16:17', '执行成功!');
INSERT INTO `ly_log` VALUES (4, 'admin', '系统管理', '资源管理-修改资源', '2', '0:0:0:0:0:0:0:1', '2017-11-02 16:20:18', '执行成功!');
INSERT INTO `ly_log` VALUES (5, 'admin', '系统管理', '资源管理-修改资源', '4', '0:0:0:0:0:0:0:1', '2017-11-02 16:20:35', '执行成功!');
INSERT INTO `ly_log` VALUES (6, 'admin', '系统管理', '资源管理-修改资源', '2', '0:0:0:0:0:0:0:1', '2017-11-02 16:22:54', '执行成功!');
INSERT INTO `ly_log` VALUES (7, 'admin', '系统管理', '资源管理-新增资源', '2', '0:0:0:0:0:0:0:1', '2017-11-02 16:23:26', '执行成功!');
INSERT INTO `ly_log` VALUES (8, 'admin', '系统管理', '资源管理-修改资源', '6', '0:0:0:0:0:0:0:1', '2017-11-02 16:23:55', '执行成功!');
INSERT INTO `ly_log` VALUES (9, 'admin', '系统管理', '用户管理/组管理-修改权限', '12', '0:0:0:0:0:0:0:1', '2017-11-02 16:24:15', '执行成功!');
INSERT INTO `ly_log` VALUES (10, 'admin', '系统管理', '资源管理-修改资源', '4', '0:0:0:0:0:0:0:1', '2017-11-02 22:15:13', '执行成功!');
INSERT INTO `ly_log` VALUES (11, 'admin', '系统管理', '用户管理/组管理-修改权限', '11', '0:0:0:0:0:0:0:1', '2017-11-03 11:16:17', '执行成功!');
INSERT INTO `ly_log` VALUES (12, 'admin', '系统管理', '用户管理/组管理-修改权限', '14', '0:0:0:0:0:0:0:1', '2017-11-03 13:38:13', '执行成功!');
INSERT INTO `ly_log` VALUES (13, 'admin', '系统管理', '资源管理-新增资源', '7', '0:0:0:0:0:0:0:1', '2017-11-03 14:39:11', '执行成功!');
INSERT INTO `ly_log` VALUES (14, 'admin', '系统管理', '用户管理/组管理-修改权限', '7', '0:0:0:0:0:0:0:1', '2017-11-03 14:39:21', '执行成功!');
INSERT INTO `ly_log` VALUES (15, 'admin', '系统管理', '资源管理-修改资源', '2', '0:0:0:0:0:0:0:1', '2017-11-03 14:40:35', '执行成功!');
INSERT INTO `ly_log` VALUES (16, 'admin', '系统管理', '资源管理-修改资源', '7', '0:0:0:0:0:0:0:1', '2017-11-03 14:41:06', '执行成功!');
INSERT INTO `ly_log` VALUES (17, 'admin', '学生管理', '学生管理-新增学生', '4', '0:0:0:0:0:0:0:1', '2017-11-03 15:16:33', '执行成功!');
INSERT INTO `ly_log` VALUES (18, 'admin', '系统管理', '资源管理-新增资源', '2', '0:0:0:0:0:0:0:1', '2017-11-03 15:35:54', '执行成功!');
INSERT INTO `ly_log` VALUES (19, 'admin', '系统管理', '用户管理/组管理-修改权限', '7', '0:0:0:0:0:0:0:1', '2017-11-03 15:36:05', '执行成功!');
INSERT INTO `ly_log` VALUES (20, 'admin', '学生管理', '学生管理-删除学生', '6', '0:0:0:0:0:0:0:1', '2017-11-03 15:40:18', '执行成功!');
INSERT INTO `ly_log` VALUES (21, 'admin', '学生管理', '学生管理-删除学生', '5', '0:0:0:0:0:0:0:1', '2017-11-03 15:40:29', '执行成功!');
INSERT INTO `ly_log` VALUES (22, 'admin', '学生管理', '学生管理-删除学生', '2', '0:0:0:0:0:0:0:1', '2017-11-03 15:40:40', '执行成功!');
INSERT INTO `ly_log` VALUES (23, 'admin', '学生管理', '学生管理-删除学生', '56544', '0:0:0:0:0:0:0:1', '2017-11-03 15:43:03', '执行成功!');
INSERT INTO `ly_log` VALUES (24, 'admin', '学生管理', '学生管理-删除学生', '4354', '0:0:0:0:0:0:0:1', '2017-11-03 15:43:24', '执行成功!');
INSERT INTO `ly_log` VALUES (25, 'admin', '学生管理', '学生管理-删除学生', '3', '0:0:0:0:0:0:0:1', '2017-11-03 15:43:32', '执行成功!');
INSERT INTO `ly_log` VALUES (26, 'admin', '学生管理', '学生管理-删除学生', '2', '0:0:0:0:0:0:0:1', '2017-11-03 15:43:36', '执行成功!');

-- ----------------------------
-- Table structure for ly_res_user
-- ----------------------------
DROP TABLE IF EXISTS `ly_res_user`;
CREATE TABLE `ly_res_user`  (
  `resId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`userId`, `resId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_res_user
-- ----------------------------
INSERT INTO `ly_res_user` VALUES (1, 3);
INSERT INTO `ly_res_user` VALUES (2, 3);
INSERT INTO `ly_res_user` VALUES (3, 3);
INSERT INTO `ly_res_user` VALUES (4, 3);
INSERT INTO `ly_res_user` VALUES (5, 3);
INSERT INTO `ly_res_user` VALUES (6, 3);
INSERT INTO `ly_res_user` VALUES (7, 3);
INSERT INTO `ly_res_user` VALUES (8, 3);
INSERT INTO `ly_res_user` VALUES (9, 3);
INSERT INTO `ly_res_user` VALUES (10, 3);
INSERT INTO `ly_res_user` VALUES (11, 3);
INSERT INTO `ly_res_user` VALUES (25, 3);
INSERT INTO `ly_res_user` VALUES (26, 3);
INSERT INTO `ly_res_user` VALUES (27, 3);
INSERT INTO `ly_res_user` VALUES (28, 3);
INSERT INTO `ly_res_user` VALUES (29, 3);
INSERT INTO `ly_res_user` VALUES (30, 3);
INSERT INTO `ly_res_user` VALUES (31, 3);
INSERT INTO `ly_res_user` VALUES (32, 3);
INSERT INTO `ly_res_user` VALUES (33, 3);
INSERT INTO `ly_res_user` VALUES (34, 3);
INSERT INTO `ly_res_user` VALUES (35, 3);
INSERT INTO `ly_res_user` VALUES (36, 3);
INSERT INTO `ly_res_user` VALUES (37, 3);
INSERT INTO `ly_res_user` VALUES (38, 3);
INSERT INTO `ly_res_user` VALUES (39, 3);

-- ----------------------------
-- Table structure for ly_resources
-- ----------------------------
DROP TABLE IF EXISTS `ly_resources`;
CREATE TABLE `ly_resources`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `resUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` int(4) DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ishide` int(3) DEFAULT 0,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_resources
-- ----------------------------
INSERT INTO `ly_resources` VALUES (1, '系统基础管理', 0, 'system', '0', 'system', 1, 'fa-desktop', 0, '系统基础管理');
INSERT INTO `ly_resources` VALUES (2, '用户管理', 1, 'account', '1', '/user/list.shtml', 2, NULL, 0, NULL);
INSERT INTO `ly_resources` VALUES (3, '角色管理', 1, 'role', '1', '/role/list.shtml', 7, 'fa-list', 0, '组管理');
INSERT INTO `ly_resources` VALUES (4, '菜单管理', 1, 'ly_resources', '1', '/resources/list.shtml', 12, 'fa-list-alt', 0, '菜单管理');
INSERT INTO `ly_resources` VALUES (5, '新增用户', 2, 'account_add', '2', '/user/addUI.shtml', 3, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (6, '修改用户', 2, 'account_edit', '2', '/user/editUI.shtml', 4, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (7, '删除用户', 2, 'account_delete', '2', '/user/deleteById.shtml', 5, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (8, '新增角色', 3, 'role_add', '2', '/role/addUI.shtml', 8, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addRole&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (9, '修改角色', 3, 'role_edit', '2', '/role/editUI.shtml', 9, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editRole&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (10, '删除角色', 3, 'role_delete', '2', '/role/delete.shtml', 10, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delRole&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (11, '分配权限', 3, 'role_perss', '2', '/resources/permissions.shtml', 11, '无', 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;分配权限&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (25, '登陆信息管理', 0, 'ly_login', '0', 'ly_login', 18, 'fa-calendar', 0, '登陆信息管理');
INSERT INTO `ly_resources` VALUES (26, '用户登录记录', 25, 'ly_log_list', '1', '/userlogin/listUI.shtml', 19, NULL, 0, '用户登录记录');
INSERT INTO `ly_resources` VALUES (27, '操作日志管理', 0, 'ly_log', '0', 'ly_log', 20, 'fa-picture-o', 1, '操作日志管理');
INSERT INTO `ly_resources` VALUES (28, '日志查询', 27, 'ly_log', '1', '/log/list.shtml', 21, NULL, 0, NULL);
INSERT INTO `ly_resources` VALUES (29, '新增菜单资源', 4, 'ly_resources_add', '2', '/resources/addUI.shtml', 13, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (30, '修改菜单资源', 4, 'ly_resources_edit', '2', '/resources/editUI.shtml', 14, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (31, '删除菜单资源', 4, 'ly_resources_delete', '2', '/resources/delete.shtml', 15, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (32, '系统监控管理', 0, 'monitor', '0', 'monitor', 16, 'fa-tag', 0, '系统监控管理');
INSERT INTO `ly_resources` VALUES (33, '实时监控', 32, 'sysmonitor', '1', '/monitor/monitor.shtml', 17, NULL, 0, '实时监控');
INSERT INTO `ly_resources` VALUES (34, '分配权限', 2, 'permissions', '2', '/resources/permissions.shtml', 6, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;分配权限&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (35, '告警列表', 32, 'monitor_warn', '1', '/monitor/list.shtml', NULL, NULL, 0, '告警列表');
INSERT INTO `ly_resources` VALUES (36, '学生管理', 0, 'student', '0', 'student', NULL, 'fa-tag', 0, '学生管理');
INSERT INTO `ly_resources` VALUES (37, '学生列表', 36, 'studentList', '1', '/student/list.shtml', NULL, 'fa-tag', 0, '学生列表');
INSERT INTO `ly_resources` VALUES (38, '新增', 37, 'add', '2', 'student/add.shtml', NULL, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addstu&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES (39, '删除', 37, 'delStudent', '2', 'student/deleteEntity.shtml', NULL, NULL, 0, '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delStu&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');

-- ----------------------------
-- Table structure for ly_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_role`;
CREATE TABLE `ly_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roleKey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_role
-- ----------------------------
INSERT INTO `ly_role` VALUES (1, '0', '管理员', 'admin', '管理员');
INSERT INTO `ly_role` VALUES (2, '0', '普通角色', 'simple', '普通角色');

-- ----------------------------
-- Table structure for ly_server_info
-- ----------------------------
DROP TABLE IF EXISTS `ly_server_info`;
CREATE TABLE `ly_server_info`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `setCpuUsage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jvmUsage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `setJvmUsage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ramUsage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `setRamUsage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_server_info
-- ----------------------------
INSERT INTO `ly_server_info` VALUES (5, '18', '40', '49', '40', '71', '40', '2728998643@qq.com', '2015-04-25 18:07:02', '<font color=\"red\">JVM当前：49%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (6, '3', '40', '50', '40', '71', '40', '2728998643@qq.com', '2015-04-25 18:08:03', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (7, '5', '40', '50', '40', '70', '40', '2728998643@qq.com', '2015-04-25 18:09:02', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：70%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (8, '5', '40', '52', '40', '69', '40', '2728998643@qq.com', '2015-04-25 18:10:03', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：69%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (9, '2', '40', '52', '40', '68', '40', '2728998643@qq.com', '2015-04-25 18:11:02', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：68%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (10, '7', '40', '53', '40', '67', '40', '2728998643@qq.com', '2015-04-25 18:12:02', '<font color=\"red\">JVM当前：53%,超出预设值 40%<br>内存当前：67%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (11, '5', '40', '54', '40', '67', '40', '2728998643@qq.com', '2015-04-25 18:13:02', '<font color=\"red\">JVM当前：54%,超出预设值 40%<br>内存当前：67%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (12, '16', '40', '55', '40', '66', '40', '2728998643@qq.com', '2015-04-25 18:14:02', '<font color=\"red\">JVM当前：55%,超出预设值 40%<br>内存当前：66%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (13, '5', '40', '56', '40', '65', '40', '2728998643@qq.com', '2015-04-25 18:15:02', '<font color=\"red\">JVM当前：56%,超出预设值 40%<br>内存当前：65%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (14, '8', '40', '57', '40', '64', '40', '2728998643@qq.com', '2015-04-25 18:16:02', '<font color=\"red\">JVM当前：57%,超出预设值 40%<br>内存当前：64%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (15, '3', '40', '58', '40', '63', '40', '2728998643@qq.com', '2015-04-25 18:17:02', '<font color=\"red\">JVM当前：58%,超出预设值 40%<br>内存当前：63%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (16, '6', '40', '59', '40', '62', '40', '2728998643@qq.com', '2015-04-25 18:18:03', '<font color=\"red\">JVM当前：59%,超出预设值 40%<br>内存当前：62%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (17, '1', '40', '60', '40', '61', '40', '2728998643@qq.com', '2015-04-25 18:19:02', '<font color=\"red\">JVM当前：60%,超出预设值 40%<br>内存当前：61%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (18, '5', '40', '61', '40', '61', '40', '2728998643@qq.com', '2015-04-25 18:20:02', '<font color=\"red\">JVM当前：61%,超出预设值 40%<br>内存当前：61%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (19, '5', '40', '38', '40', '61', '40', '2728998643@qq.com', '2015-04-25 18:21:02', '<font color=\"red\">内存当前：61%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (20, '5', '40', '39', '40', '60', '40', '2728998643@qq.com', '2015-04-25 18:22:02', '<font color=\"red\">内存当前：60%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (21, '4', '40', '40', '40', '59', '40', '2728998643@qq.com', '2015-04-25 18:23:02', '<font color=\"red\">内存当前：59%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES (22, '32', '80', '41', '80', '81', '80', '2728998643@qq.com', '2015-04-26 01:43:05', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES (23, '55', '80', '55', '80', '81', '80', '2728998643@qq.com', '2015-04-26 01:50:03', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES (24, '13', '80', '53', '80', '81', '80', '2728998643@qq.com', '2015-04-26 01:59:08', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES (25, '85', '80', '58', '80', '72', '80', '2728998643@qq.com', '2015-04-26 02:46:06', '<font color=\"red\">CPU当前：85%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES (26, '34', '80', '59', '80', '81', '80', '2728998643@qq.com', '2015-04-27 00:29:06', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES (27, '92', '80', '47', '80', '64', '80', '2728998643@qq.com', '2015-04-27 00:44:07', '<font color=\"red\">CPU当前：92%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES (28, '85', '80', '49', '80', '68', '80', '2728998643@qq.com', '2015-04-27 23:38:04', '<font color=\"red\">CPU当前：85%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES (29, '94', '80', '69', '80', '73', '80', '2728998643@qq.com', '2015-04-28 01:35:03', '<font color=\"red\">CPU当前：94%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES (30, '6', '80', '43', '80', '87', '80', '2728998643@qq.com', '2015-05-09 00:00:08', '<font color=\"red\">内存当前：87%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES (31, '88', '80', '59', '80', '87', '80', '2728998643@qq.com', '2015-05-09 00:01:14', '<font color=\"red\">CPU当前：88%,超出预设值  80%<br>内存当前：87%,超出预设值  80%</font>');

-- ----------------------------
-- Table structure for ly_user
-- ----------------------------
DROP TABLE IF EXISTS `ly_user`;
CREATE TABLE `ly_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `accountName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `credentialsSalt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `locked` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0',
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `deletestatus` int(1) DEFAULT 0 COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_user
-- ----------------------------
INSERT INTO `ly_user` VALUES (1, '蓝缘', 'simple', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '0', '1', '2015-05-17 22:23:15', 0);
INSERT INTO `ly_user` VALUES (2, '超级管理员', 'ROOT', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '0000', '1', '2015-05-23 17:39:37', 0);
INSERT INTO `ly_user` VALUES (3, '管理员', 'admin', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '3434', '1', '2015-05-23 17:39:39', 0);

-- ----------------------------
-- Table structure for ly_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_user_role`;
CREATE TABLE `ly_user_role`  (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`, `roleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_user_role
-- ----------------------------
INSERT INTO `ly_user_role` VALUES (1, 2);
INSERT INTO `ly_user_role` VALUES (2, 3);
INSERT INTO `ly_user_role` VALUES (3, 1);

-- ----------------------------
-- Table structure for ly_userlogin
-- ----------------------------
DROP TABLE IF EXISTS `ly_userlogin`;
CREATE TABLE `ly_userlogin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `accountName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `loginTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `loginIP` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ly_user_loginlist`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 170 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ly_userlogin
-- ----------------------------
INSERT INTO `ly_userlogin` VALUES (143, 3, 'admin', '2016-04-11 21:49:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (144, 3, 'admin', '2017-11-02 01:24:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (145, 3, 'admin', '2017-11-02 13:44:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (146, 3, 'admin', '2017-11-02 14:11:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (147, 3, 'admin', '2017-11-02 14:59:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (148, 3, 'admin', '2017-11-02 16:10:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (149, 3, 'admin', '2017-11-02 16:33:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (150, 3, 'admin', '2017-11-02 16:39:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (151, 3, 'admin', '2017-11-02 16:42:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (152, 3, 'admin', '2017-11-02 22:11:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (153, 3, 'admin', '2017-11-02 22:13:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (154, 3, 'admin', '2017-11-02 22:19:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (155, 3, 'admin', '2017-11-02 22:29:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (156, 3, 'admin', '2017-11-02 22:42:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (157, 3, 'admin', '2017-11-03 10:55:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (158, 3, 'admin', '2017-11-03 13:38:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (159, 3, 'admin', '2017-11-03 13:45:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (160, 3, 'admin', '2017-11-03 13:50:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (161, 3, 'admin', '2017-11-03 14:12:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (162, 3, 'admin', '2017-11-03 14:38:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (163, 3, 'admin', '2017-11-03 14:48:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (164, 3, 'admin', '2017-11-03 15:00:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (165, 3, 'admin', '2017-11-03 15:02:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (166, 3, 'admin', '2017-11-03 15:05:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (167, 3, 'admin', '2017-11-03 15:16:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (168, 3, 'admin', '2017-11-03 15:40:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES (169, 3, 'admin', '2017-11-03 15:41:55', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别 M,F',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张航', 18, 'M');
INSERT INTO `student` VALUES (2, '流星', 18, 'F');
INSERT INTO `student` VALUES (28, '朱小猪', 22, 'F');
INSERT INTO `student` VALUES (29, '钟无艳', 55, 'F');

SET FOREIGN_KEY_CHECKS = 1;
