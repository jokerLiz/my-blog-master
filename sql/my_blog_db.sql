/*
Navicat MySQL Data Transfer

Source Server         : java
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : my_blog_db

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-02-06 22:04:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `statistics`
-- ----------------------------
DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics` (
  `visit_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `visit_date` date NOT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statistics
-- ----------------------------
INSERT INTO `statistics` VALUES ('1', '2021-02-04');
INSERT INTO `statistics` VALUES ('2', '2021-02-06');
INSERT INTO `statistics` VALUES ('3', '2021-02-07');
INSERT INTO `statistics` VALUES ('4', '2021-02-07');

-- ----------------------------
-- Table structure for `tb_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user`;
CREATE TABLE `tb_admin_user` (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint(4) DEFAULT '0' COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin_user
-- ----------------------------
INSERT INTO `tb_admin_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'jokerZ2', '0');

-- ----------------------------
-- Table structure for `tb_blog`
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE `tb_blog` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '博客表主键id',
  `blog_title` varchar(200) NOT NULL COMMENT '博客标题',
  `blog_sub_url` varchar(200) NOT NULL COMMENT '博客自定义路径url',
  `blog_cover_image` varchar(200) NOT NULL COMMENT '博客封面图',
  `blog_content` mediumtext NOT NULL COMMENT '博客内容',
  `blog_category_id` int(11) NOT NULL COMMENT '博客分类id',
  `blog_category_name` varchar(50) NOT NULL COMMENT '博客分类(冗余字段)',
  `blog_tags` varchar(200) NOT NULL COMMENT '博客标签',
  `blog_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-草稿 1-发布',
  `blog_views` bigint(20) NOT NULL DEFAULT '0' COMMENT '阅读量',
  `enable_comment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-允许评论 1-不允许评论',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog
-- ----------------------------
INSERT INTO `tb_blog` VALUES ('1', '硅谷', 'about', 'http://localhost:8080/admin/dist/img/rand/33.jpg', '##尚硅谷横跨Java、HTML5前端、大数据、区块链、Python等多个技术方向\n源码级讲解的课程，有广度更有深度，助万千“谷粉”走上了软件开发之路，为众多IT企业技术升级提供了宝贵参考，好评如潮！\n\n## Contact\n\n- 电话：010-56253825\n- 邮箱：info@atguigu.com\n- 网站：http://www.atguigu.com/', '0', '默认分类', '世界上有一个很可爱的人,现在这个人就在看这句话', '1', '251', '0', '1', '2017-03-12 00:31:15', '2018-11-12 00:31:15');
INSERT INTO `tb_blog` VALUES ('2', '文章总目录', '', 'http://localhost:8080/admin/dist/img/rand/13.jpg', '文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录文章总目录', '0', '默认分类', '目录', '1', '17', '0', '1', '2019-04-24 15:42:23', '2019-04-24 15:42:23');
INSERT INTO `tb_blog` VALUES ('3', 'Spring+SpringMVC+MyBatis整合系列', '', 'http://localhost:8080/admin/dist/img/rand/36.jpg', 'Spring+SpringMVC+MyBatis整合系列Spring+SpringMVC+MyBatis整合系列Spring+SpringMVC+MyBatis整合系列Spring+SpringMVC+MyBatis整合系列Spring+SpringMVC+MyBatis整合系列Spring+SpringMVC+MyBatis整合系列Spring+SpringMVC+MyBatis整合系列Spring+SpringMVC+MyBatis整合系列', '0', '默认分类', 'Spring,SpringMVC,MyBatis,easyUI,AdminLte3', '1', '62', '0', '1', '2019-04-24 15:46:15', '2019-04-24 15:46:15');
INSERT INTO `tb_blog` VALUES ('4', 'SpringBoot系列教程', '', 'http://localhost:8080/admin/dist/img/rand/29.jpg', '> > # # SpringBoot系列教程**SpringBoot**系列教程SpringBoot系列教程SpringBoot系列教程SpringBoot系列教程SpringBoot系列教程SpringBoot系列教程SpringBoot系列教程ETSETSETSETSETSETSETSETS', '0', '默认分类', 'SpringBoot,入门教程,实战教程,spring-boot企业级开发', '1', '18', '0', '1', '2019-05-13 09:58:54', '2019-05-13 09:58:54');
INSERT INTO `tb_blog` VALUES ('5', 'python入门', '', 'http://localhost:8080/admin/dist/img/rand/7.jpg', '## python\n\n```\ndef de():\n	...\n```', '0', '默认分类', 'python', '1', '8', '0', '1', '2020-12-18 15:37:45', null);
INSERT INTO `tb_blog` VALUES ('6', 'dubbo', '', 'http://localhost:8080/admin/dist/img/rand/4.jpg', '```\ndubbo\n```', '0', '默认分类', '分布式', '1', '9', '0', '1', '2021-02-03 14:29:20', null);
INSERT INTO `tb_blog` VALUES ('7', 'Spring Boot', '', 'http://localhost:8080/admin/dist/img/rand/7.jpg', '## Spring Boot 入门1\n\n这是我第一个Spring boot教程', '31', 'Spring Boot', 'Spring Boot,Java,分布式', '1', '0', '0', '0', '2021-02-06 14:02:37', null);

-- ----------------------------
-- Table structure for `tb_blog_category`
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_category`;
CREATE TABLE `tb_blog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类表主键',
  `category_name` varchar(50) NOT NULL COMMENT '分类的名称',
  `category_icon` varchar(50) NOT NULL COMMENT '分类的图标',
  `category_rank` int(11) NOT NULL DEFAULT '1' COMMENT '分类的排序值 被使用的越多数值越大',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog_category
-- ----------------------------
INSERT INTO `tb_blog_category` VALUES ('20', 'About', '/admin/dist/img/category/10.png', '10', '1', '2018-11-12 00:28:49');
INSERT INTO `tb_blog_category` VALUES ('22', 'SSM整合进阶篇', '/admin/dist/img/category/02.png', '20', '1', '2018-11-12 10:42:25');
INSERT INTO `tb_blog_category` VALUES ('24', '日常随笔', '/admin/dist/img/category/06.png', '29', '1', '2018-11-12 10:43:21');
INSERT INTO `tb_blog_category` VALUES ('25', 'Java', '/admin/dist/img/category/02.png', '1', '1', '2021-02-04 15:58:21');
INSERT INTO `tb_blog_category` VALUES ('26', 'DateBase', '/admin/dist/img/category/04.png', '1', '0', '2021-02-06 13:30:36');
INSERT INTO `tb_blog_category` VALUES ('27', 'HTML5', '/admin/dist/img/category/08.png', '1', '0', '2021-02-06 13:31:05');
INSERT INTO `tb_blog_category` VALUES ('28', 'Docker', '/admin/dist/img/category/11.png', '1', '0', '2021-02-06 13:31:25');
INSERT INTO `tb_blog_category` VALUES ('29', '股票基金', '/admin/dist/img/category/17.png', '1', '1', '2021-02-06 13:31:42');
INSERT INTO `tb_blog_category` VALUES ('30', 'Java', '/admin/dist/img/category/02.png', '1', '0', '2021-02-06 13:31:59');
INSERT INTO `tb_blog_category` VALUES ('31', 'Spring Boot', '/admin/dist/img/category/15.png', '2', '0', '2021-02-06 14:00:41');

-- ----------------------------
-- Table structure for `tb_blog_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_comment`;
CREATE TABLE `tb_blog_comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `blog_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '关联的blog主键',
  `commentator` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者名称',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '评论人的邮箱',
  `website_url` varchar(50) NOT NULL DEFAULT '' COMMENT '网址',
  `comment_body` varchar(200) NOT NULL DEFAULT '' COMMENT '评论内容',
  `comment_create_time` datetime DEFAULT NULL COMMENT '评论提交时间',
  `commentator_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '评论时的ip地址',
  `reply_body` varchar(200) NOT NULL DEFAULT '' COMMENT '回复内容',
  `reply_create_time` datetime DEFAULT NULL COMMENT '回复时间',
  `comment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否审核通过 0-未审核 1-审核通过',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除 0-未删除 1-已删除',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog_comment
-- ----------------------------
INSERT INTO `tb_blog_comment` VALUES ('27', '4', 'liquid', '110@163.com', '', 'qwqwqwqwqw', null, '', '', null, '1', '0');
INSERT INTO `tb_blog_comment` VALUES ('28', '3', 'test', '45454545@qq.com', '', '13213165465464565465', '2021-02-01 15:18:47', '', 'ni', '2021-02-01 15:18:47', '1', '0');
INSERT INTO `tb_blog_comment` VALUES ('29', '5', '李钊', '1694768857@qq.com', '', '写的真好', '2020-12-18 15:38:20', '', '哈哈哈', '2021-01-30 15:17:51', '1', '0');

-- ----------------------------
-- Table structure for `tb_blog_tag`
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_tag`;
CREATE TABLE `tb_blog_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签表主键id',
  `tag_name` varchar(100) NOT NULL COMMENT '标签名称',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog_tag
-- ----------------------------
INSERT INTO `tb_blog_tag` VALUES ('57', '世界上有一个很可爱的人', '1', '2018-11-12 00:31:15');
INSERT INTO `tb_blog_tag` VALUES ('58', '现在这个人就在看这句话', '1', '2018-11-12 00:31:15');
INSERT INTO `tb_blog_tag` VALUES ('66', 'Spring', '0', '2018-11-12 10:55:14');
INSERT INTO `tb_blog_tag` VALUES ('67', 'SpringMVC', '0', '2018-11-12 10:55:14');
INSERT INTO `tb_blog_tag` VALUES ('68', 'MyBatis', '0', '2018-11-12 10:55:14');
INSERT INTO `tb_blog_tag` VALUES ('69', 'easyUI', '0', '2018-11-12 10:55:14');
INSERT INTO `tb_blog_tag` VALUES ('127', '目录', '1', '2019-04-24 15:41:39');
INSERT INTO `tb_blog_tag` VALUES ('130', 'SpringBoot', '0', '2019-05-13 09:58:54');
INSERT INTO `tb_blog_tag` VALUES ('131', '入门教程', '1', '2019-05-13 09:58:54');
INSERT INTO `tb_blog_tag` VALUES ('132', '实战教程', '1', '2019-05-13 09:58:54');
INSERT INTO `tb_blog_tag` VALUES ('133', 'spring-boot企业级开发', '1', '2019-05-13 09:58:54');
INSERT INTO `tb_blog_tag` VALUES ('134', 'python', '0', null);
INSERT INTO `tb_blog_tag` VALUES ('135', 'GO', '1', '2020-12-18 15:42:31');
INSERT INTO `tb_blog_tag` VALUES ('136', 'Spring Boot', '0', null);
INSERT INTO `tb_blog_tag` VALUES ('137', 'Java', '0', null);
INSERT INTO `tb_blog_tag` VALUES ('138', '分布式', '0', null);

-- ----------------------------
-- Table structure for `tb_blog_tag_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_tag_relation`;
CREATE TABLE `tb_blog_tag_relation` (
  `relation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关系表id',
  `blog_id` bigint(20) NOT NULL COMMENT '博客id',
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog_tag_relation
-- ----------------------------
INSERT INTO `tb_blog_tag_relation` VALUES ('283', '3', '66', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('284', '3', '67', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('285', '3', '68', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('286', '3', '69', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('287', '3', '128', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('288', '2', '127', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('289', '1', '57', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('290', '1', '58', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('299', '4', '130', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('300', '4', '131', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('301', '4', '132', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('302', '4', '133', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('303', '5', '134', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('305', '6', '136', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('306', '7', '136', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('307', '7', '137', null);
INSERT INTO `tb_blog_tag_relation` VALUES ('308', '7', '138', null);

-- ----------------------------
-- Table structure for `tb_config`
-- ----------------------------
DROP TABLE IF EXISTS `tb_config`;
CREATE TABLE `tb_config` (
  `config_name` varchar(100) NOT NULL DEFAULT '' COMMENT '配置项的名称',
  `config_value` varchar(200) NOT NULL DEFAULT '' COMMENT '配置项的值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_config
-- ----------------------------
INSERT INTO `tb_config` VALUES ('footerAbout', 'your personal blog. have fun.', '2018-11-11 20:33:23', '2020-12-17 14:19:15');
INSERT INTO `tb_config` VALUES ('footerCopyRight', '2020 guigu', '2018-11-11 20:33:31', '2020-12-17 14:19:15');
INSERT INTO `tb_config` VALUES ('footerICP', '京ICP备13018370号', '2018-11-11 20:33:27', '2020-12-17 14:19:15');
INSERT INTO `tb_config` VALUES ('footerPoweredBy', 'http://www.atguigu.com/', '2018-11-11 20:33:36', '2020-12-17 14:19:15');
INSERT INTO `tb_config` VALUES ('footerPoweredByURL', 'http://www.atguigu.com/', '2018-11-11 20:33:39', '2020-12-17 14:19:15');
INSERT INTO `tb_config` VALUES ('websiteDescription', 'personal blog是SpringBoot2+Thymeleaf+Mybatis建造的个人博客网站.SpringBoot实战博客源码.个人博客搭建', '2018-11-11 20:33:04', '2020-07-26 13:25:08');
INSERT INTO `tb_config` VALUES ('websiteIcon', '/admin/dist/img/favicon.png', '2018-11-11 20:33:11', '2020-07-26 13:25:08');
INSERT INTO `tb_config` VALUES ('websiteLogo', '/admin/dist/img/logo2.png', '2018-11-11 20:33:08', '2020-07-26 13:25:08');
INSERT INTO `tb_config` VALUES ('websiteName', 'personal blog', '2018-11-11 20:33:01', '2020-07-26 13:25:08');
INSERT INTO `tb_config` VALUES ('yourAvatar', '/admin/dist/img/13.png', '2018-11-11 20:33:14', '2020-07-26 13:24:20');
INSERT INTO `tb_config` VALUES ('yourEmail', 'info@atguigu.com', '2018-11-11 20:33:17', '2020-07-26 13:24:20');
INSERT INTO `tb_config` VALUES ('yourName', 'guigu', '2018-11-11 20:33:20', '2020-07-26 13:24:20');

-- ----------------------------
-- Table structure for `tb_link`
-- ----------------------------
DROP TABLE IF EXISTS `tb_link`;
CREATE TABLE `tb_link` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友链表主键id',
  `link_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '友链类别 0-友链 1-推荐 2-个人网站',
  `link_name` varchar(50) NOT NULL COMMENT '网站名称',
  `link_url` varchar(100) NOT NULL COMMENT '网站链接',
  `link_description` varchar(100) NOT NULL COMMENT '网站描述',
  `link_rank` int(11) NOT NULL DEFAULT '0' COMMENT '用于列表排序',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0-未删除 1-已删除',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_link
-- ----------------------------
