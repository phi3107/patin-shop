/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : patin_shop

 Target Server Type    : MySQL
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 10/01/2023 11:01:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chitiet_donhang
-- ----------------------------
DROP TABLE IF EXISTS `chitiet_donhang`;
CREATE TABLE `chitiet_donhang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_donhang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int NULL DEFAULT NULL,
  `so luong` int NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_donhang`(`id_donhang` ASC) USING BTREE,
  INDEX `id_sp`(`id_sp` ASC) USING BTREE,
  CONSTRAINT `id_donhang` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_sp` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chitiet_donhang
-- ----------------------------

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `color_product`(`id_sp` ASC) USING BTREE,
  CONSTRAINT `color_product` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, 'atptrp2022', '??en');
INSERT INTO `color` VALUES (2, 'gpmmp', '?????');
INSERT INTO `color` VALUES (3, 'gpmmp', 'V??ng');
INSERT INTO `color` VALUES (4, 'gpmmp', 'Xanh d????ng');
INSERT INTO `color` VALUES (5, 'bxpfe100mm', '??en');
INSERT INTO `color` VALUES (6, 'gpteckf1', 'H???ng');
INSERT INTO `color` VALUES (7, 'gpteckf1', 'Xanh d????ng');
INSERT INTO `color` VALUES (8, 'mbhpccfeff', '??en');
INSERT INTO `color` VALUES (9, 'gpnlfef7', '??en');
INSERT INTO `color` VALUES (10, 'gpnlfef7', 'X??m');
INSERT INTO `color` VALUES (11, 'gp3bfef110h', '??en');
INSERT INTO `color` VALUES (12, 'gpnlfefbsfd', '??en');
INSERT INTO `color` VALUES (13, 'nbhptefekt', 'H???ng');
INSERT INTO `color` VALUES (16, 'nbhptefekt', 'X??m');
INSERT INTO `color` VALUES (17, 'tdgpfe', '??en');
INSERT INTO `color` VALUES (18, 'bdpib5m', '?????');
INSERT INTO `color` VALUES (19, 'bdpib5m', 'Tr???ng');
INSERT INTO `color` VALUES (20, 'bdpib5m', 'Xanh d????ng');
INSERT INTO `color` VALUES (21, 'bdpib5m', 'Xanh l??');

-- ----------------------------
-- Table structure for donhang
-- ----------------------------
DROP TABLE IF EXISTS `donhang`;
CREATE TABLE `donhang`  (
  `id_donhang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ho_ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `thoi_gian_tao` date NULL DEFAULT NULL,
  `trang_thai` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_donhang`) USING BTREE,
  INDEX `user_donhang`(`id_user` ASC) USING BTREE,
  CONSTRAINT `user_donhang` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donhang
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `img_product`(`id_sp` ASC) USING BTREE,
  CONSTRAINT `img_product` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, 'gpteii', 'img/ichi_hong_6-150x150.jpg');
INSERT INTO `images` VALUES (2, 'gpteii', 'img/ichi_den_1.jpg');
INSERT INTO `images` VALUES (3, 'gpnlfef7', 'img/2322137723569f7_5_grande.jpg');
INSERT INTO `images` VALUES (4, 'gp3bfef110h', 'img/fe-110h-red-2-600x600.jpg');
INSERT INTO `images` VALUES (5, 'bdpib5m', 'img/maxresdefault.jpg');

-- ----------------------------
-- Table structure for loaisp
-- ----------------------------
DROP TABLE IF EXISTS `loaisp`;
CREATE TABLE `loaisp`  (
  `id_loaisp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_loaisp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_loaisp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loaisp
-- ----------------------------
INSERT INTO `loaisp` VALUES ('bx', 'B??nh xe');
INSERT INTO `loaisp` VALUES ('giay', 'Gi??y Patin');
INSERT INTO `loaisp` VALUES ('lk', 'Linh ki???n');
INSERT INTO `loaisp` VALUES ('pk', 'Ph??? ki???n');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report
-- ----------------------------

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
  `id_sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gia_niem_yet` int NULL DEFAULT NULL,
  `gia_khuyen_mai` int NULL DEFAULT NULL,
  `ton_kho` int NULL DEFAULT NULL,
  `mo_ta` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mo_ta_chitiet` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_thuonghieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_loaisp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `uu_dai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `main_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sub_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `isActive` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_sp`) USING BTREE,
  INDEX `brand_product`(`id_thuonghieu` ASC) USING BTREE,
  INDEX `type_product`(`id_loaisp` ASC) USING BTREE,
  CONSTRAINT `brand_product` FOREIGN KEY (`id_thuonghieu`) REFERENCES `thuonghieu` (`id_thuonghieu`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `type_product` FOREIGN KEY (`id_loaisp`) REFERENCES `loaisp` (`id_loaisp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES ('', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES ('atptrp2022', '??O THUN PATIN TEAM ROLL PLUS 2022', 239000, NULL, 1200, '??o thun patin team Roll Plus l??m t??? v???i thun l???nh, cho c???m gi??c tho??ng m??t, nh??? nh??ng khi tr?????t patin, training, t???p off ice,???v???i tone ch??? ?????o v??ng ??en m???nh m???.', NULL, 'o', 'pk', NULL, 'img/ao-patin-roll-plus.jpg', NULL, 1);
INSERT INTO `sanpham` VALUES ('bdpib5m', 'B??NH ????N PATIN ISKATE BLAZE ??? LED 5 M??U ????N', 50000, NULL, 600, 'B??nh ????n Patin iSkate Blaze v???i c?????ng ????? s??ng t??? ????n LED c???c k?? m???nh, c?? nhi???u m??u s???c v?? k??ch c??? b??nh ????? ng?????i ch??i c?? th??? l???a ch???n th??ch h???p cho  nhu c???u ch??i.', NULL, 'o', 'lk', NULL, 'img/banh-den-patin-blaze_trang-600x600.jpg', 'img/banhdenthapcam.jpg', 1);
INSERT INTO `sanpham` VALUES ('bxpfe100mm', 'B??NH XE PATIN T???C ????? FLYING EAGLE 100MM', 275000, NULL, 300, 'B??nh xe patin t???c ????? Flying Eagle 110mm, s??? d???ng cho gi??y speed chuy??n nghi???p, ????? c???ng 88A, gi???m hao m??n ????ng k???, h??? tr??? t???c ????? cao.', NULL, 'fe', 'bx', NULL, 'img/banh110mm-150x150.jpg', NULL, 1);
INSERT INTO `sanpham` VALUES ('gp3bfef110h', 'GI??Y PATIN 3 B??NH FLYING EAGLE F110H', 6990000, NULL, 15, NULL, NULL, 'fe', 'giay', 'T???ng k??m b??? b???o h??? ch??nh h??ng BKB', 'img/flying_eagle_f110h-600x558-600x558.jpg', 'img/fe-110h-red-3.jpeg', 1);
INSERT INTO `sanpham` VALUES ('gpfep4x110mm', 'GI??Y PATIN T???C ????? FLYING EAGLE PHANTOM 4X110MM', 9790000, NULL, 200, NULL, NULL, 'fe', 'giay', 'T???ng k??m b??? b???o h??? ch??nh h??ng BKB', 'img/flying_eagle_phantom__3__grande-150x150.jpg', NULL, 1);
INSERT INTO `sanpham` VALUES ('gpmmp', 'GI??Y PATIN MICRO MT PLUS', 3750000, NULL, 100, NULL, NULL, 'micro', 'giay', 'T???ng k??m b??? b???o h??? si??u b???n tr??? gi?? 180.000??', 'img/giay-patin-micro-mt-plus-10.jpg', 'img/giay-patin-micro-mt-plus-11.jpg', 1);
INSERT INTO `sanpham` VALUES ('gpnlfef7', 'GI??Y PATIN NG?????I L???N FLYING EAGLE F7', 5200000, NULL, 20, NULL, NULL, 'fe', 'giay', 'T???ng 1 t??i ?????ng gi??y th???i trang Flying Eagle 250.000 ??', 'img/8953537718035f7_1_grande-1.jpg', 'img/182237794302f7_6_grande.jpg', 1);
INSERT INTO `sanpham` VALUES ('gpnlfefbsfd', 'GI??Y PATIN NG?????I L???N FLYING EAGLE FBS FAST BLADE', 1650000, NULL, 26, NULL, NULL, 'fe', 'giay', 'T???ng k??m b??? b???o h??? ch??nh h??ng BKB', 'img/FBS-1.jpg', 'img/giay-patin-flying-eagle-fbs-moi-den-600x600.jpg', 1);
INSERT INTO `sanpham` VALUES ('gpteckf1', 'GI??Y PATIN TR??? EM GI?? R??? CHAMTPION KF1', 1495000, 1300000, 100, NULL, NULL, 'o', 'giay', 'T???ng k??m b??? b???o h??? FE NT si??u b???n tr??? gi?? 250.000??', 'img/giay-patin-tre-em-gia-re-papaya-kf1-hong-xanh-150x150.jpg', NULL, 1);
INSERT INTO `sanpham` VALUES ('gpteii', 'GI??Y PATIN TR??? EM GI?? R??? ISKATE ICHI ??? D?????I 1 TRI???U', 1265000, 900000, 60, NULL, NULL, 'o', 'giay', 'T???ng k??m b??? b???o h??? si??u b???n tr??? gi?? 180.000??', 'img/ichi_den_1-600x600.jpg', 'img/ichi_hong_1-150x150.jpg', 1);
INSERT INTO `sanpham` VALUES ('mbhpccfeff', 'M?? B???O H??? PATIN CAO C???P FE FAST FOWARD', 970000, NULL, 45, 'Tr???ng l?????ng c???a m?? b???o h??? patin FE Fast Foward nh??? s???p x??? 200g, b???o v??? ????u c???c t???t, c??c l??? th??ng gi?? tr??n n??n thi???t k??? ph?? h???p v??? m???t kh?? ?????ng h???c gi??p l?????t gi??', NULL, 'fe', 'giay', NULL, 'img/fehelmetfoward-150x147.jpg', NULL, 1);
INSERT INTO `sanpham` VALUES ('nbhptefekt', 'N??N B???O H??? PATIN TR??? EM FLYING EAGLE KT H??NH G???U', 690000, 650000, 34, 'N??n b???o h??? patin tr??? em FLying Eagle KT v???i 2 h??nh d??ng G???U H???NG v?? C?? M???P TR???NG c???c k?? d??? th????ng, ch???t li???u si??u nh??? si??u ch???c ch???n gi??p b???o v??? ?????u b?? khi tr?????t patin.', NULL, 'fe', 'pk', NULL, 'img/non-bao-ho-patin-flying-eagle-KT-hinh-con-gau-hong-ca-map.jpeg', NULL, 1);
INSERT INTO `sanpham` VALUES ('tdgpfe', 'T??I ?????NG GI??Y PATIN FLYING EAGLE CH??NH H??NG 250K', 250000, NULL, 1000, 'T??i ?????ng gi??y patin FLYING EAGLE ch??nh h??ng c?? th??? ch???a ???????c gi??y tr?????t c??? l???n, c??c linh ki???n ph??? ki???n c???a gi??y tr?????t. c?? d??y ??eo ch???c ch???n. Gi?? 250.000 ??/t??i', NULL, 'fe', 'pk', NULL, 'img/tui-patin-flying-eagle.jpg', NULL, 1);
INSERT INTO `sanpham` VALUES ('vbpfea7', 'V??NG BI PATIN FLYING EAGLE ABEC 7', 20000, NULL, 1000, 'V??ng bi patin Flying Eagle Abec 7 ???????c s??? d???ng tr??n c??c d??ng gi??y cao c???p nh?? FLying Eagle F3s, F4 Raven, F5s Eclipse, F6s Falcon???', NULL, 'fe', 'lk', NULL, 'img/vong-bi-bac-dan-abec-7-gia-re-hcm-ha-noi.jpg', 'img/vong-bi-bac-dan-abec-7-gia-re.jpg', 1);

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size_product`(`id_sp` ASC) USING BTREE,
  CONSTRAINT `size_product` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, 'gpmmp', '36');
INSERT INTO `size` VALUES (2, 'gpmmp', '37');
INSERT INTO `size` VALUES (3, 'gpmmp', '38');
INSERT INTO `size` VALUES (4, 'gpmmp', '39');
INSERT INTO `size` VALUES (5, 'gpmmp', '40');
INSERT INTO `size` VALUES (6, 'gpmmp', '41');
INSERT INTO `size` VALUES (7, 'gpteckf1', 'S(31-34)');
INSERT INTO `size` VALUES (8, 'gpteckf1', 'M(35-38)');
INSERT INTO `size` VALUES (9, 'gpnlfef7', '36');
INSERT INTO `size` VALUES (11, 'gpnlfef7', '38');
INSERT INTO `size` VALUES (12, 'gpnlfef7', '40');
INSERT INTO `size` VALUES (13, 'gpnlfef7', '41');
INSERT INTO `size` VALUES (14, 'gpnlfef7', '42');
INSERT INTO `size` VALUES (15, 'gpnlfef7', '45');
INSERT INTO `size` VALUES (16, 'gp3bfef110h', '36');
INSERT INTO `size` VALUES (17, 'gp3bfef110h', '37');
INSERT INTO `size` VALUES (18, 'gp3bfef110h', '38');
INSERT INTO `size` VALUES (19, 'gp3bfef110h', '39');
INSERT INTO `size` VALUES (20, 'gp3bfef110h', '40');
INSERT INTO `size` VALUES (21, 'gp3bfef110h', '41');
INSERT INTO `size` VALUES (22, 'gp3bfef110h', '42');
INSERT INTO `size` VALUES (23, 'gp3bfef110h', '43');
INSERT INTO `size` VALUES (24, 'gp3bfef110h', '44');
INSERT INTO `size` VALUES (25, 'gp3bfef110h', '45');
INSERT INTO `size` VALUES (26, 'gpnlfefbsfd', '36');
INSERT INTO `size` VALUES (27, 'gpnlfefbsfd', '37');
INSERT INTO `size` VALUES (28, 'gpnlfefbsfd', '38');
INSERT INTO `size` VALUES (29, 'gpnlfefbsfd', '39');
INSERT INTO `size` VALUES (30, 'gpnlfefbsfd', '40');
INSERT INTO `size` VALUES (31, 'gpnlfefbsfd', '41');
INSERT INTO `size` VALUES (32, 'gpnlfefbsfd', '42');
INSERT INTO `size` VALUES (33, 'gpnlfefbsfd', '43');
INSERT INTO `size` VALUES (34, 'gpnlfefbsfd', '44');
INSERT INTO `size` VALUES (35, 'gpnlfefbsfd', '45');
INSERT INTO `size` VALUES (36, 'bdpib5m', '64mm');
INSERT INTO `size` VALUES (38, 'bdpib5m', '70mm');
INSERT INTO `size` VALUES (39, 'bdpib5m', '72mm');
INSERT INTO `size` VALUES (40, 'bdpib5m', '76mm');
INSERT INTO `size` VALUES (41, 'bdpib5m', '80mm');

-- ----------------------------
-- Table structure for thuonghieu
-- ----------------------------
DROP TABLE IF EXISTS `thuonghieu`;
CREATE TABLE `thuonghieu`  (
  `id_thuonghieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_thuonghieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_thuonghieu`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thuonghieu
-- ----------------------------
INSERT INTO `thuonghieu` VALUES ('fe', 'Flying Eagle');
INSERT INTO `thuonghieu` VALUES ('micro', 'Micro');
INSERT INTO `thuonghieu` VALUES ('o', 'H??ng kh??c');
INSERT INTO `thuonghieu` VALUES ('seba', 'Seba');
INSERT INTO `thuonghieu` VALUES ('thex', 'TheX');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ho_ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin@gmail.com', 'admin369', 'V?? Ho??i Th????ng', '0152478965', 'B???n L???c, Long An', 0, 1);
INSERT INTO `user` VALUES ('ahxd', 'anhhungxadieu@gmail.com', '123587', 'Tr????ng Th??nh Nam', '0965425369', '?????c Hu???, Long An', 1, 1);
INSERT INTO `user` VALUES ('dcb', 'doanchibinh@gmail.com', '1456897', '?????ng Ti???u B??nh', '01254893548', 'Th??? ?????c, TP H??? Ch?? Minh', 2, 1);
INSERT INTO `user` VALUES ('mod', 'mod@gmail.com', 'moddz', 'Phan V??n V???', '0323586647', 'Ch??u Th??nh, Ti???n Giang', 1, 1);
INSERT INTO `user` VALUES ('tms', 'thichshopping@gmail.comm', 'jfl532a1f221', 'Phan Kim Li??n', '0458965236', 'Bi??n Ho??, ?????ng Nai', 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
