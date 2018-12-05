/*
Navicat MySQL Data Transfer

Source Server         : lzh
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiangmu

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-04 11:53:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` varchar(255) NOT NULL,
  `smallimg` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `oldprice` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` varchar(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `oldprice` varchar(10) DEFAULT NULL,
  `bigimg` varchar(255) DEFAULT NULL,
  `smallimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '../../images/listPicture/list1.webp', '【宿本】小清新加厚呢子大衣女2018冬季新款复古中长款毛呢外套流行', '178', '280', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('2', '../../images/listPicture/list4.webp', '早秋新款韩版学院风百搭条纹针织打底衫学生圆领短袖T恤女装上衣', '98', '141.43', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('3', '../../images/listPicture/list3.webp', '短袖T恤女夏装新款2018韩版学生宽松印花白色体恤半袖圆领简约百搭上衣潮', '69', '112.86', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('4', '../../images/listPicture/list2.webp', '大毛领冬季新款2018时尚加厚嘻哈风情侣棉衣BF红色棉服oversize外套女', '198', '298', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('5', '../../images/listPicture/list5.webp', '2018春夏季新款八色纯色浅色系时尚简约韩范纯棉学生休闲百搭基础款纯色圆领短袖上衣女T恤', '35', '108', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('6', '../../images/listPicture/list6.webp', '2018韩版新款时尚百搭中长款原宿风连帽透明口袋宽松五分袖短袖T恤上衣潮', '53', '57', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('7', '../../images/listPicture/list7.webp', '【宿本】森系毛呢大衣女2018秋冬新款加厚呢子过膝外套中长款灯笼袖复古文艺', '109', '170', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('8', '../../images/listPicture/list8.webp', '2018抖音网红温婉同款短袖T恤女印花酷蹦迪嘻哈衣服街头拍款上衣', '142', '284.29', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('9', '../../images/listPicture/list9.webp', '2018秋季女装新款韩版落肩连帽卫衣女宽松oversize简约bf风下衣失踪上衣学生外套女', '98', '140', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('10', '../../images/listPicture/list10.webp', '气质显瘦加厚大衣女中长款韩版2018新款冬季款夹棉阿尔巴卡呢子毛呢外套', '158', '225.72', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('11', '../../images/listPicture/list1.webp', '【宿本】小清新加厚呢子大衣女2018冬季新款复古中长款毛呢外套流行', '174', '280', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('12', '../../images/listPicture/list4.webp', '早秋新款韩版学院风百搭条纹针织打底衫学生圆领短袖T恤女装上衣', '298', '141.43', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('13', '../../images/listPicture/list3.webp', '短袖T恤女夏装新款2018韩版学生宽松印花白色体恤半袖圆领简约百搭上衣潮', '369', '112.86', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('14', '../../images/listPicture/list2.webp', '大毛领冬季新款2018时尚加厚嘻哈风情侣棉衣BF红色棉服oversize外套女', '198', '298', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('15', '../../images/listPicture/list5.webp', '2018春夏季新款八色纯色浅色系时尚简约韩范纯棉学生休闲百搭基础款纯色圆领短袖上衣女T恤', '35', '108', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('16', '../../images/listPicture/list6.webp', '2018韩版新款时尚百搭中长款原宿风连帽透明口袋宽松五分袖短袖T恤上衣潮', '39', '57', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('17', '../../images/listPicture/list7.webp', '【宿本】森系毛呢大衣女2018秋冬新款加厚呢子过膝外套中长款灯笼袖复古文艺', '109', '170', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('18', '../../images/listPicture/list8.webp', '2018抖音网红温婉同款短袖T恤女印花酷蹦迪嘻哈衣服街头拍款上衣', '199', '284.29', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('19', '../../images/listPicture/list9.webp', '2018秋季女装新款韩版落肩连帽卫衣女宽松oversize简约bf风下衣失踪上衣学生外套女', '298', '140', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('20', '../../images/listPicture/list10.webp', '气质显瘦加厚大衣女中长款韩版2018新款冬季款夹棉阿尔巴卡呢子毛呢外套', '158', '225.72', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('21', '../../images/listPicture/list1.webp', '【宿本】小清新加厚呢子大衣女2018冬季新款复古中长款毛呢外套流行', '378', '280', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('22', '../../images/listPicture/list2.webp', '早秋新款韩版学院风百搭条纹针织打底衫学生圆领短袖T恤女装上衣', '98', '141.43', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('23', '../../images/listPicture/list3.webp', '短袖T恤女夏装新款2018韩版学生宽松印花白色体恤半袖圆领简约百搭上衣潮', '169', '112.86', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('24', '../../images/listPicture/list4.webp', '大毛领冬季新款2018时尚加厚嘻哈风情侣棉衣BF红色棉服oversize外套女', '298', '298', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('25', '../../images/listPicture/list5.webp', '2018春夏季新款八色纯色浅色系时尚简约韩范纯棉学生休闲百搭基础款纯色圆领短袖上衣女T恤', '35', '108', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('26', '../../images/listPicture/list6.webp', '2018韩版新款时尚百搭中长款原宿风连帽透明口袋宽松五分袖短袖T恤上衣潮', '142', '57', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('27', '../../images/listPicture/list7.webp', '【宿本】森系毛呢大衣女2018秋冬新款加厚呢子过膝外套中长款灯笼袖复古文艺', '109', '170', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('28', '../../images/listPicture/list8.webp', '2018抖音网红温婉同款短袖T恤女印花酷蹦迪嘻哈衣服街头拍款上衣', '199', '284.29', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('29', '../../images/listPicture/list9.webp', '2018秋季女装新款韩版落肩连帽卫衣女宽松oversize简约bf风下衣失踪上衣学生外套女', '98', '140', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('30', '../../images/listPicture/list10.webp', '气质显瘦加厚大衣女中长款韩版2018新款冬季款夹棉阿尔巴卡呢子毛呢外套', '158', '225.72', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('31', '../../images/listPicture/list1.webp', '【宿本】小清新加厚呢子大衣女2018冬季新款复古中长款毛呢外套流行', '78', '280', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('32', '../../images/listPicture/list2.webp', '早秋新款韩版学院风百搭条纹针织打底衫学生圆领短袖T恤女装上衣', '98', '141.43', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('33', '../../images/listPicture/list3.webp', '短袖T恤女夏装新款2018韩版学生宽松印花白色体恤半袖圆领简约百搭上衣潮', '69', '112.86', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('34', '../../images/listPicture/list4.webp', '大毛领冬季新款2018时尚加厚嘻哈风情侣棉衣BF红色棉服oversize外套女', '198', '298', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('35', '../../images/listPicture/list5.webp', '2018春夏季新款八色纯色浅色系时尚简约韩范纯棉学生休闲百搭基础款纯色圆领短袖上衣女T恤', '235', '108', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('36', '../../images/listPicture/list6.webp', '2018韩版新款时尚百搭中长款原宿风连帽透明口袋宽松五分袖短袖T恤上衣潮', '39', '57', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('37', '../../images/listPicture/list7.webp', '【宿本】森系毛呢大衣女2018秋冬新款加厚呢子过膝外套中长款灯笼袖复古文艺', '109', '170', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');
INSERT INTO `list` VALUES ('38', '../../images/listPicture/list8.webp', '2018抖音网红温婉同款短袖T恤女印花酷蹦迪嘻哈衣服街头拍款上衣', '199', '284.29', '../../images/detailspicture/bimg2.jpg&../../images/detailspicture/bimg02.jpg', '../../images/detailspicture/simg2.jpg&../../images/detailspicture/simg02.jpg');
INSERT INTO `list` VALUES ('39', '../../images/listPicture/list9.webp', '2018秋季女装新款韩版落肩连帽卫衣女宽松oversize简约bf风下衣失踪上衣学生外套女', '98', '140', '../../images/detailspicture/bimg3.jpg&../../images/detailspicture/bimg03.jpg', '../../images/detailspicture/simg3.jpg&../../images/detailspicture/simg03.jpg');
INSERT INTO `list` VALUES ('40', '../../images/listPicture/list10.webp', '气质显瘦加厚大衣女中长款韩版2018新款冬季款夹棉阿尔巴卡呢子毛呢外套', '158', '225.72', '../../images/detailspicture/bimg1.jpg&../../images/detailspicture/bimg01.jpg', '../../images/detailspicture/simg1.jpg&../../images/detailspicture/simg01.jpg');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'li', '123456');

-- ----------------------------
-- Table structure for shouye
-- ----------------------------
DROP TABLE IF EXISTS `shouye`;
CREATE TABLE `shouye` (
  `id` varchar(70) NOT NULL,
  `userPic` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `show` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shouye
-- ----------------------------
INSERT INTO `shouye` VALUES ('1', 'images/Renderpicture/tx1.webp', '小蘑菇宿宿', 'images/Renderpicture/datu(1).webp', '秋日清爽穿搭，露肩喇叭袖内搭凸显活泼，外搭黑色吊带裙凸显时尚，再配上百搭小白鞋，轻松穿出秋冬的清爽感～', null);
INSERT INTO `shouye` VALUES ('2', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '', '中国|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('3', 'images/Renderpicture/tx2.webp', '郭一盖儿', 'images/Renderpicture/datu(2).webp', '棒球服加铅笔裤太单调，叠穿一个衬衣吧，增加衣服的层次感，和时尚感', null);
INSERT INTO `shouye` VALUES ('4', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '', '丹麦|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('5', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('6', 'images/Renderpicture/tx3.webp', '梦梦啊aaa', 'images/Renderpicture/datu(3).webp', '卫衣??短裤??长靴 冬季也能穿着短裤轻松出街???♀?！长靴冬天真的每人应该备一双好搭配又保暖??！过膝包腿长靴过于甜美??，这次选择了比较街头的皮靴！搭配短裤一级棒??！', null);
INSERT INTO `shouye` VALUES ('7', 'images/Renderpicture/tx4.webp', '林小杭Bess', 'images/Renderpicture/datu(4).webp', '深棕色做打底，两件格纹外套叠穿，同样的格纹不同的款式和长度，可以穿出层次感。贝雷帽包包和短靴都选了棕色系单品，搭配墨绿格纹外套，有点学院风的感觉～', null);
INSERT INTO `shouye` VALUES ('8', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('9', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '不同色块组合的宽松休闲的毛衣以及拼接牛仔裤 慵懒休闲的同时又有轻快阳光的运动感 拍摄地：3054山临吾舍', null);
INSERT INTO `shouye` VALUES ('10', 'images/Renderpicture/tx6.webp', '小喵喵酱', 'images/Renderpicture/datu(6).webp', '垂坠感好的衣服就是有很强的显瘦能力，再用银色链条统一整体风格~', null);
INSERT INTO `shouye` VALUES ('11', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '对于上了年纪的美少女而言，面包棉服真的是冬天不能少的单品没有之一哈哈哈哈哈！为了不傻肿，对于短款棉服我一般都会选择搭配短裙～为了防冻且美丽！我一般都会穿一条光腿神器，再穿上一条看似很薄的过膝袜在外面～', null);
INSERT INTO `shouye` VALUES ('12', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('13', 'images/Renderpicture/tx8.webp', '何夕Quency', 'images/Renderpicture/datu(8).webp', '??这套搭配的外套是一件卡其色的羊羔毛外套，翻领的款式很复古啦，里面是加绒加厚，冬天穿还是很保暖舒服的，试穿S码合身，不建议领子扣起来，因为这件衣服的领口设计不是很科学会掐脖子哦，常规款的长度也是不挑人滴。', null);
INSERT INTO `shouye` VALUES ('14', 'images/Renderpicture/tx9.webp', '戴戴子子', 'images/Renderpicture/datu(9).webp', '不同色块组合的宽松休闲的毛衣以及拼接牛仔裤 慵懒休闲的同时又有轻快阳光的运动感 拍摄地：3054山临吾舍', null);
INSERT INTO `shouye` VALUES ('15', 'images/Renderpicture/tx10.webp', '韩雪娇Nina', 'images/Renderpicture/datu(10).webp', '还好还没开始冷到不行哈哈哈哈好多加绒卫衣都能穿~ 过膝长筒靴可以拉长双腿呀配上光腿神器也不会太冷！肥宅安安心心度过换季尴尬期', null);
INSERT INTO `shouye` VALUES ('16', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '学生党的日常时髦穿搭~上松+下紧，上长+下短，都是为了突出大长腿咯！黑皮鞋+白袜是穿出韩国少女味的关键~', null);
INSERT INTO `shouye` VALUES ('17', 'images/Renderpicture/tx1.webp', '小蘑菇宿宿', 'images/Renderpicture/datu(1).webp', '秋日清爽穿搭，露肩喇叭袖内搭凸显活泼，外搭黑色吊带裙凸显时尚，再配上百搭小白鞋，轻松穿出秋冬的清爽感～', null);
INSERT INTO `shouye` VALUES ('18', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '', '中国|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('19', 'images/Renderpicture/tx2.webp', '郭一盖儿', 'images/Renderpicture/datu(2).webp', '棒球服加铅笔裤太单调，叠穿一个衬衣吧，增加衣服的层次感，和时尚感', null);
INSERT INTO `shouye` VALUES ('20', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '', '丹麦|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('21', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('22', 'images/Renderpicture/tx3.webp', '梦梦啊aaa', 'images/Renderpicture/datu(3).webp', '卫衣??短裤??长靴 冬季也能穿着短裤轻松出街???♀?！长靴冬天真的每人应该备一双好搭配又保暖??！过膝包腿长靴过于甜美??，这次选择了比较街头的皮靴！搭配短裤一级棒??！', null);
INSERT INTO `shouye` VALUES ('23', 'images/Renderpicture/tx4.webp', '林小杭Bess', 'images/Renderpicture/datu(4).webp', '深棕色做打底，两件格纹外套叠穿，同样的格纹不同的款式和长度，可以穿出层次感。贝雷帽包包和短靴都选了棕色系单品，搭配墨绿格纹外套，有点学院风的感觉～', null);
INSERT INTO `shouye` VALUES ('24', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('25', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '其实忽略头饰，整体搭配是抢眼不夸张的~荧光黄和荧光绿的组合是少女们的福利色~配合波普风短裙时髦度爆表！', null);
INSERT INTO `shouye` VALUES ('26', 'images/Renderpicture/tx6.webp', '小喵喵酱', 'images/Renderpicture/datu(6).webp', '垂坠感好的衣服就是有很强的显瘦能力，再用银色链条统一整体风格~', null);
INSERT INTO `shouye` VALUES ('27', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '对于上了年纪的美少女而言，面包棉服真的是冬天不能少的单品没有之一哈哈哈哈哈！为了不傻肿，对于短款棉服我一般都会选择搭配短裙～为了防冻且美丽！我一般都会穿一条光腿神器，再穿上一条看似很薄的过膝袜在外面～', null);
INSERT INTO `shouye` VALUES ('28', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('29', 'images/Renderpicture/tx8.webp', '何夕Quency', 'images/Renderpicture/datu(8).webp', '??这套搭配的外套是一件卡其色的羊羔毛外套，翻领的款式很复古啦，里面是加绒加厚，冬天穿还是很保暖舒服的，试穿S码合身，不建议领子扣起来，因为这件衣服的领口设计不是很科学会掐脖子哦，常规款的长度也是不挑人滴。', null);
INSERT INTO `shouye` VALUES ('30', 'images/Renderpicture/tx9.webp', '戴戴子子', 'images/Renderpicture/datu(9).webp', '不同色块组合的宽松休闲的毛衣以及拼接牛仔裤 慵懒休闲的同时又有轻快阳光的运动感 拍摄地：3054山临吾舍', null);
INSERT INTO `shouye` VALUES ('31', 'images/Renderpicture/tx10.webp', '韩雪娇Nina', 'images/Renderpicture/datu(10).webp', '还好还没开始冷到不行哈哈哈哈好多加绒卫衣都能穿~ 过膝长筒靴可以拉长双腿呀配上光腿神器也不会太冷！肥宅安安心心度过换季尴尬期', null);
INSERT INTO `shouye` VALUES ('32', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '学生党的日常时髦穿搭~上松+下紧，上长+下短，都是为了突出大长腿咯！黑皮鞋+白袜是穿出韩国少女味的关键~', null);
INSERT INTO `shouye` VALUES ('33', 'images/Renderpicture/tx1.webp', '小蘑菇宿宿', 'images/Renderpicture/datu(1).webp', '秋日清爽穿搭，露肩喇叭袖内搭凸显活泼，外搭黑色吊带裙凸显时尚，再配上百搭小白鞋，轻松穿出秋冬的清爽感～', null);
INSERT INTO `shouye` VALUES ('34', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '', '中国|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('35', 'images/Renderpicture/tx2.webp', '郭一盖儿', 'images/Renderpicture/datu(2).webp', '棒球服加铅笔裤太单调，叠穿一个衬衣吧，增加衣服的层次感，和时尚感', null);
INSERT INTO `shouye` VALUES ('36', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '', '丹麦|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('37', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('38', 'images/Renderpicture/tx3.webp', '梦梦啊aaa', 'images/Renderpicture/datu(3).webp', '卫衣??短裤??长靴 冬季也能穿着短裤轻松出街???♀?！长靴冬天真的每人应该备一双好搭配又保暖??！过膝包腿长靴过于甜美??，这次选择了比较街头的皮靴！搭配短裤一级棒??！', null);
INSERT INTO `shouye` VALUES ('39', 'images/Renderpicture/tx4.webp', '林小杭Bess', 'images/Renderpicture/datu(4).webp', '深棕色做打底，两件格纹外套叠穿，同样的格纹不同的款式和长度，可以穿出层次感。贝雷帽包包和短靴都选了棕色系单品，搭配墨绿格纹外套，有点学院风的感觉～', null);
INSERT INTO `shouye` VALUES ('40', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('41', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '其实忽略头饰，整体搭配是抢眼不夸张的~荧光黄和荧光绿的组合是少女们的福利色~配合波普风短裙时髦度爆表！', null);
INSERT INTO `shouye` VALUES ('42', 'images/Renderpicture/tx6.webp', '小喵喵酱', 'images/Renderpicture/datu(6).webp', '垂坠感好的衣服就是有很强的显瘦能力，再用银色链条统一整体风格~', null);
INSERT INTO `shouye` VALUES ('43', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '对于上了年纪的美少女而言，面包棉服真的是冬天不能少的单品没有之一哈哈哈哈哈！为了不傻肿，对于短款棉服我一般都会选择搭配短裙～为了防冻且美丽！我一般都会穿一条光腿神器，再穿上一条看似很薄的过膝袜在外面～', null);
INSERT INTO `shouye` VALUES ('44', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('45', 'images/Renderpicture/tx8.webp', '何夕Quency', 'images/Renderpicture/datu(8).webp', '??这套搭配的外套是一件卡其色的羊羔毛外套，翻领的款式很复古啦，里面是加绒加厚，冬天穿还是很保暖舒服的，试穿S码合身，不建议领子扣起来，因为这件衣服的领口设计不是很科学会掐脖子哦，常规款的长度也是不挑人滴。', null);
INSERT INTO `shouye` VALUES ('46', 'images/Renderpicture/tx9.webp', '戴戴子子', 'images/Renderpicture/datu(9).webp', '不同色块组合的宽松休闲的毛衣以及拼接牛仔裤 慵懒休闲的同时又有轻快阳光的运动感 拍摄地：3054山临吾舍', null);
INSERT INTO `shouye` VALUES ('47', 'images/Renderpicture/tx10.webp', '韩雪娇Nina', 'images/Renderpicture/datu(10).webp', '还好还没开始冷到不行哈哈哈哈好多加绒卫衣都能穿~ 过膝长筒靴可以拉长双腿呀配上光腿神器也不会太冷！肥宅安安心心度过换季尴尬期', null);
INSERT INTO `shouye` VALUES ('48', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '学生党的日常时髦穿搭~上松+下紧，上长+下短，都是为了突出大长腿咯！黑皮鞋+白袜是穿出韩国少女味的关键~', null);
INSERT INTO `shouye` VALUES ('49', 'images/Renderpicture/tx1.webp', '小蘑菇宿宿', 'images/Renderpicture/datu(1).webp', '秋日清爽穿搭，露肩喇叭袖内搭凸显活泼，外搭黑色吊带裙凸显时尚，再配上百搭小白鞋，轻松穿出秋冬的清爽感～', null);
INSERT INTO `shouye` VALUES ('50', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '', '中国|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('51', 'images/Renderpicture/tx2.webp', '郭一盖儿', 'images/Renderpicture/datu(2).webp', '棒球服加铅笔裤太单调，叠穿一个衬衣吧，增加衣服的层次感，和时尚感', null);
INSERT INTO `shouye` VALUES ('52', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '', '丹麦|更新了98个LOOK');
INSERT INTO `shouye` VALUES ('53', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('54', 'images/Renderpicture/tx3.webp', '梦梦啊aaa', 'images/Renderpicture/datu(3).webp', '卫衣??短裤??长靴 冬季也能穿着短裤轻松出街???♀?！长靴冬天真的每人应该备一双好搭配又保暖??！过膝包腿长靴过于甜美??，这次选择了比较街头的皮靴！搭配短裤一级棒??！', null);
INSERT INTO `shouye` VALUES ('55', 'images/Renderpicture/tx4.webp', '林小杭Bess', 'images/Renderpicture/datu(4).webp', '深棕色做打底，两件格纹外套叠穿，同样的格纹不同的款式和长度，可以穿出层次感。贝雷帽包包和短靴都选了棕色系单品，搭配墨绿格纹外套，有点学院风的感觉～', null);
INSERT INTO `shouye` VALUES ('56', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('57', 'images/Renderpicture/tx5.webp', '彤子蓝', 'images/Renderpicture/datu(5).webp', '其实忽略头饰，整体搭配是抢眼不夸张的~荧光黄和荧光绿的组合是少女们的福利色~配合波普风短裙时髦度爆表！', null);
INSERT INTO `shouye` VALUES ('58', 'images/Renderpicture/tx6.webp', '小喵喵酱', 'images/Renderpicture/datu(6).webp', '垂坠感好的衣服就是有很强的显瘦能力，再用银色链条统一整体风格~', null);
INSERT INTO `shouye` VALUES ('59', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '对于上了年纪的美少女而言，面包棉服真的是冬天不能少的单品没有之一哈哈哈哈哈！为了不傻肿，对于短款棉服我一般都会选择搭配短裙～为了防冻且美丽！我一般都会穿一条光腿神器，再穿上一条看似很薄的过膝袜在外面～', null);
INSERT INTO `shouye` VALUES ('60', 'images/Renderpicture/tx7.webp', 'lynne200610', 'images/Renderpicture/datu(7).webp', '', '销量 24.7万');
INSERT INTO `shouye` VALUES ('61', 'images/Renderpicture/tx8.webp', '何夕Quency', 'images/Renderpicture/datu(8).webp', '??这套搭配的外套是一件卡其色的羊羔毛外套，翻领的款式很复古啦，里面是加绒加厚，冬天穿还是很保暖舒服的，试穿S码合身，不建议领子扣起来，因为这件衣服的领口设计不是很科学会掐脖子哦，常规款的长度也是不挑人滴。', null);
INSERT INTO `shouye` VALUES ('62', 'images/Renderpicture/tx9.webp', '戴戴子子', 'images/Renderpicture/datu(9).webp', '不同色块组合的宽松休闲的毛衣以及拼接牛仔裤 慵懒休闲的同时又有轻快阳光的运动感 拍摄地：3054山临吾舍', null);
INSERT INTO `shouye` VALUES ('63', 'images/Renderpicture/tx10.webp', '韩雪娇Nina', 'images/Renderpicture/datu(10).webp', '还好还没开始冷到不行哈哈哈哈好多加绒卫衣都能穿~ 过膝长筒靴可以拉长双腿呀配上光腿神器也不会太冷！肥宅安安心心度过换季尴尬期', null);
INSERT INTO `shouye` VALUES ('64', 'images/Renderpicture/tx11.webp', 'Lynsey_', 'images/Renderpicture/datu(11).webp', '学生党的日常时髦穿搭~上松+下紧，上长+下短，都是为了突出大长腿咯！黑皮鞋+白袜是穿出韩国少女味的关键~', null);

-- ----------------------------
-- Table structure for zhuce
-- ----------------------------
DROP TABLE IF EXISTS `zhuce`;
CREATE TABLE `zhuce` (
  `name` varchar(255) DEFAULT NULL,
  `mima` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuce
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
