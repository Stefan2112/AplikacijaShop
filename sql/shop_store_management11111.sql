

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shop_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin_user`;
CREATE TABLE `shop_admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatarUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_admin_user
-- ----------------------------
INSERT INTO `shop_admin_user` VALUES (5, '15553598117', '9c67e149bf846087c5b0043bb40eb35f', 'rrr', 'http://127.0.0.1/images/admin/15553598117.jpg', '2019-01-20 22:14:43', '2019-03-11 15:16:16');
INSERT INTO `shop_admin_user` VALUES (9, '15553598111', '9c67e149bf846087c5b0043bb40eb35f', 'pwx', NULL, '2019-05-13 21:43:05', '2019-05-13 21:43:05');

-- ----------------------------
-- Table structure for shop_book_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_book_category`;
CREATE TABLE `shop_book_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_book_category
-- ----------------------------
INSERT INTO `shop_book_category` VALUES (1, 'ff');
INSERT INTO `shop_book_category` VALUES (2, 'ff');
INSERT INTO `shop_book_category` VALUES (3, 'fasfsa');
INSERT INTO `shop_book_category` VALUES (4, 'fsafa');
INSERT INTO `shop_book_category` VALUES (14, 'ffsa');
INSERT INTO `shop_book_category` VALUES (6, 'fasfsaf');
INSERT INTO `shop_book_category` VALUES (7, 'fsafsa');
INSERT INTO `shop_book_category` VALUES (15, 'fsafas');
INSERT INTO `shop_book_category` VALUES (13, 'safasfsa');
INSERT INTO `shop_book_category` VALUES (11, 'fsafd');
INSERT INTO `shop_book_category` VALUES (12, 'fdsfds');
INSERT INTO `shop_book_category` VALUES (16, 'dfsfsd');
INSERT INTO `shop_book_category` VALUES (17, 'fsfsdfd');
INSERT INTO `shop_book_category` VALUES (18, 'fsdfsd');
INSERT INTO `shop_book_category` VALUES (19, 'fdsfsd');

-- ----------------------------
-- Table structure for shop_book_list
-- ----------------------------
DROP TABLE IF EXISTS `shop_book_list`;
CREATE TABLE `shop_book_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `press` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classify` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `stockPrice` float(10, 2) NOT NULL DEFAULT 0.00,
  `price` float(10, 2) NOT NULL,
  `salePrice` float(10, 2) NOT NULL,
  `isSell` int(1) NOT NULL DEFAULT 1,
  `imageUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_book_list
-- ----------------------------

-- ----------------------------
-- Table structure for shop_delivery_city
-- ----------------------------
DROP TABLE IF EXISTS `shop_delivery_city`;
CREATE TABLE `shop_delivery_city`  (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cityId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provinceId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for shop_delivery_company
-- ----------------------------
DROP TABLE IF EXISTS `shop_delivery_company`;
CREATE TABLE `shop_delivery_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_delivery_company
-- ----------------------------
INSERT INTO `shop_delivery_company` VALUES (1, 'reqrewe');
INSERT INTO `shop_delivery_company` VALUES (2, 'erwwerew');
INSERT INTO `shop_delivery_company` VALUES (4, 'ewrwe');
INSERT INTO `shop_delivery_company` VALUES (8, 'rwewerwe');
INSERT INTO `shop_delivery_company` VALUES (9, 'EMS');
INSERT INTO `shop_delivery_company` VALUES (10, 'rwrew');
INSERT INTO `shop_delivery_company` VALUES (3, 'erwwtrg');
INSERT INTO `shop_delivery_company` VALUES (11, 'gsdgsf');

-- ----------------------------
-- Table structure for shop_delivery_country
-- ----------------------------
DROP TABLE IF EXISTS `shop_delivery_country`;
CREATE TABLE `shop_delivery_country`  (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `countryId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cityId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;



DROP TABLE IF EXISTS `shop_delivery_province`;
CREATE TABLE `shop_delivery_province`  (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provinceId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_delivery_province
-- ----------------------------
INSERT INTO `shop_delivery_province` VALUES (1, 'rrr', '110000000000');
INSERT INTO `shop_delivery_province` VALUES (2, 'tyg', '120000000000');
INSERT INTO `shop_delivery_province` VALUES (3, 'dvvd', '130000000000');
INSERT INTO `shop_delivery_province` VALUES (4, 'dccdsg', '140000000000');
INSERT INTO `shop_delivery_province` VALUES (5, 'czxcxz', '150000000000');
INSERT INTO `shop_delivery_province` VALUES (6, 'zxcxz', '210000000000');
INSERT INTO `shop_delivery_province` VALUES (7, 'xzczxcx', '220000000000');
INSERT INTO `shop_delivery_province` VALUES (8, 'czzxcx', '230000000000');
INSERT INTO `shop_delivery_province` VALUES (9, 'zcxzc', '310000000000');
INSERT INTO `shop_delivery_province` VALUES (10, 'adssdsa', '320000000000');
INSERT INTO `shop_delivery_province` VALUES (11, 'fsasdfaasf', '330000000000');
INSERT INTO `shop_delivery_province` VALUES (12, 'sdadassa', '340000000000');
INSERT INTO `shop_delivery_province` VALUES (13, 'saddsa', '350000000000');
INSERT INTO `shop_delivery_province` VALUES (14, 'sadasdds', '360000000000');
INSERT INTO `shop_delivery_province` VALUES (15, 'gg', '370000000000');


-- ----------------------------
-- Table structure for shop_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_info`;
CREATE TABLE `shop_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;



-- ----------------------------
-- Table structure for shop_option_record
-- ----------------------------
DROP TABLE IF EXISTS `shop_option_record`;
CREATE TABLE `shop_option_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `optionNickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `optionType` int(11) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_option_record
-- ----------------------------
INSERT INTO `shop_option_record` VALUES (10, '15553598111', 'pwx', 0, 'Nesto ', '2019-05-13 21:52:54');
INSERT INTO `shop_option_record` VALUES (9, '15553598117', 'dddd', 0, 'Nesto1', '2019-05-13 13:04:05');
INSERT INTO `shop_option_record` VALUES (8, '15553598117', 'ttt', 0, 'Nesto2', '2019-05-13 13:03:46');
INSERT INTO `shop_option_record` VALUES (11, '15553598117', 'jjjj', 0, 'sdd', '2019-05-19 14:53:13');
INSERT INTO `shop_option_record` VALUES (12, '15553598117', 'llll', 0, 'asa', '2019-05-19 14:53:32');

-- ----------------------------
-- Table structure for shop_order_list
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_list`;
CREATE TABLE `shop_order_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'sadasfa',
  `status` int(11) NOT NULL,
  `orderNum` int(11) NOT NULL,
  `orderMoney` float(11, 2) NOT NULL,
  `deliveryMoney` float(11, 2) NOT NULL,
  `totalMoney` float(11, 2) NOT NULL,
  `deliveryId` int(11) NULL DEFAULT NULL,
  `deliveryOrderId` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deliveryAddressId` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deliveryAt` datetime(0) NULL DEFAULT NULL,
  `dealAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 758 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_order_list
-- ----------------------------
INSERT INTO `shop_order_list` VALUES (748, 'D0000000012019410160742', 1, '15553598112', 6, 1, 19.80, 6.00, 25.80, NULL, NULL, 48, '2131', '2019-05-10 16:07:42', NULL, '2019-05-10 16:07:45');
INSERT INTO `shop_order_list` VALUES (749, 'D0000000012019411003855', 1, '15553598112', 6, 1, 37.40, 6.00, 43.40, 8, '5156155020222', 47, '21', '2019-05-11 00:38:55', '2019-05-11 00:39:19', '2019-05-11 00:39:03');
INSERT INTO `shop_order_list` VALUES (750, 'D0000000012019413095314', 1, '15553598112', 7, 1, 32.00, 6.00, 38.00, NULL, NULL, 47, 'dfff', '2019-05-13 09:53:14', NULL, '2019-05-13 11:26:28');
INSERT INTO `shop_order_list` VALUES (751, 'D0000000012019413130215', 1, '15553598112', 5, 2, 151.37, 0.00, 151.37, 8, '26515651615616', 48, '', '2019-05-13 13:02:15', '2019-05-13 13:02:44', '2019-05-13 13:02:21');
INSERT INTO `shop_order_list` VALUES (752, 'D0000000012019413215317', 1, '15553598112', 5, 1, 128.00, 6.00, 134.00, 4, '213123123123123', 47, '', '2019-05-13 21:53:17', '2019-05-13 21:53:43', '2019-05-13 21:53:26');
INSERT INTO `shop_order_list` VALUES (753, 'D0000000012019413220458', 1, '15553598112', 5, 1, 188.40, 0.00, 188.40, 4, '12312312', 48, '', '2019-05-13 22:04:58', '2019-05-13 22:05:21', '2019-05-13 22:05:02');
INSERT INTO `shop_order_list` VALUES (754, 'D0000000012019418214016', 1, '15553598112', 0, 1, 32.00, 6.00, 38.00, NULL, NULL, 47, '', '2019-05-18 21:40:16', NULL, NULL);
INSERT INTO `shop_order_list` VALUES (755, 'D0000000012019419074200', 1, '15553598112', 1, 1, 210.00, 0.00, 210.00, NULL, NULL, 48, '', '2019-05-19 07:42:00', NULL, '2019-05-19 07:42:20');
INSERT INTO `shop_order_list` VALUES (756, 'D0000000012019419100937', 1, '15553598112', 0, 1, 89.00, 6.00, 95.00, NULL, NULL, 47, '', '2019-05-19 10:09:37', NULL, NULL);
INSERT INTO `shop_order_list` VALUES (757, 'D0000000012019419145611', 1, '15553598112', 7, 2, 622.60, 0.00, 622.60, 8, '332432424242', 48, '2131', '2019-05-19 14:56:11', '2019-05-19 14:57:09', '2019-05-19 14:57:52');
INSERT INTO `shop_order_list` VALUES (747, 'D0000000202019408200133', 20, '15553598111', 1, 1, 210.00, 0.00, 210.00, NULL, NULL, 49, '', '2019-05-08 20:01:33', NULL, '2019-05-08 20:01:53');
INSERT INTO `shop_order_list` VALUES (746, 'D0000000012019408195801', 1, '15553598112', 5, 2, 125.17, 6.00, 131.17, 3, '15615265115561', 47, '', '2019-05-08 19:58:01', '2019-05-08 19:58:57', '2019-05-08 19:58:04');
INSERT INTO `shop_order_list` VALUES (745, 'D0000000012019408195743', 1, '15553598112', 0, 2, 242.00, 0.00, 242.00, NULL, NULL, 47, '', '2019-05-08 19:57:43', NULL, NULL);
INSERT INTO `shop_order_list` VALUES (744, 'D0000000012019408195723', 1, '15553598112', 1, 1, 125.60, 6.00, 131.60, NULL, NULL, 48, '', '2019-05-08 19:57:23', NULL, '2019-05-08 19:57:27');
INSERT INTO `shop_order_list` VALUES (743, 'D0000000012019408195622', 1, '15553598112', 1, 1, 210.00, 0.00, 210.00, NULL, NULL, 47, '', '2019-05-08 19:56:22', NULL, '2019-05-08 19:56:27');

-- ----------------------------
-- Table structure for shop_refund_record
-- ----------------------------
DROP TABLE IF EXISTS `shop_refund_record`;
CREATE TABLE `shop_refund_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refundOrderId` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderNumId` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `refundMoney` float(11, 2) NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_refund_record
-- ----------------------------
INSERT INTO `shop_refund_record` VALUES (31, 'T0000000012019413112628', 'D0000000012019413095314', '15553598112', 7, 38.00, 'Dvava', '2019-05-13 11:26:28');
INSERT INTO `shop_refund_record` VALUES (32, 'T0000000012019419145752', 'D0000000012019419145611', '15553598112', 7, 622.60, '123', '2019-05-19 14:57:52');

-- ----------------------------
-- Table structure for shop_stock_record
-- ----------------------------
DROP TABLE IF EXISTS `shop_stock_record`;
CREATE TABLE `shop_stock_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) NOT NULL,
  `bookName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stockNum` int(11) NOT NULL,
  `stockPrice` float(10, 2) NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_stock_record
-- ----------------------------
INSERT INTO `shop_stock_record` VALUES (24, 181, 'Nesto', 100, 200.00, 0, 'Aaa', '2019-05-19 14:51:59');
INSERT INTO `shop_stock_record` VALUES (23, 180, 'NEsto', 300, 60.00, 0, 'Bbb', '2019-05-19 14:51:59');
INSERT INTO `shop_stock_record` VALUES (22, 178, 'NEsto', 50, 60.00, 1, 'ccc', '2019-05-08 19:55:37');
INSERT INTO `shop_stock_record` VALUES (21, 179, 'Nesto', 2, 90.00, 1, 'ddd', '2019-05-08 19:55:22');

-- ----------------------------
-- Table structure for shop_sub_order_list
-- ----------------------------
DROP TABLE IF EXISTS `shop_sub_order_list`;
CREATE TABLE `shop_sub_order_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mainOrderId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `bookName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookTitle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookNum` int(11) NOT NULL,
  `bookPrice` float(11, 2) NOT NULL,
  `bookSalePrice` float(11, 2) NOT NULL,
  `bookImageUrl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1752 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_sub_order_list
-- ----------------------------

-- ----------------------------
-- Table structure for shop_user_cart_list
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_cart_list`;
CREATE TABLE `shop_user_cart_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `press` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float(10, 2) NOT NULL,
  `salePrice` float(10, 2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imageUrl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;


-- Records of shop_user_cart_list
-- ----------------------------

-- ----------------------------
-- Table structure for shop_user_delivery
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_delivery`;
CREATE TABLE `shop_user_delivery`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `deliveryName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryMobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinceId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countryId` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDefault` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for shop_user_list
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_list`;
CREATE TABLE `shop_user_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatarUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- Records of shop_user_list
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
