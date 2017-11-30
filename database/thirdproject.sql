/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : thirdproject

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-29 15:57:23
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
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of history
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
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of morder
-- ----------------------------
INSERT INTO `morder` VALUES ('77', '699492208', '已收货', '[{\"id\":\"48\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('78', '911595238', '已收货', '[{\"id\":\"51\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('54', '678159818', '已收货', '[{\"id\":\"26\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"180/XXL\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"灰色\"}]');
INSERT INTO `morder` VALUES ('55', '145076730', '已收货', '[{\"id\":\"28\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"28\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('56', '438866374', '已收货', '[{\"id\":\"30\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('57', '308522632', '已收货', '[{\"id\":\"32\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('58', '732904610', '已收货', '[{\"id\":\"33\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":1,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"},{\"id\":\"33\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":1,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
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
INSERT INTO `morder` VALUES ('79', '915204943', '已收货', '[{\"id\":\"49\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('81', '122821720', '已发货', '[{\"id\":\"53\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":\"5\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('82', '113202353', '已收货', '[{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"},{\"id\":\"55\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"185/XXXL\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('83', '440131078', '已发货', '[{\"id\":\"58\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('84', '473320599', '已发货', '[{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"},{\"id\":\"59\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('85', '337851792', '已完成', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":0,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"},{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":0,\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"61\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('86', '787266306', '已发货', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"},{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"},{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('87', '803702994', '已发货', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"},{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"62\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"},{\"id\":\"62\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('89', '671093131', '已发货', '[{\"id\":\"60\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('90', '615342703', '已发货', '[{\"id\":\"61\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"蓝色\"},{\"id\":\"54\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('91', '22299451', '已发货', '[{\"id\":\"56\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"}]');
INSERT INTO `morder` VALUES ('92', '790968009', '已发货', '[{\"id\":\"63\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"}]');
INSERT INTO `morder` VALUES ('93', '265820467', '已完成', '[{\"id\":\"64\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('94', '385886227', '已完成', '[{\"id\":\"67\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"2\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"红色\"}]');
INSERT INTO `morder` VALUES ('95', '640154375', '已完成', '[{\"id\":\"66\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"180/XXL\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('96', '397437252', '已完成', '[{\"id\":\"68\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"},{\"id\":\"69\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"165/M\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('97', '252008560', '已收货', '[{\"id\":\"70\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"1\",\"price\":\"1\",\"num\":\"1\",\"name\":\"1\",\"description\":\"1\",\"colortype\":\"1\"}]');
INSERT INTO `morder` VALUES ('98', '873264208', '已完成', '[{\"id\":\"68\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('99', '603841583', '已完成', '[{\"id\":\"71\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('104', '469808178', '已完成', '[{\"id\":\"76\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"175/XL\",\"price\":\"99.00\",\"num\":\"2\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"黑色\"}]');
INSERT INTO `morder` VALUES ('106', '442312627', '已完成', '[{\"id\":\"72\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"紫色\"}]');
INSERT INTO `morder` VALUES ('110', '616225340', '已发货', '[{\"id\":\"78\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"2\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"白色\"},{\"id\":\"79\",\"imgurl\":\"/api/img/20171117034221_901.jpg\",\"sizetype\":\"145\",\"price\":\"0.1\",\"num\":\"2\",\"name\":\"liya\",\"description\":\"1liya\",\"colortype\":\"#ccc\"}]');
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
INSERT INTO `morder` VALUES ('134', '226822647', '已完成', '[{\"id\":\"123\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('135', '965059645', '已完成', '[{\"id\":\"125\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"165/M\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('128', '786671518', '已完成', '[{\"id\":\"92\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('136', '307318443', '已完成', '[{\"id\":\"132\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"灰色\"},{\"id\":\"131\",\"imgurl\":\"/api/img/TB1wc7uRXXXXXcLXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg\",\"sizetype\":\"送鞋送手套S号(身高150~160cm)\",\"price\":\"128.00\",\"num\":\"1\",\"name\":\"女士睡衣\",\"description\":\"奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱\",\"colortype\":\"蓝色\"}]');
INSERT INTO `morder` VALUES ('130', '845987738', '已完成', '[{\"id\":\"94\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('131', '293488614', '已完成', '[{\"id\":\"91\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"},{\"id\":\"95\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"180/XXL\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"180/XXL\"}]');
INSERT INTO `morder` VALUES ('132', '80549756', '已完成', '[{\"id\":\"91\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":2,\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"},{\"id\":\"96\",\"imgurl\":\"/api/img/20171117084611_797.png\",\"sizetype\":\"54\",\"price\":\"454\",\"num\":2,\"name\":\"254\",\"description\":\"54254\",\"colortype\":\"545\"}]');
INSERT INTO `morder` VALUES ('133', '99003465', '已完成', '[{\"id\":\"91\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"白色\"}]');
INSERT INTO `morder` VALUES ('137', '715527193', '未完成', '[{\"id\":\"132\",\"imgurl\":\"/api/img/TB2g5XHcvNNTKJjSspcXXb4KVXa_!!3022879761.jpg_430x430q90.jpg\",\"sizetype\":\"170/L\",\"price\":\"99.00\",\"num\":\"1\",\"name\":\"男士毛衣\",\"description\":\"秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套\",\"colortype\":\"灰色\"}]');

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
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品类别，用于查询',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of productlist
-- ----------------------------
INSERT INTO `productlist` VALUES ('11', '男士毛衣', '/api/img/changxiu.jpg', '秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套,高领深色，质量好', '300', '165/M,170/L,175/XL,180/XXL,185/XXXL', '蓝色,白色,黑色,灰色,红色', '99.00', '毛衣,男友,长袖');
INSERT INTO `productlist` VALUES ('7', '男士毛衣', '/api/img/waitaonan.jpg', '秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套', '300', '165/M,170/L,175/XL,180/XXL,185/XXXL', '蓝色,白色,黑色,灰色,红色', '99.00', '毛衣, 韩版');
INSERT INTO `productlist` VALUES ('3', '男士毛衣', '/api/img/waitao.jpg', '秋冬季男士毛衣韩版长袖T恤青年个性打底针织衫潮流秋装衣服外套', '300', '165/M,170/L,175/XL,180/XXL,185/XXXL', '蓝色,白色,黑色,灰色,红色', '99.00', '男友,冬季');
INSERT INTO `productlist` VALUES ('2', '女士睡衣', '/api/img/nainiu.jpg', '奶牛睡衣连体女春秋天可爱珊瑚绒男法兰绒学生冬季加厚套装可爱', '1000', '送鞋送手套S号(身高150~160cm),送鞋送手套M号(身高161~170cm),送鞋送手套L号(身高171~180cm),送鞋送手套XL号(身高181~190cm)', '蓝色,红色,紫色,白色,黑色', '128.00', '睡衣,女,连体衣,秋冬上新');
INSERT INTO `productlist` VALUES ('1', '秋季卫衣', '/api/img/xinpin.jpg', '秋季新款韩版学院风时尚雪纺喇叭长袖拼接蝴蝶结系带连衣裙女潮', '234', 'S,M,L,XL', '图片色', '65.99', '上衣,套装,卫衣,秋冬上新');
INSERT INTO `productlist` VALUES ('4', '保暖内衣', '/api/img/baonuan.jpg', '女士保暖内衣加绒单衣低领黄金绒加厚学生秋冬圆领修身长袖女上衣', '3456', 'S,M,L,XL', '黑,紫,肤色', '34.90', '内衣袜子,保暖内衣,低领,黄金绒,圆领修身,加绒,加厚,女士,秋冬上新');
INSERT INTO `productlist` VALUES ('5', '秋冬上新', '/api/img/waitaonv.jpg', '冬季新品韩版大毛领白色抽绳收腰连帽羽绒棉服外套', '987', 'S,M,L,XL', '白色,黑色,粉红色', '135.80', '秋冬上新,棉服外套,大毛领,羽绒,连帽,抽绳,收腰,白色');
INSERT INTO `productlist` VALUES ('6', '秋冬羽绒服', '/api/img/mianfunv.jpg', '冬季女纯色毛领连帽加厚可爱面包服短款宽松棉衣棉服外套', '564', 'S,M,L', '驼色', '167', '秋冬上新,面包服,加厚,短款,纯色,可爱,冬季');
INSERT INTO `productlist` VALUES ('8', '保暖四件套', '/api/img/chuangdan.jpg', '北欧小清新加厚款法莱绒四件套秋冬床单被套床上用品法兰绒珊瑚绒', '224', '1.2m,1.5m,1.8m', '白色，粉红', '244.00', '家居百货，四件套，加厚');
INSERT INTO `productlist` VALUES ('9', '保暖床单', '/api/img/chuangdan1.jpg', '卡通法莱绒加厚四件套床上用品冬季珊瑚绒宿舍学生被套床单三件套', '200', '1.2m,1.5m,1.8m', '蓝色，红色，绿色', '123.00', '家居百货，三件套，加厚');
INSERT INTO `productlist` VALUES ('10', '保暖睡衣', '/api/img/lianmao.jpg', '【萌星人】可爱兔耳朵粉色保暖可外穿珊瑚绒连帽套装', '180', 'S,M,L,XL', '粉红，橙色，白色', '99.00', '家居百货，睡衣，女');
INSERT INTO `productlist` VALUES ('12', '家居拖鞋', '/api/img/tuoxie.jpg', '冬季可爱卡通小狗毛绒毛毛鞋家居家卡通蝴蝶结公主女式棉拖鞋', '123', '36,37,38,39', '黑色，粉红，灰色，紫色', '32.20', '家居百货，拖鞋，保暖');
INSERT INTO `productlist` VALUES ('13', '家居拖鞋', '/api/img/tuoxie2.jpg', '可爱情侣全包跟棉拖鞋男女秋冬季加厚加绒厚底保暖家居室内拖鞋', '200', '36,37,38,39', '白色，黑色，红色，绿色', '19.90', '家居百货，拖鞋，保暖');
INSERT INTO `productlist` VALUES ('14', '家居情侣拖鞋', '/api/img/taozhuagnv.jpg', '【子曰子曰】情侣家居服秋冬新款韩版黑白格宽松情侣装睡衣套装女', '99', '36,37,38,39', '灰色，黑白，粉色', '23.00', '家居百货，睡衣，保暖');
INSERT INTO `productlist` VALUES ('15', '厨房工具', '/api/img/miniguo.jpg', '【家居百货】厨房小工具早餐煎蛋锅迷你煎饼锅', '1000', '小号（单个），中号（单个）', '黑色，白色', '99.00', '家居百货，厨房，早餐');
INSERT INTO `productlist` VALUES ('16', '垃圾桶', '/api/img/laji.jpg', '【家居百货】垃圾桶带压圈家用客厅卫生间厨房无盖垃圾筒', '200', '高17cm直径15cm/小号【桌面款】', '黑色，白色', '13.00', '家居百货，垃圾桶，厨房');
INSERT INTO `productlist` VALUES ('17', '收纳勾', '/api/img/shouna.jpg', '创意家居用品厨房小工具家庭实用百货卫生间收纳钩居家生活日用品', '100', '小号，中号，大号', '红色，紫色，白色', '9.80', '家居百货，工具，挂钩');
INSERT INTO `productlist` VALUES ('18', '麻辣辣条', '/api/img/latiao.jpg', '肉类食品小吃休闲纯素纯肉多口味混搭大礼包组合零食一箱麻辣辣条', '80', '20包肉素搭+【礼袋装】,20包纯肉肉+【礼袋装】', '图片详情', '29.80', '零食，小吃，辣条');
INSERT INTO `productlist` VALUES ('19', '休闲小吃', '/api/img/xiaoxiong.jpg', '【满20元包邮】马来西亚进口 EGO金小熊饼干休闲零食小吃', '300', '小包，中包', '图片详情', '2.50', '零食，休闲，小吃');
INSERT INTO `productlist` VALUES ('20', '提拉米苏', '/api/img/dangao.jpg', '俄罗斯进口零食双山提拉米苏蛋糕500g 巧克力奶油糕点', '200', '小包，中包', '图片详情', '19.90', '零食，蛋糕，小吃');
INSERT INTO `productlist` VALUES ('21', '项链女', '/api/img/xianglian.jpg', '新款韩版可爱卡通镂空锆石天使娃娃锁骨链短萌萌哒甜美宝宝项链女', '120', '单个', '白色，银色，金色', '30.09', '项链，配饰');
INSERT INTO `productlist` VALUES ('22', '银项链', '/api/img/suogu.jpg', 'S925银项链女日韩短款锁骨链简约银链蛇骨链无吊坠银饰品配饰', '155', '18寸盒子链,16寸水波纹链', '白色，银色，金色', '29.99', '项链，配饰');
INSERT INTO `productlist` VALUES ('23', '吊坠', '/api/img/guazhui.jpg', '免费刻字韩版水晶天使吊坠纯银项链女锁骨链小清新百搭饰品礼物潮', '166', '18寸盒子链,16寸水波纹链', '白色，黑色', '49.09', '项链，配饰');
INSERT INTO `productlist` VALUES ('24', '锁骨链', '/api/img/lian.jpg', '毛衣链女百搭饰品长款女秋冬项链流苏时尚大气欧美配锁骨链颈链', '122', '16寸盒子链,16寸水波纹链', '银色，金色', '29.08', '项链，配饰');
INSERT INTO `productlist` VALUES ('25', '袜子长款', '/api/img/wazi0.jpg', '5双装春秋女船袜超浅口隐形袜子小清新猫跟鞋豆豆鞋纯棉袜子长', '300', '均码35-39可穿', '全套', '14.80', '内衣袜子，袜子');
INSERT INTO `productlist` VALUES ('26', '加厚棉袜', '/api/img/wazi02.jpg', '2双 新款复古森系粗线针织羊毛保暖袜 全棉加厚翻边横条女袜子', '400', '两双 随机,2双 留言选色', '随机色', '21.09', '内衣袜子，袜子');
INSERT INTO `productlist` VALUES ('27', '零食小吃', '/api/img/lingshi2.jpg', '抢新货【百草味-夏威夷果200gx3袋】坚果零食干果 奶油味送开口器', '133', '奶油味200gx3袋,奶油味250gx2袋', '图片详情', '46.90', '零食,小吃，休闲');
INSERT INTO `productlist` VALUES ('28', '零食饼干', '/api/img/lingshi3.jpg', '米多奇烤香馍片40包2kg整箱早餐食品烤馍馒头片饼干批发零食礼包', '456', '烧烤+孜然+葱香+麻辣【最新日期】,什锦综合八味随机混装【最新日期】,原味+椒盐+鸡翅+牛肉【最新日期】', '图片详情', '69.08', '零食,小吃');
INSERT INTO `productlist` VALUES ('29', '零食饼干', '/api/img/lingshi4.jpg', '德国进口knoppers牛奶榛子巧克力威化饼干25g*10袋 5层夹心零食品', '246', '牛奶,巧克力', '图片详情', '45.09', '零食,小吃');
INSERT INTO `productlist` VALUES ('30', '零食干果', '/api/img/lingshi5.jpg', '百草味开心果200g 坚果干果孕妇零食 原色无漂白食品特产', '100', '盐焗口味', '图片详情', '26.90', '零食,小吃');
INSERT INTO `productlist` VALUES ('31', '内衣袜子', '/api/img/neiyi.jpg', '花花公子保暖内衣男士纯棉秋衣秋裤薄款棉毛衫纯棉套装女情侣', '406', '女式,男式，两套', '粉色,黑色,白色,灰色', '88.00', '内衣袜子,保暖');
INSERT INTO `productlist` VALUES ('32', '保暖内衣女', '/api/img/neiyi2.jpg', '顶瓜瓜秋衣秋裤女套装纯棉加绒加厚彩棉秋冬发热男士保暖内衣', '130', 'S,M,L,XL', '粉色,白色,黑色,灰色', '103.00', '内衣袜子,保暖');
INSERT INTO `productlist` VALUES ('33', '袜子', '/api/img/wazi2.jpg', '恒源祥白色袜子女低帮女士短袜防臭薄款船袜纯棉浅口夏季运动棉袜', '300', '\r\n均码 正品恒源祥女士纯棉船袜6双礼盒装', '灰色，白色', '34.00', '内衣袜子,保暖');
INSERT INTO `productlist` VALUES ('34', '男友', '/api/img/nanyou1.jpg', '然与纯秋季牛仔裤女宽松哈伦裤卷边男友bf风大码直筒浅色长裤垮裤', '256', '26,27,28,29,30,31,32', '深蓝,浅蓝', '60.00', '男友,');
INSERT INTO `productlist` VALUES ('35', '男友', '/api/img/nanyou2.jpg', '花花公子\n花花公子旗舰 夹克外套 花花公子夹克 冬日也要玩酷 专辑\n', '168', 'M,L,XL', '深蓝,浅蓝', '124', '男友,');
INSERT INTO `productlist` VALUES ('36', '男友', '/api/img/nanyou3.jpg', '花花公子男士秋季青年韩版修身棒球服', '327', '26,27,28,29,30,31,32', '深蓝,浅蓝,黑色', '186.00', '男友,');
INSERT INTO `productlist` VALUES ('37', '男友', '/api/img/nanyou5.jpg', '\nWOOG2005\n时髦保暖卫衣 保暖卫衣更温暖的体验 专辑\n', '198', 'M,L,XL', '黑色,红色', '176', '男友,');
INSERT INTO `productlist` VALUES ('44', '男友', '/api/img/nanyou6.jpg', '黑色弹力加绒胖子直筒秋冬款牛仔裤', '108', '26,27,28,29,30,31,32', '黑色,黑蓝色', '126', '男友,');
INSERT INTO `productlist` VALUES ('45', '男友', '/api/img/nanyou7.jpg', '马克华菲男士修身秋冬潮流韩版棒球服', '398', 'M,L,XL', '黑色,米兰色', '358', '男友,');
INSERT INTO `productlist` VALUES ('46', '男友', '/api/img/nanyou8.jpg', '男士四季韩版修身西服套装', '298', 'M,L,XL', '黑色', '689', '男友,');
INSERT INTO `productlist` VALUES ('47', '男友', '/api/img/nanyou9.jpg', '七匹狼秋季男士立领中年夹克', '159', 'M,L,XL', '黑色,米兰色', '418', '男友,');
INSERT INTO `productlist` VALUES ('48', '美妆', '/api/img/mz1.jpg', 'Whoo后 天气丹护肤套装 花献光彩紧颜水乳礼盒7件套 滋养官方直售', '12', '700ml', '白色', '1540', '美妆,');
INSERT INTO `productlist` VALUES ('49', '美妆', '/api/img/mz2.jpg', 'Winona/薇诺娜 舒敏保湿丝滑面贴膜', '15', '6片', '白色', '168', '美妆,');
INSERT INTO `productlist` VALUES ('50', '美妆', '/api/img/mz3.jpg', 'Olay玉兰油新生塑颜化妆品套装女补水保湿紧致肌肤护肤品套装正品', '16', '套装', '红色', '688', '美妆,');
INSERT INTO `productlist` VALUES ('51', '美妆', '/api/img/mz4.jpg', 'Lancome/兰蔻 水份缘舒悦凝霜', '45', '700ml', '白色', '189', '美妆,');
INSERT INTO `productlist` VALUES ('52', '美妆', '/api/img/mz5.jpg', 'Estee Lauder/雅诗兰黛 倾慕唇膏魅色系列', '34', '1000ml', '粉色', '431', '美妆,');
INSERT INTO `productlist` VALUES ('53', '美妆', '/api/img/mz6.jpg', '御泥坊 美白嫩肤面膜', '45', '套装', '粉色', '698', '美妆,');
INSERT INTO `productlist` VALUES ('54', '美妆', '/api/img/mz7.jpg', '相宜本草 四倍蚕丝保湿透润面膜', '89', '套装', '白色', '389', '美妆,');
INSERT INTO `productlist` VALUES ('55', '美妆', '/api/img/mz8.jpg', 'Kans/韩束 水润丝滑精华液面膜', '76', '套装', '黑色', '698', '美妆,');
INSERT INTO `productlist` VALUES ('56', '美妆', '/api/img/mz9.jpg', 'One Leaf/一叶子 清颜净肤炭黑面膜，深层滋润 补水保湿 提亮肤色 新鲜又营养', '89', '套装', '粉色,黑色', '388', '美妆,');
INSERT INTO `productlist` VALUES ('57', '短靴', '/api/img/dx1.jpg', '热风冬季时尚简约女士拉链加绒休闲鞋', '23', '35,36,37,38', '粉色,黑色', '234', '短靴');
INSERT INTO `productlist` VALUES ('58', '短靴', '/api/img/dx2.jpg', 'Skechers斯凯奇女鞋2017新款毛里短靴 女靴休闲鞋女 14775', '24', '35,36,37,38', '黑色', '789', '短靴');
INSERT INTO `productlist` VALUES ('59', '短靴', '/api/img/dx3.jpg', '柯玛妮克 2017冬季新款高跟女靴 牛皮拉链短靴女粗跟尖头黑色靴子', '78', '35,36,37,38', '黑色', '368', '短靴');
INSERT INTO `productlist` VALUES ('60', '短靴', '/api/img/dx4.jpg', '莱尔斯丹秋冬蝴蝶结侧拉链高跟短靴', '98', '35,36,37,38', '米兰色', '689', '短靴');
INSERT INTO `productlist` VALUES ('61', '短靴', '/api/img/dx5.jpg', '真皮中跟粗跟尖头牛皮高跟秋冬马丁靴', '89', '35,36,37,38', '黑色', '469', '短靴');
INSERT INTO `productlist` VALUES ('62', '短靴', '/api/img/dx6.jpg', '热风冬季时尚简约女士拉链加绒休闲鞋', '23', '35,36,37,38', '粉色,黑色', '268', '短靴');
INSERT INTO `productlist` VALUES ('63', '短靴', '/api/img/dx7.jpg', '真皮中跟秋冬尖头粗跟中筒马丁靴', '24', '35,36,37,38', '黑色', '277', '短靴');
INSERT INTO `productlist` VALUES ('64', '短靴', '/api/img/dx8.jpg', '高跟粗跟真皮中筒英伦中跟加绒马丁靴', '89', '35,36,37,38', '黑色', '388', '短靴');
INSERT INTO `productlist` VALUES ('65', '短靴', '/api/img/dx9.jpg', '冬季粗跟英伦学生马丁靴', '158', '35,36,37,38', '黑色', '389', '短靴');
INSERT INTO `productlist` VALUES ('66', '美包', '/api/img/mb1.jpg', 'CHARLES＆KEITH 单肩包 CK2-70780473 摩登金属装饰链条斜挎包', '23', '35,36,37,38', '粉色,黑色', '451', '美包');
INSERT INTO `productlist` VALUES ('67', '美包', '/api/img/mb2.jpg', 'KH Design时尚明治女包真皮钻饰铆钉宽肩带单肩斜挎包2017新款', '78', '35,36,37,38', '黑色', '389', '美包');
INSERT INTO `productlist` VALUES ('68', '美包', '/api/img/mb3.jpg', '【热卖】Herschel Retreat 中国限量款双肩背包 休闲潮包10066', '78', '35,36,37,38', '黑色', '368', '美包');
INSERT INTO `productlist` VALUES ('69', '美包', '/api/img/mb4.jpg', '韩版冬季个性时尚大气百搭圆环大包', '98', '35,36,37,38', '米兰色', '145', '美包');
INSERT INTO `productlist` VALUES ('70', '美包', '/api/img/mb5.jpg', 'zamo真皮镶钻铆钉复古锁扣邮差肩挎包', '89', '35,36,37,38', '黑色', '689', '美包');
INSERT INTO `productlist` VALUES ('71', '美包', '/api/img/mb6.jpg', '韩版时尚个性百搭休闲迷你女士背包', '23', '35,36,37,38', '粉色,黑色', '346', '美包');
INSERT INTO `productlist` VALUES ('72', '美包', '/api/img/mb7.jpg', '真皮迷你红色结婚手提斜挎女包', '24', '35,36,37,38', '黑色', '586', '美包');
INSERT INTO `productlist` VALUES ('73', '美包', '/api/img/mb8.jpg', '手提简约百搭时尚牛皮女士公文包', '89', '35,36,37,38', '黑色', '759', '美包');
INSERT INTO `productlist` VALUES ('74', '裤子', '/api/img/kz1.jpg', '花花公子修身弹力商务加绒青年西裤', '232', '35,36,37,38', '黑色', '189', '裤子');
INSERT INTO `productlist` VALUES ('75', '裤子', '/api/img/kz2.jpg', '韩版潮流男士冬季加绒加厚迷彩小脚裤', '69', '35,36,37,38', '黑色', '236', '裤子');
INSERT INTO `productlist` VALUES ('76', '裤子', '/api/img/kz3.jpg', '男士韩版修身冬季加绒秋季潮流小脚裤', '78', '35,36,37,38', '黑色', '236', '裤子');
INSERT INTO `productlist` VALUES ('77', '裤子', '/api/img/kz4.jpg', '男士商务修身韩版英伦弹力黑色小脚裤', '58', '35,36,37,38', '米兰色', '145', '裤子');
INSERT INTO `productlist` VALUES ('78', '裤子', '/api/img/kz5.jpg', '厚款大码男士直筒宽松弹力纯棉休闲裤', '89', '35,36,37,38', '黑色', '689', '裤子');
INSERT INTO `productlist` VALUES ('79', '裤子', '/api/img/kz6.jpg', '冬季棉加绒加厚宽松哈伦裤', '23', '35,36,37,38', '粉色,黑色', '346', '裤子');
INSERT INTO `productlist` VALUES ('80', '裤子', '/api/img/kz7.jpg', '加绒打底裤小脚铅笔长裤2017新款黑色保暖女裤加厚棉裤外穿秋冬季', '24', '35,36,37,38', '黑色', '586', '裤子');
INSERT INTO `productlist` VALUES ('81', '连衣裙', '/api/img/ly1.jpg', 'vero moda设计感拉链圆领a字连衣裙', '232', '35,36,37,38', '黑色', '324', '连衣裙');
INSERT INTO `productlist` VALUES ('82', '连衣裙', '/api/img/ly2.jpg', 'only冬季修身显瘦针织两件套', '69', '35,36,37,38', '黑色', '236', '连衣裙');
INSERT INTO `productlist` VALUES ('83', '连衣裙', '/api/img/ly3.jpg', '【感恩节】Five Plus徽章长袖毛织连衣裙2HM5032620', '78', '35,36,37,38', '黑色', '236', '连衣裙');
INSERT INTO `productlist` VALUES ('84', '连衣裙', '/api/img/ly4.jpg', '优雅酒红色修身弹力针织打底连衣裙', '58', '35,36,37,38', '米兰色', '145', '连衣裙');
INSERT INTO `productlist` VALUES ('85', '连衣裙', '/api/img/ly5.jpg', '秋冬装时髦套装女士时尚两件套冬天2017新款韩版潮秋装长袖连衣裙', '89', '35,36,37,38', '黑色', '689', '连衣裙');
INSERT INTO `productlist` VALUES ('86', '连衣裙', '/api/img/ly6.jpg', '秋冬时尚蕾丝丝绒冬季鱼尾裙', '23', '35,36,37,38', '粉色,黑色', '346', '连衣裙');
INSERT INTO `productlist` VALUES ('87', '连衣裙', '/api/img/ly7.jpg', '丽芳儿加厚韩版修身显瘦春秋连衣裙', '24', '35,36,37,38', '黑色', '586', '连衣裙');
INSERT INTO `productlist` VALUES ('88', '小白鞋', '/api/img/xb1.jpg', '热风2017春新款小白鞋女低帮鞋系带时尚女休闲鞋H14W7110', '232', '35,36,37,38', '白色', '324', '小白鞋');
INSERT INTO `productlist` VALUES ('89', '小白鞋', '/api/img/xb2.jpg', '人本秋季内增高休闲运动帆布鞋', '69', '35,36,37,38', '白色', '236', '小白鞋');
INSERT INTO `productlist` VALUES ('90', '小白鞋', '/api/img/xb3.jpg', '秋季小白鞋女2017新款板鞋子韩版松糕底冬季加绒百搭基础时尚厚底', '78', '35,36,37,38', '白色', '236', '小白鞋');
INSERT INTO `productlist` VALUES ('91', '小白鞋', '/api/img/xb4.jpg', 'feiyue/飞跃 新小白第三版 运动鞋帆布鞋板鞋 潮流小白鞋男女款', '58', '35,36,37,38', '米兰色', '145', '小白鞋');
INSERT INTO `productlist` VALUES ('92', '小白鞋', '/api/img/xb5.jpg', 'CHARLES＆KEITH单鞋女CK1-71700001冬圆头厚底毛绒系带运动小白鞋', '89', '35,36,37,38', '黑色', '689', '小白鞋');
INSERT INTO `productlist` VALUES ('93', '小白鞋', '/api/img/xb6.jpg', '环球秋季韩版休闲学生板鞋', '23', '35,36,37,38', '粉色,黑色', '346', '小白鞋');
INSERT INTO `productlist` VALUES ('94', '小白鞋', '/api/img/xb7.jpg', '花花公子\n潮流拼色小白鞋 潮流拼色小白鞋 让你的“足值”爆表 专辑\n', '24', '35,36,37,38', '黑色', '586', '小白鞋');
INSERT INTO `productlist` VALUES ('95', '上衣', '/api/img/sy1.jpg', '保暖衣服男冬季长袖加绒加厚T恤男士打底衫秋衣学生男装冬装上衣', '232', '35,36,37,38', '白色', '324', '上衣');
INSERT INTO `productlist` VALUES ('96', '上衣', '/api/img/sy2.jpg', '纯造v领白色纯棉简约修身韩版小衫', '69', '35,36,37,38', '白色', '236', '上衣');
INSERT INTO `productlist` VALUES ('97', '上衣', '/api/img/sy3.jpg', '韩版修身秋季纯色女士半高领打底衫', '78', '35,36,37,38', '白色', '236', '上衣');
INSERT INTO `productlist` VALUES ('98', '上衣', '/api/img/sy4.jpg', '宽松冬季简约圆领学生打底衫', '58', '35,36,37,38', '米兰色', '145', '上衣');
INSERT INTO `productlist` VALUES ('99', '上衣', '/api/img/sy5.jpg', '韩版蝙蝠袖宽松加绒加厚保暖打底衫', '89', '35,36,37,38', '黑色', '689', '上衣');
INSERT INTO `productlist` VALUES ('100', '上衣', '/api/img/sy6.jpg', '连帽韩版修身青年学生加厚套头卫衣', '23', '35,36,37,38', '粉色,黑色', '346', '上衣');
INSERT INTO `productlist` VALUES ('101', '上衣', '/api/img/sy7.jpg', '破洞韩版春秋修身牛仔短外套', '24', '35,36,37,38', '黑色', '586', '上衣');
INSERT INTO `productlist` VALUES ('102', '卫衣', '/api/img/wy1.jpg', '韩都衣舍韩版宽松连帽套头加绒卫衣', '232', '35,36,37,38', '白色', '324', '卫衣');
INSERT INTO `productlist` VALUES ('103', '卫衣', '/api/img/wy2.jpg', '秋冬男士中老年大码运动套装', '69', '35,36,37,38', '白色', '236', '卫衣');
INSERT INTO `productlist` VALUES ('104', '卫衣', '/api/img/wy3.jpg', '阿迪达斯套装男子2017冬季保暖加绒运动卫衣套头衫长裤卫裤BQ3561', '78', '35,36,37,38', '白色', '236', '卫衣');
INSERT INTO `productlist` VALUES ('105', '卫衣', '/api/img/wy4.jpg', '初语连帽宽松韩版学生套头粉色帽衫', '58', '35,36,37,38', '米兰色', '145', '卫衣');
INSERT INTO `productlist` VALUES ('106', '卫衣', '/api/img/wy5.jpg', '【满500-50】ONLY2017冬季新品印花落肩连帽宽松卫衣女|11739S569', '89', '35,36,37,38', '黑色', '689', '卫衣');
INSERT INTO `productlist` VALUES ('107', '卫衣', '/api/img/wy6.jpg', '连帽韩版修身青年学生加厚套头卫衣', '23', '35,36,37,38', '粉色,黑色', '346', '卫衣');
INSERT INTO `productlist` VALUES ('108', '卫衣', '/api/img/wy7.jpg', '秋冬韩版学生宽松套头连帽加绒卫衣', '24', '35,36,37,38', '黑色', '586', '卫衣');
INSERT INTO `productlist` VALUES ('109', '套装', '/api/img/tz1.jpg', '女童秋冬装2017新款男童装套装中大儿童洋气卫衣三件套加绒运动服', '232', '35,36,37,38', '白色', '324', '套装');
INSERT INTO `productlist` VALUES ('110', '套装', '/api/img/tz2.jpg', '运动套装男春秋运动服装男冬休闲运动装跑步运动服男秋冬情侣套装', '69', '35,36,37,38', '白色', '236', '套装');
INSERT INTO `productlist` VALUES ('111', '套装', '/api/img/tz3.jpg', '男童儿童男孩加绒大童运动春秋套装', '78', '35,36,37,38', '白色', '236', '套装');
INSERT INTO `productlist` VALUES ('112', '套装', '/api/img/tz4.jpg', '诺诺宝贝\n诺诺宝贝冬装新品 ', '58', '35,36,37,38', '米兰色', '145', '套装');
INSERT INTO `productlist` VALUES ('113', '套装', '/api/img/tz5.jpg', '男童中大童儿童运动春秋12岁男孩套装', '89', '35,36,37,38', '黑色', '689', '套装');
INSERT INTO `productlist` VALUES ('114', '套装', '/api/img/tz6.jpg', '春秋时尚韩版显瘦两件套', '23', '35,36,37,38', '粉色,黑色', '346', '套装');
INSERT INTO `productlist` VALUES ('115', '套装', '/api/img/tz7.jpg', '2017春秋冬新品加肥加绒大码女胖MM卫衣三件套休闲运动套装200斤', '24', '35,36,37,38', '黑色', '586', '套装');
INSERT INTO `productlist` VALUES ('117', '秋冬上新', '/api/img/dj1.jpg', '棉马甲女秋冬马夹短款羽绒棉背心学生坎肩女秋冬中长款外套马甲女', '232', '35,36,37,38', '白色', '324', '秋冬上新');
INSERT INTO `productlist` VALUES ('118', '秋冬上新', '/api/img/dj2.jpg', '连帽卫衣女2017新款秋冬加厚加绒韩版宽松外套潮流长袖冬季上衣服', '69', '35,36,37,38', '白色', '236', '秋冬上新');
INSERT INTO `productlist` VALUES ('119', '秋冬上新', '/api/img/dj3.jpg', '加绒加厚黑色保暖铅笔韩版打底裤', '78', '35,36,37,38', '白色', '236', '秋冬上新');
INSERT INTO `productlist` VALUES ('120', '秋冬上新', '/api/img/dj4.jpg', '男士冬季韩版潮流帅气棉袄', '58', '35,36,37,38', '米兰色', '145', '秋冬上新');
INSERT INTO `productlist` VALUES ('121', '秋冬上新', '/api/img/dj5.jpg', '男士修身连帽加厚冬季青年潮流羽绒服', '89', '35,36,37,38', '黑色', '689', '秋冬上新');
INSERT INTO `productlist` VALUES ('122', '秋冬上新', '/api/img/dj6.jpg', 'Five Plus纯色长款宽松毛呢大衣2HM5342170', '23', '35,36,37,38', '粉色,黑色', '346', '秋冬上新');
INSERT INTO `productlist` VALUES ('123', '秋冬上新', '/api/img/dj7.jpg', '韩版运动加绒加厚学生拉链连帽卫衣', '24', '35,36,37,38', '黑色', '586', '秋冬上新');
INSERT INTO `productlist` VALUES ('124', '牛仔', '/api/img/nz1.jpg', '破洞韩版春秋修身牛仔短外套', '232', '35,36,37,38', '白色', '324', '牛仔');
INSERT INTO `productlist` VALUES ('129', '牛仔', '/api/img/nz6.jpg', '牛仔韩版学生百搭休闲女士显瘦开衫', '23', '35,36,37,38', '粉色,黑色', '346', '牛仔');
INSERT INTO `productlist` VALUES ('128', '牛仔', '/api/img/nz5.jpg', '慕爱人高腰加绒修身显瘦破洞铅笔裤', '89', '35,36,37,38', '黑色', '689', '牛仔');
INSERT INTO `productlist` VALUES ('125', '牛仔', '/api/img/nz2.jpg', '显瘦中腰秋季加绒韩版修身裤', '69', '35,36,37,38', '白色', '236', '牛仔');
INSERT INTO `productlist` VALUES ('126', '牛仔', '/api/img/nz3.jpg', '牛仔韩版宽松学生秋季外套', '78', '35,36,37,38', '白色', '236', '牛仔');
INSERT INTO `productlist` VALUES ('127', '牛仔', '/api/img/nz4.jpg', '牛仔修身韩版学生学院风外套', '58', '35,36,37,38', '米兰色', '145', '牛仔');
INSERT INTO `productlist` VALUES ('130', '牛仔', '/api/img/nz7.jpg', '牛仔春秋韩版宽松破洞学生显瘦长裤', '24', '35,36,37,38', '黑色', '586', '牛仔');

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registertel
-- ----------------------------
INSERT INTO `registertel` VALUES ('15', 'name1', 'c4ca4238a0b923820dcc509a6f75849b', '会员');
INSERT INTO `registertel` VALUES ('16', 'QQQQQQ', '7c497868c9e6d3e4cf2e87396372cd3b', '会员');
INSERT INTO `registertel` VALUES ('17', 'QQQQQQQQ', '7c497868c9e6d3e4cf2e87396372cd3b', '会员');
INSERT INTO `registertel` VALUES ('18', 'qqqqq1', 'e10adc3949ba59abbe56e057f20f883e', '会员');
INSERT INTO `registertel` VALUES ('19', 'name12', 'fcea920f7412b5da7be0cf42b8c93759', '会员');
INSERT INTO `registertel` VALUES ('20', 'name123', 'fcea920f7412b5da7be0cf42b8c93759', '会员');

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
