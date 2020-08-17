/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-08-17 19:19:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Dashboard', 'fa-bar-chart', '/', null, null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '4', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '5', 'Users', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '6', 'Roles', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '7', 'Permission', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '8', 'Menu', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '9', 'Operation log', 'fa-history', 'auth/logs', null, null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '2', 'Authors', 'fa-child', 'authors', '*', null, null);
INSERT INTO `admin_menu` VALUES ('9', '0', '3', 'books', 'fa-book', 'books', '*', null, null);

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-08-17 14:53:45', '2020-08-17 14:53:45');
INSERT INTO `admin_operation_log` VALUES ('2', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:53:49', '2020-08-17 14:53:49');
INSERT INTO `admin_operation_log` VALUES ('3', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:53:53', '2020-08-17 14:53:53');
INSERT INTO `admin_operation_log` VALUES ('4', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:53:55', '2020-08-17 14:53:55');
INSERT INTO `admin_operation_log` VALUES ('5', '2', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Authors\",\"icon\":\"fa-bars\",\"uri\":\"authors\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\"}', '2020-08-17 14:54:23', '2020-08-17 14:54:23');
INSERT INTO `admin_operation_log` VALUES ('6', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-17 14:54:25', '2020-08-17 14:54:25');
INSERT INTO `admin_operation_log` VALUES ('7', '2', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"books\",\"icon\":\"fa-bars\",\"uri\":\"books\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\"}', '2020-08-17 14:54:33', '2020-08-17 14:54:33');
INSERT INTO `admin_operation_log` VALUES ('8', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-17 14:54:35', '2020-08-17 14:54:35');
INSERT INTO `admin_operation_log` VALUES ('9', '2', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:54:45', '2020-08-17 14:54:45');
INSERT INTO `admin_operation_log` VALUES ('10', '2', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Authors\",\"icon\":\"fa-child\",\"uri\":\"authors\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/example\\/admin\\/auth\\/menu\"}', '2020-08-17 14:55:13', '2020-08-17 14:55:13');
INSERT INTO `admin_operation_log` VALUES ('11', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-17 14:55:15', '2020-08-17 14:55:15');
INSERT INTO `admin_operation_log` VALUES ('12', '2', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-08-17 14:55:21', '2020-08-17 14:55:21');
INSERT INTO `admin_operation_log` VALUES ('13', '2', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:55:22', '2020-08-17 14:55:22');
INSERT INTO `admin_operation_log` VALUES ('14', '2', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:55:23', '2020-08-17 14:55:23');
INSERT INTO `admin_operation_log` VALUES ('15', '2', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"books\",\"icon\":\"fa-book\",\"uri\":\"books\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\",\"_method\":\"PUT\"}', '2020-08-17 14:55:32', '2020-08-17 14:55:32');
INSERT INTO `admin_operation_log` VALUES ('16', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-17 14:55:33', '2020-08-17 14:55:33');
INSERT INTO `admin_operation_log` VALUES ('17', '2', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-17 14:55:35', '2020-08-17 14:55:35');
INSERT INTO `admin_operation_log` VALUES ('18', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 14:55:57', '2020-08-17 14:55:57');
INSERT INTO `admin_operation_log` VALUES ('19', '2', 'admin/authors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:56:02', '2020-08-17 14:56:02');
INSERT INTO `admin_operation_log` VALUES ('20', '2', 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 14:56:03', '2020-08-17 14:56:03');
INSERT INTO `admin_operation_log` VALUES ('21', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-08-17 15:04:13', '2020-08-17 15:04:13');
INSERT INTO `admin_operation_log` VALUES ('22', '2', 'admin/authors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:04:18', '2020-08-17 15:04:18');
INSERT INTO `admin_operation_log` VALUES ('23', '2', 'admin/authors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:04:20', '2020-08-17 15:04:20');
INSERT INTO `admin_operation_log` VALUES ('24', '2', 'admin/authors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:04:25', '2020-08-17 15:04:25');
INSERT INTO `admin_operation_log` VALUES ('25', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:06:46', '2020-08-17 15:06:46');
INSERT INTO `admin_operation_log` VALUES ('26', '2', 'admin/authors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:06:48', '2020-08-17 15:06:48');
INSERT INTO `admin_operation_log` VALUES ('27', '2', 'admin/authors', 'POST', '127.0.0.1', '{\"name\":\"\\u041f\\u0443\\u0448\\u043a\\u0438\\u043d \\u0421\\u0435\\u0440\\u0433\\u0435\\u0439 \\u041b\\u044c\\u0432\\u043e\\u0432\\u0438\\u0447\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\",\"_previous_\":\"http:\\/\\/example\\/admin\\/authors\"}', '2020-08-17 15:07:08', '2020-08-17 15:07:08');
INSERT INTO `admin_operation_log` VALUES ('28', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:07:09', '2020-08-17 15:07:09');
INSERT INTO `admin_operation_log` VALUES ('29', '2', 'admin/authors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:07:35', '2020-08-17 15:07:35');
INSERT INTO `admin_operation_log` VALUES ('30', '2', 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:07:37', '2020-08-17 15:07:37');
INSERT INTO `admin_operation_log` VALUES ('31', '2', 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:07:39', '2020-08-17 15:07:39');
INSERT INTO `admin_operation_log` VALUES ('32', '2', 'admin/books/create', 'GET', '127.0.0.1', '[]', '2020-08-17 15:09:35', '2020-08-17 15:09:35');
INSERT INTO `admin_operation_log` VALUES ('33', '2', 'admin/books/create', 'GET', '127.0.0.1', '[]', '2020-08-17 15:12:17', '2020-08-17 15:12:17');
INSERT INTO `admin_operation_log` VALUES ('34', '2', 'admin/books', 'POST', '127.0.0.1', '{\"author_id\":\"1\",\"title\":\"\\u0420\\u0443\\u0441\\u043b\\u0430\\u043d \\u0438 \\u041b\\u044e\\u0434\\u043c\\u0438\\u043b\\u0430\",\"description\":null,\"year\":\"1817\\u20141820\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\"}', '2020-08-17 15:12:39', '2020-08-17 15:12:39');
INSERT INTO `admin_operation_log` VALUES ('35', '2', 'admin/books/create', 'GET', '127.0.0.1', '[]', '2020-08-17 15:12:41', '2020-08-17 15:12:41');
INSERT INTO `admin_operation_log` VALUES ('36', '2', 'admin/books', 'POST', '127.0.0.1', '{\"author_id\":\"1\",\"title\":\"\\u0420\\u0443\\u0441\\u043b\\u0430\\u043d \\u0438 \\u041b\\u044e\\u0434\\u043c\\u0438\\u043b\\u0430\",\"description\":\"\\u041f\\u043e\\u044d\\u043c\\u0430 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u043f\\u0435\\u0447\\u0430\\u0442\\u0430\\u0442\\u044c\\u0441\\u044f \\u0432 \\u00ab\\u0421\\u044b\\u043d\\u0435 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430\\u00bb \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 1820 \\u0433\\u043e\\u0434\\u0430 \\u0432 \\u043e\\u0442\\u0440\\u044b\\u0432\\u043a\\u0430\\u0445, \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043e\\u0442\\u0434\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0438\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u044b\\u0448\\u043b\\u043e \\u0432 \\u043c\\u0430\\u0435 \\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0433\\u043e\\u0434\\u0430 (\\u043a\\u0430\\u043a \\u0440\\u0430\\u0437 \\u0432 \\u0434\\u043d\\u0438 \\u0441\\u0441\\u044b\\u043b\\u043a\\u0438 \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d\\u0430 \\u043d\\u0430 \\u044e\\u0433) \\u0438 \\u0432\\u044b\\u0437\\u0432\\u0430\\u043b\\u043e \\u0432\\u043e\\u0437\\u043c\\u0443\\u0449\\u0451\\u043d\\u043d\\u044b\\u0435 \\u043e\\u0442\\u043a\\u043b\\u0438\\u043a\\u0438 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u043a\\u0440\\u0438\\u0442\\u0438\\u043a\\u043e\\u0432, \\u0443\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0432\\u0448\\u0438\\u0445 \\u0432 \\u043d\\u0435\\u0439 \\u00ab\\u0431\\u0435\\u0437\\u043d\\u0440\\u0430\\u0432\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c\\u00bb \\u0438 \\u00ab\\u043d\\u0435\\u043f\\u0440\\u0438\\u043b\\u0438\\u0447\\u0438\\u044f\\u00bb (\\u0410. \\u0424. \\u0412\\u043e\\u0435\\u0439\\u043a\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u0432\\u0448\\u0438\\u0439 \\u0431\\u044b\\u043b\\u043e \\u0436\\u0443\\u0440\\u043d\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\\u0446\\u0438\\u044e \\u043d\\u0435\\u0439\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e-\\u0434\\u043e\\u0431\\u0440\\u043e\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u0430 \\u043f\\u043e\\u044d\\u043c\\u044b[2], \\u0432 \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u0438 \\u043e\\u0442\\u0437\\u044b\\u0432\\u0430 \\u043f\\u043e\\u0434 \\u0432\\u043b\\u0438\\u044f\\u043d\\u0438\\u0435\\u043c \\u0418. \\u0418. \\u0414\\u043c\\u0438\\u0442\\u0440\\u0438\\u0435\\u0432\\u0430 \\u0440\\u0430\\u0441\\u043a\\u0440\\u0438\\u0442\\u0438\\u043a\\u043e\\u0432\\u0430\\u043b \\u0435\\u0451). \\u0412 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0438\\u0441\\u043a\\u0435 \\u0441 \\u041a\\u0430\\u0440\\u0430\\u043c\\u0437\\u0438\\u043d\\u044b\\u043c \\u0418. \\u0418. \\u0414\\u043c\\u0438\\u0442\\u0440\\u0438\\u0435\\u0432 \\u0441\\u0440\\u0430\\u0432\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442 \\u00ab\\u0420\\u0443\\u0441\\u043b\\u0430\\u043d\\u0430 \\u0438 \\u041b\\u044e\\u0434\\u043c\\u0438\\u043b\\u0443\\u00bb \\u0441 \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0439 \\u0438\\u0440\\u043e\\u0438\\u043a\\u043e\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u043f\\u043e\\u044d\\u043c\\u043e\\u0439 \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u044f \\u041e\\u0441\\u0438\\u043f\\u043e\\u0432\\u0430 \\u00ab\\u0412\\u0435\\u0440\\u0433\\u0438\\u043b\\u0438\\u0435\\u0432\\u0430 \\u0415\\u043d\\u0435\\u0438\\u0434\\u0430, \\u0432\\u044b\\u0432\\u043e\\u0440\\u043e\\u0447\\u0435\\u043d\\u043d\\u0430\\u044f \\u043d\\u0430\\u0438\\u0437\\u043d\\u0430\\u043d\\u043a\\u0443\\u00bb, \\u043d\\u0430 \\u0447\\u0442\\u043e \\u041a\\u0430\\u0440\\u0430\\u043c\\u0437\\u0438\\u043d \\u0432 \\u043f\\u0438\\u0441\\u044c\\u043c\\u0435 \\u043e\\u0442 7 \\u0438\\u044e\\u043d\\u044f 1820 \\u0433\\u043e\\u0434\\u0430 \\u043e\\u0442\\u0432\\u0435\\u0447\\u0430\\u0435\\u0442:\",\"year\":\"1817\\u20141820\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\"}', '2020-08-17 15:13:20', '2020-08-17 15:13:20');
INSERT INTO `admin_operation_log` VALUES ('37', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 15:13:21', '2020-08-17 15:13:21');
INSERT INTO `admin_operation_log` VALUES ('38', '2', 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:13:27', '2020-08-17 15:13:27');
INSERT INTO `admin_operation_log` VALUES ('39', '2', 'admin/books', 'POST', '127.0.0.1', '{\"author_id\":\"1\",\"title\":\"\\u041a\\u0430\\u0432\\u043a\\u0430\\u0301\\u0437\\u0441\\u043a\\u0438\\u0439 \\u043f\\u043b\\u0435\\u0301\\u043d\\u043d\\u0438\\u043a\",\"description\":\"\\u041f\\u0435\\u0440\\u0432\\u0430\\u044f \\u0438\\u0437 \\u0446\\u0438\\u043a\\u043b\\u0430 \\u044e\\u0436\\u043d\\u044b\\u0445 \\u0431\\u0430\\u0439\\u0440\\u043e\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u044d\\u043c \\u041f\\u0443\\u0448\\u043a\\u0438\\u043d\\u0430. \\u041d\\u0430\\u0447\\u0430\\u0442\\u0430 \\u0432 \\u0413\\u0443\\u0440\\u0437\\u0443\\u0444\\u0435, \\u043e\\u043a\\u043e\\u043d\\u0447\\u0435\\u043d\\u0430 20 \\u0444\\u0435\\u0432\\u0440\\u0430\\u043b\\u044f 1821 \\u0433. \\u0432 \\u041a\\u0430\\u043c\\u0435\\u043d\\u043a\\u0435 (\\u0438\\u043c\\u0435\\u043d\\u0438\\u0435 \\u0412. \\u041b. \\u0414\\u0430\\u0432\\u044b\\u0434\\u043e\\u0432\\u0430).\\r\\n\\r\\n\\u0412 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0443 \\u0441\\u044e\\u0436\\u0435\\u0442\\u0430 \\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d \\u0440\\u043e\\u043c\\u0430\\u043d\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0442\\u043e\\u043f\\u043e\\u0441 \\u0441\\u0442\\u0440\\u0430\\u0441\\u0442\\u043d\\u043e\\u0439 \\u043b\\u044e\\u0431\\u0432\\u0438 \\u0440\\u0430\\u0437\\u043e\\u0447\\u0430\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e, \\u043c\\u044f\\u0442\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u0433\\u0435\\u0440\\u043e\\u044f (\\u043f\\u043b\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u0440\\u0443\\u0441\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u0444\\u0438\\u0446\\u0435\\u0440\\u0430) \\u043a \\u00ab\\u0434\\u0435\\u0442\\u044f\\u043c \\u043f\\u0440\\u0438\\u0440\\u043e\\u0434\\u044b\\u00bb, \\u043d\\u0435 \\u0438\\u0441\\u043f\\u043e\\u0440\\u0447\\u0435\\u043d\\u043d\\u044b\\u043c \\u0446\\u0438\\u0432\\u0438\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0435\\u0439 (\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043f\\u0440\\u0435\\u043a\\u0440\\u0430\\u0441\\u043d\\u0430\\u044f \\u0447\\u0435\\u0440\\u043a\\u0435\\u0448\\u0435\\u043d\\u043a\\u0430). \\u042d\\u0442\\u0430 \\u043b\\u0438\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0442\\u0435\\u043c\\u0430 \\u043f\\u043e\\u0434\\u0430\\u043d\\u0430 \\u043d\\u0430 \\u044d\\u043f\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u043c \\u0444\\u043e\\u043d\\u0435: \\u043a\\u0440\\u0430\\u0441\\u043e\\u0442\\u044b \\u0431\\u0435\\u0437\\u0431\\u0440\\u0435\\u0436\\u043d\\u043e\\u0433\\u043e \\u041a\\u0430\\u0432\\u043a\\u0430\\u0437\\u0430, \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0433\\u043e\\u0440\\u0446\\u0435\\u0432, \\u041a\\u0430\\u0432\\u043a\\u0430\\u0437\\u0441\\u043a\\u0430\\u044f \\u0432\\u043e\\u0439\\u043d\\u0430.\",\"year\":\"1820\\u20141821\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\",\"_previous_\":\"http:\\/\\/example\\/admin\\/books\"}', '2020-08-17 15:14:04', '2020-08-17 15:14:04');
INSERT INTO `admin_operation_log` VALUES ('40', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 15:14:06', '2020-08-17 15:14:06');
INSERT INTO `admin_operation_log` VALUES ('41', '2', 'admin/authors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:14:12', '2020-08-17 15:14:12');
INSERT INTO `admin_operation_log` VALUES ('42', '2', 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:14:14', '2020-08-17 15:14:14');
INSERT INTO `admin_operation_log` VALUES ('43', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 15:28:30', '2020-08-17 15:28:30');
INSERT INTO `admin_operation_log` VALUES ('44', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:28:41', '2020-08-17 15:28:41');
INSERT INTO `admin_operation_log` VALUES ('45', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:28:56', '2020-08-17 15:28:56');
INSERT INTO `admin_operation_log` VALUES ('46', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:28:58', '2020-08-17 15:28:58');
INSERT INTO `admin_operation_log` VALUES ('47', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:29:08', '2020-08-17 15:29:08');
INSERT INTO `admin_operation_log` VALUES ('48', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:29:11', '2020-08-17 15:29:11');
INSERT INTO `admin_operation_log` VALUES ('49', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:31:15', '2020-08-17 15:31:15');
INSERT INTO `admin_operation_log` VALUES ('50', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:31:27', '2020-08-17 15:31:27');
INSERT INTO `admin_operation_log` VALUES ('51', '2', 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:32:05', '2020-08-17 15:32:05');
INSERT INTO `admin_operation_log` VALUES ('52', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 15:32:07', '2020-08-17 15:32:07');
INSERT INTO `admin_operation_log` VALUES ('53', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 15:32:15', '2020-08-17 15:32:15');
INSERT INTO `admin_operation_log` VALUES ('54', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 15:32:23', '2020-08-17 15:32:23');
INSERT INTO `admin_operation_log` VALUES ('55', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:32:30', '2020-08-17 15:32:30');
INSERT INTO `admin_operation_log` VALUES ('56', '2', 'admin/authors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 15:32:50', '2020-08-17 15:32:50');
INSERT INTO `admin_operation_log` VALUES ('57', '2', 'admin/authors', 'GET', '127.0.0.1', '[]', '2020-08-17 15:33:32', '2020-08-17 15:33:32');
INSERT INTO `admin_operation_log` VALUES ('58', '2', 'admin/books', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 16:03:07', '2020-08-17 16:03:07');
INSERT INTO `admin_operation_log` VALUES ('59', '2', 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 16:03:10', '2020-08-17 16:03:10');
INSERT INTO `admin_operation_log` VALUES ('60', '2', 'admin/books', 'POST', '127.0.0.1', '{\"author_id\":\"1\",\"title\":\"\\u041a\\u0435\\u0448\\u0431\\u044d\\u043a\",\"description\":\"asdasd\",\"year\":\"1817\\u20141820\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\",\"_previous_\":\"http:\\/\\/example\\/admin\\/books\"}', '2020-08-17 16:03:17', '2020-08-17 16:03:17');
INSERT INTO `admin_operation_log` VALUES ('61', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 16:03:19', '2020-08-17 16:03:19');
INSERT INTO `admin_operation_log` VALUES ('62', '2', 'admin/books/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 16:06:16', '2020-08-17 16:06:16');
INSERT INTO `admin_operation_log` VALUES ('63', '2', 'admin/books', 'POST', '127.0.0.1', '{\"author_id\":\"1\",\"title\":\"Authors\",\"description\":\"asdasd\",\"year\":\"aasd\",\"_token\":\"DilBD21oT5mkjLqAfN6JmCTToCXEhV1nBcHbUtRr\",\"_previous_\":\"http:\\/\\/example\\/admin\\/books\"}', '2020-08-17 16:06:22', '2020-08-17 16:06:22');
INSERT INTO `admin_operation_log` VALUES ('64', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 16:06:24', '2020-08-17 16:06:24');
INSERT INTO `admin_operation_log` VALUES ('65', '2', 'admin/books', 'GET', '127.0.0.1', '[]', '2020-08-17 16:06:30', '2020-08-17 16:06:30');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', null, null);

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$Vl4ldqhoFD8lVQpxo4lxmeTlHAraaDYQThS9nRxDBqcSTXxWAiOOW', 'Administrator', null, null, '2020-08-17 14:52:21', '2020-08-17 14:52:21');
INSERT INTO `admin_users` VALUES ('2', 'user_admin', '$2y$10$0X4YjGMH7m7ZUkyaWZLtz.PU8Ui5hH3y1OwTvwyGQQQnU1zzkWqDS', 'Admin', null, 'z8fXXtElCSSZw2hQdh28M5bec8liscFergYj0xCIsZuQENxDbahR9cPejmvx', '2020-08-17 14:53:21', '2020-08-17 14:53:21');

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES ('1', 'Пушкин Сергей Львович', '2020-08-17 15:07:08', '2020-08-17 15:07:08');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) unsigned NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', '1', 'Руслан и Людмила', 'Поэма начала печататься в «Сыне отечества» весной 1820 года в отрывках, первое отдельное издание вышло в мае того же года (как раз в дни ссылки Пушкина на юг) и вызвало возмущённые отклики многих критиков, усмотревших в ней «безнравственность» и «неприличия» (А. Ф. Воейков, начавший было журнальную публикацию нейтрально-доброжелательного разбора поэмы[2], в последней части отзыва под влиянием И. И. Дмитриева раскритиковал её). В переписке с Карамзиным И. И. Дмитриев сравнивает «Руслана и Людмилу» с известной ироикомической поэмой Николая Осипова «Вергилиева Енеида, вывороченная наизнанку», на что Карамзин в письме от 7 июня 1820 года отвечает:', '1817—1820', '2020-08-17 15:13:20', '2020-08-17 15:13:20');
INSERT INTO `books` VALUES ('2', '1', 'Кавка́зский пле́нник', 'Первая из цикла южных байронических поэм Пушкина. Начата в Гурзуфе, окончена 20 февраля 1821 г. в Каменке (имение В. Л. Давыдова).\r\n\r\nВ основу сюжета положен романтический топос страстной любви разочарованного, мятежного героя (пленного русского офицера) к «детям природы», не испорченным цивилизацией (их представляет прекрасная черкешенка). Эта лирическая тема подана на эпическом фоне: красоты безбрежного Кавказа, экзотической жизни горцев, Кавказская война.', '1820—1821', '2020-08-17 15:14:04', '2020-08-17 15:14:04');
INSERT INTO `books` VALUES ('3', '1', 'Гавриилиада', 'Пушкин в молодости скептически относился к религиозным ценностям и написал несколько «кощунственных» стихотворений. Например, «Ты богоматерь, нет сомненья» он написал в возрасте 27 лет. Репутация «афея» (атеиста) неоднократно доставляла поэту неприятности.', '1821-1918', '2020-08-17 16:03:17', '2020-08-17 16:04:22');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('5', '2020_08_17_144526_create_authors_table', '1');
INSERT INTO `migrations` VALUES ('6', '2020_08_17_144541_create_books_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
