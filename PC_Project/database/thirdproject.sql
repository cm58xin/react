/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : thirdproject

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-18 09:32:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assess
-- ----------------------------
DROP TABLE IF EXISTS `assess`;
CREATE TABLE `assess` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `assesstext` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '评价内容',
  `grade` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '评价等级',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of assess
-- ----------------------------
INSERT INTO `assess` VALUES ('1', '丽雅', '衣服好看，好满意，下一再来', '好评');

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', 'tjfl', '精美箱包', '/api/img/bag2.jpg', 'zctj');
INSERT INTO `classify` VALUES ('2', 'tjfl', '服饰专场', '/api/img/clothes.jpg', 'zctj');
INSERT INTO `classify` VALUES ('3', 'tjfl', '潮流女鞋', '/api/img/shoes.jpg', 'zctj');
INSERT INTO `classify` VALUES ('4', 'tjfl', '奢侈品牌', '/api/img/shechi2.jpg', 'zctj');
INSERT INTO `classify` VALUES ('5', 'tjfl', '衣物清洁', '/api/img/qingjie.jpg', 'rmfl');
INSERT INTO `classify` VALUES ('6', 'tjfl', '面部护理', '/api/img/huli.jpg', 'rmfl');
INSERT INTO `classify` VALUES ('7', 'tjfl', '经典首饰', '/api/img/shoushi.jpg', 'rmfl');
INSERT INTO `classify` VALUES ('8', 'tjfl', '职场衬衫', '/api/img/chenshan.jpg', 'rmfl');
INSERT INTO `classify` VALUES ('9', 'tjfl', '新款男装', '/api/img/nanzhuang.jpg', 'rmfl');
INSERT INTO `classify` VALUES ('10', 'tjfl', '保暖内衣', '/api/img/baonuan.jpg', 'rmfl');
INSERT INTO `classify` VALUES ('11', 'gjpp', '头部图片', '/api/img/dapai.jpg', 'top');
INSERT INTO `classify` VALUES ('12', 'scpp', '头部图片', '/api/img/shechi3.jpg', 'top');
INSERT INTO `classify` VALUES ('13', 'scpp', '脱颖而出，只为你而生', '/api/img/tuoying.jpg', 'main1');
INSERT INTO `classify` VALUES ('14', 'scpp', '精致如你，本来就很美', '/api/img/tuoying.jpg', 'main2');
INSERT INTO `classify` VALUES ('15', 'qqhg', '头部图片', '/api/img/quanqiu.jpg', 'top');
INSERT INTO `classify` VALUES ('16', 'qqhg', '放心品质，独特品味', '/api/img/haiwai.jpg', 'main1');
INSERT INTO `classify` VALUES ('17', 'qqhg', '完美呵护，您的美丽', '/api/img/huazhuang.jpg', 'main2');
INSERT INTO `classify` VALUES ('18', 'ssnz', '头部图片', '/api/img/shishang.jpg', 'top');
INSERT INTO `classify` VALUES ('19', 'ssnz', '淑女连衣裙，安静的美', '/api/img/shishang1.jpg', 'main1');
INSERT INTO `classify` VALUES ('20', 'ssnz', '经典套装，气质神器', '/api/img/shishang2.jpg', 'main2');
INSERT INTO `classify` VALUES ('21', 'xknz', '头部图片', '/api/img/xinkuan.jpg', 'top');
INSERT INTO `classify` VALUES ('22', 'xknz', '成功男士，衣表人才', '/api/img/xinkuan1.jpg', 'main1');
INSERT INTO `classify` VALUES ('23', 'xknz', '国际大牌Brands', '/api/img/xinkuan2.jpg', 'main2');
INSERT INTO `classify` VALUES ('24', 'clnx', '头部图片', '/api/img/chaoliu.jpg', 'top');
INSERT INTO `classify` VALUES ('25', 'clnx', '精彩人生，魅力携行', '/api/img/chaoliu1.jpg', 'main1');
INSERT INTO `classify` VALUES ('26', 'clnx', '国际大牌Brands', '/api/img/chaoliu2.jpg', 'main2');
INSERT INTO `classify` VALUES ('27', 'bknx', '头部图片', '/api/img/baokuan.jpg', 'top');
INSERT INTO `classify` VALUES ('28', 'bknx', '精彩人生，魅力携行', '/api/img/baokuan1.jpg', 'main1');
INSERT INTO `classify` VALUES ('29', 'bknx', '国际大牌Brands', '/api/img/baokuan2.jpg', 'main2');
INSERT INTO `classify` VALUES ('30', 'xbsd', '头部图片', '/api/img/xiangbao.jpg', 'top');
INSERT INTO `classify` VALUES ('31', 'xbsd', '箱伴永远，包容世界', '/api/img/xiangbao1.jpg', 'main1');
INSERT INTO `classify` VALUES ('32', 'xbsd', '装的下世界就是你的......', '/api/img/xiangbao2.jpg', 'main2');
INSERT INTO `classify` VALUES ('33', 'nyps', '头部图片', '/api/img/peishi.jpg', 'top');
INSERT INTO `classify` VALUES ('34', 'nyps', '放心品质，独特品味', '/api/img/peishi1.jpg', 'main1');
INSERT INTO `classify` VALUES ('35', 'nyps', '完美呵护，您的美丽', '/api/img/peishi2.jpg', 'main2');

-- ----------------------------
-- Table structure for employeelist
-- ----------------------------
DROP TABLE IF EXISTS `employeelist`;
CREATE TABLE `employeelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工性别',
  `tel` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱地址',
  `office` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '员工职位',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现住址',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `data` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of employeelist
-- ----------------------------

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'wly', '123', '管理员');
INSERT INTO `login` VALUES ('2', 'rsm', '123', '管理员');
INSERT INTO `login` VALUES ('3', 'wl', '123', '管理员');
INSERT INTO `login` VALUES ('4', 'thj', '123', '管理员');
INSERT INTO `login` VALUES ('5', 'mjp', '123', '管理员');
INSERT INTO `login` VALUES ('6', 'hmq', '123', '管理员');

-- ----------------------------
-- Table structure for mingcarlist
-- ----------------------------
DROP TABLE IF EXISTS `mingcarlist`;
CREATE TABLE `mingcarlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `sizetype` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `colortype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mingcarlist
-- ----------------------------

-- ----------------------------
-- Table structure for mobileuserlist
-- ----------------------------
DROP TABLE IF EXISTS `mobileuserlist`;
CREATE TABLE `mobileuserlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工性别',
  `tel` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱地址',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位',
  `shippingaddress` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现住址',
  `data` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mobileuserlist
-- ----------------------------

-- ----------------------------
-- Table structure for morder
-- ----------------------------
DROP TABLE IF EXISTS `morder`;
CREATE TABLE `morder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ordercontent` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of morder
-- ----------------------------
INSERT INTO `morder` VALUES ('77', '699492208', '已收货', '[{\"id\":\"48\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('78', '911595238', '已收货', '[{\"id\":\"51\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('54', '678159818', '已收货', '[{\"id\":\"26\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"180/XXL\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"灰色\"}]');
INSERT INTO `morder` VALUES ('55', '145076730', '已收货', '[{\"id\":\"28\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"28\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('56', '438866374', '已收货', '[{\"id\":\"30\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('57', '308522632', '已收货', '[{\"id\":\"32\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('58', '732904610', '已发货', '[{\"id\":\"33\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":1,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"},{\"id\":\"33\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":1,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('59', '226808357', '已收货', '[{\"id\":\"34\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"34\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('60', '874432996', '已收货', '[{\"id\":\"31\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('61', '555470419', '已收货', '[{\"id\":\"36\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('66', '396342533', '已收货', '[{\"id\":\"41\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套M号(身高161~170cm)\",\"price\":\"128.00\",\"num\":\"2\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"}]');
INSERT INTO `morder` VALUES ('67', '644568204', '已收货', '[{\"id\":\"42\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"4\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('69', '399836141', '已收货', '[{\"id\":\"43\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":4,\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('102', '418346341', '已收货', '[{\"id\":\"72\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"},{\"id\":\"73\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('73', '583132875', '已收货', '[{\"id\":\"44\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"185/XXXL\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"灰色\"}]');
INSERT INTO `morder` VALUES ('74', '951088255', '已收货', '[{\"id\":\"45\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('75', '468366767', '已发货', '[{\"id\":\"47\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('76', '518317303', '已收货', '[{\"id\":\"46\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":4,\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('79', '915204943', '已完成', '[{\"id\":\"49\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('101', '678410356', '已完成', '[]');
INSERT INTO `morder` VALUES ('81', '122821720', '已完成', '[{\"id\":\"53\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":\"5\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('82', '113202353', '已完成', '[{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"},{\"id\":\"55\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"185/XXXL\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('83', '440131078', '已完成', '[{\"id\":\"58\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('84', '473320599', '已完成', '[{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"},{\"id\":\"59\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('85', '337851792', '已完成', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":0,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"},{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":0,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"61\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('86', '787266306', '已完成', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"},{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"},{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('87', '803702994', '已完成', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"},{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"62\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"},{\"id\":\"62\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('100', '437321575', '已完成', '[]');
INSERT INTO `morder` VALUES ('89', '671093131', '已完成', '[{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('90', '615342703', '已完成', '[{\"id\":\"61\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"蓝色\"},{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('91', '22299451', '已完成', '[{\"id\":\"56\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"}]');
INSERT INTO `morder` VALUES ('92', '790968009', '已完成', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"}]');
INSERT INTO `morder` VALUES ('93', '265820467', '已完成', '[{\"id\":\"64\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('94', '385886227', '已完成', '[{\"id\":\"67\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"2\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"}]');
INSERT INTO `morder` VALUES ('95', '640154375', '已完成', '[{\"id\":\"66\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"180/XXL\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('96', '397437252', '已完成', '[{\"id\":\"68\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"},{\"id\":\"69\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"165/M\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('97', '252008560', '已收货', '[{\"id\":\"70\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"1\",\"price\":\"1\",\"num\":\"1\",\"name\":\"1\",\"description\":\"1\",\"colortype\":\"1\"}]');
INSERT INTO `morder` VALUES ('98', '873264208', '已完成', '[{\"id\":\"68\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('99', '603841583', '已完成', '[{\"id\":\"71\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('103', '499286338', '已完成', '[]');
INSERT INTO `morder` VALUES ('104', '469808178', '已完成', '[{\"id\":\"76\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('105', '529776163', '已完成', '[]');
INSERT INTO `morder` VALUES ('106', '442312627', '已完成', '[{\"id\":\"72\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('110', '616225340', '已完成', '[{\"id\":\"78\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"2\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"79\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":\"2\",\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('108', '129515148', '已完成', '[]');
INSERT INTO `morder` VALUES ('109', '192094940', '已完成', '[{\"id\":\"74\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('111', '944592610', '已完成', '[{\"id\":\"78\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"2\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('112', '661290892', '已完成', '[{\"id\":\"77\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"2\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('113', '415732394', '已完成', '[{\"id\":\"80\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":1,\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('114', '797241039', '已完成', '[{\"id\":\"81\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":\"1\",\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('118', '726924131', '已完成', '[{\"id\":\"84\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('117', '397478022', '已完成', '[{\"id\":\"82\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":\"1\",\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('119', '961526184', '已完成', '[{\"id\":\"83\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('120', '78646156', '已收货', '[{\"id\":\"85\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":1,\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('121', '243323516', '已完成', '[{\"id\":\"86\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":\"1\",\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"},{\"id\":\"87\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('122', '410914037', '已收货', '[{\"id\":\"86\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":1,\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('123', '718022871', '已完成', '[{\"id\":\"88\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"1\",\"num\":5,\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('124', '937717910', '已完成', '[{\"id\":\"89\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"1\",\"num\":\"3\",\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
INSERT INTO `morder` VALUES ('125', '129757619', '已完成', '[{\"id\":\"90\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"165/M\",\"price\":\"99.00\",\"num\":\"3\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"},{\"id\":\"90\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"165/M\",\"price\":\"99.00\",\"num\":\"3\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"}]');

-- ----------------------------
-- Table structure for onsaleproduct
-- ----------------------------
DROP TABLE IF EXISTS `onsaleproduct`;
CREATE TABLE `onsaleproduct` (
  `id` varchar(255) DEFAULT NULL,
  `commodityname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of onsaleproduct
-- ----------------------------
INSERT INTO `onsaleproduct` VALUES ('18', 'BB', '女装', '/api/img/nvyi4.jpg', 'Lily女装少女娃娃领竖条纹假两件连衣裙117180C7209', '韩都衣舍', '5', 'S 、M L 、XL、 XXL', '410深蓝', '249.00', '出售中');
INSERT INTO `onsaleproduct` VALUES ('12', 'BB', '女装', '/api/img/nvyi4.jpg', 'Lily女装少女娃娃领竖条纹假两件连衣裙117180C7209', '韩都衣舍', '5', 'S 、M L 、XL、 XXL', '410深蓝', '249.00', '出售中');

-- ----------------------------
-- Table structure for productlist
-- ----------------------------
DROP TABLE IF EXISTS `productlist`;
CREATE TABLE `productlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commodityname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `imgurl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品描述',
  `count` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品库存数量',
  `sizetype` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品尺寸',
  `colortype` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品颜色',
  `price` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of productlist
-- ----------------------------
INSERT INTO `productlist` VALUES ('11', '男士毛衣', '/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg', '秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套', '300', '165/M,170/L,175/XL,180/XXL,185/XXXL', '蓝色,白色,黑色,灰色,红色', '99.00');
INSERT INTO `productlist` VALUES ('7', '男士毛衣', '/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg', '秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套', '300', '165/M,170/L,175/XL,180/XXL,185/XXXL', '蓝色,白色,黑色,灰色,红色', '99.00');
INSERT INTO `productlist` VALUES ('38', '254', '/api/img/20171117084611_797.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('39', '254', '/api/img/20171117084611_764.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('40', '254', '/api/img/20171117084636_833.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('41', '1', '/api/img/20171117085645_439.png', '1', '1', '1', '1', '1');
INSERT INTO `productlist` VALUES ('30', 'liya', '/api/img/20171117034221_901.jpg', '1liya', '1456', '145', '#ccc', '1');
INSERT INTO `productlist` VALUES ('37', '254', '/api/img/20171117084606_660.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('3', '男士毛衣', '/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg', '秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套', '300', '165/M,170/L,175/XL,180/XXL,185/XXXL', '蓝色,白色,黑色,灰色,红色', '99.00');
INSERT INTO `productlist` VALUES ('2', '女士睡衣', '/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg', '奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱', '1000', '送鞋送手套S号(身高150~160cm),送鞋送手套M号(身高161~170cm),送鞋送手套L号(身高171~180cm),送鞋送手套XL号(身高181~190cm)', '蓝色,红色,紫色,白色,黑色', '128.00');
INSERT INTO `productlist` VALUES ('32', '254', '/api/img/20171117084602_141.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('33', '254', '/api/img/20171117084603_106.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('34', '254', '/api/img/20171117084605_602.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('35', '254', '/api/img/20171117084606_425.png', '54254', '545', '54', '545', '454');
INSERT INTO `productlist` VALUES ('36', '254', '/api/img/20171117084606_259.png', '54254', '545', '54', '545', '454');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('22', 'wl', '$2y$10$66mBsIq8fJSBoxhyk0sOj.iIBCfvMBgkmlgDE3INyaTsUklLnPckS', '员工');
INSERT INTO `register` VALUES ('23', 'rr', '$2y$10$Hj5/AGGot.A9FZ7ubwh8Ne6yHNRsL3iqVk2vPACscAPO1bO8o3MSW', '员工');
INSERT INTO `register` VALUES ('24', 'qq', '$2y$10$BpfZNLVjlPkiTPQShQgCdOS4Vp7UAvDYS5kdq2odif3TGWcY.jVEe', '员工');

-- ----------------------------
-- Table structure for registertel
-- ----------------------------
DROP TABLE IF EXISTS `registertel`;
CREATE TABLE `registertel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registertel
-- ----------------------------
INSERT INTO `registertel` VALUES ('15', 'name1', 'c4ca4238a0b923820dcc509a6f75849b', '会员');

-- ----------------------------
-- Table structure for soldproduct
-- ----------------------------
DROP TABLE IF EXISTS `soldproduct`;
CREATE TABLE `soldproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodityname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品分类',
  `imgurl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品描述',
  `supplier` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商',
  `count` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品库存数量',
  `size` double DEFAULT NULL COMMENT '商品尺寸',
  `color` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品颜色',
  `price` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品状态',
  `clientname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名，用来显示该用户的历史订单',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of soldproduct
-- ----------------------------

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliername` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工姓名',
  `tel` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱地址',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `data` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of supplier
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
