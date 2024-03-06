/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : petland

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 06/03/2024 13:24:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pets
-- ----------------------------
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '年龄',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '体型',
  `breed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '品种',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '注意',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pets
-- ----------------------------
INSERT INTO `pets` VALUES (1, '黄和平', '4岁', '男孩', '猫咪', '小型', '长毛黄白花', 'hhp.jpeg', '黄和平是个标准的长毛黄白花儿，白口罩+白手套+白衬衫款。集呆萌与可爱于一身，略显慢热，但爱玩爱吃，与其他猫相处愉快，适合多猫家庭，已免疫、已绝育。');
INSERT INTO `pets` VALUES (2, '小椿', '5岁', '女孩', '狗狗', '中型', '中华田园犬', 'xc.jpeg', '中型犬体型，全身棕红色，体型瘦长，是个亲人可爱的小女生，已免疫已绝育，适合领养。');
INSERT INTO `pets` VALUES (3, '小绿', '9个月', '女孩', '猫咪', '小型', '中华狸花猫', 'xlv.jpeg', '小绿，是个性格很亲人的小猫，女孩，已绝育、已免疫，身体健康，适合家庭生活，喜欢跟同龄小猫玩。小绿和芝麻糊、五仁是一奶同胞，推荐领养哦~');
INSERT INTO `pets` VALUES (4, '发发', '10个月', '男孩', '猫咪', '小型', '黑白狸猫', 'ff.jpeg', '发发，性格超好，温和、友好、亲人、不怕生，爱玩，跟猫咪们相处和谐，情绪稳定，喜欢板鸭趴~ 已免疫已绝育，身体健康，生活习惯好，推荐领养！如果计划领养两只可以跟兄弟奇奇一起领养哦~');
INSERT INTO `pets` VALUES (5, '芝麻糊', '9个月', '男孩', '猫咪', '小型', '奶牛猫', 'zmh.jpeg', '芝麻糊，小名“糊糊”，跟兄弟五仁儿，小名“年年”（黏黏糊糊的谐音梗）一起入住猫屋的，已完成免疫，暂未绝育，性格温和，逆来顺受，属于慢热型小伙儿，推荐和兄弟五仁儿一起领养！ 我们的口号：“领养猫好，一块儿领养两个更好”！');
INSERT INTO `pets` VALUES (6, '五仁儿', '9个月', '男孩', '猫咪', '小型', '黄白花', 'wre.jpeg', '五仁儿是猫屋里最最亲人的小猫咪，小名“年年”，跟兄弟芝麻糊，小名“糊糊”（黏黏糊糊的谐音梗）一起来到猫屋，已免疫，已绝育。性格宇宙无敌可爱，推荐领养！');
INSERT INTO `pets` VALUES (7, '小狸', '1岁', '男孩', '猫咪', '中型', '中华狸花猫', 'xl.jpeg', '小狸，是个被小区里的流浪三花猫姐姐抚养长大的小猫。已免疫、已绝育，跟猫很亲近，喜欢粘着猫哥哥猫姐姐们同吃同睡同玩。因为从小流浪的经历有些怕人，总是和人类保持一米的距离，喜欢默默的观察人类，偶尔趁它不注意时上手撸俩把，它也会享受的打呼噜。');
INSERT INTO `pets` VALUES (8, '面条', '4岁', '男孩', '猫咪', '中型', '金吉拉', 'mt.jpeg', '面条，已免疫、已绝育，身体健康，性格温顺亲人，喜欢照顾幼猫，爱玩球，会巡回小球，不喜欢成年公猫。面条的毛量非常大，很厚实，掉毛少，需要经常梳毛，扁脸猫的常见问题就是眼泪多，有泪痕，需要每天早晚给擦眼睛哦~\r\n 面条，已免疫、已绝育，身体健康，性格温顺亲人，喜欢照顾幼猫，爱玩球，会巡回小球，不喜欢成年公猫。面条的毛量非常大，很厚实，掉毛少，需要经常梳毛，扁脸猫的常见问题就是眼泪多，有泪痕，需要每天早晚给擦眼睛哦~\r\n \r\n面条，已免疫、已绝育，身体健康，性格温顺亲人，喜欢照顾幼猫，爱玩球，会巡回小球，不喜欢');
INSERT INTO `pets` VALUES (9, '小智', '4岁', '男孩', '狗狗', '中型', '斯坦福犬', 'xz.jpeg', '小智，黑白双色斯坦福犬，国内好像并不多见呢！特别友好亲人，中型犬，爱吃爱玩，不认生，已绝育、已免疫，推荐领养。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'shell', '859505', '', '');

SET FOREIGN_KEY_CHECKS = 1;
