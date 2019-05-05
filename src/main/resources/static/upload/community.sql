/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL80
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : community

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 29/04/2019 16:42:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_auth_permission`;
CREATE TABLE `tb_auth_permission`  (
  `action` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'GET' COMMENT '权限操作类型（GET-查询操作；POST-增加操作；PUT-更新操作；DELETE-删除操作；OTHER-其他操作）',
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `api` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限API （权限为http操作，URL作为API）',
  `pname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新日期',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '权限状态（1-正常；0-禁用）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_api`(`api`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 901 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_auth_permission
-- ----------------------------
INSERT INTO `tb_auth_permission` VALUES ('GET', 1, '/collections/id/{id}', 'GET: [/collections/id/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 2, '/comment/user/{uid}', 'GET: [/comment/user/{uid}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 3, '/app/logout', 'POST: [/app/logout]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 4, '/post/user/{uid}', 'GET: [/post/user/{uid}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 5, '/post/download', 'GET: [/post/download]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 6, '/user/settings/profile/{id}', 'PUT: [/user/settings/profile/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 7, '/port/upload', 'POST: [/port/upload]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 8, '/comment/add', 'POST: [/comment/add]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 9, '/app/user/list', 'GET: [/app/user/list]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 10, '/post/hot', 'GET: [/post/hot]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 11, '/search/user', 'GET: [/search/user]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 12, '/post/collections/{cid}', 'GET: [/post/collections/{cid}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 13, '/port/aes', 'GET: [/port/aes]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('DELETE', 14, '/post/{id}', 'DELETE: [/post/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 15, '/app/log/all', 'GET: [/app/log/all]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 16, '/port/email', 'POST: [/port/email]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 17, '/logout', 'POST: [/logout]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 18, '/user/cancel/mobile/{id}', 'PUT: [/user/cancel/mobile/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('DELETE', 19, '/app/user/delete', 'DELETE: [/app/user/delete]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('DELETE', 20, '/user/close/{id}', 'DELETE: [/user/close/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 21, '/comment/list', 'GET: [/comment/list]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 22, '/user/settings/email', 'PUT: [/user/settings/email]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 23, '/user/dynamic/{uid}', 'GET: [/user/dynamic/{uid}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 24, '/collections/user/{uid}', 'GET: [/collections/user/{uid}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 25, '/user/settings/basic/{id}', 'PUT: [/user/settings/basic/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 26, '/account/login', 'POST: [/account/login]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 27, '/post/one', 'GET: [/post/one]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 28, '/collections/hot', 'GET: [/collections/hot]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 29, '/register', 'POST: [/register]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 30, '/login', 'POST: [/login]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 31, '/app/comment/all', 'GET: [/app/comment/all]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 32, '/app/web/info', 'GET: [/app/web/info]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 33, '/user/{id}', 'GET: [/user/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 34, '/port/sendSms', 'POST: [/port/sendSms]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 35, '/test3', 'GET: [/test3]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('DELETE/GET', 36, '/test1', 'DELETE/GET: [/test1]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 37, '/user/cancel/email/{id}', 'PUT: [/user/cancel/email/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 38, '/test2', 'GET: [/test2]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 39, '/app/user/enable/{id}', 'PUT: [/app/user/enable/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 40, '/mobile/login', 'POST: [/mobile/login]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 41, '/**/post/all', 'GET: [/**/post/all]', '2019-04-25 00:44:54', '2019-04-25 01:15:17', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 42, '/post/update/{id}', 'PUT: [/post/update/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 43, '/post/search', 'GET: [/post/search]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 44, '/user/settings/mobile', 'PUT: [/user/settings/mobile]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 45, '/password/reset', 'PUT: [/password/reset]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 46, '/post/list', 'GET: [/post/list]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 47, '/collections/add', 'POST: [/collections/add]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 48, '/user/saveDescribe', 'PUT: [/user/saveDescribe]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 49, '/port/captcha', 'GET: [/port/captcha]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('PUT', 50, '/post/giveLike/{id}', 'PUT: [/post/giveLike/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 51, '/user/settings/{uid}', 'GET: [/user/settings/{uid}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('POST', 52, '/post/add', 'POST: [/post/add]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('DELETE', 53, '/app/user/disable/{id}', 'DELETE: [/app/user/disable/{id}]', '2019-04-25 00:44:54', '2019-04-25 08:25:05', 0);
INSERT INTO `tb_auth_permission` VALUES ('GET', 740, '/post/all', 'GET: [/post/all]', '2019-04-25 01:16:23', '2019-04-25 08:25:05', 0);

-- ----------------------------
-- Table structure for tb_auth_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_auth_role`;
CREATE TABLE `tb_auth_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新日期',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '角色状态：1—正常；0—禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_auth_role
-- ----------------------------
INSERT INTO `tb_auth_role` VALUES (2, '超级管理员', '超级管理员 ', '2019-04-25 00:45:30', '2019-04-25 00:45:30', 1);

-- ----------------------------
-- Table structure for tb_auth_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_auth_role_permission`;
CREATE TABLE `tb_auth_role_permission`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色-权限ID',
  `rid` int(11) NOT NULL COMMENT '角色ID',
  `pid` int(11) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_auth_role_permission
-- ----------------------------
INSERT INTO `tb_auth_role_permission` VALUES (10, 2, 1);
INSERT INTO `tb_auth_role_permission` VALUES (11, 2, 2);
INSERT INTO `tb_auth_role_permission` VALUES (12, 2, 3);
INSERT INTO `tb_auth_role_permission` VALUES (13, 2, 4);
INSERT INTO `tb_auth_role_permission` VALUES (14, 2, 5);
INSERT INTO `tb_auth_role_permission` VALUES (15, 2, 6);
INSERT INTO `tb_auth_role_permission` VALUES (16, 2, 7);
INSERT INTO `tb_auth_role_permission` VALUES (17, 2, 8);
INSERT INTO `tb_auth_role_permission` VALUES (18, 2, 9);
INSERT INTO `tb_auth_role_permission` VALUES (19, 2, 10);
INSERT INTO `tb_auth_role_permission` VALUES (20, 2, 11);
INSERT INTO `tb_auth_role_permission` VALUES (21, 2, 12);
INSERT INTO `tb_auth_role_permission` VALUES (22, 2, 13);
INSERT INTO `tb_auth_role_permission` VALUES (23, 2, 14);
INSERT INTO `tb_auth_role_permission` VALUES (24, 2, 15);
INSERT INTO `tb_auth_role_permission` VALUES (25, 2, 16);
INSERT INTO `tb_auth_role_permission` VALUES (26, 2, 17);
INSERT INTO `tb_auth_role_permission` VALUES (27, 2, 18);
INSERT INTO `tb_auth_role_permission` VALUES (28, 2, 19);
INSERT INTO `tb_auth_role_permission` VALUES (29, 2, 20);
INSERT INTO `tb_auth_role_permission` VALUES (30, 2, 21);
INSERT INTO `tb_auth_role_permission` VALUES (31, 2, 22);
INSERT INTO `tb_auth_role_permission` VALUES (32, 2, 23);
INSERT INTO `tb_auth_role_permission` VALUES (33, 2, 24);
INSERT INTO `tb_auth_role_permission` VALUES (34, 2, 25);
INSERT INTO `tb_auth_role_permission` VALUES (35, 2, 26);
INSERT INTO `tb_auth_role_permission` VALUES (36, 2, 27);
INSERT INTO `tb_auth_role_permission` VALUES (37, 2, 28);
INSERT INTO `tb_auth_role_permission` VALUES (38, 2, 29);
INSERT INTO `tb_auth_role_permission` VALUES (39, 2, 30);
INSERT INTO `tb_auth_role_permission` VALUES (40, 2, 31);
INSERT INTO `tb_auth_role_permission` VALUES (41, 2, 32);
INSERT INTO `tb_auth_role_permission` VALUES (42, 2, 33);
INSERT INTO `tb_auth_role_permission` VALUES (43, 2, 34);
INSERT INTO `tb_auth_role_permission` VALUES (44, 2, 35);
INSERT INTO `tb_auth_role_permission` VALUES (45, 2, 36);
INSERT INTO `tb_auth_role_permission` VALUES (46, 2, 37);
INSERT INTO `tb_auth_role_permission` VALUES (47, 2, 38);
INSERT INTO `tb_auth_role_permission` VALUES (48, 2, 39);
INSERT INTO `tb_auth_role_permission` VALUES (49, 2, 40);
INSERT INTO `tb_auth_role_permission` VALUES (50, 2, 41);
INSERT INTO `tb_auth_role_permission` VALUES (51, 2, 42);
INSERT INTO `tb_auth_role_permission` VALUES (52, 2, 43);
INSERT INTO `tb_auth_role_permission` VALUES (53, 2, 44);
INSERT INTO `tb_auth_role_permission` VALUES (54, 2, 46);
INSERT INTO `tb_auth_role_permission` VALUES (55, 2, 45);
INSERT INTO `tb_auth_role_permission` VALUES (56, 2, 47);
INSERT INTO `tb_auth_role_permission` VALUES (57, 2, 48);
INSERT INTO `tb_auth_role_permission` VALUES (58, 2, 49);
INSERT INTO `tb_auth_role_permission` VALUES (59, 2, 50);
INSERT INTO `tb_auth_role_permission` VALUES (60, 2, 51);
INSERT INTO `tb_auth_role_permission` VALUES (61, 2, 52);
INSERT INTO `tb_auth_role_permission` VALUES (62, 2, 53);

-- ----------------------------
-- Table structure for tb_auth_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_auth_user_role`;
CREATE TABLE `tb_auth_user_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户-角色-ID',
  `uid` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `rid` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_auth_user_role
-- ----------------------------
INSERT INTO `tb_auth_user_role` VALUES (1, '68093236522266624', 2);

-- ----------------------------
-- Table structure for tb_collections
-- ----------------------------
DROP TABLE IF EXISTS `tb_collections`;
CREATE TABLE `tb_collections`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专题id',
  `cname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专题名称',
  `uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专题封面',
  `describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '专题描述',
  `users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专题其他管理员',
  `contribute` bit(1) NULL DEFAULT b'1' COMMENT '是否允许投稿 1-允许 0-不允许',
  `check` bit(1) NULL DEFAULT b'0' COMMENT '投稿是否需要审核 1-需要 0-不需要',
  `hot` bigint(255) NULL DEFAULT 0 COMMENT '热度 用于排行',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_collections
-- ----------------------------
INSERT INTO `tb_collections` VALUES (6, '测试专题', '68093236522266624', '8d63fad5923f5053a6747fc7e18b118fa19dcaf8.jpg', '专题测试', '68093236522266624', b'1', b'0', 0);
INSERT INTO `tb_collections` VALUES (7, '大学堂', '68097421200338944', 'ca91ad1be9b24dc0877b8561ea4a700a3fef37d9.png', '大学堂出品，必属精品！关注简书大学堂官方微信公众号：jianshuIT \n做第一个知道内部消息的人！\n\n专题将收录所有简书大学堂精选优质课程，根据课程介绍操作即可报名。 ', '68093236522266624', b'1', b'0', 0);
INSERT INTO `tb_collections` VALUES (8, '上班这点事儿', '68097683080097792', 'd8792e9c1986496c74d65b0e98a81e30e0468191.jpeg', '欢迎关注公众号简宝玉( 公众号ID : jianshu4321 )后台回复“指南”获取玩转简书绝密珍贵资料汇总；有问题，找宝玉。简宝玉同志会专程为你答疑解惑关于简书的一切。\n\n本专题仅收录求职、简历、换工作、职业规划、招聘、职场干货、上班感悟、管理提升、工作效率等与上班相关文章。\n\n专题投稿和推荐到首页等事宜请看须知：', '68096767115407360', b'1', b'0', 0);
INSERT INTO `tb_collections` VALUES (9, 'ces', '68093236522266624', '70ca242d35d8010007c1b944f247632bc48807fc.jpg', 'ces', '68093236522266624', b'1', b'0', 0);
INSERT INTO `tb_collections` VALUES (10, '测试', '68093236522266624', '9e9c10a36ca95c33804c517faa475288f5e9b497.jpg', '。。。', '', b'1', b'0', 0);

-- ----------------------------
-- Table structure for tb_comments
-- ----------------------------
DROP TABLE IF EXISTS `tb_comments`;
CREATE TABLE `tb_comments`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `pid` bigint(20) NULL DEFAULT 0 COMMENT '所属留言ID',
  `post_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属文章ID',
  `sender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发送者ID',
  `type` tinyint(4) NULL DEFAULT 2 COMMENT '展示类型',
  `receiver` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接收者ID',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `status` tinyint(10) NULL DEFAULT 0 COMMENT '留言是否显示',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '留言创建时间',
  `likes` bigint(255) NULL DEFAULT 0 COMMENT '评论点赞',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_comments
-- ----------------------------
INSERT INTO `tb_comments` VALUES (26, 0, '68093509823115264', '68097421200338944', 2, '68093236522266624', '我是一楼', 0, '2019-04-14 21:37:29', 0);
INSERT INTO `tb_comments` VALUES (27, 0, '68093509823115264', '68097421200338944', 2, '68093236522266624', '我是二楼', 0, '2019-04-14 21:37:40', 0);
INSERT INTO `tb_comments` VALUES (28, 26, '68093509823115264', '68097683080097792', 2, '68097421200338944', '我是admin3', 0, '2019-04-14 21:38:30', 0);
INSERT INTO `tb_comments` VALUES (29, 27, '68093509823115264', '68097683080097792', 2, '68097421200338944', '我是admin3', 0, '2019-04-14 21:38:39', 0);
INSERT INTO `tb_comments` VALUES (30, 0, '71383024306237440', '68093236522266624', 2, '68093236522266624', '评论+1', 0, '2019-04-23 23:13:56', 0);
INSERT INTO `tb_comments` VALUES (31, 0, '71383024306237440', '68093236522266624', 2, '68093236522266624', '评论+2', 0, '2019-04-23 23:14:06', 0);
INSERT INTO `tb_comments` VALUES (32, 26, '68093509823115264', '68097683080097792', 2, '68097683080097792', '我是admin3', 0, '2019-04-23 23:37:43', 0);
INSERT INTO `tb_comments` VALUES (33, 30, '71383024306237440', '68093236522266624', 2, '68093236522266624', '测试', 0, '2019-04-24 01:20:09', 0);
INSERT INTO `tb_comments` VALUES (34, 0, '68093509823115264', '68093236522266624', 2, '68093236522266624', 'ceshi ', 0, '2019-04-24 09:09:26', 0);
INSERT INTO `tb_comments` VALUES (35, 26, '68093509823115264', '68093236522266624', 2, '68097683080097792', '测试', 0, '2019-04-24 09:09:54', 0);
INSERT INTO `tb_comments` VALUES (36, 0, '71383024306237440', '68093236522266624', 2, '68093236522266624', 'ces', 0, '2019-04-25 08:27:22', 0);
INSERT INTO `tb_comments` VALUES (37, 30, '71383024306237440', '68093236522266624', 2, '68093236522266624', 'admin111', 0, '2019-04-25 08:27:46', 0);

-- ----------------------------
-- Table structure for tb_logging
-- ----------------------------
DROP TABLE IF EXISTS `tb_logging`;
CREATE TABLE `tb_logging`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '系统日志ID',
  `uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户IP',
  `api` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'API链接',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日志创建日期',
  `action` enum('GET','POST','PUT','DELETE') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'GET' COMMENT '日志操作类型',
  `parameters` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `resp_body` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '响应主体',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_logging
-- ----------------------------
INSERT INTO `tb_logging` VALUES (1, '68093236522266624', NULL, '/app/web/info', '2019-04-22 23:59:30', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (2, '68093236522266624', NULL, '/app/web/info', '2019-04-23 00:00:17', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (3, '68093236522266624', NULL, '/app/web/info', '2019-04-23 00:01:40', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (4, '68093236522266624', NULL, '/app/web/info', '2019-04-23 00:03:30', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (5, '68093236522266624', NULL, '/app/web/info', '2019-04-23 00:03:47', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (6, '68093236522266624', NULL, '/app/web/info', '2019-04-23 00:04:24', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (7, '68093236522266624', '127.0.0.1:8080', '/app/web/info', '2019-04-23 00:04:58', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (8, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:48:51', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (9, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:48:52', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (10, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:48:52', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (11, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 10:48:52', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (12, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:48:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (13, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:48:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (14, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:48:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (15, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:49:17', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (16, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:49:18', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (17, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:49:18', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (18, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:49:43', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (19, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 10:49:43', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (20, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:49:48', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (21, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:49:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (22, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:49:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (23, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:50:33', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (24, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:50:33', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (25, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 10:50:33', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (26, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:51:53', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (27, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:51:53', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (28, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 10:51:53', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (29, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:51:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (30, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:51:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (31, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:51:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (32, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 10:51:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (33, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:53:17', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (34, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:53:18', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (36, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:53:30', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (37, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:53:30', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (38, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:53:30', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (40, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:53:39', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (41, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:53:40', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (42, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 10:53:40', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (43, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 10:53:40', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (44, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:54:10', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (45, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 10:54:10', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (47, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 10:54:44', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (48, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 10:54:44', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (49, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:00:25', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (50, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:00:26', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (51, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:00:26', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (53, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:02:15', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (54, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:02:15', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (56, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:05:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (57, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:05:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (58, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:05:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (59, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:05:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (60, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:06:38', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (61, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:06:39', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (63, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:07:35', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (64, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:08:46', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (65, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:08:47', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (66, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:12:14', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (67, '68093236522266624', '127.0.0.1:8080', '/port/aes', '2019-04-23 11:12:15', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (68, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:12:15', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (69, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:12:15', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (70, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:12:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (71, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:12:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (72, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:12:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (73, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:12:59', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (74, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:13:21', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (75, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:13:21', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (76, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:13:22', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (78, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:28:53', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (79, '68093236522266624', '127.0.0.1:8080', '/port/aes', '2019-04-23 11:28:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (80, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:28:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (81, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:28:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (82, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:28:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (83, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:31:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (84, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:31:55', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (85, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:32:35', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (86, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:32:35', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (87, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:33:51', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (88, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:33:51', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (90, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:36:47', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (93, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:36:47', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (94, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:38:14', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (95, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:38:14', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (97, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:38:15', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (98, '68093236522266624', '127.0.0.1:8080', '/post/one', '2019-04-23 11:40:19', 'GET', '{\"id\":[\"68093509823115264\"]}', NULL);
INSERT INTO `tb_logging` VALUES (99, '68093236522266624', '127.0.0.1:8080', '/comment/list', '2019-04-23 11:40:19', 'GET', '{\"post_id\":[\"68093509823115264\"]}', NULL);
INSERT INTO `tb_logging` VALUES (100, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:40:20', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (101, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:40:20', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (102, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:40:20', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (103, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:40:20', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (104, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:40:21', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (105, '68093236522266624', '127.0.0.1:8080', '/port/aes', '2019-04-23 11:40:21', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (106, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:40:21', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (107, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:40:21', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (108, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:40:21', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (109, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:40:30', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (110, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:40:31', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (111, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:41:56', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (112, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:41:56', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (113, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:41:56', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (114, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:41:56', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (115, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:42:07', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (116, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:42:07', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (117, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:43:51', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (119, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:43:51', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (120, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:44:01', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (121, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:44:01', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (122, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:44:01', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (123, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:44:01', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (124, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:48:45', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (125, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:48:45', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (128, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:52:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (129, '68093236522266624', '127.0.0.1:8080', '/port/aes', '2019-04-23 11:52:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (130, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:52:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (131, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:52:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (132, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:52:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (133, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:53:03', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (134, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:53:03', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (135, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 11:53:03', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (136, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 11:53:03', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (137, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 11:58:36', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (138, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 11:58:36', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (139, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:00:31', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (140, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 12:00:31', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (142, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:04:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (143, '68093236522266624', '127.0.0.1:8080', '/port/aes', '2019-04-23 12:04:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (144, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 12:04:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (145, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 12:04:54', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (146, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:07:20', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (147, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 12:07:20', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (148, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:10:00', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (149, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:10:12', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (150, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 12:10:12', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (153, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:10:27', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (154, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 12:10:27', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (155, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 12:10:27', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (156, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 12:10:27', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (157, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:11:04', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (158, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 12:11:04', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (159, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 12:11:04', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (160, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:11:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (161, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 12:11:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (162, '68093236522266624', '127.0.0.1:8080', '/collections/hot', '2019-04-23 12:11:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (163, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 12:11:49', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (164, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:12:08', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (165, '68093236522266624', '127.0.0.1:8080', '/post/hot', '2019-04-23 12:12:09', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (166, '68093236522266624', '127.0.0.1:8080', '/post/all', '2019-04-23 12:12:09', 'GET', '{}', NULL);
INSERT INTO `tb_logging` VALUES (167, '68093236522266624', '127.0.0.1:8080', '/undefined', '2019-04-23 12:12:53', 'GET', '{}', NULL);

-- ----------------------------
-- Table structure for tb_post
-- ----------------------------
DROP TABLE IF EXISTS `tb_post`;
CREATE TABLE `tb_post`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章简介',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章作者ID',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '文章更新时间',
  `type` tinyint(4) NULL DEFAULT 1 COMMENT '展示类型',
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章内图片，以;分割',
  `views` bigint(255) NULL DEFAULT 0 COMMENT '阅览量',
  `comments` int(255) NULL DEFAULT 0 COMMENT '留言数',
  `likes` int(255) NULL DEFAULT 0 COMMENT '被点赞数',
  `secret` tinyint(4) NULL DEFAULT 0 COMMENT '文章私密 0 - 公开 1-私密',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_post
-- ----------------------------
INSERT INTO `tb_post` VALUES ('68093509823115264', '测试文章', '@[TOC](这里写自定义目录标题)\n\n# 欢迎使用Markdown编辑器\n\n你好！ 这是你第一次使用 **Markdown编辑器** 所展示的欢迎页。如果你想学习如何使用Markdown编辑器, 可以仔细阅读这篇文章，了解一下Markdown的基本语法知识。\n\n## 新的改变\n\n我们对Markdown编辑器进行了一些功能拓展与语法支持，除了标准的Markdown编辑器功能，我们增加了如下几点新功能，帮助你用它写博客：\n\n1. **全新的界面设计** ，将会带来全新的写作体验；\n2. 在创作中心设置你喜爱的代码高亮样式，Markdown **将代码片显示选择的高亮样式** 进行展示；\n3. 增加了 **图片拖拽** 功能，你可以将本地的图片直接拖拽到编辑区域直接展示；\n4. 全新的 **KaTeX数学公式** 语法；\n5. 增加了支持**甘特图的mermaid语法[^1]** 功能；\n6. 增加了 **多屏幕编辑** Markdown文章功能；\n7. 增加了 **焦点写作模式、预览模式、简洁写作模式、左右区域同步滚轮设置** 等功能，功能按钮位于编辑区域与预览区域中间；\n8. 增加了 **检查列表** 功能。\n\n[^1]: [mermaid语法说明](https://mermaidjs.github.io/)\n\n## 功能快捷键\n\n撤销：<kbd>Ctrl/Command</kbd> + <kbd>Z</kbd>\n重做：<kbd>Ctrl/Command</kbd> + <kbd>Y</kbd>\n加粗：<kbd>Ctrl/Command</kbd> + <kbd>B</kbd>\n斜体：<kbd>Ctrl/Command</kbd> + <kbd>I</kbd>\n标题：<kbd>Ctrl/Command</kbd> + <kbd>Shift</kbd> + <kbd>H</kbd>\n无序列表：<kbd>Ctrl/Command</kbd> + <kbd>Shift</kbd> + <kbd>U</kbd>\n有序列表：<kbd>Ctrl/Command</kbd> + <kbd>Shift</kbd> + <kbd>O</kbd>\n检查列表：<kbd>Ctrl/Command</kbd> + <kbd>Shift</kbd> + <kbd>C</kbd>\n插入代码：<kbd>Ctrl/Command</kbd> + <kbd>Shift</kbd> + <kbd>K</kbd>\n插入链接：<kbd>Ctrl/Command</kbd> + <kbd>Shift</kbd> + <kbd>L</kbd>\n插入图片：<kbd>Ctrl/Command</kbd> + <kbd>Shift</kbd> + <kbd>G</kbd>\n\n## 合理的创建标题，有助于目录的生成\n\n直接输入1次<kbd>#</kbd>，并按下<kbd>space</kbd>后，将生成1级标题。\n输入2次<kbd>#</kbd>，并按下<kbd>space</kbd>后，将生成2级标题。\n以此类推，我们支持6级标题。有助于使用`TOC`语法后生成一个完美的目录。\n\n\n\n## 如何改变文本的样式\n\n*强调文本* _强调文本_\n\n**加粗文本** __加粗文本__\n\n==标记文本==\n\n~~删除文本~~\n\n> 引用文本\n\nH~2~O is是液体。\n\n2^10^ 运算结果是 1024.\n\n\n![u=3018968254,2801372361fm=27gp=0.jpg](/api/upload/70ca242d35d8010007c1b944f247632bc48807fc.jpg)\n## 插入链接与图片\n\n链接: [link](https://mp.csdn.net).\n\n图片: \n![4.jpg](/api/upload/a3ec6ec85ac11eaf4bfba2216fa05464464b677b.jpg)\n\n## 如何插入一段漂亮的代码片\n\n去[博客设置](https://mp.csdn.net/configure)页面，选择一款你喜欢的代码片高亮样式，下面展示同样高亮的 `代码片`.\n\n```javascript\n// An highlighted block\nvar foo = \'bar\';\n```\n\n```\n// An highlighted block\nvar foo = \'bar\';\n```\n\n\n\n## 生成一个适合你的列表\n\n- 项目\n  - 项目\n    - 项目\n\n1. 项目1\n2. 项目2\n3. 项目3\n\n- [ ] 计划任务\n- [x] 完成任务\n\n## 创建一个表格\n\n一个简单的表格是这么创建的：\n\n| 项目 | Value |\n| ---- | ----- |\n| 电脑 | $1600 |\n| 手机 | $12   |\n| 导管 | $1    |\n\n### 设定内容居中、居左、居右\n\n使用`:---------:`居中\n使用`:----------`居左\n使用`----------:`居右\n\n|     第一列     |         第二列 | 第三列         |\n| :------------: | -------------: | :------------- |\n| 第一列文本居中 | 第二列文本居右 | 第三列文本居左 |\n\n### SmartyPants\n\nSmartyPants将ASCII标点字符转换为“智能”印刷标点HTML实体。例如：\n|    TYPE   |ASCII                          |HTML                         \n|----------------|-------------------------------|-----------------------------|\n|Single backticks|`\'Isn\'t this fun?\'`            |\'Isn\'t this fun?\'            |\n|Quotes          |`\"Isn\'t this fun?\"`            |\"Isn\'t this fun?\"            |\n|Dashes          |`-- is en-dash, --- is em-dash`|-- is en-dash, --- is em-dash|\n\n## 创建一个自定义列表\n\nMarkdown\n:  Text-to-HTML conversion tool\n\nAuthors\n:  John\n:  Luke\n\n## 如何创建一个注脚\n\n一个具有注脚的文本。[^2]\n\n[^2]: 注脚的解释\n\n## 注释也是必不可少的\n\nMarkdown将文本转换为 HTML。\n\n*[HTML]:   超文本标记语言\n\n## KaTeX数学公式\n\n您可以使用渲染LaTeX数学表达式 [KaTeX](https://khan.github.io/KaTeX/):\n\nGamma公式展示 $\\Gamma(n) = (n-1)!\\quad\\forall\nn\\in\\mathbb N$ 是通过欧拉积分\n$$\n\\Gamma(z) = \\int_0^\\infty t^{z-1}e^{-t}dt\\,.\n$$\n\n> 你可以找到更多关于的信息 **LaTeX** 数学表达式[here][1].\n\n## 新的甘特图功能，丰富你的文章\n\n```mermaid\ngantt\n        dateFormat  YYYY-MM-DD\n        title Adding GANTT diagram functionality to mermaid\n        section 现有任务\n        已完成               :done,    des1, 2014-01-06,2014-01-08\n        进行中               :active,  des2, 2014-01-09, 3d\n        计划一               :         des3, after des2, 5d\n        计划二               :         des4, after des3, 5d\n```\n\n- 关于 **甘特图** 语法，参考 [这儿][2],\n\n## UML 图表\n\n可以使用UML图表进行渲染。 [Mermaid](https://mermaidjs.github.io/). 例如下面产生的一个序列图：:\n\n```mermaid\nsequenceDiagram\n张三 ->> 李四: 你好！李四, 最近怎么样?\n李四-->>王五: 你最近怎么样，王五？\n李四--x 张三: 我很好，谢谢!\n李四-x 王五: 我很好，谢谢!\nNote right of 王五: 李四想了很长时间, 文字太长了<br/>不适合放在一行.\n\n李四-->>张三: 打量着王五...\n张三->>王五: 很好... 王五, 你怎么样?\n```\n\n这将产生一个流程图。:\n\n```mermaid\ngraph LR\nA[长方形] -- 链接 --> B((圆))\nA --> C(圆角长方形)\nB --> D{菱形}\nC --> D\n```\n\n- 关于 **Mermaid** 语法，参考 [这儿][3],\n\n## 导出与导入\n\n### 导出\n\n如果你想尝试使用此编辑器, 你可以在此篇文章任意编辑。当你完成了一篇文章的写作, 在上方工具栏找到 **文章导出** ，生成一个.md文件或者.html文件进行本地保存。\n\n### 导入\n\n如果你想加载一篇你写过的.md文件或者.html文件，在上方工具栏可以选择导入功能进行对应扩展名的文件导入，\n继续你的创作。\n\n[1]: http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference\n[2]: https://mermaidjs.github.io/\n[3]: https://mermaidjs.github.io/\n[4]: http://adrai.github.io/flowchart.js/', '这里写自定义目录标题欢迎使用Markdown编辑器新的改变功能快捷键合理的创建标题，有助于目录的生成如何改变文本的样式插入链接与图片如何插入一段漂亮的代码片生成一个适合你的列表创建一个表格设定内容居中...', '68093236522266624', '2019-04-14 21:21:32', '2019-04-24 09:08:19', 1, '/upload/a3ec6ec85ac11eaf4bfba2216fa05464464b677b.jpg;/upload/70ca242d35d8010007c1b944f247632bc48807fc.jpg', 0, 0, 46, 0);
INSERT INTO `tb_post` VALUES ('71383024306237440', '未来可期', '关于2019年，我的期待是：\n![ae5bf068445b4a9087f1f6f88f01ae7a.jpg](/api/upload/454aa8651c36a2f698659caa5b13630441b976c8.jpg)\n\n1.不要熬夜。每次熬夜的时候都在伤心然后想很多，但其实什么也解决不了，只会毁了健康而已。\n\n2.花多一点时间在自己热爱的事情上。之前看到村上春树说每天会花四个小时雷打不动的写作，大家都如此勤勉，普通人更该是这样。就还是那句话，热爱要体现在时间上。\n\n3.做一个情绪稳定的人，不在吵架的时候对重要的人讲过分刻薄的话。\n\n4.让自己变得更好看一点。女孩子会因为打扮的漂漂亮亮的而更开心更有自信诶。所以2019年我要多花一些心思在这上面。\n\n5.下定决心要做的事情，不要拖延。\n\n6.说到做到，尽量不去承诺一些自己做不到的事情。我觉得这其实是特别可贵的品质。\n\n7.多陪陪家人朋友。\n\n8.多读两本书，多看两个好电影，我不觉得阅读和看电影就能让我成为更好的人，但我相信好的作品是有力量的。\n\n9.能够发自己内心的喜欢自己，喜欢当下的生活。我觉得这比什么都宝贵，是最重要的，所以放在最后。\n\n啊，希望2019年能尽可能地做到这些吧。虽然这些看起来很小的事情，努力做起来其实也很难。但不重要，学到的都是赚到的，我一定会成为更好的自己。\n\n人好像越长大越会寄希望于一些朴素的愿望。比起制定一个很大的做不到目标，更希望踏踏实实地做一些小的改变。', '关于2019年，我的期待是：1.不要熬夜。每次熬夜的时候都在伤心然后想很多，但其实什么也解决不了，只会毁了健康而已。2.花多一点时间在自己热爱的事情上。之前看到村上春树说每天会花四个小时雷打不动的写作...', '68093236522266624', '2019-04-23 23:12:53', '2019-04-24 09:12:53', 1, '/upload/454aa8651c36a2f698659caa5b13630441b976c8.jpg', 0, 0, 23, 0);
INSERT INTO `tb_post` VALUES ('71385811077312512', '真正喜欢上一个人，往往是这三种感觉', '在感情中，很多人不但会疑惑，对方到底是不是，真的喜欢自己，也会很怀疑，自己到底是不是，真正喜欢上了一个人。\n\n因为有些喜欢，是真正的喜欢，而有些喜欢，不过只是刹那的激情和好感，根本就算不得数。\n\n怎么样才能判断，自己是不是真的喜欢上了呢，真正喜欢上一个人，往往是下面这三种感觉。\n\n\n\n![img](https:////upload-images.jianshu.io/upload_images/2100084-46aa78dc3fdb4f28?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp)\n\n\n\n**怦然心动，久久都是如此。**\n\n很多人都觉得心动了，就是喜欢了，其实并没有。\n\n在生活中，看见长得好看的人，你会觉得心动，看见自己喜欢的明星，你会觉得心动，看到你喜欢的物品，你同样会觉得心动。\n\n爱情的确是当你看到一个人的时候，怦然心动，但是并不是每一次心动，都意味着你喜欢上了。心动总是有很多，但是很多不过都只是刹那。\n\n有且只有当你遇到一个人，你不只是那一瞬间心动了，随时看见他，和不看见他的时候，都觉得心动，你才算是真正喜欢上人家了。\n\n\n\n![img](https:////upload-images.jianshu.io/upload_images/2100084-36f4577ec1c37f8c?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp)\n\n\n\n**发疯似地，非常想念那个人。**\n\n在喜欢上一个人的时候，你总是会，不自觉地总是想起他。\n\n你会发现，不管是在睡觉的时候，在工作的时候，在发呆的时候，他都总是会不断地浮现在你的脑海，久久挥之不去。\n\n每当想他的时候，你总是会去寻找跟他相关的一切痕迹，想要去联系他，想要知道他在干嘛，想要他飞奔到他的身边，亲眼看看他。\n\n你根本就没有办法控制自己，不去想他，你越是不想去想，却越是想的厉害，他完全地占据了你的心，和你的脑海。\n\n\n\n![img](https:////upload-images.jianshu.io/upload_images/2100084-41da3a0ad15b2283?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp)\n\n\n\n**会因为那个人，感受到心痛。**\n\n当有一天，你的心情特别容易被一个人影响的时候，那么你肯定是喜欢了。\n\n那个人开心，你也觉得开心，那个人不开心，你也觉得不开心，那个人遇到了好事，你会为他高兴，那个人遇到不好的事，你会觉得比他更心痛。\n\n你的这种感同身受，这种心痛，这种总是希望他过得好的心情，就是因为你把他放在了心尖尖上，所以才会有。\n\n你见不得他受一点委屈，恨不得自己可以为他承受，你总是因为他觉得很难受，你这就是真的喜欢了。因为爱了，所以才痛了。', '在感情中，很多人不但会疑惑，对方到底是不是，真的喜欢自己，也会很怀疑，自己到底是不是，真正喜欢上了一个人。因为有些喜欢，是真正的喜欢，而有些喜欢，不过只是刹那的激情和好感，根本就算不得数。怎么样才能判...', '68093236522266624', '2019-04-23 23:23:58', '2019-04-25 01:16:38', 1, '/upload/44aa4067f33477c5e0e6810966369917e95b27f1.jpg', 0, 0, 5, 0);
INSERT INTO `tb_post` VALUES ('71386911239057408', '一张图弄清Activity的启动过程', '> Activity启动相关源码比较复杂、涉及到的链路较多，我经常在理清楚一遍之后过一段时间再阅读就和第一次读一样，依旧要费一番功夫才能理清。为了加深对Activity启动过程的理解也方便以后回顾因此我把整个Activity的启动过程总结为一张图。此图基于9.0的Android源码(Activty相关代码虽然在不断重构但核心逻辑还是没变的)。\n\n![152338541baf894cf3a33cb0.png](/api/upload/765850bb917c36a9061043efe67e8b535fc78ee8.png)\n\n## 图中相关模块的作用\n\n## ActivityThread\n\n可以把它理解为应用运行的**主线类**，它的主要功能有:\n\n#### 包含了应用的入口 : main()\n\n这个函数主要做了下面工作:\n\n1. 利用`ApplicationThread`建立了应用与`AMS`的链接。\n2. 构造了`Instrumentation`。\n3. 创建了应用的`Application`。\n4. 开启了主线程的消息处理模型。\n\n#### 管理应用四大组件的运行\n\n## ApplicationThread\n\n它是应用程序在`AMS`中的`Binder`对象，`AMS`利用它可以和`ActivityThread`通信，四大组件相关回调都是通过它来告诉`ActivityThread`的。\n\n### Instrumentation\n\n这个类伴随着`ActivityThread`一块诞生，主要用来帮助`ActivityThread`来管理`Activity`相关工作。它持有着`AMS`在应用端的`Binder`，`ActivityThread`主要通过它来和`AMS`通信。\n\n## ActivityManagerService\n\n它是Android最核心的服务，主要管理着Android系统中四大组件的运行，\n\n## ActivityStackSupervisor\n\n负责所有Activity栈的管理。内部管理了mHomeStack、mFocusedStack和mLastFocusedStack三个Activity栈。其中，mHomeStack管理的是Launcher相关的Activity栈；mFocusedStack管理的是当前显示在前台Activity的Activity栈；mLastFocusedStack管理的是上一次显示在前台Activity的Activity栈。\n\n## ClientLifecycleManager\n\n帮助`AMS`回调应用程序四大组件生命周期相关方法。\n\n> 参考文章\n\n> [（Android 9.0）Activity启动流程源码分析](https://link.juejin.im?target=https%3A%2F%2Fblog.csdn.net%2Flj19851227%2Farticle%2Fdetails%2F82562115)\n\n## The End\n\n### **【附】相关架构及资料**\n\n\n\n![img](https:////upload-images.jianshu.io/upload_images/15233854-9a868df0e5641f97?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp)\n\n\n\n### **资料领取**\n\n### **关注+点赞+加群：185873940 免费获取！**\n\n**点击链接加入群聊【Android IOC架构设计】：https://jq.qq.com/?_wv=1027&k=5tIZkaU**\n\n**领取获取往期Android高级架构资料、源码、笔记、视频。高级UI、性能优化、架构师课程、NDK、混合式开发（ReactNative+Weex）微信小程序、Flutter全方面的Android进阶实践技术**', 'Activity启动相关源码比较复杂、涉及到的链路较多，我经常在理清楚一遍之后过一段时间再阅读就和第一次读一样，依旧要费一番功夫才能理清。为了加深对Activity启动过程的理解也方便以后回顾因此我把...', '68093236522266624', '2019-04-23 23:28:20', '2019-04-23 23:29:00', 1, '/upload/765850bb917c36a9061043efe67e8b535fc78ee8.png', 0, 0, 0, 0);
INSERT INTO `tb_post` VALUES ('71532558256713728', '2019-04-24', NULL, NULL, '71532210750238720', '2019-04-24 09:07:05', '2019-04-24 09:07:05', 1, NULL, 0, 0, 0, 0);
INSERT INTO `tb_post` VALUES ('71884745654677504', 'ceshi', '```\n...\n```\n\n![demo616a47e5d31.jpg](/api/upload/9e9c10a36ca95c33804c517faa475288f5e9b497.jpg)', '......', '68093236522266624', '2019-04-25 08:26:33', '2019-04-25 08:26:57', 1, '/upload/9e9c10a36ca95c33804c517faa475288f5e9b497.jpg', 0, 0, 0, 0);

-- ----------------------------
-- Table structure for tb_post_collections
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_collections`;
CREATE TABLE `tb_post_collections`  (
  `pid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章id',
  `cid` int(11) NOT NULL COMMENT '专题id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_post_collections
-- ----------------------------
INSERT INTO `tb_post_collections` VALUES ('68093509823115264', 6);
INSERT INTO `tb_post_collections` VALUES ('71383024306237440', 6);
INSERT INTO `tb_post_collections` VALUES ('71385811077312512', 6);
INSERT INTO `tb_post_collections` VALUES ('71386911239057408', 6);

-- ----------------------------
-- Table structure for tb_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_test`;
CREATE TABLE `tb_test`  (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID(唯一)',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名(唯一)',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱(唯一)',
  `mobile` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `logins` bigint(255) NULL DEFAULT 0 COMMENT '登录次数',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期(时间戳)',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新日期(时间戳)',
  `lastTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后登录日期',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '用户状态 0- 启用 -1-禁用 -2 删除',
  `level` int(2) NULL DEFAULT 0 COMMENT '用户级别',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'images/avatar.png' COMMENT '用户头像',
  `gender` tinyint(4) NULL DEFAULT 0 COMMENT '用户性别 0 -男 1-女',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户简介',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_username`(`username`) USING BTREE COMMENT '用户名唯一',
  UNIQUE INDEX `unique_mobile`(`mobile`) USING BTREE COMMENT '用户手机号唯一'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('68093236522266624', 'admin', 'df655ad8d3229f3269fad2a8bab59b6c', '超级管理员', '1249205951@qq.com', '15280553332', 0, '2019-04-14 21:20:27', '2019-04-25 08:29:52', '2019-04-25 08:29:52', -2, 10, 'upload/9e9c10a36ca95c33804c517faa475288f5e9b497.jpg', 1, '超级管理员ces');
INSERT INTO `tb_user` VALUES ('68097421200338944', 'admin2', '8eb4cc3364deb2eeed7705c56c841e77', '我是妹子', '', '15280553352', 0, '2019-04-14 21:37:04', '2019-04-25 01:15:31', '2019-04-25 01:15:31', 0, 0, 'upload/454aa8651c36a2f698659caa5b13630441b976c8.jpg', 0, NULL);
INSERT INTO `tb_user` VALUES ('68097683080097792', 'admin3', '9dc4d3382383f682e9d39c431601f13c', 'admin3', '', '15280553353', 0, '2019-04-14 21:38:07', '2019-04-23 23:38:36', '2019-04-23 23:38:36', 0, 0, 'images/avatar.png', 0, '一个无聊的人');
INSERT INTO `tb_user` VALUES ('71400842846285824', 'test1', '0b800cb3a7c26c9dde0a60e28bff15b5', 'test1', '', '15280553356', 0, '2019-04-24 00:23:42', '2019-04-24 00:23:42', '2019-04-24 00:23:42', 0, 0, 'images/avatar.png', 0, NULL);
INSERT INTO `tb_user` VALUES ('71401756629938176', 'test3', 'df691c6a8fe4f320a73e0360e76712c5', '隔壁老王', '', '15280653321', 0, '2019-04-24 00:27:19', '2019-04-24 00:28:07', '2019-04-24 00:28:07', 0, 0, 'upload/70ca242d35d8010007c1b944f247632bc48807fc.jpg', 0, NULL);
INSERT INTO `tb_user` VALUES ('71522413023866880', 'test12', 'ee384198e4574ad6d10f0776453bbc02', 'test12', '', '15280553350', 0, '2019-04-24 08:26:46', '2019-04-24 08:27:48', '2019-04-24 08:27:48', 0, 0, 'images/avatar.png', 0, NULL);
INSERT INTO `tb_user` VALUES ('71532210750238720', 'test13', 'b84093216f28954e4f4c2f0b0ca7d2ab', 'test13', '', '15280553354', 0, '2019-04-24 09:05:42', '2019-04-24 23:11:37', '2019-04-24 23:11:37', 0, 0, 'images/avatar.png', 0, NULL);
INSERT INTO `tb_user` VALUES ('71884482634067968', 'test1324', '7bdb68f40127aafef88cf7b6652fe5da', 'test1324', '', '15280553351', 0, '2019-04-25 08:25:30', '2019-04-25 08:25:30', '2019-04-25 08:25:30', 0, 0, 'images/avatar.png', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
