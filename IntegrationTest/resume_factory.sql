/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2016-05-04 23:20:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for additional_info
-- ----------------------------
DROP TABLE IF EXISTS `additional_info`;
CREATE TABLE `additional_info` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `aditional_info_title` varchar(255) collate utf8_unicode_ci default NULL,
  `aditional_info_desc` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of additional_info
-- ----------------------------

-- ----------------------------
-- Table structure for area_dict
-- ----------------------------
DROP TABLE IF EXISTS `area_dict`;
CREATE TABLE `area_dict` (
  `id` int(255) NOT NULL auto_increment,
  `area_code` varchar(255) collate utf8_unicode_ci default NULL,
  `area_name` varchar(255) collate utf8_unicode_ci default NULL,
  `input_code` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of area_dict
-- ----------------------------
INSERT INTO `area_dict` VALUES ('1', '511681', '四川华蓥市', 'SCHYS');
INSERT INTO `area_dict` VALUES ('2', '511700', '四川达州市', 'SCDZS');
INSERT INTO `area_dict` VALUES ('3', '511721', '四川达县', 'SCDX');
INSERT INTO `area_dict` VALUES ('4', '511722', '四川宣汉县', 'SCXHX');
INSERT INTO `area_dict` VALUES ('5', '511723', '四川开江县', 'SCKJX');
INSERT INTO `area_dict` VALUES ('6', '511724', '四川大竹县', 'SCDZX');
INSERT INTO `area_dict` VALUES ('7', '511725', '四川渠县', 'SCQX');
INSERT INTO `area_dict` VALUES ('8', '511781', '四川万源市', 'SCWYS');
INSERT INTO `area_dict` VALUES ('9', '511800', '四川雅安市', 'SCYAS');
INSERT INTO `area_dict` VALUES ('10', '511821', '四川名山县', 'SCMSX');
INSERT INTO `area_dict` VALUES ('11', '511822', '四川荥经县', 'SCXJX');
INSERT INTO `area_dict` VALUES ('12', '511823', '四川汉源县', 'SCHYX');
INSERT INTO `area_dict` VALUES ('13', '511824', '四川石棉县', 'SCSMX');
INSERT INTO `area_dict` VALUES ('14', '511825', '四川天全县', 'SCTQX');
INSERT INTO `area_dict` VALUES ('15', '511826', '四川芦山县', 'SCLSX');
INSERT INTO `area_dict` VALUES ('16', '511827', '四川宝兴县', 'SCBXX');
INSERT INTO `area_dict` VALUES ('17', '511900', '四川巴中市', 'SCBZS');
INSERT INTO `area_dict` VALUES ('18', '511921', '四川通江县', 'SCTJX');
INSERT INTO `area_dict` VALUES ('19', '511922', '四川南江县', 'SCNJX');
INSERT INTO `area_dict` VALUES ('20', '511923', '四川平昌县', 'SCPCX');
INSERT INTO `area_dict` VALUES ('21', '512000', '四川资阳市', 'SCZYS');
INSERT INTO `area_dict` VALUES ('22', '512021', '四川安岳县', 'SCAYX');
INSERT INTO `area_dict` VALUES ('23', '512022', '四川乐至县', 'SCLZX');
INSERT INTO `area_dict` VALUES ('24', '512081', '四川简阳市', 'SCJYS');
INSERT INTO `area_dict` VALUES ('25', '512300', '四川涪陵地区', 'SCFLDQ');
INSERT INTO `area_dict` VALUES ('26', '512301', '四川涪陵市', 'SCFLS');
INSERT INTO `area_dict` VALUES ('27', '512322', '四川垫江县', 'SCDJX');
INSERT INTO `area_dict` VALUES ('28', '512323', '四川南川县', 'SCNCX');
INSERT INTO `area_dict` VALUES ('29', '512324', '四川丰都县', 'SCFDX');
INSERT INTO `area_dict` VALUES ('30', '512326', '四川武隆县', 'SCWLX');
INSERT INTO `area_dict` VALUES ('31', '512500', '四川宜宾地区', 'SCYBDQ');
INSERT INTO `area_dict` VALUES ('32', '512501', '四川宜宾市　', 'SCYBS');
INSERT INTO `area_dict` VALUES ('33', '512527', '四川宜宾县　', 'SCYBX');
INSERT INTO `area_dict` VALUES ('34', '512528', '四川南溪县　', 'SCNXX');
INSERT INTO `area_dict` VALUES ('35', '512529', '四川江安县　', 'SCJAX');
INSERT INTO `area_dict` VALUES ('36', '512530', '四川长宁县　', 'SCCNX');
INSERT INTO `area_dict` VALUES ('37', '512531', '四川高县　', 'SCGX');
INSERT INTO `area_dict` VALUES ('38', '540126', '西藏达孜县', 'XCDZX');
INSERT INTO `area_dict` VALUES ('39', '540127', '西藏墨竹工卡县', 'XCMZGKX');
INSERT INTO `area_dict` VALUES ('40', '542100', '西藏昌都地区', 'XCCDDO');
INSERT INTO `area_dict` VALUES ('41', '542121', '西藏昌都县', 'XCCDX');
INSERT INTO `area_dict` VALUES ('42', '542122', '西藏江达县', 'XCJDX');
INSERT INTO `area_dict` VALUES ('43', '542123', '西藏贡觉县', 'XCGJX');
INSERT INTO `area_dict` VALUES ('44', '542124', '西藏类乌齐县', 'XCLWQX');
INSERT INTO `area_dict` VALUES ('45', '542125', '西藏丁青县', 'XCDQX');
INSERT INTO `area_dict` VALUES ('46', '542126', '西藏察雅县', 'XCCYX');
INSERT INTO `area_dict` VALUES ('47', '542127', '西藏八宿县', 'XCBSX');
INSERT INTO `area_dict` VALUES ('48', '542128', '西藏左贡县', 'XCZGX');
INSERT INTO `area_dict` VALUES ('49', '542129', '西藏芒康县', 'XCMKX');
INSERT INTO `area_dict` VALUES ('50', '542132', '西藏洛隆县', 'XCLLX');
INSERT INTO `area_dict` VALUES ('51', '542133', '西藏边坝县', 'XCBBX');
INSERT INTO `area_dict` VALUES ('52', '542134', '西藏盐井县', 'XZYJX');
INSERT INTO `area_dict` VALUES ('53', '542135', '西藏碧土县', 'XZBTX');
INSERT INTO `area_dict` VALUES ('54', '542136', '西藏妥坝县', 'XZTBX');
INSERT INTO `area_dict` VALUES ('55', '542137', '西藏生达县', 'XZSDX');
INSERT INTO `area_dict` VALUES ('56', '542200', '西藏山南地区', 'XCSNDO');
INSERT INTO `area_dict` VALUES ('57', '542221', '西藏乃东县', 'XCNDX');
INSERT INTO `area_dict` VALUES ('58', '542222', '西藏扎囊县', 'XCZNX');
INSERT INTO `area_dict` VALUES ('59', '542223', '西藏贡嘎县', 'XCGGX');
INSERT INTO `area_dict` VALUES ('60', '542224', '西藏桑日县', 'XCSRX');
INSERT INTO `area_dict` VALUES ('61', '542225', '西藏琼结县', 'XCQJX');
INSERT INTO `area_dict` VALUES ('62', '542226', '西藏曲松县', 'XCQSX');
INSERT INTO `area_dict` VALUES ('63', '542227', '西藏措美县', 'XCCMX');
INSERT INTO `area_dict` VALUES ('64', '542228', '西藏洛扎县', 'XCLZX');
INSERT INTO `area_dict` VALUES ('65', '533321', '云南泸水县', 'YNLSX');
INSERT INTO `area_dict` VALUES ('66', '532722', '云南普洱哈尼族彝族自治县', 'YNPEHNZY');
INSERT INTO `area_dict` VALUES ('67', '532723', '云南墨江哈尼族自治县', 'YNMJHNZZ');
INSERT INTO `area_dict` VALUES ('68', '532724', '云南景东彝族自治县', 'YNJDYZZZ');
INSERT INTO `area_dict` VALUES ('69', '532725', '云南景谷傣族彝族自治县', 'YNJGDZYZ');
INSERT INTO `area_dict` VALUES ('70', '532726', '云南镇沅彝族哈尼族拉祜族自治县', 'YNZYYZHN');
INSERT INTO `area_dict` VALUES ('71', '532727', '云南江城哈尼族彝族自治县', 'YNJCHNZY');
INSERT INTO `area_dict` VALUES ('72', '532728', '云南孟连傣族拉祜族佤族自治县', 'YNMLDZLH');
INSERT INTO `area_dict` VALUES ('73', '532729', '云南澜沧拉祜族自治县', 'YNLCLHZZ');
INSERT INTO `area_dict` VALUES ('74', '532730', '云南西盟佤族自治县', 'YNXMWZZZ');
INSERT INTO `area_dict` VALUES ('75', '532800', '云南西双版纳傣族自治州', 'YNXSBNDZ');
INSERT INTO `area_dict` VALUES ('76', '532801', '云南景洪市', 'YNJHS');
INSERT INTO `area_dict` VALUES ('77', '532822', '云南勐海县', 'YNMHX');
INSERT INTO `area_dict` VALUES ('78', '532823', '云南勐腊县', 'YNMLX');
INSERT INTO `area_dict` VALUES ('79', '532900', '云南大理白族自治州', 'YNDLBZZZ');
INSERT INTO `area_dict` VALUES ('80', '532901', '云南大理市', 'YNDLS');
INSERT INTO `area_dict` VALUES ('81', '532922', '云南漾濞彝族自治县', 'YNYBYZZZ');
INSERT INTO `area_dict` VALUES ('82', '532923', '云南祥云县', 'YNXYX');
INSERT INTO `area_dict` VALUES ('83', '532924', '云南宾川县', 'YNBCX');
INSERT INTO `area_dict` VALUES ('84', '532925', '云南弥渡县', 'YNMDX');
INSERT INTO `area_dict` VALUES ('85', '532926', '云南南涧彝族自治县', 'YNNJYZZZ');
INSERT INTO `area_dict` VALUES ('86', '532927', '云南巍山彝族回族自治县', 'YNWSYZHZ');
INSERT INTO `area_dict` VALUES ('87', '532928', '云南永平县', 'YNYPX');
INSERT INTO `area_dict` VALUES ('88', '532929', '云南云龙县', 'YNYLX');
INSERT INTO `area_dict` VALUES ('89', '532930', '云南洱源县', 'YNEYX');
INSERT INTO `area_dict` VALUES ('90', '532931', '云南剑川县', 'YNJCX');
INSERT INTO `area_dict` VALUES ('91', '532932', '云南鹤庆县', 'YNHQX');
INSERT INTO `area_dict` VALUES ('92', '533000', '云南保山地区', 'YNBSDQ');
INSERT INTO `area_dict` VALUES ('93', '533001', '云南保山市　', 'YNBSS');
INSERT INTO `area_dict` VALUES ('94', '533022', '云南施甸县', 'YNSDX');
INSERT INTO `area_dict` VALUES ('95', '533023', '云南腾冲县　', 'YNTCX');
INSERT INTO `area_dict` VALUES ('96', '533024', '云南龙陵县　', 'YNLLX');
INSERT INTO `area_dict` VALUES ('97', '533025', '云南昌宁县　', 'YNCNX');
INSERT INTO `area_dict` VALUES ('98', '533100', '云南德宏傣族景颇族自治州', 'YNDHDZJP');
INSERT INTO `area_dict` VALUES ('99', '533101', '云南畹町市', 'YNWDS');
INSERT INTO `area_dict` VALUES ('100', '533102', '云南瑞丽市', 'YNRLS');
INSERT INTO `area_dict` VALUES ('101', '533103', '云南潞西市', 'YNLXS');
INSERT INTO `area_dict` VALUES ('102', '533121', '云南潞西县', 'YNLXX');
INSERT INTO `area_dict` VALUES ('103', '533122', '云南梁河县', 'YNLHX');
INSERT INTO `area_dict` VALUES ('104', '533123', '云南盈江县', 'YNYJX');
INSERT INTO `area_dict` VALUES ('105', '533124', '云南陇川县', 'YNLCX');
INSERT INTO `area_dict` VALUES ('106', '533200', '云南丽江地区', 'YNLJDO');
INSERT INTO `area_dict` VALUES ('107', '533221', '云南丽江纳西族自治县', 'YNLJNXZZ');
INSERT INTO `area_dict` VALUES ('108', '533222', '云南永胜县', 'YNYSX');
INSERT INTO `area_dict` VALUES ('109', '533223', '云南华坪县', 'YNHPX');
INSERT INTO `area_dict` VALUES ('110', '533224', '云南宁蒗彝族自治县', 'YNNLYZZZ');
INSERT INTO `area_dict` VALUES ('111', '533300', '云南怒江傈僳族自治州', 'YNNJLSZZ');
INSERT INTO `area_dict` VALUES ('112', '532701', '云南思茅市', 'YNSMS');
INSERT INTO `area_dict` VALUES ('113', '532227', '云南师宗县　', 'YNSZX');
INSERT INTO `area_dict` VALUES ('114', '532228', '云南陆良县　', 'YNLLX');
INSERT INTO `area_dict` VALUES ('115', '532231', '云南寻甸回族彝族自治县　', 'YNXDHZYZ');
INSERT INTO `area_dict` VALUES ('116', '532233', '云南会泽县　', 'YNHZX');
INSERT INTO `area_dict` VALUES ('117', '532300', '云南楚雄彝族自治州', 'YNCXYZZZ');
INSERT INTO `area_dict` VALUES ('118', '532301', '云南楚雄市', 'YNCXS');
INSERT INTO `area_dict` VALUES ('119', '532322', '云南双柏县', 'YNSBX');
INSERT INTO `area_dict` VALUES ('120', '532323', '云南牟定县', 'YNMDX');
INSERT INTO `area_dict` VALUES ('121', '532324', '云南南华县', 'YNNHX');
INSERT INTO `area_dict` VALUES ('122', '532325', '云南姚安县', 'YNYAX');
INSERT INTO `area_dict` VALUES ('123', '532326', '云南大姚县', 'YNDYX');
INSERT INTO `area_dict` VALUES ('124', '532327', '云南永仁县', 'YNYRX');
INSERT INTO `area_dict` VALUES ('125', '532328', '云南元谋县', 'YNYMX');
INSERT INTO `area_dict` VALUES ('126', '532329', '云南武定县', 'YNWDX');
INSERT INTO `area_dict` VALUES ('127', '532331', '云南禄丰县', 'YNLFX');
INSERT INTO `area_dict` VALUES ('128', '532400', '云南玉溪地区', 'YNYXDQ');
INSERT INTO `area_dict` VALUES ('129', '532401', '云南玉溪市　', 'YNYXS');
INSERT INTO `area_dict` VALUES ('130', '532422', '云南江川县　', 'YNJCX');
INSERT INTO `area_dict` VALUES ('131', '532423', '云南澄江县　', 'YNCJX');
INSERT INTO `area_dict` VALUES ('132', '532424', '云南通海县　', 'YNTHX');
INSERT INTO `area_dict` VALUES ('133', '532425', '云南华宁县　', 'YNHNX');
INSERT INTO `area_dict` VALUES ('134', '532426', '云南易门县　', 'YNYMX');
INSERT INTO `area_dict` VALUES ('135', '532427', '云南峨山彝族自治县　', 'YNESYZZZ');
INSERT INTO `area_dict` VALUES ('136', '532428', '云南新平彝族傣族自治县　', 'YNXPYZDZ');
INSERT INTO `area_dict` VALUES ('137', '532429', '云南元江哈尼族彝族傣族自治县　', 'YNYJHNZY');
INSERT INTO `area_dict` VALUES ('138', '532500', '云南红河哈尼族彝族自治州', 'YNHHHNZY');
INSERT INTO `area_dict` VALUES ('139', '532501', '云南个旧市', 'YNGJS');
INSERT INTO `area_dict` VALUES ('140', '532502', '云南开远市', 'YNKYS');
INSERT INTO `area_dict` VALUES ('141', '532522', '云南蒙自县', 'YNMZX');
INSERT INTO `area_dict` VALUES ('142', '532523', '云南屏边苗族自治县', 'YNPBMZZZ');
INSERT INTO `area_dict` VALUES ('143', '532524', '云南建水县', 'YNJSX');
INSERT INTO `area_dict` VALUES ('144', '532525', '云南石屏县', 'YNSPX');
INSERT INTO `area_dict` VALUES ('145', '532526', '云南弥勒县', 'YNMLX');
INSERT INTO `area_dict` VALUES ('146', '532527', '云南泸西县', 'YNLXX');
INSERT INTO `area_dict` VALUES ('147', '532528', '云南元阳县', 'YNYYX');
INSERT INTO `area_dict` VALUES ('148', '532529', '云南红河县', 'YNHHX');
INSERT INTO `area_dict` VALUES ('149', '532530', '云南金平苗族瑶族傣族自治县', 'YNJPMZYZ');
INSERT INTO `area_dict` VALUES ('150', '532531', '云南绿春县', 'YNLCX');
INSERT INTO `area_dict` VALUES ('151', '532532', '云南河口瑶族自治县', 'YNHKYZZZ');
INSERT INTO `area_dict` VALUES ('152', '532600', '云南文山壮族苗族自治州', 'YNWSZZMZ');
INSERT INTO `area_dict` VALUES ('153', '532621', '云南文山县', 'YNWSX');
INSERT INTO `area_dict` VALUES ('154', '532622', '云南砚山县', 'YNYSX');
INSERT INTO `area_dict` VALUES ('155', '532623', '云南西畴县', 'YNXCX');
INSERT INTO `area_dict` VALUES ('156', '532624', '云南麻栗坡县', 'YNMLPX');
INSERT INTO `area_dict` VALUES ('157', '532625', '云南马关县', 'YNMGX');
INSERT INTO `area_dict` VALUES ('158', '532626', '云南丘北县', 'YNQBX');
INSERT INTO `area_dict` VALUES ('159', '532627', '云南广南县', 'YNGNX');
INSERT INTO `area_dict` VALUES ('160', '532628', '云南富宁县', 'YNFNX');
INSERT INTO `area_dict` VALUES ('161', '532700', '云南思茅地区', 'YNSMDO');
INSERT INTO `area_dict` VALUES ('162', '532226', '云南罗平县　', 'YNLPX');
INSERT INTO `area_dict` VALUES ('163', '530181', '云南安宁市', 'YNANS');
INSERT INTO `area_dict` VALUES ('164', '530200', '云南东川市', 'YNDCS');
INSERT INTO `area_dict` VALUES ('165', '530300', '云南曲靖市', 'YNQJS');
INSERT INTO `area_dict` VALUES ('166', '530321', '云南马龙县', 'YNMLX');
INSERT INTO `area_dict` VALUES ('167', '530322', '云南陆良县', 'YNLLX');
INSERT INTO `area_dict` VALUES ('168', '530323', '云南师宗县', 'YNSZX');
INSERT INTO `area_dict` VALUES ('169', '530324', '云南罗平县', 'YNLPX');
INSERT INTO `area_dict` VALUES ('170', '530325', '云南富源县', 'YNFYX');
INSERT INTO `area_dict` VALUES ('171', '530326', '云南会泽县', 'YNHZX');
INSERT INTO `area_dict` VALUES ('172', '530328', '云南沾益县', 'YNZYX');
INSERT INTO `area_dict` VALUES ('173', '530381', '云南宣威市', 'YNXWS');
INSERT INTO `area_dict` VALUES ('174', '530400', '云南玉溪市', 'YNYXS');
INSERT INTO `area_dict` VALUES ('175', '530421', '云南江川县', 'YNJCX');
INSERT INTO `area_dict` VALUES ('176', '530422', '云南澄江县', 'YNCJX');
INSERT INTO `area_dict` VALUES ('177', '530423', '云南通海县', 'YNTHX');
INSERT INTO `area_dict` VALUES ('178', '530424', '云南华宁县', 'YNHNX');
INSERT INTO `area_dict` VALUES ('179', '530425', '云南易门县', 'YNYMX');
INSERT INTO `area_dict` VALUES ('180', '530426', '云南峨山彝族自治县', 'YNESYZZZ');
INSERT INTO `area_dict` VALUES ('181', '530427', '云南新平彝族傣族自治县', 'YNXPYZDZ');
INSERT INTO `area_dict` VALUES ('182', '530428', '云南元江哈尼族彝族傣族自治县', 'YNYJHNZY');
INSERT INTO `area_dict` VALUES ('183', '530500', '云南保山市', 'YNBSS');
INSERT INTO `area_dict` VALUES ('184', '530522', '云南腾冲县', 'YNTCX');
INSERT INTO `area_dict` VALUES ('185', '530523', '云南龙陵县', 'YNLLX');
INSERT INTO `area_dict` VALUES ('186', '530524', '云南昌宁县', 'YNCNX');
INSERT INTO `area_dict` VALUES ('187', '530600', '云南昭通市', 'YNZTS');
INSERT INTO `area_dict` VALUES ('188', '530621', '云南鲁甸县', 'YNLDX');
INSERT INTO `area_dict` VALUES ('189', '530622', '云南巧家县', 'YNQJX');
INSERT INTO `area_dict` VALUES ('190', '530623', '云南盐津县', 'YNYJX');
INSERT INTO `area_dict` VALUES ('191', '530624', '云南大关县', 'YNDGX');
INSERT INTO `area_dict` VALUES ('192', '530625', '云南永善县', 'YNYSX');
INSERT INTO `area_dict` VALUES ('193', '530626', '云南绥江县', 'YNSJX');
INSERT INTO `area_dict` VALUES ('194', '530627', '云南镇雄县', 'YNZXX');
INSERT INTO `area_dict` VALUES ('195', '530628', '云南彝良县', 'YNYLX');
INSERT INTO `area_dict` VALUES ('196', '530629', '云南威信县', 'YNWXX');
INSERT INTO `area_dict` VALUES ('197', '530630', '云南水富县', 'YNSFX');
INSERT INTO `area_dict` VALUES ('198', '532100', '云南昭通地区', 'YNZDDQ');
INSERT INTO `area_dict` VALUES ('199', '532101', '云南昭通市　', 'YNZTS');
INSERT INTO `area_dict` VALUES ('200', '532122', '云南鲁甸县　', 'YNLDX');
INSERT INTO `area_dict` VALUES ('201', '532123', '云南巧家县　', 'YNQJX');
INSERT INTO `area_dict` VALUES ('202', '532124', '云南盐津县　', 'YNYJX');
INSERT INTO `area_dict` VALUES ('203', '532125', '云南大关县　', 'YNDGX');
INSERT INTO `area_dict` VALUES ('204', '532126', '云南永善县　', 'YNYSX');
INSERT INTO `area_dict` VALUES ('205', '532127', '云南绥江县　', 'YNSJX');
INSERT INTO `area_dict` VALUES ('206', '532128', '云南镇雄县　', 'YNZXX');
INSERT INTO `area_dict` VALUES ('207', '532129', '云南彝良县　', 'YNYLX');
INSERT INTO `area_dict` VALUES ('208', '532130', '云南威信县　', 'YNWXX');
INSERT INTO `area_dict` VALUES ('209', '532131', '云南水富县　', 'YNSFX');
INSERT INTO `area_dict` VALUES ('210', '532200', '云南曲靖地区', 'YNQJDQ');
INSERT INTO `area_dict` VALUES ('211', '532201', '云南曲靖市　', 'YNQJS');
INSERT INTO `area_dict` VALUES ('212', '532223', '云南马龙县　', 'YNMLX');
INSERT INTO `area_dict` VALUES ('213', '532224', '云南宜威县', 'YNYWX');
INSERT INTO `area_dict` VALUES ('214', '532225', '云南富源县　', 'YNFYX');
INSERT INTO `area_dict` VALUES ('215', '530129', '云南寻甸回族彝族自治县', 'YNXDHZYZ');
INSERT INTO `area_dict` VALUES ('216', '522522', '贵州开阳县　', 'GZKYX');
INSERT INTO `area_dict` VALUES ('217', '522523', '贵州息烽县　', 'GZXFX');
INSERT INTO `area_dict` VALUES ('218', '522524', '贵州修文县　', 'GZXWX');
INSERT INTO `area_dict` VALUES ('219', '522526', '贵州平坝县　', 'GZPBX');
INSERT INTO `area_dict` VALUES ('220', '522527', '贵州普定县　', 'GZPDX');
INSERT INTO `area_dict` VALUES ('221', '522528', '贵州关岭布依族苗族自治县　', 'GZGLBYZM');
INSERT INTO `area_dict` VALUES ('222', '522529', '贵州镇宁布依族苗族自治县　', 'GZZNBYZM');
INSERT INTO `area_dict` VALUES ('223', '522530', '贵州紫云苗族布依族自治县　', 'GZZYMZBY');
INSERT INTO `area_dict` VALUES ('224', '522600', '贵州黔东南苗族侗族自治州', 'GZQDNMZD');
INSERT INTO `area_dict` VALUES ('225', '522601', '贵州凯里市', 'GZKLS');
INSERT INTO `area_dict` VALUES ('226', '522622', '贵州黄平县', 'GZHPX');
INSERT INTO `area_dict` VALUES ('227', '522623', '贵州施秉县', 'GZSBX');
INSERT INTO `area_dict` VALUES ('228', '522624', '贵州三穗县', 'GZSSX');
INSERT INTO `area_dict` VALUES ('229', '522625', '贵州镇远县', 'GZZYX');
INSERT INTO `area_dict` VALUES ('230', '522626', '贵州岑巩县', 'GZCGX');
INSERT INTO `area_dict` VALUES ('231', '522627', '贵州天柱县', 'GZTZX');
INSERT INTO `area_dict` VALUES ('232', '522628', '贵州锦屏县', 'GZJPX');
INSERT INTO `area_dict` VALUES ('233', '522629', '贵州剑河县', 'GZJHX');
INSERT INTO `area_dict` VALUES ('234', '522630', '贵州台江县', 'GZTJX');
INSERT INTO `area_dict` VALUES ('235', '522631', '贵州黎平县', 'GZLPX');
INSERT INTO `area_dict` VALUES ('236', '522632', '贵州榕江县', 'GZRJX');
INSERT INTO `area_dict` VALUES ('237', '522633', '贵州从江县', 'GZCJX');
INSERT INTO `area_dict` VALUES ('238', '522634', '贵州雷山县', 'GZLSX');
INSERT INTO `area_dict` VALUES ('239', '522635', '贵州麻江县', 'GZMJX');
INSERT INTO `area_dict` VALUES ('240', '522636', '贵州丹寨县', 'GZDZX');
INSERT INTO `area_dict` VALUES ('241', '522700', '贵州黔南布依族苗族自治州', 'GZQNBYZM');
INSERT INTO `area_dict` VALUES ('242', '522701', '贵州都匀市', 'GZDYS');
INSERT INTO `area_dict` VALUES ('243', '522702', '贵州福泉市', 'GZFQS');
INSERT INTO `area_dict` VALUES ('244', '522722', '贵州荔波县', 'GZLBX');
INSERT INTO `area_dict` VALUES ('245', '522723', '贵州贵定县', 'GZGDX');
INSERT INTO `area_dict` VALUES ('246', '522724', '贵州福泉县', 'GZFQX');
INSERT INTO `area_dict` VALUES ('247', '522725', '贵州瓮安县', 'GZWAX');
INSERT INTO `area_dict` VALUES ('248', '522726', '贵州独山县', 'GZDSX');
INSERT INTO `area_dict` VALUES ('249', '522727', '贵州平塘县', 'GZPTX');
INSERT INTO `area_dict` VALUES ('250', '130129', '河北赞皇县', 'HBZHX');
INSERT INTO `area_dict` VALUES ('251', '130130', '河北无极县', 'HBWJX');
INSERT INTO `area_dict` VALUES ('252', '130131', '河北平山县', 'HBPSX');
INSERT INTO `area_dict` VALUES ('253', '130132', '河北元氏县', 'HBYSX');
INSERT INTO `area_dict` VALUES ('254', '130133', '河北赵县', 'HBZX');
INSERT INTO `area_dict` VALUES ('255', '130181', '河北辛集市', 'HBXJS');
INSERT INTO `area_dict` VALUES ('256', '130182', '河北藁城市', 'HBGCS');
INSERT INTO `area_dict` VALUES ('257', '130183', '河北晋州市', 'HBJZS');
INSERT INTO `area_dict` VALUES ('258', '130184', '河北新乐市', 'HBXLS');
INSERT INTO `area_dict` VALUES ('259', '130185', '河北鹿泉市', 'HBLQS');
INSERT INTO `area_dict` VALUES ('260', '130200', '河北唐山市', 'HBTSS');
INSERT INTO `area_dict` VALUES ('261', '130201', '河北唐山市辖区', 'HBTSSXQ');
INSERT INTO `area_dict` VALUES ('262', '130221', '河北丰润县', 'HBFRX');
INSERT INTO `area_dict` VALUES ('263', '130222', '河北丰南县', 'HBFNX');
INSERT INTO `area_dict` VALUES ('264', '130223', '河北滦县', 'HBLX');
INSERT INTO `area_dict` VALUES ('265', '130224', '河北滦南县', 'HBLNX');
INSERT INTO `area_dict` VALUES ('266', '130225', '河北乐亭县', 'HBLTX');
INSERT INTO `area_dict` VALUES ('267', '130226', '河北迁安县', 'HBQAX');
INSERT INTO `area_dict` VALUES ('268', '130227', '河北迁西县', 'HBQXX');
INSERT INTO `area_dict` VALUES ('269', '130229', '河北玉田县', 'HBYTX');
INSERT INTO `area_dict` VALUES ('270', '130230', '河北唐海县', 'HBTHX');
INSERT INTO `area_dict` VALUES ('271', '130281', '河北遵化市', 'HBZHS');
INSERT INTO `area_dict` VALUES ('272', '130282', '河北丰南市', 'HBFNS');
INSERT INTO `area_dict` VALUES ('273', '130283', '河北迁安市', 'HBQAS');
INSERT INTO `area_dict` VALUES ('274', '130300', '河北秦皇岛市', 'HBQHDS');
INSERT INTO `area_dict` VALUES ('275', '130301', '河北秦皇岛市辖区', 'HBQHDSXQ');
INSERT INTO `area_dict` VALUES ('276', '130321', '河北青龙满族自治县', 'HBQLMZZZ');
INSERT INTO `area_dict` VALUES ('277', '130322', '河北昌黎县', 'HBCLX');
INSERT INTO `area_dict` VALUES ('278', '130323', '河北抚宁县', 'HBFNX');
INSERT INTO `area_dict` VALUES ('279', '130324', '河北卢龙县', 'HBLLX');
INSERT INTO `area_dict` VALUES ('280', '130400', '河北邯郸市', 'HBHDS');
INSERT INTO `area_dict` VALUES ('281', '130401', '河北邯郸市辖区', 'HBHDSXQ');
INSERT INTO `area_dict` VALUES ('282', '130421', '河北邯郸县', 'HBHDX');
INSERT INTO `area_dict` VALUES ('283', '130423', '河北临漳县', 'HBLZX');
INSERT INTO `area_dict` VALUES ('284', '130424', '河北成安县', 'HBCAX');
INSERT INTO `area_dict` VALUES ('285', '130425', '河北大名县', 'HBDMX');
INSERT INTO `area_dict` VALUES ('286', '130426', '河北涉县', 'HBSX');
INSERT INTO `area_dict` VALUES ('287', '130427', '河北磁县', 'HBCX');
INSERT INTO `area_dict` VALUES ('288', '130428', '河北肥乡县', 'HBFXX');
INSERT INTO `area_dict` VALUES ('289', '130429', '河北永年县', 'HBYNX');
INSERT INTO `area_dict` VALUES ('290', '130430', '河北邱县', 'HBQX');
INSERT INTO `area_dict` VALUES ('291', '130431', '河北鸡泽县', 'HBJZX');
INSERT INTO `area_dict` VALUES ('292', '130432', '河北广平县', 'HBGPX');
INSERT INTO `area_dict` VALUES ('293', '130433', '河北馆陶县', 'HBGTX');
INSERT INTO `area_dict` VALUES ('294', '130434', '河北魏县', 'HBWX');
INSERT INTO `area_dict` VALUES ('295', '130435', '河北曲周县', 'HBQZX');
INSERT INTO `area_dict` VALUES ('296', '130481', '河北武安市', 'HBWAS');
INSERT INTO `area_dict` VALUES ('297', '130500', '河北邢台市', 'HBXTS');
INSERT INTO `area_dict` VALUES ('298', '130501', '河北刑台市辖区', 'HBXTSXQ');
INSERT INTO `area_dict` VALUES ('299', '130521', '河北邢台县', 'HBXTX');
INSERT INTO `area_dict` VALUES ('300', '130522', '河北临城县', 'HBLCX');
INSERT INTO `area_dict` VALUES ('301', '130523', '河北内丘县', 'HBNQX');
INSERT INTO `area_dict` VALUES ('302', '130524', '河北柏乡县', 'HBBXX');
INSERT INTO `area_dict` VALUES ('303', '130525', '河北隆尧县', 'HBLYX');
INSERT INTO `area_dict` VALUES ('304', '130526', '河北任县', 'HBRX');
INSERT INTO `area_dict` VALUES ('305', '130527', '河北南和县', 'HBNHX');
INSERT INTO `area_dict` VALUES ('306', '130128', '河北深泽县', 'HBSZX');
INSERT INTO `area_dict` VALUES ('307', '110100', '北京市辖区', 'BJSXO');
INSERT INTO `area_dict` VALUES ('308', '110000', '北京市', 'BJS');
INSERT INTO `area_dict` VALUES ('309', '110101', '北京东城区', 'BJDCO');
INSERT INTO `area_dict` VALUES ('310', '110102', '北京西城区', 'BJXCO');
INSERT INTO `area_dict` VALUES ('311', '110103', '北京崇文区', 'BJCWO');
INSERT INTO `area_dict` VALUES ('312', '110104', '北京宣武区', 'BJXWO');
INSERT INTO `area_dict` VALUES ('313', '110105', '北京朝阳区', 'BJCYO');
INSERT INTO `area_dict` VALUES ('314', '110106', '北京丰台区', 'BJFTO');
INSERT INTO `area_dict` VALUES ('315', '110107', '北京石景山区', 'BJSJSO');
INSERT INTO `area_dict` VALUES ('316', '110108', '北京海淀区', 'BJHDO');
INSERT INTO `area_dict` VALUES ('317', '110109', '北京门头沟区', 'BJMTGO');
INSERT INTO `area_dict` VALUES ('318', '110111', '北京房山区', 'BJFSO');
INSERT INTO `area_dict` VALUES ('319', '110112', '北京通州区', 'BJTZO');
INSERT INTO `area_dict` VALUES ('320', '110113', '北京顺义区', 'BJSYO');
INSERT INTO `area_dict` VALUES ('321', '110114', '北京昌平区', 'BJCPO');
INSERT INTO `area_dict` VALUES ('322', '110115', '北京大兴区', 'BJDXO');
INSERT INTO `area_dict` VALUES ('323', '110116', '北京怀柔区', 'BJHRO');
INSERT INTO `area_dict` VALUES ('324', '110117', '北京平谷区', 'BJPGO');
INSERT INTO `area_dict` VALUES ('325', '110221', '北京昌平县', 'BJCPX');
INSERT INTO `area_dict` VALUES ('326', '110222', '北京顺义县', 'BJSYX');
INSERT INTO `area_dict` VALUES ('327', '110223', '北京通县', 'BJTX');
INSERT INTO `area_dict` VALUES ('328', '110224', '北京大兴县', 'BJDXX');
INSERT INTO `area_dict` VALUES ('329', '110226', '北京平谷县', 'BJPGX');
INSERT INTO `area_dict` VALUES ('330', '110227', '北京怀柔县', 'BJHRX');
INSERT INTO `area_dict` VALUES ('331', '110228', '北京密云县', 'BJMYX');
INSERT INTO `area_dict` VALUES ('332', '110229', '北京延庆县', 'BJYQX');
INSERT INTO `area_dict` VALUES ('333', '120000', '天津市', 'TJS');
INSERT INTO `area_dict` VALUES ('334', '120100', '天津市辖区', 'TJSXO');
INSERT INTO `area_dict` VALUES ('335', '120101', '天津和平区', 'TJHPO');
INSERT INTO `area_dict` VALUES ('336', '120102', '天津河东区', 'TJHDO');
INSERT INTO `area_dict` VALUES ('337', '120103', '天津河西区', 'TJHXO');
INSERT INTO `area_dict` VALUES ('338', '120104', '天津南开区', 'TJNKO');
INSERT INTO `area_dict` VALUES ('339', '120105', '天津河北区', 'TJHBO');
INSERT INTO `area_dict` VALUES ('340', '120106', '天津红桥区', 'TJHQO');
INSERT INTO `area_dict` VALUES ('341', '120107', '天津塘沽区', 'TJTGO');
INSERT INTO `area_dict` VALUES ('342', '120108', '天津汉沽区', 'TJHGO');
INSERT INTO `area_dict` VALUES ('343', '120109', '天津大港区', 'TJDGO');
INSERT INTO `area_dict` VALUES ('344', '120110', '天津东丽区', 'TJDLO');
INSERT INTO `area_dict` VALUES ('345', '120111', '天津西青区', 'TJXQO');
INSERT INTO `area_dict` VALUES ('346', '120112', '天津津南区', 'TJJNO');
INSERT INTO `area_dict` VALUES ('347', '120113', '天津北辰区', 'TJBCO');
INSERT INTO `area_dict` VALUES ('348', '120114', '天津武清区', 'TJWQO');
INSERT INTO `area_dict` VALUES ('349', '120115', '天津宝坻区', 'TJBCO');
INSERT INTO `area_dict` VALUES ('350', '120221', '天津宁河县', 'TJNHX');
INSERT INTO `area_dict` VALUES ('351', '120222', '天津静海县', 'TJJHX');
INSERT INTO `area_dict` VALUES ('352', '120223', '天津静海县　', 'TJJHX');
INSERT INTO `area_dict` VALUES ('353', '120224', '天津宝坻县', 'TJBCX');
INSERT INTO `area_dict` VALUES ('354', '120225', '天津蓟县', 'TJJX');
INSERT INTO `area_dict` VALUES ('355', '130000', '河北省', 'HBS');
INSERT INTO `area_dict` VALUES ('356', '130100', '河北石家庄市', 'HBSJZS');
INSERT INTO `area_dict` VALUES ('357', '130101', '河北石家庄市辖区', 'HBSJZSXQ');
INSERT INTO `area_dict` VALUES ('358', '130121', '河北井陉县', 'HBJXX');
INSERT INTO `area_dict` VALUES ('359', '130122', '河北获鹿县', 'HBHLX');
INSERT INTO `area_dict` VALUES ('360', '130123', '河北正定县', 'HBZDX');
INSERT INTO `area_dict` VALUES ('361', '130124', '河北栾城县', 'HBLCX');
INSERT INTO `area_dict` VALUES ('362', '130125', '河北行唐县', 'HBXTX');
INSERT INTO `area_dict` VALUES ('363', '130126', '河北灵寿县', 'HBLSX');
INSERT INTO `area_dict` VALUES ('364', '130127', '河北高邑县', 'HBGYX');
INSERT INTO `area_dict` VALUES ('365', '653222', '新疆墨玉县', 'XJMYX');
INSERT INTO `area_dict` VALUES ('366', '653223', '新疆皮山县', 'XJPSX');
INSERT INTO `area_dict` VALUES ('367', '653224', '新疆洛浦县', 'XJLPX');
INSERT INTO `area_dict` VALUES ('368', '653225', '新疆策勒县', 'XJCLX');
INSERT INTO `area_dict` VALUES ('369', '653226', '新疆于田县', 'XJYTX');
INSERT INTO `area_dict` VALUES ('370', '653227', '新疆民丰县', 'XJMFX');
INSERT INTO `area_dict` VALUES ('371', '654000', '新疆伊犁哈萨克自治州', 'XJYLHSKZ');
INSERT INTO `area_dict` VALUES ('372', '654001', '新疆奎屯市　', 'XJKTS');
INSERT INTO `area_dict` VALUES ('373', '654002', '新疆伊宁市', 'XJYNS');
INSERT INTO `area_dict` VALUES ('374', '654003', '新疆奎屯市', 'XJKTS');
INSERT INTO `area_dict` VALUES ('375', '654021', '新疆伊宁县', 'XJYNX');
INSERT INTO `area_dict` VALUES ('376', '654022', '新疆察布查尔锡伯自治县', 'XJCBCEXB');
INSERT INTO `area_dict` VALUES ('377', '654023', '新疆霍城县', 'XJHCX');
INSERT INTO `area_dict` VALUES ('378', '654024', '新疆巩留县', 'XJGLX');
INSERT INTO `area_dict` VALUES ('379', '654025', '新疆新源县', 'XJXYX');
INSERT INTO `area_dict` VALUES ('380', '654026', '新疆昭苏县', 'XJZSX');
INSERT INTO `area_dict` VALUES ('381', '654027', '新疆特克斯县', 'XJTKSX');
INSERT INTO `area_dict` VALUES ('382', '654028', '新疆尼勒克县', 'XJNLKX');
INSERT INTO `area_dict` VALUES ('383', '654100', '新疆伊犁地区', 'XJYLDQ');
INSERT INTO `area_dict` VALUES ('384', '654101', '新疆伊宁市　', 'XJYNS');
INSERT INTO `area_dict` VALUES ('385', '654121', '新疆伊宁县　', 'XJYNX');
INSERT INTO `area_dict` VALUES ('386', '654122', '新疆察布查尔锡伯自治县　', 'XJCBCEXB');
INSERT INTO `area_dict` VALUES ('387', '654123', '新疆霍城县　', 'XJHCX');
INSERT INTO `area_dict` VALUES ('388', '654124', '新疆巩留县　', 'XJGLX');
INSERT INTO `area_dict` VALUES ('389', '654125', '新疆新源县　', 'XJXYX');
INSERT INTO `area_dict` VALUES ('390', '654126', '新疆昭苏县　', 'XJZSX');
INSERT INTO `area_dict` VALUES ('391', '654127', '新疆特克斯县　', 'XJTKSX');
INSERT INTO `area_dict` VALUES ('392', '654128', '新疆尼勒克县　', 'XJNLKX');
INSERT INTO `area_dict` VALUES ('393', '654200', '新疆塔城地区', 'XJTCDO');
INSERT INTO `area_dict` VALUES ('394', '654201', '新疆塔城市', 'XJTCS');
INSERT INTO `area_dict` VALUES ('395', '654202', '新疆乌苏市', 'XJWSS');
INSERT INTO `area_dict` VALUES ('396', '654221', '新疆额敏县', 'XJEMX');
INSERT INTO `area_dict` VALUES ('397', '654222', '新疆乌苏县', 'XJWSX');
INSERT INTO `area_dict` VALUES ('398', '654223', '新疆沙湾县', 'XJSWX');
INSERT INTO `area_dict` VALUES ('399', '654224', '新疆托里县', 'XJTLX');
INSERT INTO `area_dict` VALUES ('400', '654225', '新疆裕民县', 'XJYMX');
INSERT INTO `area_dict` VALUES ('401', '654226', '新疆和布克赛尔蒙古自治县', 'XJHBKSEM');
INSERT INTO `area_dict` VALUES ('402', '654300', '新疆阿勒泰地区', 'XJALTDO');
INSERT INTO `area_dict` VALUES ('403', '654301', '新疆阿勒泰市', 'XJALTS');
INSERT INTO `area_dict` VALUES ('404', '654321', '新疆布尔津县', 'XJBEJX');
INSERT INTO `area_dict` VALUES ('405', '654322', '新疆富蕴县', 'XJFYX');
INSERT INTO `area_dict` VALUES ('406', '654323', '新疆福海县', 'XJFHX');
INSERT INTO `area_dict` VALUES ('407', '654324', '新疆哈巴河县', 'XJHBHX');
INSERT INTO `area_dict` VALUES ('408', '654325', '新疆青河县', 'XJQHX');
INSERT INTO `area_dict` VALUES ('409', '654326', '新疆吉木乃县', 'XJJMNX');
INSERT INTO `area_dict` VALUES ('410', '659000', '新疆省直辖行政单位', 'XJSZXXZD');
INSERT INTO `area_dict` VALUES ('411', '659001', '新疆石河子市', 'XJSHZS');
INSERT INTO `area_dict` VALUES ('412', '710000', '台湾省', 'TWS');
INSERT INTO `area_dict` VALUES ('413', '653221', '新疆和田县', 'XJHTX');
INSERT INTO `area_dict` VALUES ('414', '820821', '湖北京山县', 'HBJSX');
INSERT INTO `area_dict` VALUES ('415', '820822', '湖北沙洋县', 'HBSYX');
INSERT INTO `area_dict` VALUES ('416', '652322', '新疆米泉县', 'XJMQX');
INSERT INTO `area_dict` VALUES ('417', '652323', '新疆呼图壁县', 'XJHTBX');
INSERT INTO `area_dict` VALUES ('418', '640322', '宁夏中宁县', 'NXZNX');
INSERT INTO `area_dict` VALUES ('419', '640323', '宁夏盐池县', 'NXYCX');
INSERT INTO `area_dict` VALUES ('420', '640324', '宁夏同心县', 'NXTXX');
INSERT INTO `area_dict` VALUES ('421', '640381', '宁夏青铜峡市', 'NXQTXS');
INSERT INTO `area_dict` VALUES ('422', '640382', '宁夏灵武市', 'NXLWS');
INSERT INTO `area_dict` VALUES ('423', '640400', '宁夏固原市', 'NXGYS');
INSERT INTO `area_dict` VALUES ('424', '640421', '宁夏海原县', 'NXHYX');
INSERT INTO `area_dict` VALUES ('425', '640422', '宁夏西吉县', 'NXXJX');
INSERT INTO `area_dict` VALUES ('426', '640423', '宁夏隆德县', 'NXLDX');
INSERT INTO `area_dict` VALUES ('427', '640424', '宁夏泾源县', 'NXJYX');
INSERT INTO `area_dict` VALUES ('428', '640425', '宁夏彭阳县', 'NXPYX');
INSERT INTO `area_dict` VALUES ('429', '642100', '宁夏银南地区', 'NXYNDQ');
INSERT INTO `area_dict` VALUES ('430', '642101', '宁夏吴忠市　', 'NXWZS');
INSERT INTO `area_dict` VALUES ('431', '642102', '宁夏青铜峡市　', 'NXQTXS');
INSERT INTO `area_dict` VALUES ('432', '642123', '宁夏中卫县　', 'NXZWX');
INSERT INTO `area_dict` VALUES ('433', '642124', '宁夏中宁县　', 'NXZNX');
INSERT INTO `area_dict` VALUES ('434', '642125', '宁夏灵武县', 'NXLWX');
INSERT INTO `area_dict` VALUES ('435', '642126', '宁夏盐池县　', 'NXYCX');
INSERT INTO `area_dict` VALUES ('436', '642127', '宁夏同心县　', 'NXTXX');
INSERT INTO `area_dict` VALUES ('437', '642200', '宁夏固原地区', 'NXGYDQ');
INSERT INTO `area_dict` VALUES ('438', '642221', '宁夏固原县', 'NXGYX');
INSERT INTO `area_dict` VALUES ('439', '642222', '宁夏海原县　', 'NXHYX');
INSERT INTO `area_dict` VALUES ('440', '642223', '宁夏西吉县　', 'NXXJX');
INSERT INTO `area_dict` VALUES ('441', '642224', '宁夏隆德县　', 'NXLDX');
INSERT INTO `area_dict` VALUES ('442', '642225', '宁夏泾源县　', 'NXJYX');
INSERT INTO `area_dict` VALUES ('443', '642226', '宁夏彭阳县　', 'NXPYX');
INSERT INTO `area_dict` VALUES ('444', '650000', '新疆维吾尔自治区', 'XJWWEZZO');
INSERT INTO `area_dict` VALUES ('445', '650100', '新疆乌鲁木齐市', 'XJWLMQS');
INSERT INTO `area_dict` VALUES ('446', '650101', '新疆乌鲁木齐市辖区', 'XJWLMQSX');
INSERT INTO `area_dict` VALUES ('447', '650121', '新疆乌鲁木齐县', 'XJWLMQX');
INSERT INTO `area_dict` VALUES ('448', '650200', '新疆克拉玛依市', 'XJKLMYS');
INSERT INTO `area_dict` VALUES ('449', '652100', '新疆吐鲁番地区', 'XJTLFDO');
INSERT INTO `area_dict` VALUES ('450', '652101', '新疆吐鲁番市', 'XJTLFS');
INSERT INTO `area_dict` VALUES ('451', '652122', '新疆鄯善县', 'XJSSX');
INSERT INTO `area_dict` VALUES ('452', '652123', '新疆托克逊县', 'XJTKXX');
INSERT INTO `area_dict` VALUES ('453', '652200', '新疆哈密地区', 'XJHMDO');
INSERT INTO `area_dict` VALUES ('454', '652201', '新疆哈密市', 'XJHMS');
INSERT INTO `area_dict` VALUES ('455', '652222', '新疆巴里坤哈萨克自治县', 'XJBLKHSK');
INSERT INTO `area_dict` VALUES ('456', '652223', '新疆伊吾县', 'XJYWX');
INSERT INTO `area_dict` VALUES ('457', '652300', '新疆昌吉回族自治州', 'XJCJHZZZ');
INSERT INTO `area_dict` VALUES ('458', '652301', '新疆昌吉市', 'XJCJS');
INSERT INTO `area_dict` VALUES ('459', '652302', '新疆阜康市', 'XJFKS');
INSERT INTO `area_dict` VALUES ('460', '640101', '宁夏银川市辖区', 'NXYCSXQ');
INSERT INTO `area_dict` VALUES ('461', '630122', '青海湟中县', 'QHHZX');
INSERT INTO `area_dict` VALUES ('462', '630123', '青海湟源县', 'QHHYX');
INSERT INTO `area_dict` VALUES ('463', '632100', '青海海东地区', 'QHHDDO');
INSERT INTO `area_dict` VALUES ('464', '632121', '青海平安县', 'QHPAX');
INSERT INTO `area_dict` VALUES ('465', '632122', '青海民和回族土族自治县', 'QHMHHZTZ');
INSERT INTO `area_dict` VALUES ('466', '632123', '青海乐都县', 'QHLDX');
INSERT INTO `area_dict` VALUES ('467', '632124', '青海湟中县　', 'QHHZX');
INSERT INTO `area_dict` VALUES ('468', '632125', '青海湟源县　', 'QHHYX');
INSERT INTO `area_dict` VALUES ('469', '632126', '青海互助土族自治县', 'QHHZTZZZ');
INSERT INTO `area_dict` VALUES ('470', '632127', '青海化隆回族自治县', 'QHHLHZZZ');
INSERT INTO `area_dict` VALUES ('471', '632128', '青海循化撒拉族自治县', 'QHXHSLZZ');
INSERT INTO `area_dict` VALUES ('472', '632200', '青海海北藏族自治州', 'QHHBCZZZ');
INSERT INTO `area_dict` VALUES ('473', '632221', '青海门源回族自治县', 'QHMYHZZZ');
INSERT INTO `area_dict` VALUES ('474', '632222', '青海祁连县', 'QHQLX');
INSERT INTO `area_dict` VALUES ('475', '632223', '青海海晏县', 'QHHYX');
INSERT INTO `area_dict` VALUES ('476', '632224', '青海刚察县', 'QHGCX');
INSERT INTO `area_dict` VALUES ('477', '632300', '青海黄南藏族自治州', 'QHHNCZZZ');
INSERT INTO `area_dict` VALUES ('478', '632321', '青海同仁县', 'QHTRX');
INSERT INTO `area_dict` VALUES ('479', '632322', '青海尖扎县', 'QHJZX');
INSERT INTO `area_dict` VALUES ('480', '632323', '青海泽库县', 'QHZKX');
INSERT INTO `area_dict` VALUES ('481', '632324', '青海河南蒙古族自治县', 'QHHNMGZZ');
INSERT INTO `area_dict` VALUES ('482', '632500', '青海海南藏族自治州', 'QHHNCZZZ');
INSERT INTO `area_dict` VALUES ('483', '632521', '青海共和县', 'QHGHX');
INSERT INTO `area_dict` VALUES ('484', '632522', '青海同德县', 'QHTDX');
INSERT INTO `area_dict` VALUES ('485', '632523', '青海贵德县', 'QHGDX');
INSERT INTO `area_dict` VALUES ('486', '632524', '青海兴海县', 'QHXHX');
INSERT INTO `area_dict` VALUES ('487', '632525', '青海贵南县', 'QHGNX');
INSERT INTO `area_dict` VALUES ('488', '632600', '青海果洛藏族自治州', 'QHGLCZZZ');
INSERT INTO `area_dict` VALUES ('489', '632621', '青海玛沁县', 'QHMQX');
INSERT INTO `area_dict` VALUES ('490', '632622', '青海班玛县', 'QHBMX');
INSERT INTO `area_dict` VALUES ('491', '632623', '青海甘德县', 'QHGDX');
INSERT INTO `area_dict` VALUES ('492', '632624', '青海达日县', 'QHDRX');
INSERT INTO `area_dict` VALUES ('493', '632625', '青海久治县', 'QHJZX');
INSERT INTO `area_dict` VALUES ('494', '632626', '青海玛多县', 'QHMDX');
INSERT INTO `area_dict` VALUES ('495', '632700', '青海玉树藏族自治州', 'QHYSCZZZ');
INSERT INTO `area_dict` VALUES ('496', '632721', '青海玉树县', 'QHYSX');
INSERT INTO `area_dict` VALUES ('497', '632722', '青海杂多县', 'QHZDX');
INSERT INTO `area_dict` VALUES ('498', '632723', '青海称多县', 'QHCDX');
INSERT INTO `area_dict` VALUES ('499', '632724', '青海治多县', 'QHZDX');
INSERT INTO `area_dict` VALUES ('500', '632725', '青海囊谦县', 'QHNQX');
INSERT INTO `area_dict` VALUES ('501', '632726', '青海曲麻莱县', 'QHQMLX');
INSERT INTO `area_dict` VALUES ('502', '632800', '青海海西蒙古族藏族自治州', 'QHHXMGZC');
INSERT INTO `area_dict` VALUES ('503', '632801', '青海格尔木市', 'QHGEMS');
INSERT INTO `area_dict` VALUES ('504', '632802', '青海德令哈市', 'QHDLHS');
INSERT INTO `area_dict` VALUES ('505', '632821', '青海乌兰县', 'QHWLX');
INSERT INTO `area_dict` VALUES ('506', '632822', '青海都兰县', 'QHDLX');
INSERT INTO `area_dict` VALUES ('507', '632823', '青海天峻县', 'QHTJX');
INSERT INTO `area_dict` VALUES ('508', '640000', '宁夏回族自治区', 'NXHZZZO');
INSERT INTO `area_dict` VALUES ('509', '640100', '宁夏银川市', 'NXYCS');
INSERT INTO `area_dict` VALUES ('510', '630121', '青海大通回族土族自治县', 'QHDTHZTZ');
INSERT INTO `area_dict` VALUES ('511', '622425', '甘肃陇西县', 'GSLXX');
INSERT INTO `area_dict` VALUES ('512', '622426', '甘肃渭源县', 'GSWYX');
INSERT INTO `area_dict` VALUES ('513', '622427', '甘肃临洮县', 'GSLTX');
INSERT INTO `area_dict` VALUES ('514', '622428', '甘肃漳县', 'GSZX');
INSERT INTO `area_dict` VALUES ('515', '622429', '甘肃岷县', 'GSMX');
INSERT INTO `area_dict` VALUES ('516', '622600', '甘肃陇南地区', 'GSLNDO');
INSERT INTO `area_dict` VALUES ('517', '622621', '甘肃武都县', 'GSWDX');
INSERT INTO `area_dict` VALUES ('518', '622623', '甘肃宕昌县', 'GSDCX');
INSERT INTO `area_dict` VALUES ('519', '622624', '甘肃成县', 'GSCX');
INSERT INTO `area_dict` VALUES ('520', '622625', '甘肃康县', 'GSKX');
INSERT INTO `area_dict` VALUES ('521', '622626', '甘肃文县', 'GSWX');
INSERT INTO `area_dict` VALUES ('522', '622627', '甘肃西和县', 'GSXHX');
INSERT INTO `area_dict` VALUES ('523', '622628', '甘肃礼县', 'GSLX');
INSERT INTO `area_dict` VALUES ('524', '622629', '甘肃两当县', 'GSLDX');
INSERT INTO `area_dict` VALUES ('525', '622630', '甘肃徽县', 'GSHX');
INSERT INTO `area_dict` VALUES ('526', '622700', '甘肃平凉地区', 'GSPLDO');
INSERT INTO `area_dict` VALUES ('527', '622701', '甘肃平凉市', 'GSPLS');
INSERT INTO `area_dict` VALUES ('528', '622722', '甘肃泾川县', 'GSJCX');
INSERT INTO `area_dict` VALUES ('529', '622723', '甘肃灵台县', 'GSLTX');
INSERT INTO `area_dict` VALUES ('530', '622724', '甘肃崇信县', 'GSCXX');
INSERT INTO `area_dict` VALUES ('531', '622725', '甘肃华亭县', 'GSHTX');
INSERT INTO `area_dict` VALUES ('532', '622726', '甘肃庄浪县', 'GSZLX');
INSERT INTO `area_dict` VALUES ('533', '622727', '甘肃静宁县', 'GSJNX');
INSERT INTO `area_dict` VALUES ('534', '622800', '甘肃庆阳地区', 'GSQYDO');
INSERT INTO `area_dict` VALUES ('535', '622801', '甘肃西峰市', 'GSXFS');
INSERT INTO `area_dict` VALUES ('536', '622821', '甘肃庆阳县', 'GSQYX');
INSERT INTO `area_dict` VALUES ('537', '622822', '甘肃环县', 'GSHX');
INSERT INTO `area_dict` VALUES ('538', '622823', '甘肃华池县', 'GSHCX');
INSERT INTO `area_dict` VALUES ('539', '622824', '甘肃合水县', 'GSHSX');
INSERT INTO `area_dict` VALUES ('540', '622825', '甘肃正宁县', 'GSZNX');
INSERT INTO `area_dict` VALUES ('541', '622826', '甘肃宁县', 'GSNX');
INSERT INTO `area_dict` VALUES ('542', '622827', '甘肃镇原县', 'GSZYX');
INSERT INTO `area_dict` VALUES ('543', '622900', '甘肃临夏回族自治州', 'GSLXHZZZ');
INSERT INTO `area_dict` VALUES ('544', '622901', '甘肃临夏市', 'GSLXS');
INSERT INTO `area_dict` VALUES ('545', '622921', '甘肃临夏县', 'GSLXX');
INSERT INTO `area_dict` VALUES ('546', '622922', '甘肃康乐县', 'GSKLX');
INSERT INTO `area_dict` VALUES ('547', '622923', '甘肃永靖县', 'GSYJX');
INSERT INTO `area_dict` VALUES ('548', '622924', '甘肃广河县', 'GSGHX');
INSERT INTO `area_dict` VALUES ('549', '622925', '甘肃和政县', 'GSHZX');
INSERT INTO `area_dict` VALUES ('550', '622926', '甘肃东乡族自治县', 'GSDXZZZX');
INSERT INTO `area_dict` VALUES ('551', '622927', '甘肃积石山保安族东乡族撒拉族自治县', 'GSJSSBAZ');
INSERT INTO `area_dict` VALUES ('552', '623000', '甘肃甘南藏族自治州', 'GSGNCZZZ');
INSERT INTO `area_dict` VALUES ('553', '623001', '甘肃合作市', 'GSHZS');
INSERT INTO `area_dict` VALUES ('554', '623021', '甘肃临潭县', 'GSLTX');
INSERT INTO `area_dict` VALUES ('555', '623022', '甘肃卓尼县', 'GSZNX');
INSERT INTO `area_dict` VALUES ('556', '623023', '甘肃舟曲县', 'GSZQX');
INSERT INTO `area_dict` VALUES ('557', '623024', '甘肃迭部县', 'GSDBX');
INSERT INTO `area_dict` VALUES ('558', '623025', '甘肃玛曲县', 'GSMQX');
INSERT INTO `area_dict` VALUES ('559', '623026', '甘肃碌曲县', 'GSLQX');
INSERT INTO `area_dict` VALUES ('560', '623027', '甘肃夏河县', 'GSXHX');
INSERT INTO `area_dict` VALUES ('561', '630000', '青海省', 'QHS');
INSERT INTO `area_dict` VALUES ('562', '630100', '青海西宁市', 'QHXNS');
INSERT INTO `area_dict` VALUES ('563', '630101', '青海西宁市辖区', 'QHXNSXQ');
INSERT INTO `area_dict` VALUES ('564', '622424', '甘肃通渭县', 'GSTWX');
INSERT INTO `area_dict` VALUES ('565', '612730', '陕西吴堡县　', 'SXWBX');
INSERT INTO `area_dict` VALUES ('566', '612731', '陕西清涧县　', 'SXQJX');
INSERT INTO `area_dict` VALUES ('567', '612732', '陕西子洲县　', 'SXZZX');
INSERT INTO `area_dict` VALUES ('568', '620000', '甘肃省', 'GSS');
INSERT INTO `area_dict` VALUES ('569', '620100', '甘肃兰州市', 'GSLZS');
INSERT INTO `area_dict` VALUES ('570', '620101', '甘肃兰州市辖区', 'GSLZSXQ');
INSERT INTO `area_dict` VALUES ('571', '620121', '甘肃永登县', 'GSYDX');
INSERT INTO `area_dict` VALUES ('572', '620122', '甘肃皋兰县', 'GSGLX');
INSERT INTO `area_dict` VALUES ('573', '620123', '甘肃榆中县', 'GSYZX');
INSERT INTO `area_dict` VALUES ('574', '620200', '甘肃嘉峪关市', 'GSJYGS');
INSERT INTO `area_dict` VALUES ('575', '620300', '甘肃金昌市', 'GSJCS');
INSERT INTO `area_dict` VALUES ('576', '620301', '甘肃金昌市辖区', 'GSJCSXQ');
INSERT INTO `area_dict` VALUES ('577', '620321', '甘肃永昌县', 'GSYCX');
INSERT INTO `area_dict` VALUES ('578', '620400', '甘肃白银市', 'GSBYS');
INSERT INTO `area_dict` VALUES ('579', '620401', '甘肃白银市辖区', 'GSBYSXQ');
INSERT INTO `area_dict` VALUES ('580', '620421', '甘肃靖远县', 'GSJYX');
INSERT INTO `area_dict` VALUES ('581', '620422', '甘肃会宁县', 'GSHNX');
INSERT INTO `area_dict` VALUES ('582', '620423', '甘肃景泰县', 'GSJTX');
INSERT INTO `area_dict` VALUES ('583', '620500', '甘肃天水市', 'GSTSS');
INSERT INTO `area_dict` VALUES ('584', '620501', '甘肃天水市辖区', 'GSTSSXQ');
INSERT INTO `area_dict` VALUES ('585', '620521', '甘肃清水县', 'GSQSX');
INSERT INTO `area_dict` VALUES ('586', '620522', '甘肃秦安县', 'GSQAX');
INSERT INTO `area_dict` VALUES ('587', '620523', '甘肃甘谷县', 'GSGGX');
INSERT INTO `area_dict` VALUES ('588', '620524', '甘肃武山县', 'GSWSX');
INSERT INTO `area_dict` VALUES ('589', '620525', '甘肃张家川回族自治县', 'GSZJCHZZ');
INSERT INTO `area_dict` VALUES ('590', '620600', '甘肃武威市', 'GSWWS');
INSERT INTO `area_dict` VALUES ('591', '620621', '甘肃民勤县', 'GSMQX');
INSERT INTO `area_dict` VALUES ('592', '620622', '甘肃古浪县', 'GSGLX');
INSERT INTO `area_dict` VALUES ('593', '620623', '甘肃天祝藏族自治县', 'GSTZCZZZ');
INSERT INTO `area_dict` VALUES ('594', '622100', '甘肃酒泉地区', 'GSJQDO');
INSERT INTO `area_dict` VALUES ('595', '622101', '甘肃玉门市', 'GSYMS');
INSERT INTO `area_dict` VALUES ('596', '622102', '甘肃酒泉市', 'GSJQS');
INSERT INTO `area_dict` VALUES ('597', '622103', '甘肃敦煌市', 'GSDHS');
INSERT INTO `area_dict` VALUES ('598', '622123', '甘肃金塔县', 'GSJTX');
INSERT INTO `area_dict` VALUES ('599', '622124', '甘肃肃北蒙古族自治县', 'GSSBMGZZ');
INSERT INTO `area_dict` VALUES ('600', '622125', '甘肃阿克塞哈萨克族自治县', 'GSAKSHSK');
INSERT INTO `area_dict` VALUES ('601', '622126', '甘肃安西县', 'GSAXX');
INSERT INTO `area_dict` VALUES ('602', '622200', '甘肃张掖地区', 'GSZYDO');
INSERT INTO `area_dict` VALUES ('603', '622201', '甘肃张掖市', 'GSZYS');
INSERT INTO `area_dict` VALUES ('604', '622222', '甘肃肃南裕固族自治县', 'GSSNYGZZ');
INSERT INTO `area_dict` VALUES ('605', '622223', '甘肃民乐县', 'GSMLX');
INSERT INTO `area_dict` VALUES ('606', '622224', '甘肃临泽县', 'GSLZX');
INSERT INTO `area_dict` VALUES ('607', '622225', '甘肃高台县', 'GSGTX');
INSERT INTO `area_dict` VALUES ('608', '622226', '甘肃山丹县', 'GSSDX');
INSERT INTO `area_dict` VALUES ('609', '622300', '甘肃武威地区', 'GSWWDQ');
INSERT INTO `area_dict` VALUES ('610', '622301', '甘肃武威市　', 'GSWWS');
INSERT INTO `area_dict` VALUES ('611', '622322', '甘肃民勤县　', 'GSMQX');
INSERT INTO `area_dict` VALUES ('612', '622323', '甘肃古浪县　', 'GSGLX');
INSERT INTO `area_dict` VALUES ('613', '622326', '甘肃天祝藏族自治县　', 'GSTZCZZZ');
INSERT INTO `area_dict` VALUES ('614', '622400', '甘肃定西地区', 'GSDXDO');
INSERT INTO `area_dict` VALUES ('615', '622421', '甘肃定西县', 'GSDXX');
INSERT INTO `area_dict` VALUES ('616', '612729', '陕西佳县　', 'SXJX');
INSERT INTO `area_dict` VALUES ('617', '612321', '陕西南郑县　', 'SXNZX');
INSERT INTO `area_dict` VALUES ('618', '612322', '陕西城固县　', 'SXCGX');
INSERT INTO `area_dict` VALUES ('619', '612323', '陕西洋县　', 'SXYX');
INSERT INTO `area_dict` VALUES ('620', '612324', '陕西西乡县　', 'SXXXX');
INSERT INTO `area_dict` VALUES ('621', '612325', '陕西勉县　', 'SXMX');
INSERT INTO `area_dict` VALUES ('622', '612326', '陕西宁强县　', 'SXNQX');
INSERT INTO `area_dict` VALUES ('623', '612327', '陕西略阳县　', 'SXLYX');
INSERT INTO `area_dict` VALUES ('624', '612328', '陕西镇巴县　', 'SXZBX');
INSERT INTO `area_dict` VALUES ('625', '612329', '陕西留坝县　', 'SXLBX');
INSERT INTO `area_dict` VALUES ('626', '612330', '陕西佛坪县　', 'SXFPX');
INSERT INTO `area_dict` VALUES ('627', '612400', '陕西安康地区', 'SXAKDQ');
INSERT INTO `area_dict` VALUES ('628', '612401', '陕西安康市　', 'SXAKS');
INSERT INTO `area_dict` VALUES ('629', '612422', '陕西汉阴县　', 'SXHYX');
INSERT INTO `area_dict` VALUES ('630', '612423', '陕西石泉县　', 'SXSQX');
INSERT INTO `area_dict` VALUES ('631', '612424', '陕西宁陕县　', 'SXNSX');
INSERT INTO `area_dict` VALUES ('632', '612425', '陕西紫阳县　', 'SXZYX');
INSERT INTO `area_dict` VALUES ('633', '612426', '陕西岚皋县　', 'SXLGX');
INSERT INTO `area_dict` VALUES ('634', '612427', '陕西平利县　', 'SXPLX');
INSERT INTO `area_dict` VALUES ('635', '612428', '陕西镇坪县　', 'SXZPX');
INSERT INTO `area_dict` VALUES ('636', '612429', '陕西旬阳县　', 'SXXYX');
INSERT INTO `area_dict` VALUES ('637', '612430', '陕西白河县　', 'SXBHX');
INSERT INTO `area_dict` VALUES ('638', '612500', '陕西商洛地区', 'SXSLDQ');
INSERT INTO `area_dict` VALUES ('639', '612501', '陕西商州市', 'SXSZS');
INSERT INTO `area_dict` VALUES ('640', '612522', '陕西洛南县　', 'SXLNX');
INSERT INTO `area_dict` VALUES ('641', '612523', '陕西丹凤县　', 'SXDFX');
INSERT INTO `area_dict` VALUES ('642', '612524', '陕西商南县　', 'SXSNX');
INSERT INTO `area_dict` VALUES ('643', '612525', '陕西山阳县　', 'SXSYX');
INSERT INTO `area_dict` VALUES ('644', '612526', '陕西镇安县　', 'SXZAX');
INSERT INTO `area_dict` VALUES ('645', '612527', '陕西柞水县　', 'SXZSX');
INSERT INTO `area_dict` VALUES ('646', '612600', '陕西延安地区', 'SXYADQ');
INSERT INTO `area_dict` VALUES ('647', '612601', '陕西延安市　', 'SXYAS');
INSERT INTO `area_dict` VALUES ('648', '612621', '陕西延长县　', 'SXYCX');
INSERT INTO `area_dict` VALUES ('649', '612622', '陕西延川县　', 'SXYCX');
INSERT INTO `area_dict` VALUES ('650', '612623', '陕西子长县　', 'SXZCX');
INSERT INTO `area_dict` VALUES ('651', '612624', '陕西安塞县　', 'SXASX');
INSERT INTO `area_dict` VALUES ('652', '612625', '陕西志丹县　', 'SXZDX');
INSERT INTO `area_dict` VALUES ('653', '612626', '陕西吴旗县　', 'SXWQX');
INSERT INTO `area_dict` VALUES ('654', '612627', '陕西甘泉县　', 'SXGQX');
INSERT INTO `area_dict` VALUES ('655', '612628', '陕西富县　', 'SXFX');
INSERT INTO `area_dict` VALUES ('656', '612629', '陕西洛川县　', 'SXLCX');
INSERT INTO `area_dict` VALUES ('657', '612630', '陕西宜川县　', 'SXYCX');
INSERT INTO `area_dict` VALUES ('658', '612631', '陕西黄龙县　', 'SXHLX');
INSERT INTO `area_dict` VALUES ('659', '612632', '陕西黄陵县　', 'SXHLX');
INSERT INTO `area_dict` VALUES ('660', '612700', '陕西榆林地区', 'SXYLDQ');
INSERT INTO `area_dict` VALUES ('661', '612701', '陕西榆林市　', 'SXYLS');
INSERT INTO `area_dict` VALUES ('662', '612722', '陕西神木县　', 'SXSMX');
INSERT INTO `area_dict` VALUES ('663', '612723', '陕西府谷县　', 'SXFGX');
INSERT INTO `area_dict` VALUES ('664', '612724', '陕西横山县　', 'SXHSX');
INSERT INTO `area_dict` VALUES ('665', '612725', '陕西靖边县　', 'SXJBX');
INSERT INTO `area_dict` VALUES ('666', '612726', '陕西定边县　', 'SXDBX');
INSERT INTO `area_dict` VALUES ('667', '612727', '陕西绥德县　', 'SXSDX');
INSERT INTO `area_dict` VALUES ('668', '612728', '陕西米脂县　', 'SXMZX');
INSERT INTO `area_dict` VALUES ('669', '612301', '陕西汉中市　', 'SXHZS');
INSERT INTO `area_dict` VALUES ('670', '610632', '陕西黄陵县', 'SXHLX');
INSERT INTO `area_dict` VALUES ('671', '610700', '陕西汉中市', 'SXHZS');
INSERT INTO `area_dict` VALUES ('672', '610721', '陕西南郑县', 'SXNZX');
INSERT INTO `area_dict` VALUES ('673', '610722', '陕西城固县', 'SXCGX');
INSERT INTO `area_dict` VALUES ('674', '610723', '陕西洋县', 'SXYX');
INSERT INTO `area_dict` VALUES ('675', '610724', '陕西西乡县', 'SXXXX');
INSERT INTO `area_dict` VALUES ('676', '610725', '陕西勉县', 'SXMX');
INSERT INTO `area_dict` VALUES ('677', '610726', '陕西宁强县', 'SXNQX');
INSERT INTO `area_dict` VALUES ('678', '610727', '陕西略阳县', 'SXLYX');
INSERT INTO `area_dict` VALUES ('679', '610728', '陕西镇巴县', 'SXZBX');
INSERT INTO `area_dict` VALUES ('680', '610729', '陕西留坝县', 'SXLBX');
INSERT INTO `area_dict` VALUES ('681', '610730', '陕西佛坪县', 'SXFPX');
INSERT INTO `area_dict` VALUES ('682', '610800', '陕西榆林市', 'SXYLS');
INSERT INTO `area_dict` VALUES ('683', '610821', '陕西神木县', 'SXSMX');
INSERT INTO `area_dict` VALUES ('684', '610822', '陕西府谷县', 'SXFGX');
INSERT INTO `area_dict` VALUES ('685', '610823', '陕西横山县', 'SXHSX');
INSERT INTO `area_dict` VALUES ('686', '610824', '陕西靖边县', 'SXJBX');
INSERT INTO `area_dict` VALUES ('687', '610825', '陕西定边县', 'SXDBX');
INSERT INTO `area_dict` VALUES ('688', '610826', '陕西绥德县', 'SXSDX');
INSERT INTO `area_dict` VALUES ('689', '610827', '陕西米脂县', 'SXMZX');
INSERT INTO `area_dict` VALUES ('690', '610828', '陕西佳县', 'SXJX');
INSERT INTO `area_dict` VALUES ('691', '610829', '陕西吴堡县', 'SXWBX');
INSERT INTO `area_dict` VALUES ('692', '610830', '陕西清涧县', 'SXQJX');
INSERT INTO `area_dict` VALUES ('693', '610831', '陕西子洲县', 'SXZZX');
INSERT INTO `area_dict` VALUES ('694', '610900', '陕西安康市', 'SXAKS');
INSERT INTO `area_dict` VALUES ('695', '610921', '陕西汉阴县', 'SXHYX');
INSERT INTO `area_dict` VALUES ('696', '610922', '陕西石泉县', 'SXSQX');
INSERT INTO `area_dict` VALUES ('697', '610923', '陕西宁陕县', 'SXNSX');
INSERT INTO `area_dict` VALUES ('698', '610924', '陕西紫阳县', 'SXZYX');
INSERT INTO `area_dict` VALUES ('699', '610925', '陕西岚皋县', 'SXLGX');
INSERT INTO `area_dict` VALUES ('700', '610926', '陕西平利县', 'SXPLX');
INSERT INTO `area_dict` VALUES ('701', '610927', '陕西镇坪县', 'SXZPX');
INSERT INTO `area_dict` VALUES ('702', '610928', '陕西旬阳县', 'SXXYX');
INSERT INTO `area_dict` VALUES ('703', '610929', '陕西白河县', 'SXBHX');
INSERT INTO `area_dict` VALUES ('704', '611000', '陕西商洛市', 'SXSLS');
INSERT INTO `area_dict` VALUES ('705', '611021', '陕西洛南县', 'SXLNX');
INSERT INTO `area_dict` VALUES ('706', '611022', '陕西丹凤县', 'SXDFX');
INSERT INTO `area_dict` VALUES ('707', '611023', '陕西商南县', 'SXSNX');
INSERT INTO `area_dict` VALUES ('708', '611024', '陕西山阳县', 'SXSYX');
INSERT INTO `area_dict` VALUES ('709', '611025', '陕西镇安县', 'SXZAX');
INSERT INTO `area_dict` VALUES ('710', '611026', '陕西柞水县', 'SXZSX');
INSERT INTO `area_dict` VALUES ('711', '612100', '陕西渭南地区', 'SXWNDQ');
INSERT INTO `area_dict` VALUES ('712', '612101', '陕西渭南市　', 'SXWNS');
INSERT INTO `area_dict` VALUES ('713', '612102', '陕西韩城市　', 'SXHCS');
INSERT INTO `area_dict` VALUES ('714', '612103', '陕西华阴市　', 'SXHYS');
INSERT INTO `area_dict` VALUES ('715', '612124', '陕西华县　', 'SXHX');
INSERT INTO `area_dict` VALUES ('716', '612126', '陕西潼关县　', 'SXTGX');
INSERT INTO `area_dict` VALUES ('717', '612127', '陕西大荔县　', 'SXDLX');
INSERT INTO `area_dict` VALUES ('718', '612128', '陕西蒲城县　', 'SXPCX');
INSERT INTO `area_dict` VALUES ('719', '612129', '陕西澄城县　', 'SXCCX');
INSERT INTO `area_dict` VALUES ('720', '612130', '陕西白水县　', 'SXBSX');
INSERT INTO `area_dict` VALUES ('721', '612132', '陕西合阳县　', 'SXHYX');
INSERT INTO `area_dict` VALUES ('722', '612133', '陕西富平县　', 'SXFPX');
INSERT INTO `area_dict` VALUES ('723', '612300', '陕西汉中地区', 'SXHZDQ');
INSERT INTO `area_dict` VALUES ('724', '610631', '陕西黄龙县', 'SXHLX');
INSERT INTO `area_dict` VALUES ('725', '610123', '陕西临潼县', 'SXLTX');
INSERT INTO `area_dict` VALUES ('726', '610124', '陕西周至县', 'SXZZX');
INSERT INTO `area_dict` VALUES ('727', '610125', '陕西户县', 'SXHX');
INSERT INTO `area_dict` VALUES ('728', '610126', '陕西高陵县', 'SXGLX');
INSERT INTO `area_dict` VALUES ('729', '610200', '陕西铜川市', 'SXTCS');
INSERT INTO `area_dict` VALUES ('730', '610201', '陕西铜川市辖区', 'SXTCSXQ');
INSERT INTO `area_dict` VALUES ('731', '610221', '陕西耀县', 'SXYX');
INSERT INTO `area_dict` VALUES ('732', '610222', '陕西宜君县', 'SXYJX');
INSERT INTO `area_dict` VALUES ('733', '610300', '陕西宝鸡市', 'SXBJS');
INSERT INTO `area_dict` VALUES ('734', '610301', '陕西宝鸡市辖区', 'SXBJSXQ');
INSERT INTO `area_dict` VALUES ('735', '610321', '陕西宝鸡县', 'SXBJX');
INSERT INTO `area_dict` VALUES ('736', '610322', '陕西凤翔县', 'SXFXX');
INSERT INTO `area_dict` VALUES ('737', '610323', '陕西岐山县', 'SXQSX');
INSERT INTO `area_dict` VALUES ('738', '610324', '陕西扶风县', 'SXFFX');
INSERT INTO `area_dict` VALUES ('739', '610326', '陕西眉县', 'SXMX');
INSERT INTO `area_dict` VALUES ('740', '610327', '陕西陇县', 'SXLX');
INSERT INTO `area_dict` VALUES ('741', '610328', '陕西千阳县', 'SXQYX');
INSERT INTO `area_dict` VALUES ('742', '610329', '陕西麟游县', 'SXLYX');
INSERT INTO `area_dict` VALUES ('743', '610330', '陕西凤县', 'SXFX');
INSERT INTO `area_dict` VALUES ('744', '610331', '陕西太白县', 'SXTBX');
INSERT INTO `area_dict` VALUES ('745', '610400', '陕西咸阳市', 'SXXYS');
INSERT INTO `area_dict` VALUES ('746', '610401', '陕西咸阳市辖区', 'SXXYSXQ');
INSERT INTO `area_dict` VALUES ('747', '610422', '陕西三原县', 'SXSYX');
INSERT INTO `area_dict` VALUES ('748', '610423', '陕西泾阳县', 'SXJYX');
INSERT INTO `area_dict` VALUES ('749', '610424', '陕西乾县', 'SXQX');
INSERT INTO `area_dict` VALUES ('750', '610425', '陕西礼泉县', 'SXLQX');
INSERT INTO `area_dict` VALUES ('751', '610426', '陕西永寿县', 'SXYSX');
INSERT INTO `area_dict` VALUES ('752', '610427', '陕西彬县', 'SXBX');
INSERT INTO `area_dict` VALUES ('753', '610428', '陕西长武县', 'SXCWX');
INSERT INTO `area_dict` VALUES ('754', '610429', '陕西旬邑县', 'SXXYX');
INSERT INTO `area_dict` VALUES ('755', '610430', '陕西淳化县', 'SXCHX');
INSERT INTO `area_dict` VALUES ('756', '610431', '陕西武功县', 'SXWGX');
INSERT INTO `area_dict` VALUES ('757', '610481', '陕西兴平市', 'SXXPS');
INSERT INTO `area_dict` VALUES ('758', '610500', '陕西渭南市', 'SXWNS');
INSERT INTO `area_dict` VALUES ('759', '610521', '陕西华县', 'SXHX');
INSERT INTO `area_dict` VALUES ('760', '610522', '陕西潼关县', 'SXTGX');
INSERT INTO `area_dict` VALUES ('761', '610523', '陕西大荔县', 'SXDLX');
INSERT INTO `area_dict` VALUES ('762', '610524', '陕西合阳县', 'SXHYX');
INSERT INTO `area_dict` VALUES ('763', '610525', '陕西澄城县', 'SXCCX');
INSERT INTO `area_dict` VALUES ('764', '610526', '陕西蒲城县', 'SXPCX');
INSERT INTO `area_dict` VALUES ('765', '610527', '陕西白水县', 'SXBSX');
INSERT INTO `area_dict` VALUES ('766', '610528', '陕西富平县', 'SXFPX');
INSERT INTO `area_dict` VALUES ('767', '610581', '陕西韩城市', 'SXHCS');
INSERT INTO `area_dict` VALUES ('768', '610582', '陕西华阴市', 'SXHYS');
INSERT INTO `area_dict` VALUES ('769', '610600', '陕西延安市', 'SXYAS');
INSERT INTO `area_dict` VALUES ('770', '610621', '陕西延长县', 'SXYCX');
INSERT INTO `area_dict` VALUES ('771', '610622', '陕西延川县', 'SXYCX');
INSERT INTO `area_dict` VALUES ('772', '610623', '陕西子长县', 'SXZCX');
INSERT INTO `area_dict` VALUES ('773', '610624', '陕西安塞县', 'SXASX');
INSERT INTO `area_dict` VALUES ('774', '610625', '陕西志丹县', 'SXZDX');
INSERT INTO `area_dict` VALUES ('775', '610626', '陕西吴旗县', 'SXWQX');
INSERT INTO `area_dict` VALUES ('776', '610627', '陕西甘泉县', 'SXGQX');
INSERT INTO `area_dict` VALUES ('777', '610628', '陕西富县', 'SXFX');
INSERT INTO `area_dict` VALUES ('778', '610122', '陕西蓝田县', 'SXLTX');
INSERT INTO `area_dict` VALUES ('779', '610629', '陕西洛川县', 'SXLCX');
INSERT INTO `area_dict` VALUES ('780', '610630', '陕西宜川县', 'SXYCX');
INSERT INTO `area_dict` VALUES ('781', '542231', '西藏隆子县', 'XCLZX');
INSERT INTO `area_dict` VALUES ('782', '542232', '西藏错那县', 'XCCNX');
INSERT INTO `area_dict` VALUES ('783', '542233', '西藏浪卡子县', 'XCLKZX');
INSERT INTO `area_dict` VALUES ('784', '542300', '西藏日喀则地区', 'XCRKZDO');
INSERT INTO `area_dict` VALUES ('785', '542301', '西藏日喀则市', 'XCRKZS');
INSERT INTO `area_dict` VALUES ('786', '542322', '西藏南木林市', 'XCNMLS');
INSERT INTO `area_dict` VALUES ('787', '542323', '西藏江孜县', 'XCJZX');
INSERT INTO `area_dict` VALUES ('788', '542324', '西藏定日县', 'XCDRX');
INSERT INTO `area_dict` VALUES ('789', '542325', '西藏萨迦县', 'XCSJX');
INSERT INTO `area_dict` VALUES ('790', '542326', '西藏拉孜县', 'XCLZX');
INSERT INTO `area_dict` VALUES ('791', '542327', '西藏昂仁县', 'XCARX');
INSERT INTO `area_dict` VALUES ('792', '542328', '西藏谢通门县', 'XCXTMX');
INSERT INTO `area_dict` VALUES ('793', '542329', '西藏白朗县', 'XCBLX');
INSERT INTO `area_dict` VALUES ('794', '542330', '西藏仁布县', 'XCRBX');
INSERT INTO `area_dict` VALUES ('795', '542331', '西藏康马县', 'XCKMX');
INSERT INTO `area_dict` VALUES ('796', '542332', '西藏定结县', 'XCDJX');
INSERT INTO `area_dict` VALUES ('797', '542333', '西藏仲巴县', 'XCZBX');
INSERT INTO `area_dict` VALUES ('798', '542334', '西藏亚东县', 'XCYDX');
INSERT INTO `area_dict` VALUES ('799', '542335', '西藏吉隆县', 'XCJLX');
INSERT INTO `area_dict` VALUES ('800', '542336', '西藏聂拉木县', 'XCNLMX');
INSERT INTO `area_dict` VALUES ('801', '542337', '西藏萨嘎县', 'XCSGX');
INSERT INTO `area_dict` VALUES ('802', '542338', '西藏岗巴县', 'XCGBX');
INSERT INTO `area_dict` VALUES ('803', '542400', '西藏那曲地区', 'XCNQDO');
INSERT INTO `area_dict` VALUES ('804', '542421', '西藏那曲县', 'XCNQX');
INSERT INTO `area_dict` VALUES ('805', '542422', '西藏嘉黎县', 'XCJLX');
INSERT INTO `area_dict` VALUES ('806', '542423', '西藏比如县', 'XCBRX');
INSERT INTO `area_dict` VALUES ('807', '542424', '西藏聂荣县', 'XCNRX');
INSERT INTO `area_dict` VALUES ('808', '542425', '西藏安多县', 'XCADX');
INSERT INTO `area_dict` VALUES ('809', '542426', '西藏申扎县', 'XCSZX');
INSERT INTO `area_dict` VALUES ('810', '542427', '西藏索县', 'XCSX');
INSERT INTO `area_dict` VALUES ('811', '542428', '西藏班戈县', 'XCBGX');
INSERT INTO `area_dict` VALUES ('812', '542429', '西藏巴青县', 'XCBQX');
INSERT INTO `area_dict` VALUES ('813', '542430', '西藏尼玛县', 'XCNMX');
INSERT INTO `area_dict` VALUES ('814', '542500', '西藏阿里地区', 'XCALDO');
INSERT INTO `area_dict` VALUES ('815', '542521', '西藏普兰县', 'XCPLX');
INSERT INTO `area_dict` VALUES ('816', '542522', '西藏札达县', 'XCZDX');
INSERT INTO `area_dict` VALUES ('817', '542523', '西藏噶尔县', 'XCGEX');
INSERT INTO `area_dict` VALUES ('818', '542524', '西藏日土县', 'XCRTX');
INSERT INTO `area_dict` VALUES ('819', '542525', '西藏革吉县', 'XCGJX');
INSERT INTO `area_dict` VALUES ('820', '542526', '西藏改则县', 'XCGZX');
INSERT INTO `area_dict` VALUES ('821', '542527', '西藏措勤县', 'XCCQX');
INSERT INTO `area_dict` VALUES ('822', '542528', '西藏隆格尔县', 'XZLGEX');
INSERT INTO `area_dict` VALUES ('823', '542600', '西藏林芝地区', 'XCLZDO');
INSERT INTO `area_dict` VALUES ('824', '542621', '西藏林芝县', 'XCLZX');
INSERT INTO `area_dict` VALUES ('825', '542622', '西藏工布江达县', 'XCGBJDX');
INSERT INTO `area_dict` VALUES ('826', '542623', '西藏米林县', 'XCMLX');
INSERT INTO `area_dict` VALUES ('827', '542624', '西藏墨脱县', 'XCMTX');
INSERT INTO `area_dict` VALUES ('828', '542625', '西藏波密县', 'XCBMX');
INSERT INTO `area_dict` VALUES ('829', '542626', '西藏察隅县', 'XCCYX');
INSERT INTO `area_dict` VALUES ('830', '542627', '西藏朗县', 'XCLX');
INSERT INTO `area_dict` VALUES ('831', '610000', '陕西省', 'SXS');
INSERT INTO `area_dict` VALUES ('832', '610100', '陕西西安市', 'SXXAS');
INSERT INTO `area_dict` VALUES ('833', '610101', '陕西西安市辖区', 'SXXASXQ');
INSERT INTO `area_dict` VALUES ('834', '542229', '西藏加查县', 'XCJCX');
INSERT INTO `area_dict` VALUES ('835', '610121', '陕西长安县', 'SXCAX');
INSERT INTO `area_dict` VALUES ('836', '533323', '云南福贡县', 'YNFGX');
INSERT INTO `area_dict` VALUES ('837', '533324', '云南贡山独龙怒族自治县', 'YNGSDLNZ');
INSERT INTO `area_dict` VALUES ('838', '533325', '云南兰坪白族普米族自治县', 'YNLPBZPM');
INSERT INTO `area_dict` VALUES ('839', '533400', '云南迪庆藏族自治州', 'YNDQCZZZ');
INSERT INTO `area_dict` VALUES ('840', '533421', '云南香格里拉县', 'YNXGLLX');
INSERT INTO `area_dict` VALUES ('841', '533422', '云南德钦县', 'YNDQX');
INSERT INTO `area_dict` VALUES ('842', '533423', '云南维西傈僳族自治县', 'YNWXLSZZ');
INSERT INTO `area_dict` VALUES ('843', '533500', '云南临沧地区', 'YNLCDO');
INSERT INTO `area_dict` VALUES ('844', '533521', '云南临沧县', 'YNLCX');
INSERT INTO `area_dict` VALUES ('845', '533522', '云南凤庆县', 'YNFQX');
INSERT INTO `area_dict` VALUES ('846', '533523', '云南云县', 'YNYX');
INSERT INTO `area_dict` VALUES ('847', '533524', '云南永德县', 'YNYDX');
INSERT INTO `area_dict` VALUES ('848', '533525', '云南镇康县', 'YNZKX');
INSERT INTO `area_dict` VALUES ('849', '533526', '云南双江拉祜族佤族朗族傣族自治县', 'YNSJLHZW');
INSERT INTO `area_dict` VALUES ('850', '533527', '云南耿马傣族佤族自治县', 'YNGMDZWZ');
INSERT INTO `area_dict` VALUES ('851', '533528', '云南沧源佤族自治县', 'YNCYWZZZ');
INSERT INTO `area_dict` VALUES ('852', '540000', '西藏自治区', 'XCZZO');
INSERT INTO `area_dict` VALUES ('853', '540100', '西藏拉萨市', 'XCLSS');
INSERT INTO `area_dict` VALUES ('854', '540101', '西藏拉萨市辖区', 'XZLSSXQ');
INSERT INTO `area_dict` VALUES ('855', '540121', '西藏林周县', 'XCLZX');
INSERT INTO `area_dict` VALUES ('856', '540122', '西藏当雄县', 'XCDXX');
INSERT INTO `area_dict` VALUES ('857', '540123', '西藏尼木县', 'XCNMX');
INSERT INTO `area_dict` VALUES ('858', '540124', '西藏曲水县', 'XCQSX');
INSERT INTO `area_dict` VALUES ('859', '540125', '西藏堆龙德庆县', 'XCDLDQX');
INSERT INTO `area_dict` VALUES ('860', '522728', '贵州罗甸县', 'GZLDX');
INSERT INTO `area_dict` VALUES ('861', '522729', '贵州长顺县', 'GZCSX');
INSERT INTO `area_dict` VALUES ('862', '522730', '贵州龙里县', 'GZLLX');
INSERT INTO `area_dict` VALUES ('863', '522731', '贵州惠水县', 'GZHSX');
INSERT INTO `area_dict` VALUES ('864', '522732', '贵州三都水族自治县', 'GZSDSZZZ');
INSERT INTO `area_dict` VALUES ('865', '530000', '云南省', 'YNS');
INSERT INTO `area_dict` VALUES ('866', '530100', '云南昆明市', 'YNKMS');
INSERT INTO `area_dict` VALUES ('867', '530101', '云南昆明市辖区', 'YNKMSXQ');
INSERT INTO `area_dict` VALUES ('868', '530121', '云南呈贡县', 'YNCGX');
INSERT INTO `area_dict` VALUES ('869', '530122', '云南晋宁县', 'YNJNX');
INSERT INTO `area_dict` VALUES ('870', '530123', '云南安宁县', 'YNANX');
INSERT INTO `area_dict` VALUES ('871', '530124', '云南富民县', 'YNFMX');
INSERT INTO `area_dict` VALUES ('872', '530125', '云南宜良县', 'YNYLX');
INSERT INTO `area_dict` VALUES ('873', '522502', '贵州清镇市　', 'GZQZS');
INSERT INTO `area_dict` VALUES ('874', '530126', '云南石林彝族自治县', 'YNSLYZZZ');
INSERT INTO `area_dict` VALUES ('875', '530127', '云南嵩明县', 'YNSMX');
INSERT INTO `area_dict` VALUES ('876', '530128', '云南禄劝彝族苗族自治县', 'YNLQYZMZ');
INSERT INTO `area_dict` VALUES ('877', '520423', '贵州镇宁布依族苗族自治县', 'GZZNBYZM');
INSERT INTO `area_dict` VALUES ('878', '520424', '贵州关岭布依族苗族自治县', 'GZGLBYZM');
INSERT INTO `area_dict` VALUES ('879', '520425', '贵州紫云苗族布依族自治县', 'GZZYMZBY');
INSERT INTO `area_dict` VALUES ('880', '522100', '贵州遵义地区', 'GZZYDQ');
INSERT INTO `area_dict` VALUES ('881', '522101', '贵州遵义市　', 'GZZYS');
INSERT INTO `area_dict` VALUES ('882', '522102', '贵州赤水市　', 'GZCSS');
INSERT INTO `area_dict` VALUES ('883', '522121', '贵州遵义县　', 'GZZYX');
INSERT INTO `area_dict` VALUES ('884', '522122', '贵州桐梓县　', 'GZTZX');
INSERT INTO `area_dict` VALUES ('885', '522123', '贵州绥阳县　', 'GZSYX');
INSERT INTO `area_dict` VALUES ('886', '522124', '贵州正安县　', 'GZZAX');
INSERT INTO `area_dict` VALUES ('887', '522125', '贵州道真仡佬族苗族自治县　', 'GZDZGLZM');
INSERT INTO `area_dict` VALUES ('888', '522126', '贵州务川仡佬族苗族自治县　', 'GZWCGLZM');
INSERT INTO `area_dict` VALUES ('889', '522127', '贵州凤冈县　', 'GZFGX');
INSERT INTO `area_dict` VALUES ('890', '522128', '贵州湄潭县　', 'GZMTX');
INSERT INTO `area_dict` VALUES ('891', '522129', '贵州余庆县　', 'GZYQX');
INSERT INTO `area_dict` VALUES ('892', '522130', '贵州仁怀县', 'GZRHX');
INSERT INTO `area_dict` VALUES ('893', '522132', '贵州习水县　', 'GZXSX');
INSERT INTO `area_dict` VALUES ('894', '522200', '贵州铜仁地区', 'GZTRDO');
INSERT INTO `area_dict` VALUES ('895', '522201', '贵州铜仁市', 'GZTRS');
INSERT INTO `area_dict` VALUES ('896', '522222', '贵州江口县', 'GZJKX');
INSERT INTO `area_dict` VALUES ('897', '522223', '贵州玉屏侗族自治县', 'GZYPDZZZ');
INSERT INTO `area_dict` VALUES ('898', '522224', '贵州石阡县', 'GZSQX');
INSERT INTO `area_dict` VALUES ('899', '522225', '贵州思南县', 'GZSNX');
INSERT INTO `area_dict` VALUES ('900', '522226', '贵州印江土家族苗族自治县', 'GZYJTJZM');
INSERT INTO `area_dict` VALUES ('901', '522227', '贵州德江县', 'GZDJX');
INSERT INTO `area_dict` VALUES ('902', '522228', '贵州沿河土家族苗族自治县', 'GZYHTJZM');
INSERT INTO `area_dict` VALUES ('903', '522229', '贵州松桃苗族自治县', 'GZSTMZZZ');
INSERT INTO `area_dict` VALUES ('904', '522230', '贵州万山特区', 'GZWSTO');
INSERT INTO `area_dict` VALUES ('905', '522300', '贵州黔西南布依族苗族自治州', 'GZQXNBYZ');
INSERT INTO `area_dict` VALUES ('906', '522301', '贵州兴义市', 'GZXYS');
INSERT INTO `area_dict` VALUES ('907', '522322', '贵州兴仁县', 'GZXRX');
INSERT INTO `area_dict` VALUES ('908', '522323', '贵州普安县', 'GZPAX');
INSERT INTO `area_dict` VALUES ('909', '522324', '贵州晴隆县', 'GZQLX');
INSERT INTO `area_dict` VALUES ('910', '522325', '贵州贞丰县', 'GZZFX');
INSERT INTO `area_dict` VALUES ('911', '522326', '贵州望谟县', 'GZWMX');
INSERT INTO `area_dict` VALUES ('912', '522327', '贵州册亨县', 'GZCHX');
INSERT INTO `area_dict` VALUES ('913', '522328', '贵州安龙县', 'GZALX');
INSERT INTO `area_dict` VALUES ('914', '522400', '贵州毕节地区', 'GZBJDO');
INSERT INTO `area_dict` VALUES ('915', '522401', '贵州毕节市', 'GZBJS');
INSERT INTO `area_dict` VALUES ('916', '522422', '贵州大方县', 'GZDFX');
INSERT INTO `area_dict` VALUES ('917', '522423', '贵州黔西县', 'GZQXX');
INSERT INTO `area_dict` VALUES ('918', '522424', '贵州金沙县', 'GZJSX');
INSERT INTO `area_dict` VALUES ('919', '522425', '贵州织金县', 'GZZJX');
INSERT INTO `area_dict` VALUES ('920', '522426', '贵州纳雍县', 'GZNYX');
INSERT INTO `area_dict` VALUES ('921', '522427', '贵州威宁彝族回族苗族自治县', 'GZWNYZHZ');
INSERT INTO `area_dict` VALUES ('922', '522428', '贵州赫章县', 'GZHZX');
INSERT INTO `area_dict` VALUES ('923', '522500', '贵州安顺地区', 'GZASDQ');
INSERT INTO `area_dict` VALUES ('924', '522501', '贵州安顺市　', 'GZASS');
INSERT INTO `area_dict` VALUES ('925', '520422', '贵州普定县', 'GZPDX');
INSERT INTO `area_dict` VALUES ('926', '513430', '四川金阳县', 'SCJYX');
INSERT INTO `area_dict` VALUES ('927', '513431', '四川昭觉县', 'SCZJX');
INSERT INTO `area_dict` VALUES ('928', '513432', '四川喜德县', 'SCXDX');
INSERT INTO `area_dict` VALUES ('929', '513433', '四川冕宁县', 'SCMNX');
INSERT INTO `area_dict` VALUES ('930', '513434', '四川越西县', 'SCYXX');
INSERT INTO `area_dict` VALUES ('931', '513435', '四川甘洛县', 'SCGLX');
INSERT INTO `area_dict` VALUES ('932', '513436', '四川美姑县', 'SCMGX');
INSERT INTO `area_dict` VALUES ('933', '513437', '四川雷波县', 'SCLBX');
INSERT INTO `area_dict` VALUES ('934', '513500', '四川黔江地区', 'SCQJDQ');
INSERT INTO `area_dict` VALUES ('935', '513521', '四川石柱土家族自治县', 'SCSZTJZZ');
INSERT INTO `area_dict` VALUES ('936', '513522', '四川秀山土家族苗族自治县', 'SCXSTJZM');
INSERT INTO `area_dict` VALUES ('937', '513523', '四川黔江土家族苗族自治县', 'SCQJTJZM');
INSERT INTO `area_dict` VALUES ('938', '513524', '四川酉阳土家族苗族自治县', 'SCYYTJZM');
INSERT INTO `area_dict` VALUES ('939', '513525', '四川彭水苗族土家族自治县', 'SCPSMZTJ');
INSERT INTO `area_dict` VALUES ('940', '513600', '四川广安地区', 'SCGADQ');
INSERT INTO `area_dict` VALUES ('941', '513601', '四川华蓥市　', 'SCHYS');
INSERT INTO `area_dict` VALUES ('942', '513621', '四川岳池县　', 'SCYCX');
INSERT INTO `area_dict` VALUES ('943', '513622', '四川广安县', 'SCGAX');
INSERT INTO `area_dict` VALUES ('944', '513623', '四川武胜县　', 'SCWSX');
INSERT INTO `area_dict` VALUES ('945', '513624', '四川邻水县　', 'SCLSX');
INSERT INTO `area_dict` VALUES ('946', '513700', '四川巴中地区', 'SCBZDQ');
INSERT INTO `area_dict` VALUES ('947', '513701', '四川巴中市　', 'SCBZS');
INSERT INTO `area_dict` VALUES ('948', '513721', '四川通江县　', 'SCTJX');
INSERT INTO `area_dict` VALUES ('949', '513722', '四川南江县　', 'SCNJX');
INSERT INTO `area_dict` VALUES ('950', '513723', '四川平昌县　', 'SCPCX');
INSERT INTO `area_dict` VALUES ('951', '520000', '贵州省', 'GZS');
INSERT INTO `area_dict` VALUES ('952', '520100', '贵州贵阳市', 'GZGYS');
INSERT INTO `area_dict` VALUES ('953', '520121', '贵州开阳县', 'GZKYX');
INSERT INTO `area_dict` VALUES ('954', '520122', '贵州息烽县', 'GZXFX');
INSERT INTO `area_dict` VALUES ('955', '520123', '贵州修文县', 'GZXWX');
INSERT INTO `area_dict` VALUES ('956', '520181', '贵州清镇市', 'GZQZS');
INSERT INTO `area_dict` VALUES ('957', '520200', '贵州六盘水市', 'GZLPSS');
INSERT INTO `area_dict` VALUES ('958', '520201', '贵州六盘水市辖区', 'GZLPSSXQ');
INSERT INTO `area_dict` VALUES ('959', '520221', '贵州水城县', 'GZSCX');
INSERT INTO `area_dict` VALUES ('960', '520222', '贵州盘县', 'GZPX');
INSERT INTO `area_dict` VALUES ('961', '520300', '贵州遵义市', 'GZZYS');
INSERT INTO `area_dict` VALUES ('962', '520321', '贵州遵义县', 'GZZYX');
INSERT INTO `area_dict` VALUES ('963', '520322', '贵州桐梓县', 'GZTZX');
INSERT INTO `area_dict` VALUES ('964', '520323', '贵州绥阳县', 'GZSYX');
INSERT INTO `area_dict` VALUES ('965', '520324', '贵州正安县', 'GZZAX');
INSERT INTO `area_dict` VALUES ('966', '520325', '贵州道真仡佬族苗族自治县', 'GZDZGLZM');
INSERT INTO `area_dict` VALUES ('967', '520326', '贵州务川仡佬族苗族自治县', 'GZWCGLZM');
INSERT INTO `area_dict` VALUES ('968', '520327', '贵州凤冈县', 'GZFGX');
INSERT INTO `area_dict` VALUES ('969', '520328', '贵州湄潭县', 'GZMTX');
INSERT INTO `area_dict` VALUES ('970', '520329', '贵州余庆县', 'GZYQX');
INSERT INTO `area_dict` VALUES ('971', '520330', '贵州习水县', 'GZXSX');
INSERT INTO `area_dict` VALUES ('972', '520381', '贵州赤水市', 'GZCSS');
INSERT INTO `area_dict` VALUES ('973', '520382', '贵州仁怀市', 'GZRHS');
INSERT INTO `area_dict` VALUES ('974', '520400', '贵州安顺市', 'GZASS');
INSERT INTO `area_dict` VALUES ('975', '520421', '贵州平坝县', 'GZPBX');
INSERT INTO `area_dict` VALUES ('976', '513429', '四川布拖县', 'SCBTX');
INSERT INTO `area_dict` VALUES ('977', '513029', '四川大竹县　', 'SCDZX');
INSERT INTO `area_dict` VALUES ('978', '513030', '四川渠县　', 'SCQX');
INSERT INTO `area_dict` VALUES ('979', '513100', '四川雅安地区', 'SCYADQ');
INSERT INTO `area_dict` VALUES ('980', '513101', '四川雅安市　', 'SCYAS');
INSERT INTO `area_dict` VALUES ('981', '513122', '四川名山县　', 'SCMSX');
INSERT INTO `area_dict` VALUES ('982', '513123', '四川荥经县　', 'SCYJX');
INSERT INTO `area_dict` VALUES ('983', '513124', '四川汉源县　', 'SCHYX');
INSERT INTO `area_dict` VALUES ('984', '513125', '四川石棉县　', 'SCSMX');
INSERT INTO `area_dict` VALUES ('985', '513126', '四川天全县　', 'SCTQX');
INSERT INTO `area_dict` VALUES ('986', '513127', '四川芦山县　', 'SCLSX');
INSERT INTO `area_dict` VALUES ('987', '513128', '四川宝兴县　', 'SCBXX');
INSERT INTO `area_dict` VALUES ('988', '513200', '四川阿坝藏族羌族自治州', 'SCABCZQZ');
INSERT INTO `area_dict` VALUES ('989', '513221', '四川汶川县', 'SCWCX');
INSERT INTO `area_dict` VALUES ('990', '513222', '四川理县', 'SCLX');
INSERT INTO `area_dict` VALUES ('991', '513223', '四川茂县', 'SCMX');
INSERT INTO `area_dict` VALUES ('992', '513224', '四川松潘县', 'SCSPX');
INSERT INTO `area_dict` VALUES ('993', '513225', '四川九寨沟县', 'SCJZGX');
INSERT INTO `area_dict` VALUES ('994', '513226', '四川金川县', 'SCJCX');
INSERT INTO `area_dict` VALUES ('995', '513227', '四川小金县', 'SCXJX');
INSERT INTO `area_dict` VALUES ('996', '513228', '四川黑水县', 'SCHSX');
INSERT INTO `area_dict` VALUES ('997', '513229', '四川马尔康县', 'SCMEKX');
INSERT INTO `area_dict` VALUES ('998', '513230', '四川壤塘县', 'SCRTX');
INSERT INTO `area_dict` VALUES ('999', '513231', '四川阿坝县', 'SCABX');
INSERT INTO `area_dict` VALUES ('1000', '513232', '四川若尔盖县', 'SCREGX');
INSERT INTO `area_dict` VALUES ('1001', '513233', '四川红原县', 'SCHYX');
INSERT INTO `area_dict` VALUES ('1002', '513300', '四川甘孜藏族自治州', 'SCGZCZZZ');
INSERT INTO `area_dict` VALUES ('1003', '513321', '四川康定县', 'SCKDX');
INSERT INTO `area_dict` VALUES ('1004', '513322', '四川泸定县', 'SCLDX');
INSERT INTO `area_dict` VALUES ('1005', '513323', '四川丹巴县', 'SCDBX');
INSERT INTO `area_dict` VALUES ('1006', '513324', '四川九龙县', 'SCJLX');
INSERT INTO `area_dict` VALUES ('1007', '513325', '四川雅江县', 'SCYJX');
INSERT INTO `area_dict` VALUES ('1008', '513326', '四川道孚县', 'SCDFX');
INSERT INTO `area_dict` VALUES ('1009', '513327', '四川炉霍县', 'SCLHX');
INSERT INTO `area_dict` VALUES ('1010', '513328', '四川甘孜县', 'SCGZX');
INSERT INTO `area_dict` VALUES ('1011', '513329', '四川新龙县', 'SCXLX');
INSERT INTO `area_dict` VALUES ('1012', '513330', '四川德格县', 'SCDGX');
INSERT INTO `area_dict` VALUES ('1013', '513331', '四川白玉县', 'SCBYX');
INSERT INTO `area_dict` VALUES ('1014', '513332', '四川石渠县', 'SCSQX');
INSERT INTO `area_dict` VALUES ('1015', '513333', '四川色达县', 'SCSDX');
INSERT INTO `area_dict` VALUES ('1016', '513334', '四川理塘县', 'SCLTX');
INSERT INTO `area_dict` VALUES ('1017', '513335', '四川巴塘县', 'SCBTX');
INSERT INTO `area_dict` VALUES ('1018', '513336', '四川乡城县', 'SCXCX');
INSERT INTO `area_dict` VALUES ('1019', '513337', '四川稻城县', 'SCDCX');
INSERT INTO `area_dict` VALUES ('1020', '513338', '四川得荣县', 'SCDRX');
INSERT INTO `area_dict` VALUES ('1021', '513400', '四川凉山彝族自治州', 'SCLSYZZZ');
INSERT INTO `area_dict` VALUES ('1022', '513401', '四川西昌市', 'SCXCS');
INSERT INTO `area_dict` VALUES ('1023', '513422', '四川木里藏族自治县', 'SCMLCZZZ');
INSERT INTO `area_dict` VALUES ('1024', '513423', '四川盐源县', 'SCYYX');
INSERT INTO `area_dict` VALUES ('1025', '513424', '四川德昌县', 'SCDCX');
INSERT INTO `area_dict` VALUES ('1026', '513425', '四川会理县', 'SCHLX');
INSERT INTO `area_dict` VALUES ('1027', '513426', '四川会东县', 'SCHDX');
INSERT INTO `area_dict` VALUES ('1028', '513427', '四川宁南县', 'SCNNX');
INSERT INTO `area_dict` VALUES ('1029', '513023', '四川开江县　', 'SCKJX');
INSERT INTO `area_dict` VALUES ('1030', '513428', '四川普格县', 'SCPGX');
INSERT INTO `area_dict` VALUES ('1031', '511525', '四川高县', 'SCGX');
INSERT INTO `area_dict` VALUES ('1032', '511526', '四川珙县', 'SCGX');
INSERT INTO `area_dict` VALUES ('1033', '511527', '四川筠连县', 'SCYLX');
INSERT INTO `area_dict` VALUES ('1034', '511528', '四川兴文县', 'SCXWX');
INSERT INTO `area_dict` VALUES ('1035', '511529', '四川屏山县', 'SCPSX');
INSERT INTO `area_dict` VALUES ('1036', '511600', '四川广安市', 'SCGAS');
INSERT INTO `area_dict` VALUES ('1037', '511621', '四川岳池县', 'SCYCX');
INSERT INTO `area_dict` VALUES ('1038', '511622', '四川武胜县', 'SCWSX');
INSERT INTO `area_dict` VALUES ('1039', '511623', '四川邻水县', 'SCLSX');
INSERT INTO `area_dict` VALUES ('1040', '652324', '新疆玛纳斯县', 'XJMNSX');
INSERT INTO `area_dict` VALUES ('1041', '652325', '新疆奇台县', 'XJQTX');
INSERT INTO `area_dict` VALUES ('1042', '652327', '新疆吉木萨尔县', 'XJJMSEX');
INSERT INTO `area_dict` VALUES ('1043', '652328', '新疆木垒哈萨克自治县', 'XJMLHSKZ');
INSERT INTO `area_dict` VALUES ('1044', '652700', '新疆博尔塔拉蒙古自治州', 'XJBETLMG');
INSERT INTO `area_dict` VALUES ('1045', '652701', '新疆博乐市', 'XJBLS');
INSERT INTO `area_dict` VALUES ('1046', '652722', '新疆精河县', 'XJJHX');
INSERT INTO `area_dict` VALUES ('1047', '652723', '新疆温泉县', 'XJWQX');
INSERT INTO `area_dict` VALUES ('1048', '652800', '新疆巴音郭楞蒙古自治州', 'XJBYGLMG');
INSERT INTO `area_dict` VALUES ('1049', '652801', '新疆库尔勒市', 'XJKELS');
INSERT INTO `area_dict` VALUES ('1050', '652822', '新疆轮台县', 'XJLTX');
INSERT INTO `area_dict` VALUES ('1051', '652823', '新疆尉犁县', 'XJWLX');
INSERT INTO `area_dict` VALUES ('1052', '652824', '新疆若羌县', 'XJRQX');
INSERT INTO `area_dict` VALUES ('1053', '652825', '新疆且末县', 'XJQMX');
INSERT INTO `area_dict` VALUES ('1054', '652826', '新疆焉耆回族自治县', 'XJYQHZZZ');
INSERT INTO `area_dict` VALUES ('1055', '652827', '新疆和静县', 'XJHJX');
INSERT INTO `area_dict` VALUES ('1056', '652828', '新疆和硕县', 'XJHSX');
INSERT INTO `area_dict` VALUES ('1057', '652829', '新疆博湖县', 'XJBHX');
INSERT INTO `area_dict` VALUES ('1058', '652900', '新疆阿克苏地区', 'XJAKSDO');
INSERT INTO `area_dict` VALUES ('1059', '652901', '新疆阿克苏市', 'XJAKSS');
INSERT INTO `area_dict` VALUES ('1060', '652922', '新疆温宿县', 'XJWSX');
INSERT INTO `area_dict` VALUES ('1061', '652923', '新疆库车县', 'XJKCX');
INSERT INTO `area_dict` VALUES ('1062', '652924', '新疆沙雅县', 'XJSYX');
INSERT INTO `area_dict` VALUES ('1063', '652925', '新疆新和县', 'XJXHX');
INSERT INTO `area_dict` VALUES ('1064', '652926', '新疆拜城县', 'XJBCX');
INSERT INTO `area_dict` VALUES ('1065', '652927', '新疆乌什县', 'XJWSX');
INSERT INTO `area_dict` VALUES ('1066', '652928', '新疆阿瓦提县', 'XJAWTX');
INSERT INTO `area_dict` VALUES ('1067', '652929', '新疆柯坪县', 'XJKPX');
INSERT INTO `area_dict` VALUES ('1068', '653000', '新疆克孜勒苏柯尔克孜自治州', 'XJKZLSKE');
INSERT INTO `area_dict` VALUES ('1069', '653001', '新疆阿图什市', 'XJATSS');
INSERT INTO `area_dict` VALUES ('1070', '653022', '新疆阿克陶县', 'XJAKTX');
INSERT INTO `area_dict` VALUES ('1071', '653023', '新疆阿合奇县', 'XJAHQX');
INSERT INTO `area_dict` VALUES ('1072', '653024', '新疆乌恰县', 'XJWQX');
INSERT INTO `area_dict` VALUES ('1073', '653100', '新疆喀什地区', 'XJKSDO');
INSERT INTO `area_dict` VALUES ('1074', '653101', '新疆喀什市', 'XJKSS');
INSERT INTO `area_dict` VALUES ('1075', '653121', '新疆疏附县', 'XJSFX');
INSERT INTO `area_dict` VALUES ('1076', '653122', '新疆疏勒县', 'XJSLX');
INSERT INTO `area_dict` VALUES ('1077', '653123', '新疆英吉沙县', 'XJYJSX');
INSERT INTO `area_dict` VALUES ('1078', '653124', '新疆泽普县', 'XJZPX');
INSERT INTO `area_dict` VALUES ('1079', '653125', '新疆莎车县', 'XJSCX');
INSERT INTO `area_dict` VALUES ('1080', '653126', '新疆叶城县', 'XJYCX');
INSERT INTO `area_dict` VALUES ('1081', '653127', '新疆麦盖提县', 'XJMGTX');
INSERT INTO `area_dict` VALUES ('1082', '653128', '新疆岳普湖县', 'XJYPHX');
INSERT INTO `area_dict` VALUES ('1083', '653129', '新疆伽师县', 'XJGSX');
INSERT INTO `area_dict` VALUES ('1084', '653130', '新疆巴楚县', 'XJBCX');
INSERT INTO `area_dict` VALUES ('1085', '653131', '新疆塔什库尔干塔吉克自治县', 'XJTSKEGT');
INSERT INTO `area_dict` VALUES ('1086', '653200', '新疆和田地区', 'XJHTDO');
INSERT INTO `area_dict` VALUES ('1087', '653201', '新疆和田市', 'XJHTS');
INSERT INTO `area_dict` VALUES ('1088', '652303', '新疆米泉市', 'XJMQS');
INSERT INTO `area_dict` VALUES ('1089', '640121', '宁夏永宁县', 'NXYNX');
INSERT INTO `area_dict` VALUES ('1090', '640122', '宁夏贺兰县', 'NXHLX');
INSERT INTO `area_dict` VALUES ('1091', '640200', '宁夏石嘴山市', 'NXSZSS');
INSERT INTO `area_dict` VALUES ('1092', '640201', '宁夏石嘴山市辖区', 'NXSZSSXQ');
INSERT INTO `area_dict` VALUES ('1093', '640221', '宁夏平罗县', 'NXPLX');
INSERT INTO `area_dict` VALUES ('1094', '640222', '宁夏陶乐县', 'NXTLX');
INSERT INTO `area_dict` VALUES ('1095', '640223', '宁夏惠农县', 'NXHNX');
INSERT INTO `area_dict` VALUES ('1096', '640300', '宁夏吴忠市', 'NXWZS');
INSERT INTO `area_dict` VALUES ('1097', '640321', '宁夏中卫县', 'NXZWX');
INSERT INTO `area_dict` VALUES ('1098', '360481', '江西瑞昌市', 'JXRCS');
INSERT INTO `area_dict` VALUES ('1099', '360500', '江西新余市', 'JXXYS');
INSERT INTO `area_dict` VALUES ('1100', '360501', '江西新余市辖区', 'JXXYSXQ');
INSERT INTO `area_dict` VALUES ('1101', '360521', '江西分宜县', 'JXFYX');
INSERT INTO `area_dict` VALUES ('1102', '360600', '江西鹰潭市', 'JXYTS');
INSERT INTO `area_dict` VALUES ('1103', '360601', '江西鹰潭市辖区', 'JXYTSXQ');
INSERT INTO `area_dict` VALUES ('1104', '360621', '江西贵溪县', 'JXGXX');
INSERT INTO `area_dict` VALUES ('1105', '360622', '江西余江县', 'JXYJX');
INSERT INTO `area_dict` VALUES ('1106', '360681', '江西贵溪市', 'JXGXS');
INSERT INTO `area_dict` VALUES ('1107', '360700', '江西赣州市', 'JXGZS');
INSERT INTO `area_dict` VALUES ('1108', '352224', '福建福鼎县', 'FJFDX');
INSERT INTO `area_dict` VALUES ('1109', '360721', '江西赣县', 'JXGX');
INSERT INTO `area_dict` VALUES ('1110', '360722', '江西信丰县', 'JXXFX');
INSERT INTO `area_dict` VALUES ('1111', '350581', '福建石狮市', 'FJSSS');
INSERT INTO `area_dict` VALUES ('1112', '350582', '福建晋江市', 'FJJJS');
INSERT INTO `area_dict` VALUES ('1113', '350583', '福建南安市', 'FJNAS');
INSERT INTO `area_dict` VALUES ('1114', '350600', '福建漳州市', 'FJZZS');
INSERT INTO `area_dict` VALUES ('1115', '350601', '福建漳州市辖区', 'FJZZSXQ');
INSERT INTO `area_dict` VALUES ('1116', '350622', '福建云霄县', 'FJYXX');
INSERT INTO `area_dict` VALUES ('1117', '350623', '福建漳浦县', 'FJZPX');
INSERT INTO `area_dict` VALUES ('1118', '350624', '福建诏安县', 'FJZAX');
INSERT INTO `area_dict` VALUES ('1119', '350625', '福建长泰县', 'FJCTX');
INSERT INTO `area_dict` VALUES ('1120', '350626', '福建东山县', 'FJDSX');
INSERT INTO `area_dict` VALUES ('1121', '350627', '福建南靖县', 'FJNJX');
INSERT INTO `area_dict` VALUES ('1122', '350628', '福建平和县', 'FJPHX');
INSERT INTO `area_dict` VALUES ('1123', '350629', '福建华安县', 'FJHAX');
INSERT INTO `area_dict` VALUES ('1124', '350681', '福建龙海市', 'FJLHS');
INSERT INTO `area_dict` VALUES ('1125', '350700', '福建南平市', 'FJNPS');
INSERT INTO `area_dict` VALUES ('1126', '350721', '福建顺昌县', 'FJSCX');
INSERT INTO `area_dict` VALUES ('1127', '350722', '福建浦城县', 'FJPCX');
INSERT INTO `area_dict` VALUES ('1128', '350723', '福建光泽县', 'FJGZX');
INSERT INTO `area_dict` VALUES ('1129', '350724', '福建松溪县', 'FJSXX');
INSERT INTO `area_dict` VALUES ('1130', '350725', '福建政和县', 'FJZHX');
INSERT INTO `area_dict` VALUES ('1131', '350781', '福建邵武市', 'FJSWS');
INSERT INTO `area_dict` VALUES ('1132', '350782', '福建武夷山市', 'FJWYSS');
INSERT INTO `area_dict` VALUES ('1133', '350783', '福建建瓯市', 'FJJOS');
INSERT INTO `area_dict` VALUES ('1134', '350784', '福建建阳市', 'FJJYS');
INSERT INTO `area_dict` VALUES ('1135', '350800', '福建龙岩市', 'FJLYS');
INSERT INTO `area_dict` VALUES ('1136', '350821', '福建长汀县', 'FJCTX');
INSERT INTO `area_dict` VALUES ('1137', '350822', '福建永定县', 'FJYDX');
INSERT INTO `area_dict` VALUES ('1138', '350823', '福建上杭县', 'FJSHX');
INSERT INTO `area_dict` VALUES ('1139', '350824', '福建武平县', 'FJWPX');
INSERT INTO `area_dict` VALUES ('1140', '350825', '福建连城县', 'FJLCX');
INSERT INTO `area_dict` VALUES ('1141', '350881', '福建漳平市', 'FJZPS');
INSERT INTO `area_dict` VALUES ('1142', '350900', '福建宁德市', 'FJNDS');
INSERT INTO `area_dict` VALUES ('1143', '350921', '福建霞浦县', 'FJXPX');
INSERT INTO `area_dict` VALUES ('1144', '350922', '福建古田县', 'FJGTX');
INSERT INTO `area_dict` VALUES ('1145', '350923', '福建屏南县', 'FJPNX');
INSERT INTO `area_dict` VALUES ('1146', '350924', '福建寿宁县', 'FJSNX');
INSERT INTO `area_dict` VALUES ('1147', '350925', '福建周宁县', 'FJZNX');
INSERT INTO `area_dict` VALUES ('1148', '350926', '福建柘荣县', 'FJZRX');
INSERT INTO `area_dict` VALUES ('1149', '350981', '福建福安市', 'FJFAS');
INSERT INTO `area_dict` VALUES ('1150', '350982', '福建福鼎市', 'FJFDS');
INSERT INTO `area_dict` VALUES ('1151', '352100', '福建南平地区', 'FJNPDQ');
INSERT INTO `area_dict` VALUES ('1152', '352101', '福建南平市　', 'FJNPS');
INSERT INTO `area_dict` VALUES ('1153', '352102', '福建邵武市　', 'FJSWS');
INSERT INTO `area_dict` VALUES ('1154', '352103', '福建武夷山市　', 'FJWYSS');
INSERT INTO `area_dict` VALUES ('1155', '352104', '福建建瓯市　', 'FJJOS');
INSERT INTO `area_dict` VALUES ('1156', '352121', '福建顺昌县　', 'FJSCX');
INSERT INTO `area_dict` VALUES ('1157', '352122', '福建建阳县', 'FJJYX');
INSERT INTO `area_dict` VALUES ('1158', '350527', '福建金门县', 'FJJMX');
INSERT INTO `area_dict` VALUES ('1159', '352124', '福建浦城县　', 'FJPCX');
INSERT INTO `area_dict` VALUES ('1160', '352127', '福建光泽县　', 'FJGZX');
INSERT INTO `area_dict` VALUES ('1161', '352128', '福建松溪县　', 'FJSXX');
INSERT INTO `area_dict` VALUES ('1162', '352129', '福建政和县　', 'FJZHX');
INSERT INTO `area_dict` VALUES ('1163', '352200', '福建宁德地区', 'FJNDDQ');
INSERT INTO `area_dict` VALUES ('1164', '352201', '福建宁德市　', 'FJNDS');
INSERT INTO `area_dict` VALUES ('1165', '352202', '福建福安市　', 'FJFAS');
INSERT INTO `area_dict` VALUES ('1166', '342523', '安徽广德县　', 'AHGDX');
INSERT INTO `area_dict` VALUES ('1167', '342524', '安徽宁国县', 'AHNGX');
INSERT INTO `area_dict` VALUES ('1168', '342529', '安徽泾县　', 'AHJX');
INSERT INTO `area_dict` VALUES ('1169', '342530', '安徽旌德县　', 'AHJDX');
INSERT INTO `area_dict` VALUES ('1170', '342531', '安徽绩溪县　', 'AHJXX');
INSERT INTO `area_dict` VALUES ('1171', '342600', '安徽巢湖地区', 'AHCHDQ');
INSERT INTO `area_dict` VALUES ('1172', '342601', '安徽巢湖市　', 'AHCHS');
INSERT INTO `area_dict` VALUES ('1173', '342622', '安徽庐江县　', 'AHLJX');
INSERT INTO `area_dict` VALUES ('1174', '342623', '安徽无为县　', 'AHWWX');
INSERT INTO `area_dict` VALUES ('1175', '342625', '安徽含山县　', 'AHHSX');
INSERT INTO `area_dict` VALUES ('1176', '342626', '安徽和县　', 'AHHX');
INSERT INTO `area_dict` VALUES ('1177', '342900', '安徽池州地区', 'AHCZDQ');
INSERT INTO `area_dict` VALUES ('1178', '342901', '安徽贵池市　', 'AHGCS');
INSERT INTO `area_dict` VALUES ('1179', '342921', '安徽东至县　', 'AHDZX');
INSERT INTO `area_dict` VALUES ('1180', '342922', '安徽石台县　', 'AHSTX');
INSERT INTO `area_dict` VALUES ('1181', '342923', '安徽青阳县　', 'AHQYX');
INSERT INTO `area_dict` VALUES ('1182', '350000', '福建省', 'FJS');
INSERT INTO `area_dict` VALUES ('1183', '350100', '福建福州市', 'FJFZS');
INSERT INTO `area_dict` VALUES ('1184', '350101', '福建福州市辖区', 'FJFZSXQ');
INSERT INTO `area_dict` VALUES ('1185', '350121', '福建闽侯县', 'FJMHX');
INSERT INTO `area_dict` VALUES ('1186', '350122', '福建连江县', 'FJLJX');
INSERT INTO `area_dict` VALUES ('1187', '350123', '福建罗源县', 'FJLYX');
INSERT INTO `area_dict` VALUES ('1188', '350124', '福建闽清县', 'FJMQX');
INSERT INTO `area_dict` VALUES ('1189', '350125', '福建永泰县', 'FJYTX');
INSERT INTO `area_dict` VALUES ('1190', '350126', '福建长乐县', 'FJCLX');
INSERT INTO `area_dict` VALUES ('1191', '350128', '福建平潭县', 'FJPTX');
INSERT INTO `area_dict` VALUES ('1192', '350181', '福建福清市', 'FJFQS');
INSERT INTO `area_dict` VALUES ('1193', '350182', '福建长乐市', 'FJCLS');
INSERT INTO `area_dict` VALUES ('1194', '350200', '福建厦门市', 'FJSMS');
INSERT INTO `area_dict` VALUES ('1195', '350201', '福建厦门市辖区', 'FJXMSXQ');
INSERT INTO `area_dict` VALUES ('1196', '350221', '福建同安县', 'FJTAX');
INSERT INTO `area_dict` VALUES ('1197', '350300', '福建莆田市', 'FJPTS');
INSERT INTO `area_dict` VALUES ('1198', '350301', '福建莆田市辖区', 'FJPTSXQ');
INSERT INTO `area_dict` VALUES ('1199', '350321', '福建莆田县', 'FJPTX');
INSERT INTO `area_dict` VALUES ('1200', '350322', '福建仙游县', 'FJXYX');
INSERT INTO `area_dict` VALUES ('1201', '350400', '福建三明市', 'FJSMS');
INSERT INTO `area_dict` VALUES ('1202', '350401', '福建三明市辖区', 'FJSMSXQ');
INSERT INTO `area_dict` VALUES ('1203', '350421', '福建明溪县', 'FJMXX');
INSERT INTO `area_dict` VALUES ('1204', '350423', '福建清流县', 'FJQLX');
INSERT INTO `area_dict` VALUES ('1205', '350424', '福建宁化县', 'FJNHX');
INSERT INTO `area_dict` VALUES ('1206', '350425', '福建大田县', 'FJDTX');
INSERT INTO `area_dict` VALUES ('1207', '350426', '福建尤溪县', 'FJYXX');
INSERT INTO `area_dict` VALUES ('1208', '350427', '福建沙县', 'FJSX');
INSERT INTO `area_dict` VALUES ('1209', '350428', '福建将乐县', 'FJJLX');
INSERT INTO `area_dict` VALUES ('1210', '350429', '福建泰宁县', 'FJTNX');
INSERT INTO `area_dict` VALUES ('1211', '350430', '福建建宁县', 'FJJNX');
INSERT INTO `area_dict` VALUES ('1212', '350481', '福建永安市', 'FJYAS');
INSERT INTO `area_dict` VALUES ('1213', '350500', '福建泉州市', 'FJQZS');
INSERT INTO `area_dict` VALUES ('1214', '350501', '福建泉州市辖区', 'FJQZSXQ');
INSERT INTO `area_dict` VALUES ('1215', '350521', '福建惠安县', 'FJHAX');
INSERT INTO `area_dict` VALUES ('1216', '350524', '福建安溪县', 'FJAXX');
INSERT INTO `area_dict` VALUES ('1217', '350525', '福建永春县', 'FJYCX');
INSERT INTO `area_dict` VALUES ('1218', '350526', '福建德化县', 'FJDHX');
INSERT INTO `area_dict` VALUES ('1219', '342522', '安徽郎溪县　', 'AHLXX');
INSERT INTO `area_dict` VALUES ('1220', '341400', '安徽巢湖市', 'AHCHS');
INSERT INTO `area_dict` VALUES ('1221', '341421', '安徽庐江县', 'AHLJX');
INSERT INTO `area_dict` VALUES ('1222', '341422', '安徽无为县', 'AHWWX');
INSERT INTO `area_dict` VALUES ('1223', '341423', '安徽含山县', 'AHHSX');
INSERT INTO `area_dict` VALUES ('1224', '341424', '安徽和县', 'AHHX');
INSERT INTO `area_dict` VALUES ('1225', '341500', '安徽六安市', 'AHLAS');
INSERT INTO `area_dict` VALUES ('1226', '341521', '安徽寿县', 'AHSX');
INSERT INTO `area_dict` VALUES ('1227', '341522', '安徽霍邱县', 'AHHQX');
INSERT INTO `area_dict` VALUES ('1228', '341523', '安徽舒城县', 'AHSCX');
INSERT INTO `area_dict` VALUES ('1229', '341524', '安徽金寨县', 'AHJZX');
INSERT INTO `area_dict` VALUES ('1230', '341525', '安徽霍山县', 'AHHSX');
INSERT INTO `area_dict` VALUES ('1231', '341600', '安徽亳州市', 'AHBZS');
INSERT INTO `area_dict` VALUES ('1232', '341621', '安徽涡阳县', 'AHWYX');
INSERT INTO `area_dict` VALUES ('1233', '341622', '安徽蒙城县', 'AHMCX');
INSERT INTO `area_dict` VALUES ('1234', '341623', '安徽利辛县', 'AHLXX');
INSERT INTO `area_dict` VALUES ('1235', '341700', '安徽池州市', 'AHCZS');
INSERT INTO `area_dict` VALUES ('1236', '341701', '安徽市辖区', 'AHSXO');
INSERT INTO `area_dict` VALUES ('1237', '341702', '安徽贵池市', 'AHGCS');
INSERT INTO `area_dict` VALUES ('1238', '341721', '安徽东至县', 'AHDZX');
INSERT INTO `area_dict` VALUES ('1239', '341722', '安徽石台县', 'AHSTX');
INSERT INTO `area_dict` VALUES ('1240', '341723', '安徽青阳县', 'AHQYX');
INSERT INTO `area_dict` VALUES ('1241', '341800', '安徽宣城市', 'AHXCS');
INSERT INTO `area_dict` VALUES ('1242', '341821', '安徽郎溪县', 'AHLXX');
INSERT INTO `area_dict` VALUES ('1243', '341822', '安徽广德县', 'AHGDX');
INSERT INTO `area_dict` VALUES ('1244', '341823', '安徽泾县', 'AHJX');
INSERT INTO `area_dict` VALUES ('1245', '341824', '安徽绩溪县', 'AHJXX');
INSERT INTO `area_dict` VALUES ('1246', '341825', '安徽旌德县', 'AHJDX');
INSERT INTO `area_dict` VALUES ('1247', '341881', '安徽宁国市', 'AHNGS');
INSERT INTO `area_dict` VALUES ('1248', '342100', '安徽阜阳地区', 'AHFYDQ');
INSERT INTO `area_dict` VALUES ('1249', '342101', '安徽阜阳市　', 'AHFYS');
INSERT INTO `area_dict` VALUES ('1250', '342102', '安徽亳州市　', 'AHBZS');
INSERT INTO `area_dict` VALUES ('1251', '342103', '安徽界首市　', 'AHJSS');
INSERT INTO `area_dict` VALUES ('1252', '342122', '安徽临泉县　', 'AHLQX');
INSERT INTO `area_dict` VALUES ('1253', '342123', '安徽太和县　', 'AHTHX');
INSERT INTO `area_dict` VALUES ('1254', '342124', '安徽涡阳县　', 'AHWYX');
INSERT INTO `area_dict` VALUES ('1255', '342125', '安徽蒙城县　', 'AHMCX');
INSERT INTO `area_dict` VALUES ('1256', '342127', '安徽阜南县　', 'AHFNX');
INSERT INTO `area_dict` VALUES ('1257', '342128', '安徽颍上县　', 'AHYSX');
INSERT INTO `area_dict` VALUES ('1258', '342130', '安徽利辛县　', 'AHLXX');
INSERT INTO `area_dict` VALUES ('1259', '342200', '安徽宿县地区', 'AHSXDQ');
INSERT INTO `area_dict` VALUES ('1260', '342201', '安徽宿州市　', 'AHSZS');
INSERT INTO `area_dict` VALUES ('1261', '342221', '安徽砀山县　', 'AHDSX');
INSERT INTO `area_dict` VALUES ('1262', '342222', '安徽萧县　', 'AHXX');
INSERT INTO `area_dict` VALUES ('1263', '342224', '安徽灵璧县　', 'AHLBX');
INSERT INTO `area_dict` VALUES ('1264', '342225', '安徽泗县　', 'AHSX');
INSERT INTO `area_dict` VALUES ('1265', '342400', '安徽六安地区', 'AHLADQ');
INSERT INTO `area_dict` VALUES ('1266', '342401', '安徽六安市　', 'AHLAS');
INSERT INTO `area_dict` VALUES ('1267', '342422', '安徽寿县　', 'AHSX');
INSERT INTO `area_dict` VALUES ('1268', '342423', '安徽霍丘县', 'AHHQX');
INSERT INTO `area_dict` VALUES ('1269', '342425', '安徽舒城县　', 'AHSCX');
INSERT INTO `area_dict` VALUES ('1270', '342426', '安徽金寨县　', 'AHJZX');
INSERT INTO `area_dict` VALUES ('1271', '342427', '安徽霍山县　', 'AHHSX');
INSERT INTO `area_dict` VALUES ('1272', '341324', '安徽泗县', 'AHSX');
INSERT INTO `area_dict` VALUES ('1273', '342500', '安徽宣城地区', 'AHXCDQ');
INSERT INTO `area_dict` VALUES ('1274', '342501', '安徽宣州市', 'AHXZS');
INSERT INTO `area_dict` VALUES ('1275', '340223', '安徽南陵县', 'AHNLX');
INSERT INTO `area_dict` VALUES ('1276', '340300', '安徽蚌埠市', 'AHBBS');
INSERT INTO `area_dict` VALUES ('1277', '340301', '安徽蚌埠市辖区', 'AHBBSXQ');
INSERT INTO `area_dict` VALUES ('1278', '340321', '安徽怀远县', 'AHHYX');
INSERT INTO `area_dict` VALUES ('1279', '340322', '安徽五河县', 'AHWHX');
INSERT INTO `area_dict` VALUES ('1280', '340323', '安徽固镇县', 'AHGZX');
INSERT INTO `area_dict` VALUES ('1281', '340400', '安徽淮南市', 'AHHNS');
INSERT INTO `area_dict` VALUES ('1282', '340401', '安徽淮南市辖区', 'AHHNSXQ');
INSERT INTO `area_dict` VALUES ('1283', '340421', '安徽凤台县', 'AHFTX');
INSERT INTO `area_dict` VALUES ('1284', '340500', '安徽马鞍山市', 'AHMASS');
INSERT INTO `area_dict` VALUES ('1285', '340501', '安徽马鞍山市辖区', 'AHMASSXQ');
INSERT INTO `area_dict` VALUES ('1286', '340521', '安徽当涂县', 'AHDTX');
INSERT INTO `area_dict` VALUES ('1287', '340600', '安徽淮北市', 'AHHBS');
INSERT INTO `area_dict` VALUES ('1288', '340601', '安徽淮北市辖区', 'AHHBSXQ');
INSERT INTO `area_dict` VALUES ('1289', '340621', '安徽濉溪县', 'AHSXX');
INSERT INTO `area_dict` VALUES ('1290', '340700', '安徽铜陵市', 'AHTLS');
INSERT INTO `area_dict` VALUES ('1291', '340701', '安徽铜陵市辖区', 'AHTLSXQ');
INSERT INTO `area_dict` VALUES ('1292', '340721', '安徽铜陵县', 'AHTLX');
INSERT INTO `area_dict` VALUES ('1293', '340800', '安徽安庆市', 'AHAQS');
INSERT INTO `area_dict` VALUES ('1294', '340801', '安徽安庆市辖区', 'AHAQSXQ');
INSERT INTO `area_dict` VALUES ('1295', '340821', '安徽桐城县', 'AHTCX');
INSERT INTO `area_dict` VALUES ('1296', '340822', '安徽怀宁县', 'AHHNX');
INSERT INTO `area_dict` VALUES ('1297', '340823', '安徽枞阳县', 'AHCYX');
INSERT INTO `area_dict` VALUES ('1298', '340824', '安徽潜山县', 'AHQSX');
INSERT INTO `area_dict` VALUES ('1299', '340825', '安徽太湖县', 'AHTHX');
INSERT INTO `area_dict` VALUES ('1300', '340826', '安徽宿松县', 'AHSSX');
INSERT INTO `area_dict` VALUES ('1301', '340827', '安徽望江县', 'AHWJX');
INSERT INTO `area_dict` VALUES ('1302', '340828', '安徽岳西县', 'AHYXX');
INSERT INTO `area_dict` VALUES ('1303', '340881', '安徽桐城市', 'AHTCS');
INSERT INTO `area_dict` VALUES ('1304', '341000', '安徽黄山市', 'AHHSS');
INSERT INTO `area_dict` VALUES ('1305', '341001', '安徽黄山市辖区', 'AHHSSXQ');
INSERT INTO `area_dict` VALUES ('1306', '341021', '安徽歙县', 'AHXX');
INSERT INTO `area_dict` VALUES ('1307', '341022', '安徽休宁县', 'AHXNX');
INSERT INTO `area_dict` VALUES ('1308', '341023', '安徽黟县', 'AHYX');
INSERT INTO `area_dict` VALUES ('1309', '341024', '安徽祁门县', 'AHQMX');
INSERT INTO `area_dict` VALUES ('1310', '341100', '安徽滁州市', 'AHCZS');
INSERT INTO `area_dict` VALUES ('1311', '341101', '安徽滁州市辖区', 'AHCZSXQ');
INSERT INTO `area_dict` VALUES ('1312', '341122', '安徽来安县', 'AHLAX');
INSERT INTO `area_dict` VALUES ('1313', '341124', '安徽全椒县', 'AHQJX');
INSERT INTO `area_dict` VALUES ('1314', '341125', '安徽定远县', 'AHDYX');
INSERT INTO `area_dict` VALUES ('1315', '341126', '安徽凤阳县', 'AHFYX');
INSERT INTO `area_dict` VALUES ('1316', '341127', '安徽嘉山县', 'AHJSX');
INSERT INTO `area_dict` VALUES ('1317', '341181', '安徽天长市', 'AHTCS');
INSERT INTO `area_dict` VALUES ('1318', '341182', '安徽明光市', 'AHMGS');
INSERT INTO `area_dict` VALUES ('1319', '341200', '安徽阜阳市', 'AHFYS');
INSERT INTO `area_dict` VALUES ('1320', '341221', '安徽临泉县', 'AHLQX');
INSERT INTO `area_dict` VALUES ('1321', '341222', '安徽太和县', 'AHTHX');
INSERT INTO `area_dict` VALUES ('1322', '341225', '安徽阜南县', 'AHFNX');
INSERT INTO `area_dict` VALUES ('1323', '341226', '安徽颍上县', 'AHYSX');
INSERT INTO `area_dict` VALUES ('1324', '340222', '安徽繁昌县', 'AHFCX');
INSERT INTO `area_dict` VALUES ('1325', '341282', '安徽界首市', 'AHJSS');
INSERT INTO `area_dict` VALUES ('1326', '341300', '安徽宿州市', 'AHSZS');
INSERT INTO `area_dict` VALUES ('1327', '341321', '安徽砀山县', 'AHDSX');
INSERT INTO `area_dict` VALUES ('1328', '341322', '安徽萧县', 'AHXX');
INSERT INTO `area_dict` VALUES ('1329', '341323', '安徽灵璧县', 'AHLBX');
INSERT INTO `area_dict` VALUES ('1330', '330821', '浙江衢县', 'ZJQX');
INSERT INTO `area_dict` VALUES ('1331', '330822', '浙江常山县', 'ZJCSX');
INSERT INTO `area_dict` VALUES ('1332', '330824', '浙江开化县', 'ZJKHX');
INSERT INTO `area_dict` VALUES ('1333', '330825', '浙江龙游县', 'ZJLYX');
INSERT INTO `area_dict` VALUES ('1334', '330881', '浙江江山市', 'ZJJSS');
INSERT INTO `area_dict` VALUES ('1335', '330900', '浙江舟山市', 'ZJZSS');
INSERT INTO `area_dict` VALUES ('1336', '330901', '浙江舟山市辖区', 'ZJZSSXQ');
INSERT INTO `area_dict` VALUES ('1337', '330921', '浙江岱山县', 'ZJDSX');
INSERT INTO `area_dict` VALUES ('1338', '330922', '浙江嵊泗县', 'ZJSSX');
INSERT INTO `area_dict` VALUES ('1339', '331000', '浙江台州市', 'ZJTZS');
INSERT INTO `area_dict` VALUES ('1340', '331021', '浙江玉环县', 'ZJYHX');
INSERT INTO `area_dict` VALUES ('1341', '331022', '浙江三门县', 'ZJSMX');
INSERT INTO `area_dict` VALUES ('1342', '331023', '浙江天台县', 'ZJTTX');
INSERT INTO `area_dict` VALUES ('1343', '331024', '浙江仙居县', 'ZJXJX');
INSERT INTO `area_dict` VALUES ('1344', '331081', '浙江温岭市', 'ZJWLS');
INSERT INTO `area_dict` VALUES ('1345', '331082', '浙江临海市', 'ZJLHS');
INSERT INTO `area_dict` VALUES ('1346', '331100', '浙江丽水市', 'ZJLSS');
INSERT INTO `area_dict` VALUES ('1347', '331121', '浙江青田县', 'ZJQTX');
INSERT INTO `area_dict` VALUES ('1348', '331122', '浙江缙云县', 'ZJJYX');
INSERT INTO `area_dict` VALUES ('1349', '331123', '浙江遂昌县', 'ZJSCX');
INSERT INTO `area_dict` VALUES ('1350', '331124', '浙江松阳县', 'ZJSYX');
INSERT INTO `area_dict` VALUES ('1351', '331125', '浙江云和县', 'ZJYHX');
INSERT INTO `area_dict` VALUES ('1352', '331126', '浙江庆元县', 'ZJQYX');
INSERT INTO `area_dict` VALUES ('1353', '331127', '浙江景宁畲族自治县', 'ZJJNSZZZ');
INSERT INTO `area_dict` VALUES ('1354', '331181', '浙江龙泉市', 'ZJLQS');
INSERT INTO `area_dict` VALUES ('1355', '332500', '浙江丽水地区', 'ZJLSDQ');
INSERT INTO `area_dict` VALUES ('1356', '332501', '浙江丽水市　', 'ZJLSS');
INSERT INTO `area_dict` VALUES ('1357', '332502', '浙江龙泉市　', 'ZJLQS');
INSERT INTO `area_dict` VALUES ('1358', '332522', '浙江青田县　', 'ZJQTX');
INSERT INTO `area_dict` VALUES ('1359', '332523', '浙江云和县　', 'ZJYHX');
INSERT INTO `area_dict` VALUES ('1360', '332525', '浙江庆元县　', 'ZJQYX');
INSERT INTO `area_dict` VALUES ('1361', '332526', '浙江缙云县　', 'ZJJYX');
INSERT INTO `area_dict` VALUES ('1362', '332527', '浙江遂昌县　', 'ZJSCX');
INSERT INTO `area_dict` VALUES ('1363', '332528', '浙江松阳县　', 'ZJSYX');
INSERT INTO `area_dict` VALUES ('1364', '332529', '浙江景宁畲族自治县　', 'ZJJNSZZZ');
INSERT INTO `area_dict` VALUES ('1365', '332600', '浙江台州地区', 'ZJTZDQ');
INSERT INTO `area_dict` VALUES ('1366', '332601', '浙江椒江市', 'ZJJJS');
INSERT INTO `area_dict` VALUES ('1367', '332602', '浙江临海市　', 'ZJLHS');
INSERT INTO `area_dict` VALUES ('1368', '332603', '浙江黄岩市', 'ZJHYS');
INSERT INTO `area_dict` VALUES ('1369', '332623', '浙江温岭县', 'ZJWLX');
INSERT INTO `area_dict` VALUES ('1370', '332624', '浙江仙居县　', 'ZJXJX');
INSERT INTO `area_dict` VALUES ('1371', '332625', '浙江天台县　', 'ZJTTX');
INSERT INTO `area_dict` VALUES ('1372', '332626', '浙江三门县　', 'ZJSMX');
INSERT INTO `area_dict` VALUES ('1373', '332627', '浙江玉环县　', 'ZJYHX');
INSERT INTO `area_dict` VALUES ('1374', '340000', '安徽省', 'AHS');
INSERT INTO `area_dict` VALUES ('1375', '340100', '安徽合肥市', 'AHHFS');
INSERT INTO `area_dict` VALUES ('1376', '340101', '安徽合肥市辖区', 'AHHFSXQ');
INSERT INTO `area_dict` VALUES ('1377', '340121', '安徽长丰县', 'AHCFX');
INSERT INTO `area_dict` VALUES ('1378', '340122', '安徽肥东县', 'AHFDX');
INSERT INTO `area_dict` VALUES ('1379', '340123', '安徽肥西县', 'AHFXX');
INSERT INTO `area_dict` VALUES ('1380', '340200', '安徽芜湖市', 'AHWHS');
INSERT INTO `area_dict` VALUES ('1381', '340201', '安徽芜湖市辖区', 'AHWHSXQ');
INSERT INTO `area_dict` VALUES ('1382', '330801', '浙江衢州市辖区', 'ZJQZSXQ');
INSERT INTO `area_dict` VALUES ('1383', '340221', '安徽芜湖县', 'AHWHX');
INSERT INTO `area_dict` VALUES ('1384', '330127', '浙江淳安县', 'ZJCAX');
INSERT INTO `area_dict` VALUES ('1385', '330181', '浙江萧山市', 'ZJXSS');
INSERT INTO `area_dict` VALUES ('1386', '330182', '浙江建德市', 'ZJJDS');
INSERT INTO `area_dict` VALUES ('1387', '330183', '浙江富阳市', 'ZJFYS');
INSERT INTO `area_dict` VALUES ('1388', '330185', '浙江临安市', 'ZJLAS');
INSERT INTO `area_dict` VALUES ('1389', '330200', '浙江宁波市', 'ZJNBS');
INSERT INTO `area_dict` VALUES ('1390', '330201', '浙江宁波市辖区', 'ZJNBSXQ');
INSERT INTO `area_dict` VALUES ('1391', '330225', '浙江象山县', 'ZJXSX');
INSERT INTO `area_dict` VALUES ('1392', '330226', '浙江宁海县', 'ZJNHX');
INSERT INTO `area_dict` VALUES ('1393', '330227', '浙江鄞县', 'ZJYX');
INSERT INTO `area_dict` VALUES ('1394', '330281', '浙江余姚市', 'ZJYYS');
INSERT INTO `area_dict` VALUES ('1395', '330282', '浙江慈溪市', 'ZJCXS');
INSERT INTO `area_dict` VALUES ('1396', '330283', '浙江奉化市', 'ZJFHS');
INSERT INTO `area_dict` VALUES ('1397', '330300', '浙江温州市', 'ZJWZS');
INSERT INTO `area_dict` VALUES ('1398', '330301', '浙江温州市辖区', 'ZJWZSXQ');
INSERT INTO `area_dict` VALUES ('1399', '330322', '浙江洞头县', 'ZJDTX');
INSERT INTO `area_dict` VALUES ('1400', '330324', '浙江永嘉县', 'ZJYJX');
INSERT INTO `area_dict` VALUES ('1401', '330326', '浙江平阳县', 'ZJPYX');
INSERT INTO `area_dict` VALUES ('1402', '330327', '浙江苍南县', 'ZJCNX');
INSERT INTO `area_dict` VALUES ('1403', '330328', '浙江文成县', 'ZJWCX');
INSERT INTO `area_dict` VALUES ('1404', '330329', '浙江泰顺县', 'ZJTSX');
INSERT INTO `area_dict` VALUES ('1405', '330381', '浙江瑞安市', 'ZJRAS');
INSERT INTO `area_dict` VALUES ('1406', '330382', '浙江乐清市', 'ZJLQS');
INSERT INTO `area_dict` VALUES ('1407', '330400', '浙江嘉兴市', 'ZJJXS');
INSERT INTO `area_dict` VALUES ('1408', '330401', '浙江嘉兴市辖区', 'ZJJXSXQ');
INSERT INTO `area_dict` VALUES ('1409', '330421', '浙江嘉善县', 'ZJJSX');
INSERT INTO `area_dict` VALUES ('1410', '330424', '浙江海盐县', 'ZJHYX');
INSERT INTO `area_dict` VALUES ('1411', '330481', '浙江海宁市', 'ZJHNS');
INSERT INTO `area_dict` VALUES ('1412', '330482', '浙江平湖市', 'ZJPHS');
INSERT INTO `area_dict` VALUES ('1413', '330483', '浙江桐乡市', 'ZJTXS');
INSERT INTO `area_dict` VALUES ('1414', '330500', '浙江湖州市', 'ZJHZS');
INSERT INTO `area_dict` VALUES ('1415', '330501', '浙江湖州市辖区', 'ZJHZSXQ');
INSERT INTO `area_dict` VALUES ('1416', '330521', '浙江德清县', 'ZJDQX');
INSERT INTO `area_dict` VALUES ('1417', '330522', '浙江长兴县', 'ZJCXX');
INSERT INTO `area_dict` VALUES ('1418', '330523', '浙江安吉县', 'ZJAJX');
INSERT INTO `area_dict` VALUES ('1419', '330600', '浙江绍兴市', 'ZJSXS');
INSERT INTO `area_dict` VALUES ('1420', '330601', '浙江绍兴市辖区', 'ZJSXSXQ');
INSERT INTO `area_dict` VALUES ('1421', '330621', '浙江绍兴县', 'ZJSXX');
INSERT INTO `area_dict` VALUES ('1422', '330623', '浙江嵊县', 'ZJSX');
INSERT INTO `area_dict` VALUES ('1423', '330624', '浙江新昌县', 'ZJXCX');
INSERT INTO `area_dict` VALUES ('1424', '330681', '浙江诸暨市', 'ZJZJS');
INSERT INTO `area_dict` VALUES ('1425', '330682', '浙江上虞市', 'ZJSYS');
INSERT INTO `area_dict` VALUES ('1426', '330683', '浙江嵊州市', 'ZJSZS');
INSERT INTO `area_dict` VALUES ('1427', '330700', '浙江金华市', 'ZJJHS');
INSERT INTO `area_dict` VALUES ('1428', '330701', '浙江金华市辖区', 'ZJJHSXQ');
INSERT INTO `area_dict` VALUES ('1429', '330721', '浙江金华县', 'ZJJHX');
INSERT INTO `area_dict` VALUES ('1430', '330723', '浙江武义县', 'ZJWYX');
INSERT INTO `area_dict` VALUES ('1431', '330726', '浙江浦江县', 'ZJPJX');
INSERT INTO `area_dict` VALUES ('1432', '330727', '浙江磐安县', 'ZJPAX');
INSERT INTO `area_dict` VALUES ('1433', '330781', '浙江兰溪市', 'ZJLXS');
INSERT INTO `area_dict` VALUES ('1434', '330782', '浙江义乌市', 'ZJYWS');
INSERT INTO `area_dict` VALUES ('1435', '330125', '浙江余杭县', 'ZJYHX');
INSERT INTO `area_dict` VALUES ('1436', '330783', '浙江东阳市', 'ZJDYS');
INSERT INTO `area_dict` VALUES ('1437', '330784', '浙江永康市', 'ZJYKS');
INSERT INTO `area_dict` VALUES ('1438', '330800', '浙江衢州市', 'ZJQZS');
INSERT INTO `area_dict` VALUES ('1439', '320827', '江苏泗洪县　', 'JSSHX');
INSERT INTO `area_dict` VALUES ('1440', '320829', '江苏洪泽县', 'JSHZX');
INSERT INTO `area_dict` VALUES ('1441', '320830', '江苏盱眙县', 'JSXYX');
INSERT INTO `area_dict` VALUES ('1442', '320831', '江苏金湖县', 'JSJHX');
INSERT INTO `area_dict` VALUES ('1443', '320881', '江苏宿迁市　', 'JSSQS');
INSERT INTO `area_dict` VALUES ('1444', '320882', '江苏淮安市　', 'JSHAS');
INSERT INTO `area_dict` VALUES ('1445', '320900', '江苏盐城市', 'JSYCS');
INSERT INTO `area_dict` VALUES ('1446', '320901', '江苏盐城市辖区', 'JSYCSXQ');
INSERT INTO `area_dict` VALUES ('1447', '320921', '江苏响水县', 'JSXSX');
INSERT INTO `area_dict` VALUES ('1448', '320922', '江苏滨海县', 'JSBHX');
INSERT INTO `area_dict` VALUES ('1449', '320923', '江苏阜宁县', 'JSFNX');
INSERT INTO `area_dict` VALUES ('1450', '320924', '江苏射阳县', 'JSSYX');
INSERT INTO `area_dict` VALUES ('1451', '320925', '江苏建湖县', 'JSJHX');
INSERT INTO `area_dict` VALUES ('1452', '320926', '江苏大丰县', 'JSDFX');
INSERT INTO `area_dict` VALUES ('1453', '320928', '江苏盐都县', 'JSYDX');
INSERT INTO `area_dict` VALUES ('1454', '320981', '江苏东台市', 'JSDTS');
INSERT INTO `area_dict` VALUES ('1455', '320982', '江苏大丰市', 'JSDFS');
INSERT INTO `area_dict` VALUES ('1456', '321000', '江苏扬州市', 'JSYZS');
INSERT INTO `area_dict` VALUES ('1457', '321001', '江苏扬州市辖区', 'JSYZSXQ');
INSERT INTO `area_dict` VALUES ('1458', '321023', '江苏宝应县', 'JSBYX');
INSERT INTO `area_dict` VALUES ('1459', '321026', '江苏江都县', 'JSJDX');
INSERT INTO `area_dict` VALUES ('1460', '321027', '江苏邗江县', 'JSHJX');
INSERT INTO `area_dict` VALUES ('1461', '321028', '江苏泰县', 'JSTX');
INSERT INTO `area_dict` VALUES ('1462', '321081', '江苏仪征市', 'JSYZS');
INSERT INTO `area_dict` VALUES ('1463', '321082', '江苏泰州市　', 'JSTZS');
INSERT INTO `area_dict` VALUES ('1464', '321083', '江苏兴化市　', 'JSXHS');
INSERT INTO `area_dict` VALUES ('1465', '321084', '江苏高邮市', 'JSGYS');
INSERT INTO `area_dict` VALUES ('1466', '412925', '河南镇平县　', 'HNZPX');
INSERT INTO `area_dict` VALUES ('1467', '412926', '河南内乡县　', 'HNNXX');
INSERT INTO `area_dict` VALUES ('1468', '412927', '河南淅川县　', 'HNXCX');
INSERT INTO `area_dict` VALUES ('1469', '412928', '河南社旗县　', 'HNSQX');
INSERT INTO `area_dict` VALUES ('1470', '412929', '河南唐河县　', 'HNTHX');
INSERT INTO `area_dict` VALUES ('1471', '412931', '河南新野县　', 'HNXYX');
INSERT INTO `area_dict` VALUES ('1472', '412932', '河南桐柏县　', 'HNTBX');
INSERT INTO `area_dict` VALUES ('1473', '413000', '河南信阳地区', 'HNXYDQ');
INSERT INTO `area_dict` VALUES ('1474', '413001', '河南信阳市　', 'HNXYS');
INSERT INTO `area_dict` VALUES ('1475', '413021', '河南息县　', 'HNXX');
INSERT INTO `area_dict` VALUES ('1476', '413022', '河南淮滨县　', 'HNHBX');
INSERT INTO `area_dict` VALUES ('1477', '413023', '河南信阳县', 'HNXYX');
INSERT INTO `area_dict` VALUES ('1478', '413024', '河南潢川县　', 'HNHCX');
INSERT INTO `area_dict` VALUES ('1479', '413025', '河南光山县　', 'HNGSX');
INSERT INTO `area_dict` VALUES ('1480', '413026', '河南固始县　', 'HNGSX');
INSERT INTO `area_dict` VALUES ('1481', '413027', '河南商城县　', 'HNSCX');
INSERT INTO `area_dict` VALUES ('1482', '413028', '河南罗山县　', 'HNLSX');
INSERT INTO `area_dict` VALUES ('1483', '413029', '河南新县　', 'HNXX');
INSERT INTO `area_dict` VALUES ('1484', '420000', '湖北省', 'HBS');
INSERT INTO `area_dict` VALUES ('1485', '420100', '湖北武汉市', 'HBWHS');
INSERT INTO `area_dict` VALUES ('1486', '420101', '湖北武汉市辖区', 'HBWHSXQ');
INSERT INTO `area_dict` VALUES ('1487', '420122', '湖北武昌县', 'HBWCX');
INSERT INTO `area_dict` VALUES ('1488', '420123', '湖北黄陂县', 'HBHBX');
INSERT INTO `area_dict` VALUES ('1489', '420124', '湖北新洲县', 'HBXZX');
INSERT INTO `area_dict` VALUES ('1490', '420200', '湖北黄石市', 'HBHSS');
INSERT INTO `area_dict` VALUES ('1491', '420201', '湖北黄石市辖区', 'HBHSSXQ');
INSERT INTO `area_dict` VALUES ('1492', '420221', '湖北大冶县', 'HBDYX');
INSERT INTO `area_dict` VALUES ('1493', '420222', '湖北阳新县', 'HBYXX');
INSERT INTO `area_dict` VALUES ('1494', '420281', '湖北大冶市', 'HBDYS');
INSERT INTO `area_dict` VALUES ('1495', '420300', '湖北十堰市', 'HBSYS');
INSERT INTO `area_dict` VALUES ('1496', '420321', '湖北郧县', 'HBYX');
INSERT INTO `area_dict` VALUES ('1497', '420322', '湖北郧西县', 'HBYXX');
INSERT INTO `area_dict` VALUES ('1498', '420323', '湖北竹山县', 'HBZSX');
INSERT INTO `area_dict` VALUES ('1499', '420324', '湖北竹溪县', 'HBZXX');
INSERT INTO `area_dict` VALUES ('1500', '420325', '湖北房县', 'HBFX');
INSERT INTO `area_dict` VALUES ('1501', '420381', '湖北丹江口市', 'HBDJKS');
INSERT INTO `area_dict` VALUES ('1502', '420400', '湖北沙市市', 'HBSS');
INSERT INTO `area_dict` VALUES ('1503', '420500', '湖北宜昌市', 'HBYCS');
INSERT INTO `area_dict` VALUES ('1504', '420501', '湖北宜昌市辖区', 'HBYCSXQ');
INSERT INTO `area_dict` VALUES ('1505', '420521', '湖北宜昌县', 'HBYCX');
INSERT INTO `area_dict` VALUES ('1506', '420523', '湖北枝江县', 'HBZJX');
INSERT INTO `area_dict` VALUES ('1507', '420525', '湖北远安县', 'HBYAX');
INSERT INTO `area_dict` VALUES ('1508', '420526', '湖北兴山县', 'HBXSX');
INSERT INTO `area_dict` VALUES ('1509', '420527', '湖北秭归县', 'HBZGX');
INSERT INTO `area_dict` VALUES ('1510', '420528', '湖北长阳土家族自治县', 'HBCYTJZZ');
INSERT INTO `area_dict` VALUES ('1511', '420529', '湖北五峰土家族自治县', 'HBWFTJZZ');
INSERT INTO `area_dict` VALUES ('1512', '420581', '湖北宜都市', 'HBYDS');
INSERT INTO `area_dict` VALUES ('1513', '420582', '湖北当阳市', 'HBDYS');
INSERT INTO `area_dict` VALUES ('1514', '420583', '湖北枝江市', 'HBZJS');
INSERT INTO `area_dict` VALUES ('1515', '420600', '湖北襄樊市', 'HBXFS');
INSERT INTO `area_dict` VALUES ('1516', '420601', '湖北襄樊市辖区', 'HBXFSXQ');
INSERT INTO `area_dict` VALUES ('1517', '420621', '湖北襄阳县', 'HBXYX');
INSERT INTO `area_dict` VALUES ('1518', '412923', '河南西峡县　', 'HNXXX');
INSERT INTO `area_dict` VALUES ('1519', '411625', '河南郸城县', 'HNDCX');
INSERT INTO `area_dict` VALUES ('1520', '411626', '河南淮阳县', 'HNHYX');
INSERT INTO `area_dict` VALUES ('1521', '411627', '河南太康县', 'HNTKX');
INSERT INTO `area_dict` VALUES ('1522', '411628', '河南鹿邑县', 'HNLYX');
INSERT INTO `area_dict` VALUES ('1523', '411681', '河南项城市', 'HNXCS');
INSERT INTO `area_dict` VALUES ('1524', '411700', '河南驻马店市', 'HNZMDS');
INSERT INTO `area_dict` VALUES ('1525', '411721', '河南西平县', 'HNXPX');
INSERT INTO `area_dict` VALUES ('1526', '411722', '河南上蔡县', 'HNSCX');
INSERT INTO `area_dict` VALUES ('1527', '411723', '河南平舆县', 'HNPYX');
INSERT INTO `area_dict` VALUES ('1528', '411724', '河南正阳县', 'HNZYX');
INSERT INTO `area_dict` VALUES ('1529', '411725', '河南确山县', 'HNQSX');
INSERT INTO `area_dict` VALUES ('1530', '411726', '河南泌阳县', 'HNMYX');
INSERT INTO `area_dict` VALUES ('1531', '411727', '河南汝南县', 'HNRNX');
INSERT INTO `area_dict` VALUES ('1532', '411728', '河南遂平县', 'HNSPX');
INSERT INTO `area_dict` VALUES ('1533', '411729', '河南新蔡县', 'HNXCX');
INSERT INTO `area_dict` VALUES ('1534', '412300', '河南商丘地区', 'HNSQDQ');
INSERT INTO `area_dict` VALUES ('1535', '412301', '河南商丘市　', 'HNSQS');
INSERT INTO `area_dict` VALUES ('1536', '412321', '河南虞城县　', 'HNYCX');
INSERT INTO `area_dict` VALUES ('1537', '412322', '河南商丘县', 'HNSQX');
INSERT INTO `area_dict` VALUES ('1538', '412323', '河南民权县　', 'HNMQX');
INSERT INTO `area_dict` VALUES ('1539', '412324', '河南宁陵县　', 'HNNLX');
INSERT INTO `area_dict` VALUES ('1540', '412325', '河南睢县　', 'HNSX');
INSERT INTO `area_dict` VALUES ('1541', '412326', '河南夏邑县　', 'HNXYX');
INSERT INTO `area_dict` VALUES ('1542', '412327', '河南柘城县　', 'HNZCX');
INSERT INTO `area_dict` VALUES ('1543', '412328', '河南永城县', 'HNYCX');
INSERT INTO `area_dict` VALUES ('1544', '412700', '河南周口地区', 'HNZKDQ');
INSERT INTO `area_dict` VALUES ('1545', '412701', '河南周口市　', 'HNZKS');
INSERT INTO `area_dict` VALUES ('1546', '412702', '河南项城市　', 'HNXCS');
INSERT INTO `area_dict` VALUES ('1547', '412721', '河南扶沟县　', 'HNFGX');
INSERT INTO `area_dict` VALUES ('1548', '412722', '河南西华县　', 'HNXHX');
INSERT INTO `area_dict` VALUES ('1549', '412723', '河南商水县　', 'HNSSX');
INSERT INTO `area_dict` VALUES ('1550', '412724', '河南太康县　', 'HNTKX');
INSERT INTO `area_dict` VALUES ('1551', '412725', '河南鹿邑县　', 'HNLYX');
INSERT INTO `area_dict` VALUES ('1552', '412726', '河南郸城县　', 'HNDCX');
INSERT INTO `area_dict` VALUES ('1553', '412727', '河南淮阳县　', 'HNHYX');
INSERT INTO `area_dict` VALUES ('1554', '412728', '河南沈丘县　', 'HNSQX');
INSERT INTO `area_dict` VALUES ('1555', '412800', '河南驻马店地区', 'HNZMDDQ');
INSERT INTO `area_dict` VALUES ('1556', '412801', '河南驻马店市　', 'HNZMDS');
INSERT INTO `area_dict` VALUES ('1557', '412821', '河南确山县　', 'HNQSX');
INSERT INTO `area_dict` VALUES ('1558', '412822', '河南泌阳县　', 'HNBYX');
INSERT INTO `area_dict` VALUES ('1559', '412823', '河南遂平县　', 'HNSPX');
INSERT INTO `area_dict` VALUES ('1560', '412824', '河南西平县　', 'HNXPX');
INSERT INTO `area_dict` VALUES ('1561', '412825', '河南上蔡县　', 'HNSCX');
INSERT INTO `area_dict` VALUES ('1562', '412826', '河南汝南县　', 'HNRNX');
INSERT INTO `area_dict` VALUES ('1563', '412827', '河南平舆县　', 'HNPYX');
INSERT INTO `area_dict` VALUES ('1564', '412828', '河南新蔡县　', 'HNXCX');
INSERT INTO `area_dict` VALUES ('1565', '412829', '河南正阳县　', 'HNZYX');
INSERT INTO `area_dict` VALUES ('1566', '412900', '河南南阳地区', 'HNNYDQ');
INSERT INTO `area_dict` VALUES ('1567', '412901', '河南南阳市　', 'HNNYS');
INSERT INTO `area_dict` VALUES ('1568', '412902', '河南邓州市　', 'HNDZS');
INSERT INTO `area_dict` VALUES ('1569', '412921', '河南南召县　', 'HNNZX');
INSERT INTO `area_dict` VALUES ('1570', '412922', '河南方城县　', 'HNFCX');
INSERT INTO `area_dict` VALUES ('1571', '411624', '河南沈丘县', 'HNCQX');
INSERT INTO `area_dict` VALUES ('1572', '410926', '河南范县', 'HNFX');
INSERT INTO `area_dict` VALUES ('1573', '410927', '河南台前县', 'HNTQX');
INSERT INTO `area_dict` VALUES ('1574', '410928', '河南濮阳县', 'HNPYX');
INSERT INTO `area_dict` VALUES ('1575', '411000', '河南许昌市', 'HNXCS');
INSERT INTO `area_dict` VALUES ('1576', '411001', '河南许昌市辖区', 'HNXCSXQ');
INSERT INTO `area_dict` VALUES ('1577', '411023', '河南许昌县', 'HNXCX');
INSERT INTO `area_dict` VALUES ('1578', '411024', '河南鄢陵县', 'HNYLX');
INSERT INTO `area_dict` VALUES ('1579', '411025', '河南襄城县', 'HNXCX');
INSERT INTO `area_dict` VALUES ('1580', '411081', '河南禹州市', 'HNYZS');
INSERT INTO `area_dict` VALUES ('1581', '411082', '河南长葛市', 'HNCGS');
INSERT INTO `area_dict` VALUES ('1582', '411100', '河南漯河市', 'HNLHS');
INSERT INTO `area_dict` VALUES ('1583', '411101', '河南漯河市辖区', 'HNLHSXQ');
INSERT INTO `area_dict` VALUES ('1584', '411121', '河南舞阳县', 'HNWYX');
INSERT INTO `area_dict` VALUES ('1585', '411122', '河南临颖县', 'HNLYX');
INSERT INTO `area_dict` VALUES ('1586', '411123', '河南郾城县', 'HNYCX');
INSERT INTO `area_dict` VALUES ('1587', '411200', '河南三门峡市', 'HNSMXS');
INSERT INTO `area_dict` VALUES ('1588', '411201', '河南三门峡市辖区', 'HNSMXSXQ');
INSERT INTO `area_dict` VALUES ('1589', '411221', '河南渑池县', 'HNMCX');
INSERT INTO `area_dict` VALUES ('1590', '411222', '河南陕县', 'HNSX');
INSERT INTO `area_dict` VALUES ('1591', '411224', '河南卢氏县', 'HNLSX');
INSERT INTO `area_dict` VALUES ('1592', '411281', '河南义马市', 'HNYMS');
INSERT INTO `area_dict` VALUES ('1593', '411282', '河南灵宝市', 'HNLBS');
INSERT INTO `area_dict` VALUES ('1594', '411300', '河南南阳市', 'HNNYS');
INSERT INTO `area_dict` VALUES ('1595', '411321', '河南南召县', 'HNNSX');
INSERT INTO `area_dict` VALUES ('1596', '411322', '河南方城县', 'HNFCX');
INSERT INTO `area_dict` VALUES ('1597', '411323', '河南西峡县', 'HNXXX');
INSERT INTO `area_dict` VALUES ('1598', '411324', '河南镇平县', 'HNZPX');
INSERT INTO `area_dict` VALUES ('1599', '411325', '河南内乡县', 'HNNXX');
INSERT INTO `area_dict` VALUES ('1600', '411326', '河南淅川县', 'HNXCX');
INSERT INTO `area_dict` VALUES ('1601', '411327', '河南社旗县', 'HNSQX');
INSERT INTO `area_dict` VALUES ('1602', '411328', '河南唐河县', 'HNTHX');
INSERT INTO `area_dict` VALUES ('1603', '411329', '河南新野县', 'HNXYX');
INSERT INTO `area_dict` VALUES ('1604', '411330', '河南桐柏县', 'HNTBX');
INSERT INTO `area_dict` VALUES ('1605', '411381', '河南邓州市', 'HNDZS');
INSERT INTO `area_dict` VALUES ('1606', '411400', '河南商丘市', 'HNSQS');
INSERT INTO `area_dict` VALUES ('1607', '411421', '河南民权县', 'HNMQX');
INSERT INTO `area_dict` VALUES ('1608', '411422', '河南睢县', 'HNSX');
INSERT INTO `area_dict` VALUES ('1609', '411423', '河南宁陵县', 'HNNLX');
INSERT INTO `area_dict` VALUES ('1610', '411424', '河南柘城县', 'HNZCX');
INSERT INTO `area_dict` VALUES ('1611', '411425', '河南虞城县', 'HNYCX');
INSERT INTO `area_dict` VALUES ('1612', '411426', '河南夏邑县', 'HNXYX');
INSERT INTO `area_dict` VALUES ('1613', '411481', '河南永城市', 'HNYCS');
INSERT INTO `area_dict` VALUES ('1614', '411500', '河南信阳市', 'HNXYS');
INSERT INTO `area_dict` VALUES ('1615', '411521', '河南罗山县', 'HNLSX');
INSERT INTO `area_dict` VALUES ('1616', '411522', '河南光山县', 'HNGSX');
INSERT INTO `area_dict` VALUES ('1617', '411523', '河南新县', 'HNXX');
INSERT INTO `area_dict` VALUES ('1618', '411524', '河南商城县', 'HNSCX');
INSERT INTO `area_dict` VALUES ('1619', '411525', '河南固始县', 'HNGSX');
INSERT INTO `area_dict` VALUES ('1620', '411526', '河南潢川县', 'HNHCX');
INSERT INTO `area_dict` VALUES ('1621', '411527', '河南淮滨县', 'HNHBX');
INSERT INTO `area_dict` VALUES ('1622', '411528', '河南息县', 'HNXX');
INSERT INTO `area_dict` VALUES ('1623', '411600', '河南周口市', 'HNZKS');
INSERT INTO `area_dict` VALUES ('1624', '411621', '河南扶沟县', 'HNFGX');
INSERT INTO `area_dict` VALUES ('1625', '411622', '河南西华县', 'HNXHX');
INSERT INTO `area_dict` VALUES ('1626', '410923', '河南南乐县', 'HNNLX');
INSERT INTO `area_dict` VALUES ('1627', '411623', '河南商水县', 'HNSSX');
INSERT INTO `area_dict` VALUES ('1628', '410301', '河南洛阳市辖区', 'HNLYSXQ');
INSERT INTO `area_dict` VALUES ('1629', '410322', '河南孟津县', 'HNMJX');
INSERT INTO `area_dict` VALUES ('1630', '410323', '河南新安县', 'HNXAX');
INSERT INTO `area_dict` VALUES ('1631', '410324', '河南栾川县', 'HNLCX');
INSERT INTO `area_dict` VALUES ('1632', '410325', '河南嵩县', 'HNSX');
INSERT INTO `area_dict` VALUES ('1633', '410326', '河南汝阳县', 'HNRYX');
INSERT INTO `area_dict` VALUES ('1634', '410327', '河南宜阳县', 'HNYYX');
INSERT INTO `area_dict` VALUES ('1635', '410328', '河南洛宁县', 'HNLNX');
INSERT INTO `area_dict` VALUES ('1636', '410329', '河南伊川县', 'HNYCX');
INSERT INTO `area_dict` VALUES ('1637', '410381', '河南偃师市', 'HNYSS');
INSERT INTO `area_dict` VALUES ('1638', '410400', '河南平顶山市', 'HNPDSS');
INSERT INTO `area_dict` VALUES ('1639', '410401', '河南平顶山市辖区', 'HNPDSSXQ');
INSERT INTO `area_dict` VALUES ('1640', '410421', '河南宝丰县', 'HNBFX');
INSERT INTO `area_dict` VALUES ('1641', '410422', '河南叶县', 'HNYX');
INSERT INTO `area_dict` VALUES ('1642', '410423', '河南鲁山县', 'HNLSX');
INSERT INTO `area_dict` VALUES ('1643', '410425', '河南郏县', 'HNJX');
INSERT INTO `area_dict` VALUES ('1644', '410426', '河南襄城县　', 'HNXCX');
INSERT INTO `area_dict` VALUES ('1645', '410481', '河南舞钢市', 'HNWGS');
INSERT INTO `area_dict` VALUES ('1646', '410482', '河南汝州市', 'HNRZS');
INSERT INTO `area_dict` VALUES ('1647', '410500', '河南安阳市', 'HNAYS');
INSERT INTO `area_dict` VALUES ('1648', '410501', '河南安阳市辖区', 'HNAYSXQ');
INSERT INTO `area_dict` VALUES ('1649', '410521', '河南林县', 'HNLX');
INSERT INTO `area_dict` VALUES ('1650', '410522', '河南安阳县', 'HNAYX');
INSERT INTO `area_dict` VALUES ('1651', '410523', '河南汤阴县', 'HNTYX');
INSERT INTO `area_dict` VALUES ('1652', '410526', '河南滑县', 'HNHX');
INSERT INTO `area_dict` VALUES ('1653', '410527', '河南内黄县', 'HNNHX');
INSERT INTO `area_dict` VALUES ('1654', '410581', '河南林州市', 'HNLZS');
INSERT INTO `area_dict` VALUES ('1655', '410600', '河南鹤壁市', 'HNHBS');
INSERT INTO `area_dict` VALUES ('1656', '410601', '河南鹤壁市辖区', 'HNHBSXQ');
INSERT INTO `area_dict` VALUES ('1657', '410621', '河南浚县', 'HNJX');
INSERT INTO `area_dict` VALUES ('1658', '410622', '河南淇县', 'HNQX');
INSERT INTO `area_dict` VALUES ('1659', '410700', '河南新乡市', 'HNXXS');
INSERT INTO `area_dict` VALUES ('1660', '410701', '河南新乡市辖区', 'HNXXSXQ');
INSERT INTO `area_dict` VALUES ('1661', '410721', '河南新乡县', 'HNXXX');
INSERT INTO `area_dict` VALUES ('1662', '410724', '河南获嘉县', 'HNHJX');
INSERT INTO `area_dict` VALUES ('1663', '410725', '河南原阳县', 'HNYYX');
INSERT INTO `area_dict` VALUES ('1664', '410726', '河南延津县', 'HNYJX');
INSERT INTO `area_dict` VALUES ('1665', '410727', '河南封丘县', 'HNFQX');
INSERT INTO `area_dict` VALUES ('1666', '410728', '河南长垣县', 'HNCYX');
INSERT INTO `area_dict` VALUES ('1667', '410781', '河南卫辉市', 'HNWHS');
INSERT INTO `area_dict` VALUES ('1668', '410782', '河南辉县市', 'HNHXS');
INSERT INTO `area_dict` VALUES ('1669', '410800', '河南焦作市', 'HNJZS');
INSERT INTO `area_dict` VALUES ('1670', '410801', '河南焦作市辖区', 'HNJZSXQ');
INSERT INTO `area_dict` VALUES ('1671', '410821', '河南修武县', 'HNXWX');
INSERT INTO `area_dict` VALUES ('1672', '410822', '河南博爱县', 'HNBAX');
INSERT INTO `area_dict` VALUES ('1673', '410823', '河南武陟县', 'HNWZX');
INSERT INTO `area_dict` VALUES ('1674', '410825', '河南温县', 'HNWX');
INSERT INTO `area_dict` VALUES ('1675', '410826', '河南孟县', 'HNMX');
INSERT INTO `area_dict` VALUES ('1676', '410881', '河南济源市', 'HNJYS');
INSERT INTO `area_dict` VALUES ('1677', '410882', '河南沁阳市', 'HNQYS');
INSERT INTO `area_dict` VALUES ('1678', '410883', '河南孟州市', 'HNMZS');
INSERT INTO `area_dict` VALUES ('1679', '410900', '河南濮阳市', 'HNPYS');
INSERT INTO `area_dict` VALUES ('1680', '321085', '江苏泰兴市　', 'JSTXS');
INSERT INTO `area_dict` VALUES ('1681', '500223', '重庆潼南县', 'CQTNX');
INSERT INTO `area_dict` VALUES ('1682', '500224', '重庆铜梁县', 'CQTLX');
INSERT INTO `area_dict` VALUES ('1683', '500225', '重庆大足县', 'CQDZX');
INSERT INTO `area_dict` VALUES ('1684', '500226', '重庆荣昌县', 'CQRCX');
INSERT INTO `area_dict` VALUES ('1685', '500227', '重庆壁山县', 'CQBSX');
INSERT INTO `area_dict` VALUES ('1686', '500228', '重庆梁平县', 'CQLPX');
INSERT INTO `area_dict` VALUES ('1687', '500229', '重庆城口县', 'CQCKX');
INSERT INTO `area_dict` VALUES ('1688', '500230', '重庆丰都县', 'CQFDX');
INSERT INTO `area_dict` VALUES ('1689', '500231', '重庆垫江县', 'CQDJX');
INSERT INTO `area_dict` VALUES ('1690', '500232', '重庆武隆县', 'CQWLX');
INSERT INTO `area_dict` VALUES ('1691', '500233', '重庆忠县', 'CQZX');
INSERT INTO `area_dict` VALUES ('1692', '500234', '重庆开县', 'CQKX');
INSERT INTO `area_dict` VALUES ('1693', '500235', '重庆云阳县', 'CQYYX');
INSERT INTO `area_dict` VALUES ('1694', '500236', '重庆奉节县', 'CQFJX');
INSERT INTO `area_dict` VALUES ('1695', '500237', '重庆巫山县', 'CQWSX');
INSERT INTO `area_dict` VALUES ('1696', '500238', '重庆巫溪县', 'CQWXX');
INSERT INTO `area_dict` VALUES ('1697', '500240', '重庆石柱土家族自治县', 'CQSZTJZZ');
INSERT INTO `area_dict` VALUES ('1698', '500241', '重庆秀山土家族苗族自治县', 'CQXSTJZM');
INSERT INTO `area_dict` VALUES ('1699', '500242', '重庆酉阳家族苗族自治县', 'CQYYJZMZ');
INSERT INTO `area_dict` VALUES ('1700', '500243', '重庆彭水苗族土家族自治县', 'CQPSMZTJ');
INSERT INTO `area_dict` VALUES ('1701', '500381', '重庆江津市', 'CQJJS');
INSERT INTO `area_dict` VALUES ('1702', '500382', '重庆合川市', 'CQHCS');
INSERT INTO `area_dict` VALUES ('1703', '500383', '重庆永川市', 'CQYCS');
INSERT INTO `area_dict` VALUES ('1704', '500384', '重庆南川市', 'CQNCS');
INSERT INTO `area_dict` VALUES ('1705', '510000', '四川省', 'SCS');
INSERT INTO `area_dict` VALUES ('1706', '510100', '四川成都市', 'SCCDS');
INSERT INTO `area_dict` VALUES ('1707', '510101', '四川成都市辖区', 'SCCDSXQ');
INSERT INTO `area_dict` VALUES ('1708', '510121', '四川金堂县', 'SCJTX');
INSERT INTO `area_dict` VALUES ('1709', '510122', '四川双流县', 'SCSLX');
INSERT INTO `area_dict` VALUES ('1710', '510123', '四川温江县', 'SCWJX');
INSERT INTO `area_dict` VALUES ('1711', '510124', '四川郫县', 'SCPX');
INSERT INTO `area_dict` VALUES ('1712', '510125', '四川新都县', 'SCXDX');
INSERT INTO `area_dict` VALUES ('1713', '510128', '四川崇庆县', 'SCCQX');
INSERT INTO `area_dict` VALUES ('1714', '510129', '四川大邑县', 'SCDYX');
INSERT INTO `area_dict` VALUES ('1715', '510130', '四川邛崃县', 'SCQLX');
INSERT INTO `area_dict` VALUES ('1716', '510131', '四川蒲江县', 'SCPJX');
INSERT INTO `area_dict` VALUES ('1717', '510132', '四川新津县', 'SCXJX');
INSERT INTO `area_dict` VALUES ('1718', '510181', '四川都江堰市', 'SCDJYS');
INSERT INTO `area_dict` VALUES ('1719', '510182', '四川彭州市', 'SCPZS');
INSERT INTO `area_dict` VALUES ('1720', '510183', '四川邛崃市', 'SCQLS');
INSERT INTO `area_dict` VALUES ('1721', '510184', '四川崇州市', 'SCCZS');
INSERT INTO `area_dict` VALUES ('1722', '510200', '四川重庆市', 'SCCQS');
INSERT INTO `area_dict` VALUES ('1723', '500106', '重庆沙坪坝区', 'CQSPBO');
INSERT INTO `area_dict` VALUES ('1724', '460003', '海南儋州市　', 'HNDZS');
INSERT INTO `area_dict` VALUES ('1725', '460021', '海南琼山县', 'HNQSX');
INSERT INTO `area_dict` VALUES ('1726', '460022', '海南文昌县', 'HNWCX');
INSERT INTO `area_dict` VALUES ('1727', '460024', '海南万宁县', 'HNWNX');
INSERT INTO `area_dict` VALUES ('1728', '460025', '海南定安县　', 'HNDAX');
INSERT INTO `area_dict` VALUES ('1729', '460026', '海南屯昌县　', 'HNTCX');
INSERT INTO `area_dict` VALUES ('1730', '460027', '海南澄迈县　', 'HNCMX');
INSERT INTO `area_dict` VALUES ('1731', '460028', '海南临高县　', 'HNLGX');
INSERT INTO `area_dict` VALUES ('1732', '460030', '海南白沙黎族自治县　', 'HNBSLZZZ');
INSERT INTO `area_dict` VALUES ('1733', '460031', '海南昌江黎族自治县　', 'HNCJLZZZ');
INSERT INTO `area_dict` VALUES ('1734', '460032', '海南东方黎族自治县', 'HNDFLZZZ');
INSERT INTO `area_dict` VALUES ('1735', '460033', '海南乐东黎族自治县　', 'HNLDLZZZ');
INSERT INTO `area_dict` VALUES ('1736', '460034', '海南陵水黎族自治县　', 'HNLSLZZZ');
INSERT INTO `area_dict` VALUES ('1737', '460035', '海南保亭黎族苗族自治县　', 'HNBTLZMZ');
INSERT INTO `area_dict` VALUES ('1738', '460036', '海南琼中黎族苗族自治县　', 'HNQZLZMZ');
INSERT INTO `area_dict` VALUES ('1739', '460037', '海南西沙群岛　', 'HNXSQD');
INSERT INTO `area_dict` VALUES ('1740', '460038', '海南南沙群岛　', 'HNNSQD');
INSERT INTO `area_dict` VALUES ('1741', '460039', '海南中沙群岛的岛礁及其海域　', 'HNZSQDDD');
INSERT INTO `area_dict` VALUES ('1742', '460100', '海南海口市', 'HNHKS');
INSERT INTO `area_dict` VALUES ('1743', '460200', '海南三亚市', 'HNSYS');
INSERT INTO `area_dict` VALUES ('1744', '469001', '海南五指山市', 'HNWZSS');
INSERT INTO `area_dict` VALUES ('1745', '469002', '海南琼海市', 'HNQHS');
INSERT INTO `area_dict` VALUES ('1746', '469003', '海南儋州市', 'HNDZS');
INSERT INTO `area_dict` VALUES ('1747', '469004', '海南琼山市', 'HNQSS');
INSERT INTO `area_dict` VALUES ('1748', '469005', '海南文昌市', 'HNWCS');
INSERT INTO `area_dict` VALUES ('1749', '469006', '海南万宁市', 'HNWNS');
INSERT INTO `area_dict` VALUES ('1750', '469007', '海南东方市', 'HNDFS');
INSERT INTO `area_dict` VALUES ('1751', '469021', '海南定安县', 'HNDAX');
INSERT INTO `area_dict` VALUES ('1752', '469022', '海南屯昌县', 'HNTCX');
INSERT INTO `area_dict` VALUES ('1753', '469023', '海南澄迈县', 'HNCMX');
INSERT INTO `area_dict` VALUES ('1754', '469024', '海南临高县', 'HNLGX');
INSERT INTO `area_dict` VALUES ('1755', '469025', '海南白沙黎族自治县', 'HNBSLZZZ');
INSERT INTO `area_dict` VALUES ('1756', '469026', '海南昌江黎族自治县', 'HNCJLZZZ');
INSERT INTO `area_dict` VALUES ('1757', '469027', '海南乐东黎族自治县', 'HNLDLZZZ');
INSERT INTO `area_dict` VALUES ('1758', '469028', '海南陵水黎族自治县', 'HNLSLZZZ');
INSERT INTO `area_dict` VALUES ('1759', '469029', '海南保亭黎族苗族自治县', 'HNBTLZMZ');
INSERT INTO `area_dict` VALUES ('1760', '469030', '海南琼中黎族苗族自治县', 'HNQZLZMZ');
INSERT INTO `area_dict` VALUES ('1761', '469031', '海南西沙群岛', 'HNXSQD');
INSERT INTO `area_dict` VALUES ('1762', '469032', '海南南沙群岛', 'HNNSQD');
INSERT INTO `area_dict` VALUES ('1763', '469033', '海南中沙群岛的岛礁及其海域', 'HNZSQDDD');
INSERT INTO `area_dict` VALUES ('1764', '500000', '重庆市', 'CQS');
INSERT INTO `area_dict` VALUES ('1765', '500100', '重庆市辖区', 'CQSXO');
INSERT INTO `area_dict` VALUES ('1766', '500101', '重庆万州区', 'CQWZO');
INSERT INTO `area_dict` VALUES ('1767', '500102', '重庆涪陵区', 'CQFLO');
INSERT INTO `area_dict` VALUES ('1768', '500103', '重庆渝中区', 'CQYZO');
INSERT INTO `area_dict` VALUES ('1769', '500104', '重庆大渡口区', 'CQDDKO');
INSERT INTO `area_dict` VALUES ('1770', '500105', '重庆江北区', 'CQJBO');
INSERT INTO `area_dict` VALUES ('1771', '460002', '海南琼海市　', 'HNQHS');
INSERT INTO `area_dict` VALUES ('1772', '452331', '广西荔浦县　', 'GXLPX');
INSERT INTO `area_dict` VALUES ('1773', '452332', '广西恭城瑶族自治县　', 'GXGCYZZZ');
INSERT INTO `area_dict` VALUES ('1774', '452400', '广西贺州地区', 'GXHZDO');
INSERT INTO `area_dict` VALUES ('1775', '452402', '广西贺州市', 'GXHZS');
INSERT INTO `area_dict` VALUES ('1776', '452421', '广西岑溪县', 'GXCXX');
INSERT INTO `area_dict` VALUES ('1777', '452423', '广西藤县　', 'GXTX');
INSERT INTO `area_dict` VALUES ('1778', '452424', '广西昭平县', 'GXZPX');
INSERT INTO `area_dict` VALUES ('1779', '452425', '广西蒙山县　', 'GXMSX');
INSERT INTO `area_dict` VALUES ('1780', '452426', '广西贺县', 'GXHX');
INSERT INTO `area_dict` VALUES ('1781', '452427', '广西钟山县', 'GXZSX');
INSERT INTO `area_dict` VALUES ('1782', '452428', '广西富川瑶族自治县', 'GXFCYZZZ');
INSERT INTO `area_dict` VALUES ('1783', '452500', '广西玉林地区', 'GXYLDQ');
INSERT INTO `area_dict` VALUES ('1784', '452501', '广西玉林市　', 'GXYLS');
INSERT INTO `area_dict` VALUES ('1785', '452502', '广西贵港市　', 'GXGGS');
INSERT INTO `area_dict` VALUES ('1786', '452523', '广西桂平县', 'GXGPX');
INSERT INTO `area_dict` VALUES ('1787', '452524', '广西平南县　', 'GXPNX');
INSERT INTO `area_dict` VALUES ('1788', '452525', '广西容县　', 'GXRX');
INSERT INTO `area_dict` VALUES ('1789', '452526', '广西北流县', 'GXBLX');
INSERT INTO `area_dict` VALUES ('1790', '452527', '广西陆川县　', 'GXLCX');
INSERT INTO `area_dict` VALUES ('1791', '452528', '广西博白县　', 'GXBBX');
INSERT INTO `area_dict` VALUES ('1792', '452600', '广西百色地区', 'GXBSDO');
INSERT INTO `area_dict` VALUES ('1793', '452601', '广西百色市', 'GXBSS');
INSERT INTO `area_dict` VALUES ('1794', '452622', '广西田阳县', 'GXTYX');
INSERT INTO `area_dict` VALUES ('1795', '452623', '广西田东县', 'GXTDX');
INSERT INTO `area_dict` VALUES ('1796', '452624', '广西平果县', 'GXPGX');
INSERT INTO `area_dict` VALUES ('1797', '452625', '广西德保县', 'GXDBX');
INSERT INTO `area_dict` VALUES ('1798', '452626', '广西靖西县', 'GXJXX');
INSERT INTO `area_dict` VALUES ('1799', '452627', '广西那坡县', 'GXNPX');
INSERT INTO `area_dict` VALUES ('1800', '452628', '广西凌云县', 'GXLYX');
INSERT INTO `area_dict` VALUES ('1801', '452629', '广西乐业县', 'GXLYX');
INSERT INTO `area_dict` VALUES ('1802', '452630', '广西田林县', 'GXTLX');
INSERT INTO `area_dict` VALUES ('1803', '452631', '广西隆林各族自治县', 'GXLLGZZZ');
INSERT INTO `area_dict` VALUES ('1804', '452632', '广西西林县', 'GXXLX');
INSERT INTO `area_dict` VALUES ('1805', '452700', '广西河池地区', 'GXHCDO');
INSERT INTO `area_dict` VALUES ('1806', '452701', '广西河池市', 'GXHCS');
INSERT INTO `area_dict` VALUES ('1807', '452702', '广西宜州市', 'GXYZS');
INSERT INTO `area_dict` VALUES ('1808', '452723', '广西罗城仫佬族自治县', 'GXLCMLZZ');
INSERT INTO `area_dict` VALUES ('1809', '452724', '广西环江毛南族自治县', 'GXHJMNZZ');
INSERT INTO `area_dict` VALUES ('1810', '452725', '广西南丹县', 'GXNDX');
INSERT INTO `area_dict` VALUES ('1811', '452726', '广西天峨县', 'GXTEX');
INSERT INTO `area_dict` VALUES ('1812', '452727', '广西凤山县', 'GXFSX');
INSERT INTO `area_dict` VALUES ('1813', '452728', '广西东兰县', 'GXDLX');
INSERT INTO `area_dict` VALUES ('1814', '452729', '广西巴马瑶族自治县', 'GXBMYZZZ');
INSERT INTO `area_dict` VALUES ('1815', '452730', '广西都安瑶族自治县', 'GXDAYZZZ');
INSERT INTO `area_dict` VALUES ('1816', '452731', '广西大化瑶族自治县', 'GXDHYZZZ');
INSERT INTO `area_dict` VALUES ('1817', '452800', '广西钦州地区', 'GXQZDQ');
INSERT INTO `area_dict` VALUES ('1818', '452802', '广西钦州市　', 'GXQZS');
INSERT INTO `area_dict` VALUES ('1819', '452824', '广西灵山县　', 'GXLSX');
INSERT INTO `area_dict` VALUES ('1820', '452826', '广西浦北县　', 'GXPBX');
INSERT INTO `area_dict` VALUES ('1821', '460000', '海南省', 'HNS');
INSERT INTO `area_dict` VALUES ('1822', '460001', '海南通什市', 'HNTSS');
INSERT INTO `area_dict` VALUES ('1823', '452330', '广西平乐县　', 'GXPLX');
INSERT INTO `area_dict` VALUES ('1824', '450481', '广西岑溪市', 'GXCXS');
INSERT INTO `area_dict` VALUES ('1825', '450500', '广西北海市', 'GXBHS');
INSERT INTO `area_dict` VALUES ('1826', '450501', '广西北海市辖区', 'GXBHSXQ');
INSERT INTO `area_dict` VALUES ('1827', '450521', '广西合浦县', 'GXHPX');
INSERT INTO `area_dict` VALUES ('1828', '450600', '广西防城港市', 'GXFCGS');
INSERT INTO `area_dict` VALUES ('1829', '450601', '广西防城港市辖区', 'GXFCGSXQ');
INSERT INTO `area_dict` VALUES ('1830', '450621', '广西上思县', 'GXSSX');
INSERT INTO `area_dict` VALUES ('1831', '450681', '广西东兴市', 'GXDXS');
INSERT INTO `area_dict` VALUES ('1832', '450700', '广西钦州市', 'GXQZS');
INSERT INTO `area_dict` VALUES ('1833', '450721', '广西灵山县', 'GXLSX');
INSERT INTO `area_dict` VALUES ('1834', '450722', '广西浦北县', 'GXPBX');
INSERT INTO `area_dict` VALUES ('1835', '450800', '广西贵港市', 'GXGGS');
INSERT INTO `area_dict` VALUES ('1836', '450821', '广西平南县', 'GXPNX');
INSERT INTO `area_dict` VALUES ('1837', '450881', '广西桂平市', 'GXGPS');
INSERT INTO `area_dict` VALUES ('1838', '450900', '广西玉林市', 'GXYLS');
INSERT INTO `area_dict` VALUES ('1839', '450921', '广西容县', 'GXRX');
INSERT INTO `area_dict` VALUES ('1840', '450922', '广西陆川县', 'GXLCX');
INSERT INTO `area_dict` VALUES ('1841', '450923', '广西博白县', 'GXBBX');
INSERT INTO `area_dict` VALUES ('1842', '450924', '广西兴业县', 'GXXYX');
INSERT INTO `area_dict` VALUES ('1843', '450981', '广西北流市', 'GXBLS');
INSERT INTO `area_dict` VALUES ('1844', '452100', '广西南宁地区', 'GXNNDO');
INSERT INTO `area_dict` VALUES ('1845', '452101', '广西凭祥市', 'GXPXS');
INSERT INTO `area_dict` VALUES ('1846', '452122', '广西横县', 'GXHX');
INSERT INTO `area_dict` VALUES ('1847', '452123', '广西宾阳县', 'GXBYX');
INSERT INTO `area_dict` VALUES ('1848', '452124', '广西上林县', 'GXSLX');
INSERT INTO `area_dict` VALUES ('1849', '452126', '广西隆安县', 'GXLAX');
INSERT INTO `area_dict` VALUES ('1850', '452127', '广西马山县', 'GXMSX');
INSERT INTO `area_dict` VALUES ('1851', '452128', '广西扶绥县', 'GXFSX');
INSERT INTO `area_dict` VALUES ('1852', '452129', '广西崇左县', 'GXCZX');
INSERT INTO `area_dict` VALUES ('1853', '452130', '广西大新县', 'GXDXX');
INSERT INTO `area_dict` VALUES ('1854', '452131', '广西天等县', 'GXTDX');
INSERT INTO `area_dict` VALUES ('1855', '452132', '广西宁明县', 'GXNMX');
INSERT INTO `area_dict` VALUES ('1856', '452133', '广西龙州县', 'GXLZX');
INSERT INTO `area_dict` VALUES ('1857', '452200', '广西柳州地区', 'GXLZDO');
INSERT INTO `area_dict` VALUES ('1858', '452201', '广西合山市', 'GXHSS');
INSERT INTO `area_dict` VALUES ('1859', '452223', '广西鹿寨县', 'GXLZX');
INSERT INTO `area_dict` VALUES ('1860', '452224', '广西象州县', 'GXXZX');
INSERT INTO `area_dict` VALUES ('1861', '452225', '广西武宣县', 'GXWXX');
INSERT INTO `area_dict` VALUES ('1862', '452226', '广西来宾县', 'GXLBX');
INSERT INTO `area_dict` VALUES ('1863', '452227', '广西融安县', 'GXRAX');
INSERT INTO `area_dict` VALUES ('1864', '452228', '广西三江侗族自治县', 'GXSJDZZZ');
INSERT INTO `area_dict` VALUES ('1865', '452229', '广西融水苗族自治县', 'GXRSMZZZ');
INSERT INTO `area_dict` VALUES ('1866', '452230', '广西金秀瑶族自治县', 'GXJXYZZZ');
INSERT INTO `area_dict` VALUES ('1867', '452231', '广西忻城县', 'GXXCX');
INSERT INTO `area_dict` VALUES ('1868', '452300', '广西桂林地区', 'GXGLDQ');
INSERT INTO `area_dict` VALUES ('1869', '452322', '广西灵川县　', 'GXLCX');
INSERT INTO `area_dict` VALUES ('1870', '452323', '广西全州县　', 'GXQZX');
INSERT INTO `area_dict` VALUES ('1871', '452324', '广西兴安县　', 'GXXAX');
INSERT INTO `area_dict` VALUES ('1872', '452325', '广西永福县　', 'GXYFX');
INSERT INTO `area_dict` VALUES ('1873', '452327', '广西灌阳县　', 'GXGYX');
INSERT INTO `area_dict` VALUES ('1874', '452328', '广西龙胜各族自治县　', 'GXLSGZZZ');
INSERT INTO `area_dict` VALUES ('1875', '452329', '广西资源县　', 'GXZYX');
INSERT INTO `area_dict` VALUES ('1876', '450423', '广西蒙山县', 'GXMSX');
INSERT INTO `area_dict` VALUES ('1877', '441822', '广东英德县', 'GDYDX');
INSERT INTO `area_dict` VALUES ('1878', '441823', '广东阳山县', 'GDYSX');
INSERT INTO `area_dict` VALUES ('1879', '441824', '广东连县', 'GDLX');
INSERT INTO `area_dict` VALUES ('1880', '441825', '广东连山壮族瑶族自治县', 'GDLSZZYZ');
INSERT INTO `area_dict` VALUES ('1881', '441826', '广东连南瑶族自治县', 'GDLNYZZZ');
INSERT INTO `area_dict` VALUES ('1882', '441827', '广东清新县', 'GDQXX');
INSERT INTO `area_dict` VALUES ('1883', '441881', '广东英德市', 'GDYDS');
INSERT INTO `area_dict` VALUES ('1884', '321086', '江苏靖江市　', 'JSJJS');
INSERT INTO `area_dict` VALUES ('1885', '321088', '江苏江都市', 'JSJDS');
INSERT INTO `area_dict` VALUES ('1886', '321100', '江苏镇江市', 'JSZJS');
INSERT INTO `area_dict` VALUES ('1887', '321101', '江苏镇江市辖区', 'JSZJSXQ');
INSERT INTO `area_dict` VALUES ('1888', '321121', '江苏丹徒县', 'JSDTX');
INSERT INTO `area_dict` VALUES ('1889', '321123', '江苏句容县', 'JSJRX');
INSERT INTO `area_dict` VALUES ('1890', '321124', '江苏扬中县', 'JSYZX');
INSERT INTO `area_dict` VALUES ('1891', '321181', '江苏丹阳市', 'JSDYS');
INSERT INTO `area_dict` VALUES ('1892', '321182', '江苏扬中市', 'JSYZS');
INSERT INTO `area_dict` VALUES ('1893', '321183', '江苏句容市', 'JSJRS');
INSERT INTO `area_dict` VALUES ('1894', '321200', '江苏泰州市', 'JSTZS');
INSERT INTO `area_dict` VALUES ('1895', '321281', '江苏兴化市', 'JSXHS');
INSERT INTO `area_dict` VALUES ('1896', '321282', '江苏靖江市', 'JSJJS');
INSERT INTO `area_dict` VALUES ('1897', '321283', '江苏泰兴市', 'JSTXS');
INSERT INTO `area_dict` VALUES ('1898', '321284', '江苏姜堰市', 'JSJYS');
INSERT INTO `area_dict` VALUES ('1899', '321300', '江苏宿迁市', 'JSSQS');
INSERT INTO `area_dict` VALUES ('1900', '321321', '江苏宿豫县', 'JSSYX');
INSERT INTO `area_dict` VALUES ('1901', '321322', '江苏沭阳县', 'JSSYX');
INSERT INTO `area_dict` VALUES ('1902', '321323', '江苏泗阳县', 'JSSYX');
INSERT INTO `area_dict` VALUES ('1903', '321324', '江苏泗洪县', 'JSSHX');
INSERT INTO `area_dict` VALUES ('1904', '320826', '江苏涟水县', 'JSLSX');
INSERT INTO `area_dict` VALUES ('1905', '330000', '浙江省', 'ZJS');
INSERT INTO `area_dict` VALUES ('1906', '330100', '浙江杭州市', 'ZJHZS');
INSERT INTO `area_dict` VALUES ('1907', '330101', '浙江杭州市辖区', 'ZJHZSXQ');
INSERT INTO `area_dict` VALUES ('1908', '330122', '浙江桐庐县', 'ZJTLX');
INSERT INTO `area_dict` VALUES ('1909', '330123', '浙江富阳县', 'ZJFYX');
INSERT INTO `area_dict` VALUES ('1910', '330124', '浙江临安县', 'ZJLAX');
INSERT INTO `area_dict` VALUES ('1911', '320121', '江苏江宁县', 'JSJNX');
INSERT INTO `area_dict` VALUES ('1912', '320122', '江苏江浦县', 'JSJPX');
INSERT INTO `area_dict` VALUES ('1913', '320123', '江苏六合县', 'JSLHX');
INSERT INTO `area_dict` VALUES ('1914', '320124', '江苏溧水县', 'JSLSX');
INSERT INTO `area_dict` VALUES ('1915', '320125', '江苏高淳县', 'JSGCX');
INSERT INTO `area_dict` VALUES ('1916', '320200', '江苏无锡市', 'JSWXS');
INSERT INTO `area_dict` VALUES ('1917', '320201', '江苏无锡市辖区', 'JSWXSXQ');
INSERT INTO `area_dict` VALUES ('1918', '320222', '江苏无锡县', 'JSWXX');
INSERT INTO `area_dict` VALUES ('1919', '320281', '江苏江阴市', 'JSJYS');
INSERT INTO `area_dict` VALUES ('1920', '320282', '江苏宜兴市', 'JSYXS');
INSERT INTO `area_dict` VALUES ('1921', '320300', '江苏徐州市', 'JSXZS');
INSERT INTO `area_dict` VALUES ('1922', '320301', '江苏徐州市辖区', 'JSXZSXQ');
INSERT INTO `area_dict` VALUES ('1923', '320321', '江苏丰县', 'JSFX');
INSERT INTO `area_dict` VALUES ('1924', '320322', '江苏沛县', 'JSPX');
INSERT INTO `area_dict` VALUES ('1925', '320323', '江苏铜山县', 'JSTSX');
INSERT INTO `area_dict` VALUES ('1926', '320324', '江苏睢宁县', 'JSSNX');
INSERT INTO `area_dict` VALUES ('1927', '320381', '江苏新沂市', 'JSXYS');
INSERT INTO `area_dict` VALUES ('1928', '320382', '江苏邳州市', 'JSPZS');
INSERT INTO `area_dict` VALUES ('1929', '320400', '江苏常州市', 'JSCZS');
INSERT INTO `area_dict` VALUES ('1930', '320401', '江苏常州市辖区', 'JSCZSXQ');
INSERT INTO `area_dict` VALUES ('1931', '320421', '江苏武进县', 'JSWJX');
INSERT INTO `area_dict` VALUES ('1932', '320481', '江苏溧阳市', 'JSLYS');
INSERT INTO `area_dict` VALUES ('1933', '320482', '江苏金坛市', 'JSJTS');
INSERT INTO `area_dict` VALUES ('1934', '320483', '江苏武进市', 'JSWJS');
INSERT INTO `area_dict` VALUES ('1935', '320500', '江苏苏州市', 'JSSZS');
INSERT INTO `area_dict` VALUES ('1936', '320501', '江苏苏州市辖区', 'JSSZSXQ');
INSERT INTO `area_dict` VALUES ('1937', '320524', '江苏吴县', 'JSWX');
INSERT INTO `area_dict` VALUES ('1938', '320581', '江苏常熟市', 'JSCSS');
INSERT INTO `area_dict` VALUES ('1939', '320582', '江苏张家港市', 'JSZJGS');
INSERT INTO `area_dict` VALUES ('1940', '320583', '江苏昆山市', 'JSKSS');
INSERT INTO `area_dict` VALUES ('1941', '320584', '江苏吴江市', 'JSWJS');
INSERT INTO `area_dict` VALUES ('1942', '320585', '江苏江太仓市', 'JSJTCS');
INSERT INTO `area_dict` VALUES ('1943', '320600', '江苏南通市', 'JSNTS');
INSERT INTO `area_dict` VALUES ('1944', '320601', '江苏南通市辖区', 'JSNTSXQ');
INSERT INTO `area_dict` VALUES ('1945', '320621', '江苏海安县', 'JSHAX');
INSERT INTO `area_dict` VALUES ('1946', '320623', '江苏如东县', 'JSRDX');
INSERT INTO `area_dict` VALUES ('1947', '320625', '江苏海门县', 'JSHMX');
INSERT INTO `area_dict` VALUES ('1948', '320681', '江苏启东市', 'JSQDS');
INSERT INTO `area_dict` VALUES ('1949', '320682', '江苏如皋市', 'JSRGS');
INSERT INTO `area_dict` VALUES ('1950', '320683', '江苏通州市', 'JSTZS');
INSERT INTO `area_dict` VALUES ('1951', '320684', '江苏海门市', 'JSHMS');
INSERT INTO `area_dict` VALUES ('1952', '320700', '江苏连云港市', 'JSLYGS');
INSERT INTO `area_dict` VALUES ('1953', '320701', '江苏连云港市辖区', 'JSLYGSXQ');
INSERT INTO `area_dict` VALUES ('1954', '320721', '江苏赣榆县', 'JSGYX');
INSERT INTO `area_dict` VALUES ('1955', '320722', '江苏东海县', 'JSDHX');
INSERT INTO `area_dict` VALUES ('1956', '320723', '江苏灌云县', 'JSGYX');
INSERT INTO `area_dict` VALUES ('1957', '320724', '江苏灌南县', 'JSGNX');
INSERT INTO `area_dict` VALUES ('1958', '320800', '江苏淮安市', 'JSHAS');
INSERT INTO `area_dict` VALUES ('1959', '320801', '江苏淮阴市辖区', 'JSHYSXQ');
INSERT INTO `area_dict` VALUES ('1960', '320821', '江苏淮阴县', 'JSHYX');
INSERT INTO `area_dict` VALUES ('1961', '320822', '江苏灌南县　', 'JSGNX');
INSERT INTO `area_dict` VALUES ('1962', '320101', '江苏南京市辖区', 'JSNJSXQ');
INSERT INTO `area_dict` VALUES ('1963', '320823', '江苏沭阳县　', 'JSSYX');
INSERT INTO `area_dict` VALUES ('1964', '320825', '江苏泗阳县　', 'JSSYX');
INSERT INTO `area_dict` VALUES ('1965', '232102', '黑龙江尚志市　', 'HLJSZS');
INSERT INTO `area_dict` VALUES ('1966', '232103', '黑龙江五常市　', 'HLJWCS');
INSERT INTO `area_dict` VALUES ('1967', '232126', '黑龙江巴彦县　', 'HLJBYX');
INSERT INTO `area_dict` VALUES ('1968', '512532', '四川筠连县　', 'SCJLX');
INSERT INTO `area_dict` VALUES ('1969', '512533', '四川珙县　', 'SCGX');
INSERT INTO `area_dict` VALUES ('1970', '512534', '四川兴文县　', 'SCXWX');
INSERT INTO `area_dict` VALUES ('1971', '512535', '四川屏山县　', 'SCPSX');
INSERT INTO `area_dict` VALUES ('1972', '513000', '四川达川地区', 'SCDCDQ');
INSERT INTO `area_dict` VALUES ('1973', '513001', '四川达县市', 'SCDXS');
INSERT INTO `area_dict` VALUES ('1974', '513002', '四川万源市　', 'SCWYS');
INSERT INTO `area_dict` VALUES ('1975', '511524', '四川长宁县', 'SCCNX');
INSERT INTO `area_dict` VALUES ('1976', '513021', '四川达县　', 'SCDX');
INSERT INTO `area_dict` VALUES ('1977', '513022', '四川宜汉县', 'SCYHX');
INSERT INTO `area_dict` VALUES ('1978', '510923', '四川大英县', 'SCDYX');
INSERT INTO `area_dict` VALUES ('1979', '511000', '四川内江市', 'SCNJS');
INSERT INTO `area_dict` VALUES ('1980', '511001', '四川内江市辖区', 'SCNJSXQ');
INSERT INTO `area_dict` VALUES ('1981', '511022', '四川乐至县　', 'SCLZX');
INSERT INTO `area_dict` VALUES ('1982', '511023', '四川安岳县　', 'SCAYX');
INSERT INTO `area_dict` VALUES ('1983', '511024', '四川威远县', 'SCWYX');
INSERT INTO `area_dict` VALUES ('1984', '511025', '四川资中县', 'SCZZX');
INSERT INTO `area_dict` VALUES ('1985', '511027', '四川简阳县', 'SCJYX');
INSERT INTO `area_dict` VALUES ('1986', '511028', '四川隆昌县', 'SCLCX');
INSERT INTO `area_dict` VALUES ('1987', '511081', '四川资阳市　', 'SCZYS');
INSERT INTO `area_dict` VALUES ('1988', '511100', '四川乐山市', 'SCLSS');
INSERT INTO `area_dict` VALUES ('1989', '511101', '四川乐山市辖区', 'SCLSSXQ');
INSERT INTO `area_dict` VALUES ('1990', '511121', '四川仁寿县　', 'SCRSX');
INSERT INTO `area_dict` VALUES ('1991', '511122', '四川眉山县', 'SCMSX');
INSERT INTO `area_dict` VALUES ('1992', '511123', '四川犍为县', 'SCJWX');
INSERT INTO `area_dict` VALUES ('1993', '511124', '四川井研县', 'SCJYX');
INSERT INTO `area_dict` VALUES ('1994', '511126', '四川夹江县', 'SCJJX');
INSERT INTO `area_dict` VALUES ('1995', '511127', '四川洪雅县　', 'SCHYX');
INSERT INTO `area_dict` VALUES ('1996', '511128', '四川彭山县　', 'SCPSX');
INSERT INTO `area_dict` VALUES ('1997', '511129', '四川沐川县', 'SCMCX');
INSERT INTO `area_dict` VALUES ('1998', '511130', '四川青神县　', 'SCQSX');
INSERT INTO `area_dict` VALUES ('1999', '511131', '四川丹棱县　', 'SCDLX');
INSERT INTO `area_dict` VALUES ('2000', '511132', '四川峨边彝族自治县', 'SCEBYZZZ');
INSERT INTO `area_dict` VALUES ('2001', '511133', '四川马边彝族自治县', 'SCMBYZZZ');
INSERT INTO `area_dict` VALUES ('2002', '511181', '四川峨眉山市', 'SCEMSS');
INSERT INTO `area_dict` VALUES ('2003', '511200', '四川万县市', 'SCWXS');
INSERT INTO `area_dict` VALUES ('2004', '511201', '四川万县市辖区', 'SCWXSXQ');
INSERT INTO `area_dict` VALUES ('2005', '511221', '四川开县', 'SCKX');
INSERT INTO `area_dict` VALUES ('2006', '511222', '四川忠县', 'SCZX');
INSERT INTO `area_dict` VALUES ('2007', '511223', '四川梁平县', 'SCLPX');
INSERT INTO `area_dict` VALUES ('2008', '511224', '四川云阳县', 'SCYYX');
INSERT INTO `area_dict` VALUES ('2009', '511225', '四川奉节县', 'SCFJX');
INSERT INTO `area_dict` VALUES ('2010', '511226', '四川巫山县', 'SCWSX');
INSERT INTO `area_dict` VALUES ('2011', '511227', '四川巫溪县', 'SCWXX');
INSERT INTO `area_dict` VALUES ('2012', '511228', '四川城口县', 'SCCKX');
INSERT INTO `area_dict` VALUES ('2013', '511300', '四川南充市', 'SCNCS');
INSERT INTO `area_dict` VALUES ('2014', '511301', '四川南充市辖区', 'SCNCSXQ');
INSERT INTO `area_dict` VALUES ('2015', '511321', '四川南部县', 'SCNBX');
INSERT INTO `area_dict` VALUES ('2016', '511322', '四川营山县', 'SCYSX');
INSERT INTO `area_dict` VALUES ('2017', '511323', '四川蓬安县', 'SCPAX');
INSERT INTO `area_dict` VALUES ('2018', '511324', '四川仪陇县', 'SCYLX');
INSERT INTO `area_dict` VALUES ('2019', '511325', '四川西充县', 'SCXCX');
INSERT INTO `area_dict` VALUES ('2020', '511381', '四川阆中市', 'SCLZS');
INSERT INTO `area_dict` VALUES ('2021', '511400', '四川眉山市', 'SCMSS');
INSERT INTO `area_dict` VALUES ('2022', '511421', '四川仁寿县', 'SCRSX');
INSERT INTO `area_dict` VALUES ('2023', '511422', '四川彭山县', 'SCPSX');
INSERT INTO `area_dict` VALUES ('2024', '511423', '四川洪雅县', 'SCHYX');
INSERT INTO `area_dict` VALUES ('2025', '511424', '四川丹棱县', 'SCDLX');
INSERT INTO `area_dict` VALUES ('2026', '511425', '四川青神县', 'SCQSX');
INSERT INTO `area_dict` VALUES ('2027', '511500', '四川宜宾市', 'SCYBS');
INSERT INTO `area_dict` VALUES ('2028', '511521', '四川宜宾县', 'SCYBX');
INSERT INTO `area_dict` VALUES ('2029', '511522', '四川南溪县', 'SCNXX');
INSERT INTO `area_dict` VALUES ('2030', '511523', '四川江安县', 'SCJAX');
INSERT INTO `area_dict` VALUES ('2031', '510922', '四川射洪县', 'SCSHX');
INSERT INTO `area_dict` VALUES ('2032', '510221', '四川长寿县', 'SCCSX');
INSERT INTO `area_dict` VALUES ('2033', '510222', '四川巴县', 'SCBX');
INSERT INTO `area_dict` VALUES ('2034', '510223', '四川綦江县', 'SCQJX');
INSERT INTO `area_dict` VALUES ('2035', '510224', '四川江北县', 'SCJBX');
INSERT INTO `area_dict` VALUES ('2036', '510227', '四川潼南县', 'SCTNX');
INSERT INTO `area_dict` VALUES ('2037', '510228', '四川铜梁县', 'SCTLX');
INSERT INTO `area_dict` VALUES ('2038', '510230', '四川大足县', 'SCDZX');
INSERT INTO `area_dict` VALUES ('2039', '510231', '四川荣昌县', 'SCRCX');
INSERT INTO `area_dict` VALUES ('2040', '510232', '四川璧山县', 'SCBSX');
INSERT INTO `area_dict` VALUES ('2041', '510281', '四川永川市', 'SCYCS');
INSERT INTO `area_dict` VALUES ('2042', '510282', '四川江津市', 'SCJJS');
INSERT INTO `area_dict` VALUES ('2043', '510283', '四川合川市', 'SCHCS');
INSERT INTO `area_dict` VALUES ('2044', '510300', '四川自贡市', 'SCZGS');
INSERT INTO `area_dict` VALUES ('2045', '510301', '四川自贡市辖区', 'SCZGSXQ');
INSERT INTO `area_dict` VALUES ('2046', '510321', '四川荣县', 'SCRX');
INSERT INTO `area_dict` VALUES ('2047', '510322', '四川富顺县', 'SCFSX');
INSERT INTO `area_dict` VALUES ('2048', '510400', '四川攀枝花市', 'SCPZHS');
INSERT INTO `area_dict` VALUES ('2049', '510401', '四川攀枝花市辖区', 'SCPZHSXQ');
INSERT INTO `area_dict` VALUES ('2050', '510421', '四川米易县', 'SCMYX');
INSERT INTO `area_dict` VALUES ('2051', '510422', '四川盐边县', 'SCYBX');
INSERT INTO `area_dict` VALUES ('2052', '510500', '四川泸州市', 'SCLZS');
INSERT INTO `area_dict` VALUES ('2053', '510501', '四川泸州市辖区', 'SCLZSXQ');
INSERT INTO `area_dict` VALUES ('2054', '510521', '四川泸县', 'SCLX');
INSERT INTO `area_dict` VALUES ('2055', '510522', '四川合江县', 'SCHJX');
INSERT INTO `area_dict` VALUES ('2056', '510523', '四川纳溪县', 'SCNXX');
INSERT INTO `area_dict` VALUES ('2057', '510524', '四川叙永县', 'SCXYX');
INSERT INTO `area_dict` VALUES ('2058', '510525', '四川古蔺县', 'SCGLX');
INSERT INTO `area_dict` VALUES ('2059', '510600', '四川德阳市', 'SCDYS');
INSERT INTO `area_dict` VALUES ('2060', '510601', '四川德阳市辖区', 'SCDYSXQ');
INSERT INTO `area_dict` VALUES ('2061', '510622', '四川绵竹县', 'SCMZX');
INSERT INTO `area_dict` VALUES ('2062', '510623', '四川中江县', 'SCZJX');
INSERT INTO `area_dict` VALUES ('2063', '510625', '四川什邡县', 'SCSFX');
INSERT INTO `area_dict` VALUES ('2064', '510626', '四川罗江县', 'SCLJX');
INSERT INTO `area_dict` VALUES ('2065', '510681', '四川广汉市', 'SCGHS');
INSERT INTO `area_dict` VALUES ('2066', '510682', '四川什邡市', 'SCSFS');
INSERT INTO `area_dict` VALUES ('2067', '510683', '四川绵竹市', 'SCMZS');
INSERT INTO `area_dict` VALUES ('2068', '510700', '四川绵阳市', 'SCMYS');
INSERT INTO `area_dict` VALUES ('2069', '510701', '四川绵阳市辖区', 'SCMYSXQ');
INSERT INTO `area_dict` VALUES ('2070', '510722', '四川三台县', 'SCSTX');
INSERT INTO `area_dict` VALUES ('2071', '510723', '四川盐亭县', 'SCYTX');
INSERT INTO `area_dict` VALUES ('2072', '510724', '四川安县', 'SCAX');
INSERT INTO `area_dict` VALUES ('2073', '510725', '四川梓潼县', 'SCZTX');
INSERT INTO `area_dict` VALUES ('2074', '510726', '四川北川县', 'SCBCX');
INSERT INTO `area_dict` VALUES ('2075', '510727', '四川平武县', 'SCPWX');
INSERT INTO `area_dict` VALUES ('2076', '510781', '四川江油市', 'SCJYS');
INSERT INTO `area_dict` VALUES ('2077', '510800', '四川广元市', 'SCGYS');
INSERT INTO `area_dict` VALUES ('2078', '510801', '四川广元市辖区', 'SCGYSXQ');
INSERT INTO `area_dict` VALUES ('2079', '510821', '四川旺苍县', 'SCWCX');
INSERT INTO `area_dict` VALUES ('2080', '510822', '四川青川县', 'SCQCX');
INSERT INTO `area_dict` VALUES ('2081', '510823', '四川剑阁县', 'SCJGX');
INSERT INTO `area_dict` VALUES ('2082', '510824', '四川苍溪县', 'SCCXX');
INSERT INTO `area_dict` VALUES ('2083', '510900', '四川遂宁市', 'SCSNS');
INSERT INTO `area_dict` VALUES ('2084', '510901', '四川遂宁市辖区', 'SCSNSXQ');
INSERT INTO `area_dict` VALUES ('2085', '510921', '四川蓬溪县', 'SCPXX');
INSERT INTO `area_dict` VALUES ('2086', '510201', '四川重庆市辖区', 'SCCQSXQ');
INSERT INTO `area_dict` VALUES ('2087', '500107', '重庆九龙坡区', 'CQJLPO');
INSERT INTO `area_dict` VALUES ('2088', '500108', '重庆南岸区', 'CQNAO');
INSERT INTO `area_dict` VALUES ('2089', '500109', '重庆北碚区', 'CQBBO');
INSERT INTO `area_dict` VALUES ('2090', '500110', '重庆万盛区', 'CQWSO');
INSERT INTO `area_dict` VALUES ('2091', '500111', '重庆双桥区', 'CQSQO');
INSERT INTO `area_dict` VALUES ('2092', '500112', '重庆渝北区', 'CQYBO');
INSERT INTO `area_dict` VALUES ('2093', '500113', '重庆巴南区', 'CQBNO');
INSERT INTO `area_dict` VALUES ('2094', '500114', '重庆黔江区', 'CQQJO');
INSERT INTO `area_dict` VALUES ('2095', '500115', '重庆长寿区', 'CQCSO');
INSERT INTO `area_dict` VALUES ('2096', '500200', '重庆县', 'CQX');
INSERT INTO `area_dict` VALUES ('2097', '500222', '重庆綦江县', 'CQQJX');
INSERT INTO `area_dict` VALUES ('2098', '441882', '广东连州市', 'GDLZS');
INSERT INTO `area_dict` VALUES ('2099', '441900', '广东东莞市', 'GDDWS');
INSERT INTO `area_dict` VALUES ('2100', '442000', '广东中山市', 'GDZSS');
INSERT INTO `area_dict` VALUES ('2101', '445100', '广东潮州市', 'GDCZS');
INSERT INTO `area_dict` VALUES ('2102', '445101', '广东潮州市辖区', 'GDCZSXQ');
INSERT INTO `area_dict` VALUES ('2103', '445121', '广东潮安县', 'GDCAX');
INSERT INTO `area_dict` VALUES ('2104', '445122', '广东饶平县', 'GDRPX');
INSERT INTO `area_dict` VALUES ('2105', '445200', '广东揭阳市', 'GDJYS');
INSERT INTO `area_dict` VALUES ('2106', '445201', '广东揭阳市辖区', 'GDJYSXQ');
INSERT INTO `area_dict` VALUES ('2107', '445221', '广东揭东县', 'GDJDX');
INSERT INTO `area_dict` VALUES ('2108', '445222', '广东揭西县', 'GDJXX');
INSERT INTO `area_dict` VALUES ('2109', '445224', '广东惠来县', 'GDHLX');
INSERT INTO `area_dict` VALUES ('2110', '445281', '广东普宁市', 'GDPNS');
INSERT INTO `area_dict` VALUES ('2111', '445300', '广东云浮市', 'GDYFS');
INSERT INTO `area_dict` VALUES ('2112', '445321', '广东新兴县', 'GDXXX');
INSERT INTO `area_dict` VALUES ('2113', '445322', '广东郁南县', 'GDYNX');
INSERT INTO `area_dict` VALUES ('2114', '445323', '广东云安县', 'GDYAX');
INSERT INTO `area_dict` VALUES ('2115', '445381', '广东罗定市', 'GDLDS');
INSERT INTO `area_dict` VALUES ('2116', '450000', '广西壮族自治区', 'GXZZZZO');
INSERT INTO `area_dict` VALUES ('2117', '450100', '广西南宁市', 'GXNNS');
INSERT INTO `area_dict` VALUES ('2118', '450101', '广西南宁市辖区', 'GXNNSXQ');
INSERT INTO `area_dict` VALUES ('2119', '450121', '广西邕宁县', 'GXYNX');
INSERT INTO `area_dict` VALUES ('2120', '450122', '广西武鸣县', 'GXWMX');
INSERT INTO `area_dict` VALUES ('2121', '450200', '广西柳州市', 'GXLZS');
INSERT INTO `area_dict` VALUES ('2122', '450201', '广西柳州市辖区', 'GXLZSXQ');
INSERT INTO `area_dict` VALUES ('2123', '450221', '广西柳江县', 'GXLJX');
INSERT INTO `area_dict` VALUES ('2124', '450222', '广西柳城县', 'GXLCX');
INSERT INTO `area_dict` VALUES ('2125', '450300', '广西桂林市', 'GXGLS');
INSERT INTO `area_dict` VALUES ('2126', '450301', '广西桂林市辖区', 'GXGLSXQ');
INSERT INTO `area_dict` VALUES ('2127', '450321', '广西阳朔县', 'GXYSX');
INSERT INTO `area_dict` VALUES ('2128', '450322', '广西临桂县', 'GXLGX');
INSERT INTO `area_dict` VALUES ('2129', '450323', '广西灵川县', 'GXLCX');
INSERT INTO `area_dict` VALUES ('2130', '450324', '广西全州县', 'GXQZX');
INSERT INTO `area_dict` VALUES ('2131', '450325', '广西兴安县', 'GXXAX');
INSERT INTO `area_dict` VALUES ('2132', '450326', '广西永福县', 'GXYFX');
INSERT INTO `area_dict` VALUES ('2133', '450327', '广西灌阳县', 'GXGYX');
INSERT INTO `area_dict` VALUES ('2134', '450328', '广西龙胜各族自治县', 'GXLSGZZZ');
INSERT INTO `area_dict` VALUES ('2135', '450329', '广西资源县', 'GXZYX');
INSERT INTO `area_dict` VALUES ('2136', '450330', '广西平乐县', 'GXPLX');
INSERT INTO `area_dict` VALUES ('2137', '450331', '广西荔浦县', 'GXLPX');
INSERT INTO `area_dict` VALUES ('2138', '450332', '广西恭城瑶族自治县', 'GXGCYZZZ');
INSERT INTO `area_dict` VALUES ('2139', '450400', '广西梧州市', 'GXWZS');
INSERT INTO `area_dict` VALUES ('2140', '450401', '广西梧州市辖区', 'GXWZSXQ');
INSERT INTO `area_dict` VALUES ('2141', '450421', '广西苍梧县', 'GXCWX');
INSERT INTO `area_dict` VALUES ('2142', '450422', '广西藤县', 'GXTX');
INSERT INTO `area_dict` VALUES ('2143', '441821', '广东佛冈县', 'GDFGX');
INSERT INTO `area_dict` VALUES ('2144', '440981', '广东高州市', 'GDGZS');
INSERT INTO `area_dict` VALUES ('2145', '440982', '广东化州市', 'GDHZS');
INSERT INTO `area_dict` VALUES ('2146', '440983', '广东信宜市', 'GDXYS');
INSERT INTO `area_dict` VALUES ('2147', '441200', '广东肇庆市', 'GDZQS');
INSERT INTO `area_dict` VALUES ('2148', '441201', '广东肇庆市辖区', 'GDZQSXQ');
INSERT INTO `area_dict` VALUES ('2149', '441223', '广东广宁县', 'GDGNX');
INSERT INTO `area_dict` VALUES ('2150', '441224', '广东怀集县', 'GDHJX');
INSERT INTO `area_dict` VALUES ('2151', '441225', '广东封开县', 'GDFKX');
INSERT INTO `area_dict` VALUES ('2152', '441226', '广东德庆县', 'GDDQX');
INSERT INTO `area_dict` VALUES ('2153', '441228', '广东新兴县　', 'GDXXX');
INSERT INTO `area_dict` VALUES ('2154', '441229', '广东郁南县　', 'GDYNX');
INSERT INTO `area_dict` VALUES ('2155', '441281', '广东云浮市　', 'GDYFS');
INSERT INTO `area_dict` VALUES ('2156', '441282', '广东罗定市　', 'GDLDS');
INSERT INTO `area_dict` VALUES ('2157', '441283', '广东高要市', 'GDGYS');
INSERT INTO `area_dict` VALUES ('2158', '441284', '广东四会市', 'GDSHS');
INSERT INTO `area_dict` VALUES ('2159', '441300', '广东惠州市', 'GDHZS');
INSERT INTO `area_dict` VALUES ('2160', '441301', '广东惠州市辖区', 'GDHZSXQ');
INSERT INTO `area_dict` VALUES ('2161', '441321', '广东惠阳县', 'GDHYX');
INSERT INTO `area_dict` VALUES ('2162', '441322', '广东博罗县', 'GDBLX');
INSERT INTO `area_dict` VALUES ('2163', '441323', '广东惠东县', 'GDHDX');
INSERT INTO `area_dict` VALUES ('2164', '441324', '广东龙门县', 'GDLMX');
INSERT INTO `area_dict` VALUES ('2165', '441381', '广东惠阳市', 'GDHYS');
INSERT INTO `area_dict` VALUES ('2166', '441400', '广东梅州市', 'GDMZS');
INSERT INTO `area_dict` VALUES ('2167', '441401', '广东梅州市辖区', 'GDMZSXQ');
INSERT INTO `area_dict` VALUES ('2168', '441421', '广东梅县', 'GDMX');
INSERT INTO `area_dict` VALUES ('2169', '441422', '广东大埔县', 'GDDBX');
INSERT INTO `area_dict` VALUES ('2170', '441423', '广东丰顺县', 'GDFSX');
INSERT INTO `area_dict` VALUES ('2171', '441424', '广东五华县', 'GDWHX');
INSERT INTO `area_dict` VALUES ('2172', '441425', '广东兴宁县', 'GDXNX');
INSERT INTO `area_dict` VALUES ('2173', '441426', '广东平远县', 'GDPYX');
INSERT INTO `area_dict` VALUES ('2174', '441427', '广东蕉岭县', 'GDJLX');
INSERT INTO `area_dict` VALUES ('2175', '441481', '广东兴宁市', 'GDXNS');
INSERT INTO `area_dict` VALUES ('2176', '441500', '广东汕尾市', 'GDSWS');
INSERT INTO `area_dict` VALUES ('2177', '441501', '广东汕尾市辖区', 'GDSWSXQ');
INSERT INTO `area_dict` VALUES ('2178', '441521', '广东海丰县', 'GDHFX');
INSERT INTO `area_dict` VALUES ('2179', '441522', '广东陆丰县', 'GDLFX');
INSERT INTO `area_dict` VALUES ('2180', '441523', '广东陆河县', 'GDLHX');
INSERT INTO `area_dict` VALUES ('2181', '441581', '广东陆丰市', 'GDLFS');
INSERT INTO `area_dict` VALUES ('2182', '441600', '广东河源市', 'GDHYS');
INSERT INTO `area_dict` VALUES ('2183', '441601', '广东河源市辖区', 'GDHYSXQ');
INSERT INTO `area_dict` VALUES ('2184', '441621', '广东紫金县', 'GDZJX');
INSERT INTO `area_dict` VALUES ('2185', '441622', '广东龙川县', 'GDLCX');
INSERT INTO `area_dict` VALUES ('2186', '441623', '广东连平县', 'GDLPX');
INSERT INTO `area_dict` VALUES ('2187', '441624', '广东和平县', 'GDHPX');
INSERT INTO `area_dict` VALUES ('2188', '441625', '广东东源县', 'GDDYX');
INSERT INTO `area_dict` VALUES ('2189', '441700', '广东阳江市', 'GDYJS');
INSERT INTO `area_dict` VALUES ('2190', '441701', '广东阳江市辖区', 'GDYJSXQ');
INSERT INTO `area_dict` VALUES ('2191', '441721', '广东阳西县', 'GDYXX');
INSERT INTO `area_dict` VALUES ('2192', '441722', '广东阳春县', 'GDYCX');
INSERT INTO `area_dict` VALUES ('2193', '441723', '广东阳东县', 'GDYDX');
INSERT INTO `area_dict` VALUES ('2194', '441781', '广东阳春市', 'GDYCS');
INSERT INTO `area_dict` VALUES ('2195', '441800', '广东清远市', 'GDQYS');
INSERT INTO `area_dict` VALUES ('2196', '441801', '广东清远市辖区', 'GDQYSXQ');
INSERT INTO `area_dict` VALUES ('2197', '440924', '广东化州县', 'GDHZX');
INSERT INTO `area_dict` VALUES ('2198', '440182', '广东花都市', 'GDHDS');
INSERT INTO `area_dict` VALUES ('2199', '440183', '广东增城市', 'GDZCS');
INSERT INTO `area_dict` VALUES ('2200', '440184', '广东从化市', 'GDCHS');
INSERT INTO `area_dict` VALUES ('2201', '440200', '广东韶关市', 'GDSGS');
INSERT INTO `area_dict` VALUES ('2202', '440201', '广东韶关市辖区', 'GDSGSXQ');
INSERT INTO `area_dict` VALUES ('2203', '440221', '广东曲江县', 'GDQJX');
INSERT INTO `area_dict` VALUES ('2204', '440222', '广东始兴县', 'GDSXX');
INSERT INTO `area_dict` VALUES ('2205', '440223', '广东南雄县', 'GDNXX');
INSERT INTO `area_dict` VALUES ('2206', '440224', '广东仁化县', 'GDRHX');
INSERT INTO `area_dict` VALUES ('2207', '440225', '广东乐昌县', 'GDLCX');
INSERT INTO `area_dict` VALUES ('2208', '440229', '广东翁源县', 'GDWYX');
INSERT INTO `area_dict` VALUES ('2209', '440232', '广东乳源瑶族自治县', 'GDRYYZZZ');
INSERT INTO `area_dict` VALUES ('2210', '440233', '广东新丰县', 'GDXFX');
INSERT INTO `area_dict` VALUES ('2211', '440281', '广东乐昌市', 'GDLCS');
INSERT INTO `area_dict` VALUES ('2212', '440282', '广东南雄市', 'GDNXS');
INSERT INTO `area_dict` VALUES ('2213', '440300', '广东深圳市', 'GDSZS');
INSERT INTO `area_dict` VALUES ('2214', '440400', '广东珠海市', 'GDZHS');
INSERT INTO `area_dict` VALUES ('2215', '440401', '广东珠海市辖区', 'GDZHSXQ');
INSERT INTO `area_dict` VALUES ('2216', '440421', '广东斗门县', 'GDDMX');
INSERT INTO `area_dict` VALUES ('2217', '440500', '广东汕头市', 'GDSTS');
INSERT INTO `area_dict` VALUES ('2218', '440501', '广东汕头市辖区', 'GDSTSXQ');
INSERT INTO `area_dict` VALUES ('2219', '440521', '广东澄海县', 'GDCHX');
INSERT INTO `area_dict` VALUES ('2220', '440523', '广东南澳县', 'GDNAX');
INSERT INTO `area_dict` VALUES ('2221', '440582', '广东朝阳市', 'GDCYS');
INSERT INTO `area_dict` VALUES ('2222', '440583', '广东澄海市', 'GDCHS');
INSERT INTO `area_dict` VALUES ('2223', '440600', '广东佛山市', 'GDFSS');
INSERT INTO `area_dict` VALUES ('2224', '440601', '广东佛山市辖区', 'GDFSSXQ');
INSERT INTO `area_dict` VALUES ('2225', '440624', '广东高明县', 'GDGMX');
INSERT INTO `area_dict` VALUES ('2226', '440681', '广东顺德市', 'GDSDS');
INSERT INTO `area_dict` VALUES ('2227', '440682', '广东南海市', 'GDNHS');
INSERT INTO `area_dict` VALUES ('2228', '440683', '广东三水市', 'GDSSS');
INSERT INTO `area_dict` VALUES ('2229', '440684', '广东高明市', 'GDGMS');
INSERT INTO `area_dict` VALUES ('2230', '440700', '广东江门市', 'GDJMS');
INSERT INTO `area_dict` VALUES ('2231', '440701', '广东江门市辖区', 'GDJMSXQ');
INSERT INTO `area_dict` VALUES ('2232', '440723', '广东恩平县', 'GDEPX');
INSERT INTO `area_dict` VALUES ('2233', '440781', '广东台山市', 'GDTSS');
INSERT INTO `area_dict` VALUES ('2234', '440782', '广东新会市', 'GDXHS');
INSERT INTO `area_dict` VALUES ('2235', '440783', '广东开平市', 'GDKPS');
INSERT INTO `area_dict` VALUES ('2236', '440784', '广东鹤山市', 'GDHSS');
INSERT INTO `area_dict` VALUES ('2237', '440785', '广东恩平市', 'GDEPS');
INSERT INTO `area_dict` VALUES ('2238', '440800', '广东湛江市', 'GDZJS');
INSERT INTO `area_dict` VALUES ('2239', '440801', '广东湛江市辖区', 'GDZJSXQ');
INSERT INTO `area_dict` VALUES ('2240', '440821', '广东吴川县', 'GDWCX');
INSERT INTO `area_dict` VALUES ('2241', '440823', '广东遂溪县', 'GDSXX');
INSERT INTO `area_dict` VALUES ('2242', '440824', '广东海康县', 'GDHKX');
INSERT INTO `area_dict` VALUES ('2243', '440825', '广东徐闻县', 'GDXWX');
INSERT INTO `area_dict` VALUES ('2244', '440881', '广东廉江市', 'GDLJS');
INSERT INTO `area_dict` VALUES ('2245', '440882', '广东雷州市', 'GDLZS');
INSERT INTO `area_dict` VALUES ('2246', '440883', '广东吴川市', 'GDWCS');
INSERT INTO `area_dict` VALUES ('2247', '440900', '广东茂名市', 'GDMMS');
INSERT INTO `area_dict` VALUES ('2248', '440901', '广东茂名市辖区', 'GDMMSXQ');
INSERT INTO `area_dict` VALUES ('2249', '440921', '广东信宜县', 'GDXYX');
INSERT INTO `area_dict` VALUES ('2250', '440923', '广东电白县', 'GDDBX');
INSERT INTO `area_dict` VALUES ('2251', '440181', '广东番禹市', 'GDFYS');
INSERT INTO `area_dict` VALUES ('2252', '432800', '湖南郴州地区', 'HNCZDQ');
INSERT INTO `area_dict` VALUES ('2253', '432801', '湖南郴州市　', 'HNCZS');
INSERT INTO `area_dict` VALUES ('2254', '432802', '湖南资兴市　', 'HNZXS');
INSERT INTO `area_dict` VALUES ('2255', '432821', '湖南郴县', 'HNCX');
INSERT INTO `area_dict` VALUES ('2256', '432822', '湖南桂阳县　', 'HNGYX');
INSERT INTO `area_dict` VALUES ('2257', '432823', '湖南永兴县　', 'HNYXX');
INSERT INTO `area_dict` VALUES ('2258', '432824', '湖南宜章县　', 'HNYZX');
INSERT INTO `area_dict` VALUES ('2259', '432826', '湖南嘉禾县　', 'HNJHX');
INSERT INTO `area_dict` VALUES ('2260', '432827', '湖南临武县　', 'HNLWX');
INSERT INTO `area_dict` VALUES ('2261', '432828', '湖南汝城县　', 'HNRCX');
INSERT INTO `area_dict` VALUES ('2262', '432829', '湖南桂东县　', 'HNGDX');
INSERT INTO `area_dict` VALUES ('2263', '432831', '湖南安仁县　', 'HNARX');
INSERT INTO `area_dict` VALUES ('2264', '432900', '湖南零陵地区', 'HNLLDQ');
INSERT INTO `area_dict` VALUES ('2265', '432901', '湖南永州市　', 'HNYZS');
INSERT INTO `area_dict` VALUES ('2266', '432902', '湖南冷水滩市', 'HNLSTS');
INSERT INTO `area_dict` VALUES ('2267', '432922', '湖南东安县　', 'HNDAX');
INSERT INTO `area_dict` VALUES ('2268', '432923', '湖南道县　', 'HNDX');
INSERT INTO `area_dict` VALUES ('2269', '432924', '湖南宁远县　', 'HNNYX');
INSERT INTO `area_dict` VALUES ('2270', '432925', '湖南江永县　', 'HNJYX');
INSERT INTO `area_dict` VALUES ('2271', '432926', '湖南江华瑶族自治县　', 'HNJHYZZZ');
INSERT INTO `area_dict` VALUES ('2272', '432927', '湖南蓝山县　', 'HNLSX');
INSERT INTO `area_dict` VALUES ('2273', '432928', '湖南新田县　', 'HNXTX');
INSERT INTO `area_dict` VALUES ('2274', '432929', '湖南双牌县　', 'HNSPX');
INSERT INTO `area_dict` VALUES ('2275', '432930', '湖南祁阳县　', 'HNQYX');
INSERT INTO `area_dict` VALUES ('2276', '433000', '湖南怀化地区', 'HNHHDQ');
INSERT INTO `area_dict` VALUES ('2277', '433001', '湖南怀化市　', 'HNHHS');
INSERT INTO `area_dict` VALUES ('2278', '433002', '湖南洪江市　', 'HNHJS');
INSERT INTO `area_dict` VALUES ('2279', '433021', '湖南黔阳县', 'HNQYX');
INSERT INTO `area_dict` VALUES ('2280', '433022', '湖南沅陵县　', 'HNYLX');
INSERT INTO `area_dict` VALUES ('2281', '433023', '湖南辰溪县　', 'HNCXX');
INSERT INTO `area_dict` VALUES ('2282', '433024', '湖南溆浦县　', 'HNXPX');
INSERT INTO `area_dict` VALUES ('2283', '433025', '湖南麻阳苗族自治县　', 'HNMYMZZZ');
INSERT INTO `area_dict` VALUES ('2284', '433026', '湖南新晃侗族自治县　', 'HNXHDZZZ');
INSERT INTO `area_dict` VALUES ('2285', '433027', '湖南芷江侗族自治县　', 'HNZJDZZZ');
INSERT INTO `area_dict` VALUES ('2286', '433029', '湖南会同县　', 'HNHTX');
INSERT INTO `area_dict` VALUES ('2287', '433030', '湖南靖州苗族侗族自治县　', 'HNJZMZDZ');
INSERT INTO `area_dict` VALUES ('2288', '433031', '湖南通道侗族自治县　', 'HNTDDZZZ');
INSERT INTO `area_dict` VALUES ('2289', '433100', '湖南湘西土家族苗族自治州', 'HNXXTJZM');
INSERT INTO `area_dict` VALUES ('2290', '433101', '湖南吉首市', 'HNJSS');
INSERT INTO `area_dict` VALUES ('2291', '433122', '湖南泸溪县', 'HNLXX');
INSERT INTO `area_dict` VALUES ('2292', '433123', '湖南凤凰县', 'HNFHX');
INSERT INTO `area_dict` VALUES ('2293', '433124', '湖南花垣县', 'HNHYX');
INSERT INTO `area_dict` VALUES ('2294', '433125', '湖南保靖县', 'HNBJX');
INSERT INTO `area_dict` VALUES ('2295', '433126', '湖南古丈县', 'HNGZX');
INSERT INTO `area_dict` VALUES ('2296', '433127', '湖南永顺县', 'HNYSX');
INSERT INTO `area_dict` VALUES ('2297', '433130', '湖南龙山县', 'HNLSX');
INSERT INTO `area_dict` VALUES ('2298', '440000', '广东省', 'GDS');
INSERT INTO `area_dict` VALUES ('2299', '440100', '广东广州市', 'GDGZS');
INSERT INTO `area_dict` VALUES ('2300', '440101', '广东广州市辖区', 'GDGZSXQ');
INSERT INTO `area_dict` VALUES ('2301', '440122', '广东从化县', 'GDCHX');
INSERT INTO `area_dict` VALUES ('2302', '432524', '湖南新化县　', 'HNXHX');
INSERT INTO `area_dict` VALUES ('2303', '430922', '湖南桃江县', 'HNTJX');
INSERT INTO `area_dict` VALUES ('2304', '430923', '湖南安化县', 'HNAHX');
INSERT INTO `area_dict` VALUES ('2305', '430981', '湖南沅江市', 'HNYJS');
INSERT INTO `area_dict` VALUES ('2306', '431000', '湖南郴州市', 'HNCZS');
INSERT INTO `area_dict` VALUES ('2307', '431021', '湖南桂阳县', 'HNGYX');
INSERT INTO `area_dict` VALUES ('2308', '431022', '湖南宜章县', 'HNYZX');
INSERT INTO `area_dict` VALUES ('2309', '431023', '湖南永兴县', 'HNYXX');
INSERT INTO `area_dict` VALUES ('2310', '431024', '湖南嘉禾县', 'HNJHX');
INSERT INTO `area_dict` VALUES ('2311', '431025', '湖南临武县', 'HNLWX');
INSERT INTO `area_dict` VALUES ('2312', '431026', '湖南汝城县', 'HNRCX');
INSERT INTO `area_dict` VALUES ('2313', '431027', '湖南桂东县', 'HNGDX');
INSERT INTO `area_dict` VALUES ('2314', '431028', '湖南安仁县', 'HNARX');
INSERT INTO `area_dict` VALUES ('2315', '431081', '湖南资兴市', 'HNZXS');
INSERT INTO `area_dict` VALUES ('2316', '431100', '湖南永州市', 'HNYZS');
INSERT INTO `area_dict` VALUES ('2317', '431121', '湖南祁阳县', 'HNQYX');
INSERT INTO `area_dict` VALUES ('2318', '431122', '湖南东安县', 'HNDAX');
INSERT INTO `area_dict` VALUES ('2319', '431123', '湖南双牌县', 'HNSPX');
INSERT INTO `area_dict` VALUES ('2320', '431124', '湖南道县', 'HNDX');
INSERT INTO `area_dict` VALUES ('2321', '431125', '湖南江永县', 'HNJYX');
INSERT INTO `area_dict` VALUES ('2322', '431126', '湖南宁远县', 'HNNYX');
INSERT INTO `area_dict` VALUES ('2323', '431127', '湖南蓝山县', 'HNLSX');
INSERT INTO `area_dict` VALUES ('2324', '431128', '湖南新田县', 'HNXTX');
INSERT INTO `area_dict` VALUES ('2325', '431129', '湖南江华瑶族自治县', 'HNJHYZZZ');
INSERT INTO `area_dict` VALUES ('2326', '431200', '湖南怀化市', 'HNHHS');
INSERT INTO `area_dict` VALUES ('2327', '431221', '湖南中方县', 'HNZFX');
INSERT INTO `area_dict` VALUES ('2328', '431222', '湖南沅陵县', 'HNYLX');
INSERT INTO `area_dict` VALUES ('2329', '431223', '湖南辰溪县', 'HNCXX');
INSERT INTO `area_dict` VALUES ('2330', '431224', '湖南溆浦县', 'HNXPX');
INSERT INTO `area_dict` VALUES ('2331', '431225', '湖南会同县', 'HNHTX');
INSERT INTO `area_dict` VALUES ('2332', '431226', '湖南麻阳苗族自治县', 'HNMYMZZZ');
INSERT INTO `area_dict` VALUES ('2333', '431227', '湖南新晃侗族自治县', 'HNXHDZZZ');
INSERT INTO `area_dict` VALUES ('2334', '431228', '湖南芷江侗族自治县', 'HNZJDZZZ');
INSERT INTO `area_dict` VALUES ('2335', '431229', '湖南靖州苗族侗族自治县', 'HNJZMZDZ');
INSERT INTO `area_dict` VALUES ('2336', '431230', '湖南通道侗族自治县', 'HNTDDZZZ');
INSERT INTO `area_dict` VALUES ('2337', '431281', '湖南洪江市', 'HNHJS');
INSERT INTO `area_dict` VALUES ('2338', '431300', '湖南娄底市', 'HNLDS');
INSERT INTO `area_dict` VALUES ('2339', '431321', '湖南双峰县', 'HNSFX');
INSERT INTO `area_dict` VALUES ('2340', '431322', '湖南新化县', 'HNXHX');
INSERT INTO `area_dict` VALUES ('2341', '431381', '湖南冷水江市', 'HNLSJS');
INSERT INTO `area_dict` VALUES ('2342', '431382', '湖南涟源市', 'HNLYS');
INSERT INTO `area_dict` VALUES ('2343', '432300', '湖南益阳地区', 'HNYYDQ');
INSERT INTO `area_dict` VALUES ('2344', '432301', '湖南益阳市　', 'HNYYS');
INSERT INTO `area_dict` VALUES ('2345', '432302', '湖南沅江市　', 'HNYJS');
INSERT INTO `area_dict` VALUES ('2346', '432321', '湖南益阳县', 'HNYYX');
INSERT INTO `area_dict` VALUES ('2347', '432322', '湖南南县　', 'HNNX');
INSERT INTO `area_dict` VALUES ('2348', '432325', '湖南桃江县　', 'HNTJX');
INSERT INTO `area_dict` VALUES ('2349', '432326', '湖南安化县　', 'HNAHX');
INSERT INTO `area_dict` VALUES ('2350', '432500', '湖南娄底地区', 'HNLDDQ');
INSERT INTO `area_dict` VALUES ('2351', '432501', '湖南娄底市　', 'HNLDS');
INSERT INTO `area_dict` VALUES ('2352', '432502', '湖南冷水江市　', 'HNLSJS');
INSERT INTO `area_dict` VALUES ('2353', '432503', '湖南涟源市　', 'HNLYS');
INSERT INTO `area_dict` VALUES ('2354', '432522', '湖南双峰县　', 'HNSFX');
INSERT INTO `area_dict` VALUES ('2355', '430921', '湖南南县', 'HNNX');
INSERT INTO `area_dict` VALUES ('2356', '430223', '湖南攸县', 'HNYX');
INSERT INTO `area_dict` VALUES ('2357', '430224', '湖南茶陵县', 'HNCLX');
INSERT INTO `area_dict` VALUES ('2358', '430225', '湖南炎陵县', 'HNYLX');
INSERT INTO `area_dict` VALUES ('2359', '430281', '湖南醴陵市', 'HNLLS');
INSERT INTO `area_dict` VALUES ('2360', '430300', '湖南湘潭市', 'HNXTS');
INSERT INTO `area_dict` VALUES ('2361', '430301', '湖南湘潭市辖区', 'HMXTSXQ');
INSERT INTO `area_dict` VALUES ('2362', '430321', '湖南湘潭县', 'HNXTX');
INSERT INTO `area_dict` VALUES ('2363', '430381', '湖南湘乡市', 'HNXXS');
INSERT INTO `area_dict` VALUES ('2364', '430382', '湖南韶山市', 'HNSSS');
INSERT INTO `area_dict` VALUES ('2365', '430400', '湖南衡阳市', 'HNHYS');
INSERT INTO `area_dict` VALUES ('2366', '430401', '湖南衡阳市辖区', 'HNHYSXQ');
INSERT INTO `area_dict` VALUES ('2367', '430421', '湖南衡阳县', 'HNHYX');
INSERT INTO `area_dict` VALUES ('2368', '430422', '湖南衡南县', 'HNHNX');
INSERT INTO `area_dict` VALUES ('2369', '430423', '湖南衡山县', 'HNHSX');
INSERT INTO `area_dict` VALUES ('2370', '430424', '湖南衡东县', 'HNHDX');
INSERT INTO `area_dict` VALUES ('2371', '430425', '湖南常宁县', 'HNCNX');
INSERT INTO `area_dict` VALUES ('2372', '430426', '湖南祁东县', 'HNQDX');
INSERT INTO `area_dict` VALUES ('2373', '430481', '湖南耒阳市', 'HNLYS');
INSERT INTO `area_dict` VALUES ('2374', '430482', '湖南常宁市', 'HNCNS');
INSERT INTO `area_dict` VALUES ('2375', '430500', '湖南邵阳市', 'HNSYS');
INSERT INTO `area_dict` VALUES ('2376', '430501', '湖南邵阳市辖区', 'HNSYSXQ');
INSERT INTO `area_dict` VALUES ('2377', '430521', '湖南邵东县', 'HNSDX');
INSERT INTO `area_dict` VALUES ('2378', '430522', '湖南新邵县', 'HNXSX');
INSERT INTO `area_dict` VALUES ('2379', '430523', '湖南邵阳县', 'HNSYX');
INSERT INTO `area_dict` VALUES ('2380', '430524', '湖南隆回县', 'HNLHX');
INSERT INTO `area_dict` VALUES ('2381', '430525', '湖南洞口县', 'HNDKX');
INSERT INTO `area_dict` VALUES ('2382', '430526', '湖南武冈县', 'HNWGX');
INSERT INTO `area_dict` VALUES ('2383', '430527', '湖南绥宁县', 'HNSNX');
INSERT INTO `area_dict` VALUES ('2384', '430528', '湖南新宁县', 'HNXNX');
INSERT INTO `area_dict` VALUES ('2385', '430529', '湖南城步苗族自治县', 'HNCBMZZZ');
INSERT INTO `area_dict` VALUES ('2386', '430581', '湖南武冈市', 'HNWGS');
INSERT INTO `area_dict` VALUES ('2387', '430600', '湖南岳阳市', 'HNYYS');
INSERT INTO `area_dict` VALUES ('2388', '430601', '湖南岳阳市辖区', 'HNYYSXQ');
INSERT INTO `area_dict` VALUES ('2389', '430621', '湖南岳阳县', 'HNYYX');
INSERT INTO `area_dict` VALUES ('2390', '430623', '湖南华容县', 'HNHRX');
INSERT INTO `area_dict` VALUES ('2391', '430624', '湖南湘阴县', 'HNXYX');
INSERT INTO `area_dict` VALUES ('2392', '430626', '湖南平江县', 'HNPJX');
INSERT INTO `area_dict` VALUES ('2393', '430681', '湖南汩罗市', 'HNGLS');
INSERT INTO `area_dict` VALUES ('2394', '430682', '湖南临湘市', 'HNLXS');
INSERT INTO `area_dict` VALUES ('2395', '430700', '湖南常德市', 'HNCDS');
INSERT INTO `area_dict` VALUES ('2396', '430701', '湖南常德市辖区', 'HNCDSXQ');
INSERT INTO `area_dict` VALUES ('2397', '430721', '湖南安乡县', 'HNAXX');
INSERT INTO `area_dict` VALUES ('2398', '430722', '湖南汉寿县', 'HNHSX');
INSERT INTO `area_dict` VALUES ('2399', '430723', '湖南澧县', 'HNLX');
INSERT INTO `area_dict` VALUES ('2400', '430724', '湖南临澧县', 'HNLLX');
INSERT INTO `area_dict` VALUES ('2401', '430725', '湖南桃源县', 'HNTYX');
INSERT INTO `area_dict` VALUES ('2402', '430726', '湖南石门县', 'HNSMX');
INSERT INTO `area_dict` VALUES ('2403', '430781', '湖南津市市', 'HNJSS');
INSERT INTO `area_dict` VALUES ('2404', '430800', '湖南张家界市', 'HNZJJS');
INSERT INTO `area_dict` VALUES ('2405', '430801', '湖南大庸市辖区', 'HNDYSXQ');
INSERT INTO `area_dict` VALUES ('2406', '430821', '湖南慈利县', 'HNCLX');
INSERT INTO `area_dict` VALUES ('2407', '430822', '湖南桑植县', 'HNSZX');
INSERT INTO `area_dict` VALUES ('2408', '430221', '湖南株洲县', 'HNZZX');
INSERT INTO `area_dict` VALUES ('2409', '430900', '湖南益阳市', 'HNYYS');
INSERT INTO `area_dict` VALUES ('2410', '430903', '湖南赫山县', 'HNHSX');
INSERT INTO `area_dict` VALUES ('2411', '422130', '湖北黄梅县　', 'HBHMX');
INSERT INTO `area_dict` VALUES ('2412', '422300', '湖北咸宁地区', 'HBXNDQ');
INSERT INTO `area_dict` VALUES ('2413', '422301', '湖北咸宁市　', 'HBXNS');
INSERT INTO `area_dict` VALUES ('2414', '422302', '湖北蒲圻市', 'HBPQS');
INSERT INTO `area_dict` VALUES ('2415', '422322', '湖北嘉鱼县　', 'HBJYX');
INSERT INTO `area_dict` VALUES ('2416', '422324', '湖北通城县　', 'HBTCX');
INSERT INTO `area_dict` VALUES ('2417', '422325', '湖北崇阳县　', 'HBCYX');
INSERT INTO `area_dict` VALUES ('2418', '422326', '湖北通山县　', 'HBTSX');
INSERT INTO `area_dict` VALUES ('2419', '422327', '湖北阳新县　', 'HBYXX');
INSERT INTO `area_dict` VALUES ('2420', '422400', '湖北荆州地区', 'HBJZDQ');
INSERT INTO `area_dict` VALUES ('2421', '422401', '湖北仙桃市　', 'HBXTS');
INSERT INTO `area_dict` VALUES ('2422', '422402', '湖北石首市　', 'HBSSS');
INSERT INTO `area_dict` VALUES ('2423', '422403', '湖北洪湖市　', 'HBHHS');
INSERT INTO `area_dict` VALUES ('2424', '422404', '湖北天门市　', 'HBTMS');
INSERT INTO `area_dict` VALUES ('2425', '422405', '湖北潜江市　', 'HBQJS');
INSERT INTO `area_dict` VALUES ('2426', '422406', '湖北钟祥市　', 'HBZXS');
INSERT INTO `area_dict` VALUES ('2427', '422421', '湖北江陵县　', 'HBJLX');
INSERT INTO `area_dict` VALUES ('2428', '422422', '湖北松滋县', 'HBSZX');
INSERT INTO `area_dict` VALUES ('2429', '422423', '湖北公安县　', 'HBGAX');
INSERT INTO `area_dict` VALUES ('2430', '422425', '湖北监利县　', 'HBJLX');
INSERT INTO `area_dict` VALUES ('2431', '422432', '湖北京山县　', 'HBJSX');
INSERT INTO `area_dict` VALUES ('2432', '422600', '湖北郧阳地区', 'HBYYDQ');
INSERT INTO `area_dict` VALUES ('2433', '422601', '湖北丹江口市　', 'HBDJKS');
INSERT INTO `area_dict` VALUES ('2434', '422622', '湖北郧县　', 'HBYX');
INSERT INTO `area_dict` VALUES ('2435', '422623', '湖北郧西县　', 'HBYXX');
INSERT INTO `area_dict` VALUES ('2436', '422624', '湖北竹山县　', 'HBZSX');
INSERT INTO `area_dict` VALUES ('2437', '422625', '湖北竹溪县　', 'HBZXX');
INSERT INTO `area_dict` VALUES ('2438', '422626', '湖北房县　', 'HBFX');
INSERT INTO `area_dict` VALUES ('2439', '422800', '湖北恩施土家族苗族自治州', 'HBESTJZM');
INSERT INTO `area_dict` VALUES ('2440', '422801', '湖北恩施市', 'HBESS');
INSERT INTO `area_dict` VALUES ('2441', '422802', '湖北利川市', 'HBLCS');
INSERT INTO `area_dict` VALUES ('2442', '422822', '湖北建始县', 'HBJSX');
INSERT INTO `area_dict` VALUES ('2443', '422823', '湖北巴东县', 'HBBDX');
INSERT INTO `area_dict` VALUES ('2444', '422825', '湖北宣恩县', 'HBXEX');
INSERT INTO `area_dict` VALUES ('2445', '422826', '湖北咸丰县', 'HBXFX');
INSERT INTO `area_dict` VALUES ('2446', '422827', '湖北来凤县', 'HBLFX');
INSERT INTO `area_dict` VALUES ('2447', '422828', '湖北鹤峰县', 'HBHFX');
INSERT INTO `area_dict` VALUES ('2448', '422900', '湖北省直辖行政单位', 'HBSZXXZD');
INSERT INTO `area_dict` VALUES ('2449', '422921', '湖北神农架林区　', 'HBSNJLQ');
INSERT INTO `area_dict` VALUES ('2450', '429004', '湖北仙桃市', 'HBXTS');
INSERT INTO `area_dict` VALUES ('2451', '429005', '湖北潜江市', 'HBQJS');
INSERT INTO `area_dict` VALUES ('2452', '429006', '湖北天门市', 'HBTMS');
INSERT INTO `area_dict` VALUES ('2453', '429021', '湖北神农架林区', 'HBSNJLO');
INSERT INTO `area_dict` VALUES ('2454', '430000', '湖南省', 'HNS');
INSERT INTO `area_dict` VALUES ('2455', '430100', '湖南长沙市', 'HNCSS');
INSERT INTO `area_dict` VALUES ('2456', '430101', '湖南长沙市辖区', 'HNCSSXQ');
INSERT INTO `area_dict` VALUES ('2457', '430121', '湖南长沙县', 'HNCSX');
INSERT INTO `area_dict` VALUES ('2458', '430122', '湖南望城县', 'HNWCX');
INSERT INTO `area_dict` VALUES ('2459', '430124', '湖南宁乡县', 'HNNXX');
INSERT INTO `area_dict` VALUES ('2460', '430181', '湖南浏阳市', 'HNLYS');
INSERT INTO `area_dict` VALUES ('2461', '430200', '湖南株洲市', 'HNZZS');
INSERT INTO `area_dict` VALUES ('2462', '430201', '湖南株州市辖区', 'HNZZSXQ');
INSERT INTO `area_dict` VALUES ('2463', '422128', '湖北蕲春县　', 'HBQCX');
INSERT INTO `area_dict` VALUES ('2464', '420624', '湖北南漳县', 'HBNZX');
INSERT INTO `area_dict` VALUES ('2465', '420625', '湖北谷城县', 'HBGCX');
INSERT INTO `area_dict` VALUES ('2466', '420626', '湖北保康县', 'HBBKX');
INSERT INTO `area_dict` VALUES ('2467', '420681', '湖北随州市　', 'HBSZS');
INSERT INTO `area_dict` VALUES ('2468', '420682', '湖北老河口市', 'HBLHKS');
INSERT INTO `area_dict` VALUES ('2469', '420683', '湖北枣阳市', 'HBZYS');
INSERT INTO `area_dict` VALUES ('2470', '420684', '湖北宜城市', 'HBYCS');
INSERT INTO `area_dict` VALUES ('2471', '420700', '湖北鄂州市', 'HBEZS');
INSERT INTO `area_dict` VALUES ('2472', '420800', '湖北荆门市', 'HBJMS');
INSERT INTO `area_dict` VALUES ('2473', '420881', '湖北钟祥市', 'HBZXS');
INSERT INTO `area_dict` VALUES ('2474', '420900', '湖北孝感市', 'HBXGS');
INSERT INTO `area_dict` VALUES ('2475', '420901', '湖北孝感市辖区', 'HBXGSXQ');
INSERT INTO `area_dict` VALUES ('2476', '420921', '湖北孝昌县', 'HBXCX');
INSERT INTO `area_dict` VALUES ('2477', '420922', '湖北大悟县', 'HBDWX');
INSERT INTO `area_dict` VALUES ('2478', '420923', '湖北云梦县', 'HBYMX');
INSERT INTO `area_dict` VALUES ('2479', '420924', '湖北汉川县', 'HBHCX');
INSERT INTO `area_dict` VALUES ('2480', '420981', '湖北应城市', 'HBYCS');
INSERT INTO `area_dict` VALUES ('2481', '420982', '湖北安陆市', 'HBALS');
INSERT INTO `area_dict` VALUES ('2482', '420983', '湖北广水市　', 'HBGSS');
INSERT INTO `area_dict` VALUES ('2483', '420984', '湖北汉川市', 'HBHCS');
INSERT INTO `area_dict` VALUES ('2484', '421000', '湖北荆州市', 'HBJZS');
INSERT INTO `area_dict` VALUES ('2485', '421022', '湖北公安县', 'HBGAX');
INSERT INTO `area_dict` VALUES ('2486', '421023', '湖北监利县', 'HBJLX');
INSERT INTO `area_dict` VALUES ('2487', '421024', '湖北江陵县', 'HBJLX');
INSERT INTO `area_dict` VALUES ('2488', '421081', '湖北石首市', 'HBSSS');
INSERT INTO `area_dict` VALUES ('2489', '421083', '湖北洪湖市', 'HBHHS');
INSERT INTO `area_dict` VALUES ('2490', '421087', '湖北松滋市', 'HBSZS');
INSERT INTO `area_dict` VALUES ('2491', '421101', '湖北市辖区', 'HBSXO');
INSERT INTO `area_dict` VALUES ('2492', '421102', '湖北黄州区', 'HBHZO');
INSERT INTO `area_dict` VALUES ('2493', '421121', '湖北团风县', 'HBTFX');
INSERT INTO `area_dict` VALUES ('2494', '421122', '湖北红安县', 'HBHAX');
INSERT INTO `area_dict` VALUES ('2495', '421123', '湖北罗田县', 'HBLTX');
INSERT INTO `area_dict` VALUES ('2496', '421124', '湖北英山县', 'HBYSX');
INSERT INTO `area_dict` VALUES ('2497', '421125', '湖北浠水县', 'HBXSX');
INSERT INTO `area_dict` VALUES ('2498', '421126', '湖北蕲春县', 'HBQCX');
INSERT INTO `area_dict` VALUES ('2499', '421127', '湖北黄梅县', 'HBHMX');
INSERT INTO `area_dict` VALUES ('2500', '421181', '湖北麻城市', 'HBMCS');
INSERT INTO `area_dict` VALUES ('2501', '421182', '湖北武穴市', 'HBWXS');
INSERT INTO `area_dict` VALUES ('2502', '421200', '湖北咸宁市', 'HBXNS');
INSERT INTO `area_dict` VALUES ('2503', '421221', '湖北嘉鱼县', 'HBJYX');
INSERT INTO `area_dict` VALUES ('2504', '421222', '湖北通城县', 'HBTCX');
INSERT INTO `area_dict` VALUES ('2505', '421223', '湖北崇阳县', 'HBCYX');
INSERT INTO `area_dict` VALUES ('2506', '421224', '湖北通山县', 'HBTSX');
INSERT INTO `area_dict` VALUES ('2507', '421281', '湖北赤壁市', 'HBCBS');
INSERT INTO `area_dict` VALUES ('2508', '421300', '湖北随州市', 'HBSZS');
INSERT INTO `area_dict` VALUES ('2509', '421381', '湖北广水市', 'HBGSS');
INSERT INTO `area_dict` VALUES ('2510', '422100', '湖北黄冈市', 'HBHGS');
INSERT INTO `area_dict` VALUES ('2511', '422101', '湖北麻城市　', 'HBMCS');
INSERT INTO `area_dict` VALUES ('2512', '422102', '湖北武穴市　', 'HBWXS');
INSERT INTO `area_dict` VALUES ('2513', '422103', '湖北黄州市', 'HBHZS');
INSERT INTO `area_dict` VALUES ('2514', '422123', '湖北红安县　', 'HBHAX');
INSERT INTO `area_dict` VALUES ('2515', '422125', '湖北罗田县　', 'HBLTX');
INSERT INTO `area_dict` VALUES ('2516', '422126', '湖北英山县　', 'HBYSX');
INSERT INTO `area_dict` VALUES ('2517', '420623', '湖北宜城县', 'HBYCX');
INSERT INTO `area_dict` VALUES ('2518', '422127', '湖北浠水县　', 'HBXSX');
INSERT INTO `area_dict` VALUES ('2519', '412924', '河南南阳县', 'HNNYX');
INSERT INTO `area_dict` VALUES ('2520', '410300', '河南洛阳市', 'HNLYS');
INSERT INTO `area_dict` VALUES ('2521', '410901', '河南濮阳市辖区', 'HNPYSXQ');
INSERT INTO `area_dict` VALUES ('2522', '410922', '河南清丰县', 'HNQFX');
INSERT INTO `area_dict` VALUES ('2523', '372428', '山东临邑县　', 'SDLYX');
INSERT INTO `area_dict` VALUES ('2524', '372431', '山东宁津县　', 'SDNJX');
INSERT INTO `area_dict` VALUES ('2525', '372432', '山东庆云县　', 'SDQYX');
INSERT INTO `area_dict` VALUES ('2526', '372500', '山东聊城地区', 'SDLCDQ');
INSERT INTO `area_dict` VALUES ('2527', '372501', '山东聊城市　', 'SDLCS');
INSERT INTO `area_dict` VALUES ('2528', '372502', '山东临清市　', 'SDLQS');
INSERT INTO `area_dict` VALUES ('2529', '372522', '山东阳谷县　', 'SDYGX');
INSERT INTO `area_dict` VALUES ('2530', '372523', '山东莘县　', 'SDSX');
INSERT INTO `area_dict` VALUES ('2531', '372524', '山东茌平县　', 'SDCPX');
INSERT INTO `area_dict` VALUES ('2532', '372525', '山东东阿县　', 'SDDAX');
INSERT INTO `area_dict` VALUES ('2533', '372526', '山东冠县　', 'SDGX');
INSERT INTO `area_dict` VALUES ('2534', '372527', '山东高唐县　', 'SDGTX');
INSERT INTO `area_dict` VALUES ('2535', '372800', '山东临沂地区', 'SDLYDQ');
INSERT INTO `area_dict` VALUES ('2536', '372801', '山东临沂市　', 'SDLYS');
INSERT INTO `area_dict` VALUES ('2537', '372822', '山东郯城县　', 'SDTCX');
INSERT INTO `area_dict` VALUES ('2538', '372823', '山东苍山县　', 'SDCSX');
INSERT INTO `area_dict` VALUES ('2539', '372824', '山东莒南县　', 'SDJNX');
INSERT INTO `area_dict` VALUES ('2540', '372827', '山东沂水县　', 'SDYSX');
INSERT INTO `area_dict` VALUES ('2541', '372829', '山东蒙阴县　', 'SDMYX');
INSERT INTO `area_dict` VALUES ('2542', '372830', '山东平邑县　', 'SDPYX');
INSERT INTO `area_dict` VALUES ('2543', '372831', '山东费县　', 'SDFX');
INSERT INTO `area_dict` VALUES ('2544', '372832', '山东沂南县　', 'SDYNX');
INSERT INTO `area_dict` VALUES ('2545', '372833', '山东临沭县　', 'SDLSX');
INSERT INTO `area_dict` VALUES ('2546', '372900', '山东荷泽地区', 'SDHZDQ');
INSERT INTO `area_dict` VALUES ('2547', '372901', '山东菏泽市　', 'SDHZS');
INSERT INTO `area_dict` VALUES ('2548', '372922', '山东曹县　', 'SDCX');
INSERT INTO `area_dict` VALUES ('2549', '372923', '山东定陶县　', 'SDDTX');
INSERT INTO `area_dict` VALUES ('2550', '372924', '山东成武县　', 'SDCWX');
INSERT INTO `area_dict` VALUES ('2551', '372925', '山东单县　', 'SDSX');
INSERT INTO `area_dict` VALUES ('2552', '372926', '山东巨野县　', 'SDJYX');
INSERT INTO `area_dict` VALUES ('2553', '372928', '山东郓城县　', 'SDYCX');
INSERT INTO `area_dict` VALUES ('2554', '372929', '山东鄄城县　', 'SDJCX');
INSERT INTO `area_dict` VALUES ('2555', '372930', '山东东明县　', 'SDDMX');
INSERT INTO `area_dict` VALUES ('2556', '410000', '河南省', 'HNS');
INSERT INTO `area_dict` VALUES ('2557', '410100', '河南郑州市', 'HNZZS');
INSERT INTO `area_dict` VALUES ('2558', '410101', '河南郑州市辖区', 'HNZZSXQ');
INSERT INTO `area_dict` VALUES ('2559', '410121', '河南荥阳县', 'HNXYX');
INSERT INTO `area_dict` VALUES ('2560', '410122', '河南中牟县', 'HNZMX');
INSERT INTO `area_dict` VALUES ('2561', '410123', '河南新郑县', 'HNXZX');
INSERT INTO `area_dict` VALUES ('2562', '410125', '河南登封县', 'HNDFX');
INSERT INTO `area_dict` VALUES ('2563', '410126', '河南密县', 'HNMX');
INSERT INTO `area_dict` VALUES ('2564', '410181', '河南巩义市', 'HNGYS');
INSERT INTO `area_dict` VALUES ('2565', '410182', '河南荥阳市', 'HNXYS');
INSERT INTO `area_dict` VALUES ('2566', '410183', '河南新密市', 'HNXMS');
INSERT INTO `area_dict` VALUES ('2567', '410184', '河南新郑市', 'HNXZS');
INSERT INTO `area_dict` VALUES ('2568', '410185', '河南登封市', 'HNDFS');
INSERT INTO `area_dict` VALUES ('2569', '410200', '河南开封市', 'HNKFS');
INSERT INTO `area_dict` VALUES ('2570', '410201', '河南开封市辖区', 'HNKFSXQ');
INSERT INTO `area_dict` VALUES ('2571', '410221', '河南杞县', 'HNQX');
INSERT INTO `area_dict` VALUES ('2572', '410222', '河南通许县', 'HNTXX');
INSERT INTO `area_dict` VALUES ('2573', '410223', '河南尉氏县', 'HNWSX');
INSERT INTO `area_dict` VALUES ('2574', '372425', '山东齐河县　', 'SDQHX');
INSERT INTO `area_dict` VALUES ('2575', '410224', '河南开封县', 'HNKFX');
INSERT INTO `area_dict` VALUES ('2576', '410225', '河南兰考县', 'HNLKX');
INSERT INTO `area_dict` VALUES ('2577', '371326', '山东平邑县', 'SDPYX');
INSERT INTO `area_dict` VALUES ('2578', '371327', '山东莒南县', 'SDJNX');
INSERT INTO `area_dict` VALUES ('2579', '371328', '山东蒙阴县', 'SDMYX');
INSERT INTO `area_dict` VALUES ('2580', '371329', '山东临沭县', 'SDLSX');
INSERT INTO `area_dict` VALUES ('2581', '371400', '山东德州市', 'SDDZS');
INSERT INTO `area_dict` VALUES ('2582', '371421', '山东陵县', 'SDLX');
INSERT INTO `area_dict` VALUES ('2583', '371422', '山东宁津县', 'SDNJX');
INSERT INTO `area_dict` VALUES ('2584', '371423', '山东庆云县', 'SDQYX');
INSERT INTO `area_dict` VALUES ('2585', '371424', '山东临邑县', 'SDLYX');
INSERT INTO `area_dict` VALUES ('2586', '371425', '山东齐河县', 'SDQHX');
INSERT INTO `area_dict` VALUES ('2587', '371426', '山东平原县', 'SDPYX');
INSERT INTO `area_dict` VALUES ('2588', '371427', '山东夏津县', 'SDXJX');
INSERT INTO `area_dict` VALUES ('2589', '371428', '山东武城县', 'SDWCX');
INSERT INTO `area_dict` VALUES ('2590', '371481', '山东乐陵市', 'SDLLS');
INSERT INTO `area_dict` VALUES ('2591', '371482', '山东禹城市', 'SDYCS');
INSERT INTO `area_dict` VALUES ('2592', '371500', '山东聊城市', 'SDLCS');
INSERT INTO `area_dict` VALUES ('2593', '371521', '山东阳谷县', 'SDYGX');
INSERT INTO `area_dict` VALUES ('2594', '371522', '山东莘县', 'SDSX');
INSERT INTO `area_dict` VALUES ('2595', '371523', '山东茌平县', 'SDCPX');
INSERT INTO `area_dict` VALUES ('2596', '371524', '山东东阿县', 'SDDAX');
INSERT INTO `area_dict` VALUES ('2597', '371525', '山东冠县', 'SDGX');
INSERT INTO `area_dict` VALUES ('2598', '371526', '山东高唐县', 'SDGTX');
INSERT INTO `area_dict` VALUES ('2599', '371581', '山东临清市', 'SDLQS');
INSERT INTO `area_dict` VALUES ('2600', '371600', '山东滨州市', 'SDBZS');
INSERT INTO `area_dict` VALUES ('2601', '371621', '山东惠民县', 'SDHMX');
INSERT INTO `area_dict` VALUES ('2602', '371622', '山东阳信县', 'SDYXX');
INSERT INTO `area_dict` VALUES ('2603', '371623', '山东无棣县', 'SDWDX');
INSERT INTO `area_dict` VALUES ('2604', '371624', '山东沾化县', 'SDZHX');
INSERT INTO `area_dict` VALUES ('2605', '371625', '山东博兴县', 'SDBXX');
INSERT INTO `area_dict` VALUES ('2606', '371626', '山东邹平县', 'SDZPX');
INSERT INTO `area_dict` VALUES ('2607', '371700', '山东菏泽市', 'SDHZS');
INSERT INTO `area_dict` VALUES ('2608', '371721', '山东曹县', 'SDCX');
INSERT INTO `area_dict` VALUES ('2609', '371722', '山东单县', 'SDDX');
INSERT INTO `area_dict` VALUES ('2610', '371723', '山东成武县', 'SDCWX');
INSERT INTO `area_dict` VALUES ('2611', '371724', '山东巨野县', 'SDJYX');
INSERT INTO `area_dict` VALUES ('2612', '371725', '山东郓城县', 'SDYCX');
INSERT INTO `area_dict` VALUES ('2613', '371726', '山东鄄城县', 'SDJCX');
INSERT INTO `area_dict` VALUES ('2614', '371727', '山东定陶县', 'SDDTX');
INSERT INTO `area_dict` VALUES ('2615', '371728', '山东东明县', 'SDDMX');
INSERT INTO `area_dict` VALUES ('2616', '372300', '山东滨州地区', 'SDBZDQ');
INSERT INTO `area_dict` VALUES ('2617', '372301', '山东滨州市　', 'SDBZS');
INSERT INTO `area_dict` VALUES ('2618', '372321', '山东惠民县　', 'SDHMX');
INSERT INTO `area_dict` VALUES ('2619', '372323', '山东阳信县　', 'SDYXX');
INSERT INTO `area_dict` VALUES ('2620', '372324', '山东无棣县　', 'SDWDX');
INSERT INTO `area_dict` VALUES ('2621', '372325', '山东沾化县　', 'SDZHX');
INSERT INTO `area_dict` VALUES ('2622', '372328', '山东博兴县　', 'SDBXX');
INSERT INTO `area_dict` VALUES ('2623', '372330', '山东邹平县　', 'SDZPX');
INSERT INTO `area_dict` VALUES ('2624', '372400', '山东德州地区', 'SDDZDQ');
INSERT INTO `area_dict` VALUES ('2625', '372401', '山东德州市　', 'SDDZS');
INSERT INTO `area_dict` VALUES ('2626', '372402', '山东乐陵市　', 'SDLLS');
INSERT INTO `area_dict` VALUES ('2627', '372403', '山东禹城市　', 'SDYCS');
INSERT INTO `area_dict` VALUES ('2628', '372421', '山东陵县　', 'SDLX');
INSERT INTO `area_dict` VALUES ('2629', '371325', '山东费县', 'SDFX');
INSERT INTO `area_dict` VALUES ('2630', '372422', '山东平原县　', 'SDPYX');
INSERT INTO `area_dict` VALUES ('2631', '372423', '山东夏津县　', 'SDXJX');
INSERT INTO `area_dict` VALUES ('2632', '372424', '山东武城县　', 'SDWCX');
INSERT INTO `area_dict` VALUES ('2633', '370634', '山东长岛县', 'SDCDX');
INSERT INTO `area_dict` VALUES ('2634', '370681', '山东龙口市', 'SDLKS');
INSERT INTO `area_dict` VALUES ('2635', '370682', '山东莱阳市', 'SDLYS');
INSERT INTO `area_dict` VALUES ('2636', '370683', '山东莱州市', 'SDLZS');
INSERT INTO `area_dict` VALUES ('2637', '370684', '山东蓬莱市', 'SDPLS');
INSERT INTO `area_dict` VALUES ('2638', '370685', '山东招远市', 'SDZYS');
INSERT INTO `area_dict` VALUES ('2639', '370686', '山东栖霞市', 'SDQXS');
INSERT INTO `area_dict` VALUES ('2640', '370687', '山东海阳市', 'SDHYS');
INSERT INTO `area_dict` VALUES ('2641', '370700', '山东潍坊市', 'SDWFS');
INSERT INTO `area_dict` VALUES ('2642', '370701', '山东淮坊市辖区', 'SDHFSXQ');
INSERT INTO `area_dict` VALUES ('2643', '370722', '山东安丘县', 'SDAQX');
INSERT INTO `area_dict` VALUES ('2644', '370724', '山东临朐县', 'SDLQX');
INSERT INTO `area_dict` VALUES ('2645', '370725', '山东昌乐县', 'SDCLX');
INSERT INTO `area_dict` VALUES ('2646', '370726', '山东昌邑县', 'SDCYX');
INSERT INTO `area_dict` VALUES ('2647', '370727', '山东高密县', 'SDGMX');
INSERT INTO `area_dict` VALUES ('2648', '370781', '山东青州市', 'SDQZS');
INSERT INTO `area_dict` VALUES ('2649', '370782', '山东诸城市', 'SDZCS');
INSERT INTO `area_dict` VALUES ('2650', '370783', '山东寿光市', 'SDSGS');
INSERT INTO `area_dict` VALUES ('2651', '370784', '山东安丘市', 'SDAQS');
INSERT INTO `area_dict` VALUES ('2652', '370785', '山东高密市', 'SDGMS');
INSERT INTO `area_dict` VALUES ('2653', '370786', '山东昌邑市', 'SDCYS');
INSERT INTO `area_dict` VALUES ('2654', '370800', '山东济宁市', 'SDJNS');
INSERT INTO `area_dict` VALUES ('2655', '370801', '山东济宁市辖区', 'SDJNSXQ');
INSERT INTO `area_dict` VALUES ('2656', '370826', '山东微山县', 'SDWSX');
INSERT INTO `area_dict` VALUES ('2657', '370827', '山东鱼台县', 'SDYTX');
INSERT INTO `area_dict` VALUES ('2658', '370828', '山东金乡县', 'SDJXX');
INSERT INTO `area_dict` VALUES ('2659', '370829', '山东嘉祥县', 'SDJXX');
INSERT INTO `area_dict` VALUES ('2660', '370830', '山东汶上县', 'SDWSX');
INSERT INTO `area_dict` VALUES ('2661', '370831', '山东泗水县', 'SDSSX');
INSERT INTO `area_dict` VALUES ('2662', '370832', '山东梁山县', 'SDLSX');
INSERT INTO `area_dict` VALUES ('2663', '370881', '山东曲阜市', 'SDQFS');
INSERT INTO `area_dict` VALUES ('2664', '370882', '山东兖州市', 'SDYZS');
INSERT INTO `area_dict` VALUES ('2665', '370883', '山东邹城市', 'SDZCS');
INSERT INTO `area_dict` VALUES ('2666', '370900', '山东泰安市', 'SDTAS');
INSERT INTO `area_dict` VALUES ('2667', '370901', '山东泰安市辖区', 'SDTASXQ');
INSERT INTO `area_dict` VALUES ('2668', '370921', '山东宁阳县', 'SDNYX');
INSERT INTO `area_dict` VALUES ('2669', '370923', '山东东平县', 'SDDPX');
INSERT INTO `area_dict` VALUES ('2670', '370982', '山东新泰市', 'SDXTS');
INSERT INTO `area_dict` VALUES ('2671', '370983', '山东肥城市', 'SDFCS');
INSERT INTO `area_dict` VALUES ('2672', '371000', '山东威海市', 'SDWHS');
INSERT INTO `area_dict` VALUES ('2673', '371001', '山东威海市辖区', 'SDWHSXQ');
INSERT INTO `area_dict` VALUES ('2674', '371081', '山东文登市', 'SDWDS');
INSERT INTO `area_dict` VALUES ('2675', '371082', '山东荣城市', 'SDRCS');
INSERT INTO `area_dict` VALUES ('2676', '371083', '山东乳山市', 'SDRSS');
INSERT INTO `area_dict` VALUES ('2677', '371100', '山东日照市', 'SDRZS');
INSERT INTO `area_dict` VALUES ('2678', '371101', '山东日照市辖区', 'SDRZSXQ');
INSERT INTO `area_dict` VALUES ('2679', '371121', '山东五莲县', 'SDWLX');
INSERT INTO `area_dict` VALUES ('2680', '371122', '山东莒县', 'SDJX');
INSERT INTO `area_dict` VALUES ('2681', '371200', '山东莱芜市', 'SDLWS');
INSERT INTO `area_dict` VALUES ('2682', '371300', '山东临沂市', 'SDLYS');
INSERT INTO `area_dict` VALUES ('2683', '370631', '山东牟平县', 'SDMPX');
INSERT INTO `area_dict` VALUES ('2684', '371321', '山东沂南县', 'SDYNX');
INSERT INTO `area_dict` VALUES ('2685', '371322', '山东郯城县', 'SDTCX');
INSERT INTO `area_dict` VALUES ('2686', '371323', '山东沂水县', 'SDYSX');
INSERT INTO `area_dict` VALUES ('2687', '371324', '山东苍山县', 'SDCSX');
INSERT INTO `area_dict` VALUES ('2688', '362425', '江西永丰县　', 'JXYFX');
INSERT INTO `area_dict` VALUES ('2689', '362426', '江西泰和县　', 'JXTHX');
INSERT INTO `area_dict` VALUES ('2690', '362427', '江西遂川县　', 'JXSCX');
INSERT INTO `area_dict` VALUES ('2691', '362428', '江西万安县　', 'JXWAX');
INSERT INTO `area_dict` VALUES ('2692', '362429', '江西安福县　', 'JXAFX');
INSERT INTO `area_dict` VALUES ('2693', '362430', '江西永新县　', 'JXYXX');
INSERT INTO `area_dict` VALUES ('2694', '362432', '江西宁冈县', 'JXNGX');
INSERT INTO `area_dict` VALUES ('2695', '362500', '江西抚州地区', 'JXFZDQ');
INSERT INTO `area_dict` VALUES ('2696', '362502', '江西临川市', 'JXLCS');
INSERT INTO `area_dict` VALUES ('2697', '362522', '江西南城县　', 'JXNCX');
INSERT INTO `area_dict` VALUES ('2698', '362523', '江西黎川县　', 'JXLCX');
INSERT INTO `area_dict` VALUES ('2699', '362524', '江西南丰县　', 'JXNFX');
INSERT INTO `area_dict` VALUES ('2700', '362525', '江西崇仁县　', 'JXCRX');
INSERT INTO `area_dict` VALUES ('2701', '362526', '江西乐安县　', 'JXLAX');
INSERT INTO `area_dict` VALUES ('2702', '362527', '江西宜黄县　', 'JXYHX');
INSERT INTO `area_dict` VALUES ('2703', '362528', '江西金溪县　', 'JXJXX');
INSERT INTO `area_dict` VALUES ('2704', '362529', '江西资溪县　', 'JXZXX');
INSERT INTO `area_dict` VALUES ('2705', '362531', '江西东乡县　', 'JXDXX');
INSERT INTO `area_dict` VALUES ('2706', '362532', '江西广昌县　', 'JXGCX');
INSERT INTO `area_dict` VALUES ('2707', '370000', '山东省', 'SDS');
INSERT INTO `area_dict` VALUES ('2708', '370100', '山东济南市', 'SDJNS');
INSERT INTO `area_dict` VALUES ('2709', '370101', '山东济南市辖区', 'SDJNSXQ');
INSERT INTO `area_dict` VALUES ('2710', '370123', '山东长清县', 'SDCQX');
INSERT INTO `area_dict` VALUES ('2711', '370124', '山东平阴县', 'SDPYX');
INSERT INTO `area_dict` VALUES ('2712', '370125', '山东济阳县', 'SDJYX');
INSERT INTO `area_dict` VALUES ('2713', '370126', '山东商河县', 'SDSHX');
INSERT INTO `area_dict` VALUES ('2714', '370181', '山东章丘市', 'SDZQS');
INSERT INTO `area_dict` VALUES ('2715', '370200', '山东青岛市', 'SDQDS');
INSERT INTO `area_dict` VALUES ('2716', '370201', '山东青岛市辖区', 'SDQDSXQ');
INSERT INTO `area_dict` VALUES ('2717', '370281', '山东胶州市', 'SDJZS');
INSERT INTO `area_dict` VALUES ('2718', '370282', '山东即墨市', 'SDJMS');
INSERT INTO `area_dict` VALUES ('2719', '370283', '山东平度市', 'SDPDS');
INSERT INTO `area_dict` VALUES ('2720', '370284', '山东胶南市', 'SDJNS');
INSERT INTO `area_dict` VALUES ('2721', '370285', '山东莱西市', 'SDLXS');
INSERT INTO `area_dict` VALUES ('2722', '370300', '山东淄博市', 'SDZBS');
INSERT INTO `area_dict` VALUES ('2723', '370301', '山东淄博市辖区', 'SDZBSXQ');
INSERT INTO `area_dict` VALUES ('2724', '370321', '山东桓台县', 'SDHTX');
INSERT INTO `area_dict` VALUES ('2725', '370322', '山东高青县', 'SDGQX');
INSERT INTO `area_dict` VALUES ('2726', '370323', '山东沂源县', 'SDYYX');
INSERT INTO `area_dict` VALUES ('2727', '370400', '山东枣庄市', 'SDZZS');
INSERT INTO `area_dict` VALUES ('2728', '370401', '山东枣庄市辖区', 'SDZZSXQ');
INSERT INTO `area_dict` VALUES ('2729', '370481', '山东滕州市', 'SDTZS');
INSERT INTO `area_dict` VALUES ('2730', '370500', '山东东营市', 'SDDYS');
INSERT INTO `area_dict` VALUES ('2731', '370501', '山东市辖区', 'SDSXO');
INSERT INTO `area_dict` VALUES ('2732', '370502', '山东东营区', 'SDDYO');
INSERT INTO `area_dict` VALUES ('2733', '370503', '山东河口区', 'SDHKO');
INSERT INTO `area_dict` VALUES ('2734', '370521', '山东垦利县', 'SDKLX');
INSERT INTO `area_dict` VALUES ('2735', '370522', '山东利津县', 'SDLJX');
INSERT INTO `area_dict` VALUES ('2736', '370523', '山东广饶县', 'SDGRX');
INSERT INTO `area_dict` VALUES ('2737', '370600', '山东烟台市', 'SDYTS');
INSERT INTO `area_dict` VALUES ('2738', '370601', '山东烟台市辖区', 'SDYTSXQ');
INSERT INTO `area_dict` VALUES ('2739', '370628', '山东栖霞县', 'SDQXX');
INSERT INTO `area_dict` VALUES ('2740', '362424', '江西新干县　', 'JXXGX');
INSERT INTO `area_dict` VALUES ('2741', '370629', '山东海阳县', 'SDHYX');
INSERT INTO `area_dict` VALUES ('2742', '361129', '江西万年县', 'JXWNX');
INSERT INTO `area_dict` VALUES ('2743', '361130', '江西婺源县', 'JXWYX');
INSERT INTO `area_dict` VALUES ('2744', '361181', '江西德兴市', 'JXDXS');
INSERT INTO `area_dict` VALUES ('2745', '362100', '江西赣州地区', 'JXGZDQ');
INSERT INTO `area_dict` VALUES ('2746', '362101', '江西赣州市　', 'JXGZS');
INSERT INTO `area_dict` VALUES ('2747', '362121', '江西赣县　', 'JXGX');
INSERT INTO `area_dict` VALUES ('2748', '362122', '江西南康县', 'JXNKX');
INSERT INTO `area_dict` VALUES ('2749', '362123', '江西信丰县　', 'JXXFX');
INSERT INTO `area_dict` VALUES ('2750', '362124', '江西大余县　', 'JXDYX');
INSERT INTO `area_dict` VALUES ('2751', '362125', '江西上犹县　', 'JXSYX');
INSERT INTO `area_dict` VALUES ('2752', '362126', '江西崇义县　', 'JXCYX');
INSERT INTO `area_dict` VALUES ('2753', '362127', '江西安远县　', 'JXAYX');
INSERT INTO `area_dict` VALUES ('2754', '362128', '江西龙南县　', 'JXLNX');
INSERT INTO `area_dict` VALUES ('2755', '362129', '江西定南县　', 'JXDNX');
INSERT INTO `area_dict` VALUES ('2756', '362130', '江西全南县　', 'JXQNX');
INSERT INTO `area_dict` VALUES ('2757', '362131', '江西宁都县　', 'JXNDX');
INSERT INTO `area_dict` VALUES ('2758', '362132', '江西于都县　', 'JXYDX');
INSERT INTO `area_dict` VALUES ('2759', '362133', '江西兴国县　', 'JXXGX');
INSERT INTO `area_dict` VALUES ('2760', '362134', '江西瑞金县', 'JXRJX');
INSERT INTO `area_dict` VALUES ('2761', '362135', '江西会昌县　', 'JXHCX');
INSERT INTO `area_dict` VALUES ('2762', '362136', '江西寻乌县　', 'JXXWX');
INSERT INTO `area_dict` VALUES ('2763', '362137', '江西石城县　', 'JXSCX');
INSERT INTO `area_dict` VALUES ('2764', '362200', '江西宜春地区', 'JXYCDQ');
INSERT INTO `area_dict` VALUES ('2765', '362201', '江西宜春市　', 'JXYCS');
INSERT INTO `area_dict` VALUES ('2766', '362202', '江西丰城市　', 'JXFCS');
INSERT INTO `area_dict` VALUES ('2767', '362203', '江西樟树市　', 'JXZSS');
INSERT INTO `area_dict` VALUES ('2768', '362204', '江西高安市　', 'JXGAS');
INSERT INTO `area_dict` VALUES ('2769', '362226', '江西奉新县　', 'JXFXX');
INSERT INTO `area_dict` VALUES ('2770', '362227', '江西万载县　', 'JXWZX');
INSERT INTO `area_dict` VALUES ('2771', '362228', '江西上高县　', 'JXSGX');
INSERT INTO `area_dict` VALUES ('2772', '362229', '江西宜丰县　', 'JXYFX');
INSERT INTO `area_dict` VALUES ('2773', '362232', '江西靖安县　', 'JXJAX');
INSERT INTO `area_dict` VALUES ('2774', '362233', '江西铜鼓县　', 'JXTGX');
INSERT INTO `area_dict` VALUES ('2775', '362300', '江西上饶地区', 'JXSRDQ');
INSERT INTO `area_dict` VALUES ('2776', '362301', '江西上饶市　', 'JXSRS');
INSERT INTO `area_dict` VALUES ('2777', '362302', '江西德兴市　', 'JXDXS');
INSERT INTO `area_dict` VALUES ('2778', '362321', '江西上饶县　', 'JXSRX');
INSERT INTO `area_dict` VALUES ('2779', '362322', '江西广丰县　', 'JXGFX');
INSERT INTO `area_dict` VALUES ('2780', '362323', '江西玉山县　', 'JXYSX');
INSERT INTO `area_dict` VALUES ('2781', '362324', '江西铅山县　', 'JXQSX');
INSERT INTO `area_dict` VALUES ('2782', '362325', '江西横峰县　', 'JXHFX');
INSERT INTO `area_dict` VALUES ('2783', '362326', '江西弋阳县　', 'JXYYX');
INSERT INTO `area_dict` VALUES ('2784', '362329', '江西余干县　', 'JXYGX');
INSERT INTO `area_dict` VALUES ('2785', '362330', '江西波阳县　', 'JXBYX');
INSERT INTO `area_dict` VALUES ('2786', '362331', '江西万年县　', 'JXWNX');
INSERT INTO `area_dict` VALUES ('2787', '362334', '江西婺源县　', 'JXWYX');
INSERT INTO `area_dict` VALUES ('2788', '362400', '江西吉安地区', 'JXJADQ');
INSERT INTO `area_dict` VALUES ('2789', '362401', '江西吉安市　', 'JXJAS');
INSERT INTO `area_dict` VALUES ('2790', '362402', '江西井冈山市　', 'JXJGSS');
INSERT INTO `area_dict` VALUES ('2791', '362421', '江西吉安县　', 'JXJAX');
INSERT INTO `area_dict` VALUES ('2792', '362422', '江西吉水县　', 'JXJSX');
INSERT INTO `area_dict` VALUES ('2793', '362423', '江西峡江县　', 'JXXJX');
INSERT INTO `area_dict` VALUES ('2794', '361128', '江西波阳县', 'JXBYX');
INSERT INTO `area_dict` VALUES ('2795', '360724', '江西上犹县', 'JXSYX');
INSERT INTO `area_dict` VALUES ('2796', '360725', '江西崇义县', 'JXCYX');
INSERT INTO `area_dict` VALUES ('2797', '360726', '江西安远县', 'JXAYX');
INSERT INTO `area_dict` VALUES ('2798', '360727', '江西龙南县', 'JXLNX');
INSERT INTO `area_dict` VALUES ('2799', '360728', '江西定南县', 'JXDNX');
INSERT INTO `area_dict` VALUES ('2800', '360729', '江西全南县', 'JXQNX');
INSERT INTO `area_dict` VALUES ('2801', '360730', '江西宁都县', 'JXNDX');
INSERT INTO `area_dict` VALUES ('2802', '360731', '江西于都县', 'JXYDX');
INSERT INTO `area_dict` VALUES ('2803', '360732', '江西兴国县', 'JXXGX');
INSERT INTO `area_dict` VALUES ('2804', '360733', '江西会昌县', 'JXHCX');
INSERT INTO `area_dict` VALUES ('2805', '360734', '江西寻乌县', 'JXXWX');
INSERT INTO `area_dict` VALUES ('2806', '360735', '江西石城县', 'JXSCX');
INSERT INTO `area_dict` VALUES ('2807', '360781', '江西瑞金市', 'JXRJS');
INSERT INTO `area_dict` VALUES ('2808', '360782', '江西南康市', 'JXNKS');
INSERT INTO `area_dict` VALUES ('2809', '360800', '江西吉安市', 'JXJAS');
INSERT INTO `area_dict` VALUES ('2810', '360821', '江西吉安县', 'JXJAX');
INSERT INTO `area_dict` VALUES ('2811', '360822', '江西吉水县', 'JXJSX');
INSERT INTO `area_dict` VALUES ('2812', '360823', '江西峡江县', 'JXXJX');
INSERT INTO `area_dict` VALUES ('2813', '360824', '江西新干县', 'JXXGX');
INSERT INTO `area_dict` VALUES ('2814', '360825', '江西永丰县', 'JXYFX');
INSERT INTO `area_dict` VALUES ('2815', '360826', '江西泰和县', 'JXTHX');
INSERT INTO `area_dict` VALUES ('2816', '360827', '江西遂川县', 'JXSCX');
INSERT INTO `area_dict` VALUES ('2817', '360828', '江西万安县', 'JXWAX');
INSERT INTO `area_dict` VALUES ('2818', '360829', '江西安福县', 'JXAFX');
INSERT INTO `area_dict` VALUES ('2819', '360830', '江西永新县', 'JXYXX');
INSERT INTO `area_dict` VALUES ('2820', '360881', '江西井冈山市', 'JXJGSS');
INSERT INTO `area_dict` VALUES ('2821', '360900', '江西宜春市', 'JXYCS');
INSERT INTO `area_dict` VALUES ('2822', '360921', '江西奉新县', 'JXFXX');
INSERT INTO `area_dict` VALUES ('2823', '360922', '江西万载县', 'JXWZX');
INSERT INTO `area_dict` VALUES ('2824', '360923', '江西上高县', 'JXSGX');
INSERT INTO `area_dict` VALUES ('2825', '360924', '江西宜丰县', 'JXYFX');
INSERT INTO `area_dict` VALUES ('2826', '360925', '江西靖安县', 'JXJAX');
INSERT INTO `area_dict` VALUES ('2827', '360926', '江西铜鼓县', 'JXTGX');
INSERT INTO `area_dict` VALUES ('2828', '360981', '江西丰城市', 'JXFCS');
INSERT INTO `area_dict` VALUES ('2829', '360982', '江西樟树市', 'JXZSS');
INSERT INTO `area_dict` VALUES ('2830', '360983', '江西高安市', 'JXGAS');
INSERT INTO `area_dict` VALUES ('2831', '361000', '江西抚州市', 'JXFZS');
INSERT INTO `area_dict` VALUES ('2832', '361021', '江西南城县', 'JXNCX');
INSERT INTO `area_dict` VALUES ('2833', '361022', '江西黎川县', 'JXLCX');
INSERT INTO `area_dict` VALUES ('2834', '361023', '江西南丰县', 'JXNFX');
INSERT INTO `area_dict` VALUES ('2835', '361024', '江西崇仁县', 'JXCRX');
INSERT INTO `area_dict` VALUES ('2836', '361025', '江西乐安县', 'JXLAX');
INSERT INTO `area_dict` VALUES ('2837', '361026', '江西宜黄县', 'JXYHX');
INSERT INTO `area_dict` VALUES ('2838', '361027', '江西金溪县', 'JXJXX');
INSERT INTO `area_dict` VALUES ('2839', '361028', '江西资溪县', 'JXZXX');
INSERT INTO `area_dict` VALUES ('2840', '361029', '江西东乡县', 'JXDXX');
INSERT INTO `area_dict` VALUES ('2841', '361030', '江西广昌县', 'JXGCX');
INSERT INTO `area_dict` VALUES ('2842', '361100', '江西上饶市', 'JXSRS');
INSERT INTO `area_dict` VALUES ('2843', '361121', '江西上饶县', 'JXSRX');
INSERT INTO `area_dict` VALUES ('2844', '361122', '江西广丰县', 'JXGFX');
INSERT INTO `area_dict` VALUES ('2845', '361123', '江西玉山县', 'JXYSX');
INSERT INTO `area_dict` VALUES ('2846', '360723', '江西大余县', 'JXDYX');
INSERT INTO `area_dict` VALUES ('2847', '361124', '江西铅山县', 'JXQSX');
INSERT INTO `area_dict` VALUES ('2848', '361125', '江西横峰县', 'JXHFX');
INSERT INTO `area_dict` VALUES ('2849', '361126', '江西弋阳县', 'JXYYX');
INSERT INTO `area_dict` VALUES ('2850', '361127', '江西余干县', 'JXYGX');
INSERT INTO `area_dict` VALUES ('2851', '352225', '福建霞浦县　', 'FJXPX');
INSERT INTO `area_dict` VALUES ('2852', '352227', '福建古田县　', 'FJGTX');
INSERT INTO `area_dict` VALUES ('2853', '352228', '福建屏南县　', 'FJPNX');
INSERT INTO `area_dict` VALUES ('2854', '352229', '福建寿宁县　', 'FJSNX');
INSERT INTO `area_dict` VALUES ('2855', '352230', '福建周宁县　', 'FJZNX');
INSERT INTO `area_dict` VALUES ('2856', '352231', '福建柘荣县　', 'FJZRX');
INSERT INTO `area_dict` VALUES ('2857', '352600', '福建龙岩地区', 'FJLYDQ');
INSERT INTO `area_dict` VALUES ('2858', '352601', '福建龙岩市　', 'FJLYS');
INSERT INTO `area_dict` VALUES ('2859', '352602', '福建漳平市　', 'FJZPS');
INSERT INTO `area_dict` VALUES ('2860', '352622', '福建长汀县　', 'FJCTX');
INSERT INTO `area_dict` VALUES ('2861', '352623', '福建永定县　', 'FJYDX');
INSERT INTO `area_dict` VALUES ('2862', '352624', '福建上杭县　', 'FJSHX');
INSERT INTO `area_dict` VALUES ('2863', '352625', '福建武平县　', 'FJWPX');
INSERT INTO `area_dict` VALUES ('2864', '352627', '福建连城县　', 'FJLCX');
INSERT INTO `area_dict` VALUES ('2865', '360000', '江西省', 'JXS');
INSERT INTO `area_dict` VALUES ('2866', '360100', '江西南昌市', 'JXNCS');
INSERT INTO `area_dict` VALUES ('2867', '360101', '江西南昌市辖区', 'JXNCSXQ');
INSERT INTO `area_dict` VALUES ('2868', '360121', '江西南昌县', 'JXNCX');
INSERT INTO `area_dict` VALUES ('2869', '360122', '江西新建县', 'JXXJX');
INSERT INTO `area_dict` VALUES ('2870', '360123', '江西安义县', 'JXAYX');
INSERT INTO `area_dict` VALUES ('2871', '360124', '江西进贤县', 'JXJXX');
INSERT INTO `area_dict` VALUES ('2872', '360200', '江西景德镇市', 'JXJDZS');
INSERT INTO `area_dict` VALUES ('2873', '360201', '江西景德镇市辖区', 'JXJDZSXQ');
INSERT INTO `area_dict` VALUES ('2874', '360222', '江西浮梁县', 'JXFLX');
INSERT INTO `area_dict` VALUES ('2875', '360281', '江西乐平市', 'JXLPS');
INSERT INTO `area_dict` VALUES ('2876', '360300', '江西萍乡市', 'JXPXS');
INSERT INTO `area_dict` VALUES ('2877', '360301', '江西萍乡市辖区', 'JXPXSXQ');
INSERT INTO `area_dict` VALUES ('2878', '360321', '江西莲花县', 'JXLHX');
INSERT INTO `area_dict` VALUES ('2879', '360322', '江西上栗县', 'JXSLX');
INSERT INTO `area_dict` VALUES ('2880', '360323', '江西芦溪县', 'JXLXX');
INSERT INTO `area_dict` VALUES ('2881', '360400', '江西九江市', 'JXJJS');
INSERT INTO `area_dict` VALUES ('2882', '360401', '江西九江市辖区', 'JXJJSXQ');
INSERT INTO `area_dict` VALUES ('2883', '360421', '江西九江县', 'JXJJX');
INSERT INTO `area_dict` VALUES ('2884', '360423', '江西武宁县', 'JXWNX');
INSERT INTO `area_dict` VALUES ('2885', '360424', '江西修水县', 'JXXSX');
INSERT INTO `area_dict` VALUES ('2886', '360425', '江西永修县', 'JXYXX');
INSERT INTO `area_dict` VALUES ('2887', '360426', '江西德安县', 'JXDAX');
INSERT INTO `area_dict` VALUES ('2888', '360427', '江西星子县', 'JXXZX');
INSERT INTO `area_dict` VALUES ('2889', '360428', '江西都昌县', 'JXDCX');
INSERT INTO `area_dict` VALUES ('2890', '360429', '江西湖口县', 'JXHKX');
INSERT INTO `area_dict` VALUES ('2891', '360430', '江西彭泽县', 'JXPZX');
INSERT INTO `area_dict` VALUES ('2892', '210782', '辽宁北宁市', 'LNBNS');
INSERT INTO `area_dict` VALUES ('2893', '210800', '辽宁营口市', 'LNYKS');
INSERT INTO `area_dict` VALUES ('2894', '210801', '辽宁营口市辖区', 'LNYKSXQ');
INSERT INTO `area_dict` VALUES ('2895', '210881', '辽宁盖州市', 'LNGZS');
INSERT INTO `area_dict` VALUES ('2896', '210882', '辽宁大石桥市', 'LNDSQS');
INSERT INTO `area_dict` VALUES ('2897', '210900', '辽宁阜新市', 'LNFXS');
INSERT INTO `area_dict` VALUES ('2898', '210901', '辽宁阜新市辖区', 'LNFXSXQ');
INSERT INTO `area_dict` VALUES ('2899', '210921', '辽宁阜新蒙古族自治县', 'LNFXMGZZ');
INSERT INTO `area_dict` VALUES ('2900', '210922', '辽宁彰武县', 'LNZWX');
INSERT INTO `area_dict` VALUES ('2901', '211000', '辽宁辽阳市', 'LNLYS');
INSERT INTO `area_dict` VALUES ('2902', '211001', '辽宁辽阳市辖区', 'LNLYSXQ');
INSERT INTO `area_dict` VALUES ('2903', '211021', '辽宁辽阳县', 'LNLYX');
INSERT INTO `area_dict` VALUES ('2904', '211022', '辽宁灯塔县', 'LNDTX');
INSERT INTO `area_dict` VALUES ('2905', '211081', '辽宁灯塔市', 'LNDTS');
INSERT INTO `area_dict` VALUES ('2906', '211100', '辽宁盘锦市', 'LNPJS');
INSERT INTO `area_dict` VALUES ('2907', '211101', '辽宁盘锦市辖区', 'LNPJSXQ');
INSERT INTO `area_dict` VALUES ('2908', '211121', '辽宁大洼县', 'LNDWX');
INSERT INTO `area_dict` VALUES ('2909', '211122', '辽宁盘山县', 'LNPSX');
INSERT INTO `area_dict` VALUES ('2910', '211200', '辽宁铁岭市', 'LNTLS');
INSERT INTO `area_dict` VALUES ('2911', '211201', '辽宁铁岭市辖区', 'LNTLSXQ');
INSERT INTO `area_dict` VALUES ('2912', '211221', '辽宁铁岭县', 'LNTLX');
INSERT INTO `area_dict` VALUES ('2913', '211223', '辽宁西丰县', 'LNXFX');
INSERT INTO `area_dict` VALUES ('2914', '211224', '辽宁昌图县', 'LNCTX');
INSERT INTO `area_dict` VALUES ('2915', '211281', '辽宁铁法市', 'LNTFS');
INSERT INTO `area_dict` VALUES ('2916', '211282', '辽宁开原市', 'LNKYS');
INSERT INTO `area_dict` VALUES ('2917', '211300', '辽宁朝阳市', 'LNCYS');
INSERT INTO `area_dict` VALUES ('2918', '211301', '辽宁朝阳市辖区', 'LNCYSXQ');
INSERT INTO `area_dict` VALUES ('2919', '211321', '辽宁朝阳县', 'LNCYX');
INSERT INTO `area_dict` VALUES ('2920', '211322', '辽宁建平县', 'LNJPX');
INSERT INTO `area_dict` VALUES ('2921', '211324', '辽宁喀喇沁左翼蒙古族自治县', 'LNKLQZYM');
INSERT INTO `area_dict` VALUES ('2922', '211381', '辽宁北票市', 'LNBPS');
INSERT INTO `area_dict` VALUES ('2923', '211382', '辽宁凌源市', 'LNLYS');
INSERT INTO `area_dict` VALUES ('2924', '211400', '辽宁葫芦岛市', 'LNHLDS');
INSERT INTO `area_dict` VALUES ('2925', '211401', '辽宁锦西市辖区', 'LNJXSXQ');
INSERT INTO `area_dict` VALUES ('2926', '211421', '辽宁绥中县', 'LNSZX');
INSERT INTO `area_dict` VALUES ('2927', '211422', '辽宁建昌县', 'LNJCX');
INSERT INTO `area_dict` VALUES ('2928', '211481', '辽宁兴城市', 'LNXCS');
INSERT INTO `area_dict` VALUES ('2929', '220000', '吉林省', 'JLS');
INSERT INTO `area_dict` VALUES ('2930', '220100', '吉林长春市', 'JLCCS');
INSERT INTO `area_dict` VALUES ('2931', '220101', '吉林长春市辖区', 'JLCCSXQ');
INSERT INTO `area_dict` VALUES ('2932', '210600', '辽宁丹东市', 'LNDDS');
INSERT INTO `area_dict` VALUES ('2933', '152634', '内蒙古四子王旗', 'NMGSZWQ');
INSERT INTO `area_dict` VALUES ('2934', '152700', '内蒙伊克昭盟', 'NMYKZM');
INSERT INTO `area_dict` VALUES ('2935', '152701', '内蒙东胜市', 'NMDSS');
INSERT INTO `area_dict` VALUES ('2936', '152722', '内蒙达拉特旗', 'NMDLTQ');
INSERT INTO `area_dict` VALUES ('2937', '152723', '内蒙准格尔旗', 'NMZGEQ');
INSERT INTO `area_dict` VALUES ('2938', '152724', '内蒙鄂托克前旗', 'NMETKQQ');
INSERT INTO `area_dict` VALUES ('2939', '152725', '内蒙鄂托克旗', 'NMETKQ');
INSERT INTO `area_dict` VALUES ('2940', '152726', '内蒙杭锦旗', 'NMHJQ');
INSERT INTO `area_dict` VALUES ('2941', '152727', '内蒙乌审旗', 'NMWSQ');
INSERT INTO `area_dict` VALUES ('2942', '152728', '内蒙伊金霍洛旗', 'NMYJHLQ');
INSERT INTO `area_dict` VALUES ('2943', '152800', '内蒙古巴彦淖尔盟', 'NMGBYNEM');
INSERT INTO `area_dict` VALUES ('2944', '152801', '内蒙古临河市', 'NMGLHS');
INSERT INTO `area_dict` VALUES ('2945', '152822', '内蒙古五原县', 'NMGWYX');
INSERT INTO `area_dict` VALUES ('2946', '152823', '内蒙古磴口县', 'NMGDKX');
INSERT INTO `area_dict` VALUES ('2947', '140500', '山西晋城市', 'SXJCS');
INSERT INTO `area_dict` VALUES ('2948', '130827', '河北宽城满族自治县', 'HBKCMZZZ');
INSERT INTO `area_dict` VALUES ('2949', '130828', '河北围场满族蒙古族自治县', 'HBWCMZMG');
INSERT INTO `area_dict` VALUES ('2950', '130900', '河北沧州市', 'HBCZS');
INSERT INTO `area_dict` VALUES ('2951', '130901', '河北沧州市辖区', 'HBCZSXQ');
INSERT INTO `area_dict` VALUES ('2952', '130921', '河北沧县', 'HBCX');
INSERT INTO `area_dict` VALUES ('2953', '130922', '河北青县', 'HBQX');
INSERT INTO `area_dict` VALUES ('2954', '130923', '河北东光县', 'HBDGX');
INSERT INTO `area_dict` VALUES ('2955', '130924', '河北海兴县', 'HBHXX');
INSERT INTO `area_dict` VALUES ('2956', '130925', '河北盐山县', 'HBYSX');
INSERT INTO `area_dict` VALUES ('2957', '130926', '河北肃宁县', 'HBSNX');
INSERT INTO `area_dict` VALUES ('2958', '130927', '河北南皮县', 'HBNPX');
INSERT INTO `area_dict` VALUES ('2959', '130928', '河北吴桥县', 'HBWQX');
INSERT INTO `area_dict` VALUES ('2960', '130929', '河北献县', 'HBXX');
INSERT INTO `area_dict` VALUES ('2961', '130930', '河北孟村回族自治县', 'HBMCHZZZ');
INSERT INTO `area_dict` VALUES ('2962', '130981', '河北泊头市', 'HBBTS');
INSERT INTO `area_dict` VALUES ('2963', '130982', '河北任丘市', 'HBRQS');
INSERT INTO `area_dict` VALUES ('2964', '130983', '河北黄骅市', 'HBHHS');
INSERT INTO `area_dict` VALUES ('2965', '130984', '河北河间市', 'HBHJS');
INSERT INTO `area_dict` VALUES ('2966', '131000', '河北廊坊市', 'HBLFS');
INSERT INTO `area_dict` VALUES ('2967', '131001', '河北廓坊市辖区', 'HBLFSXQ');
INSERT INTO `area_dict` VALUES ('2968', '131022', '河北固安县', 'HBGAX');
INSERT INTO `area_dict` VALUES ('2969', '131023', '河北永清县', 'HBYQX');
INSERT INTO `area_dict` VALUES ('2970', '131024', '河北香河县', 'HBXHX');
INSERT INTO `area_dict` VALUES ('2971', '131025', '河北大成县', 'HBDCX');
INSERT INTO `area_dict` VALUES ('2972', '131026', '河北文安县', 'HBWAX');
INSERT INTO `area_dict` VALUES ('2973', '131028', '河北大厂回族自治县', 'HBDCHZZZ');
INSERT INTO `area_dict` VALUES ('2974', '131081', '河北霸州市', 'HBBZS');
INSERT INTO `area_dict` VALUES ('2975', '131082', '河北三河市', 'HBSHS');
INSERT INTO `area_dict` VALUES ('2976', '131100', '河北衡水市', 'HBHSS');
INSERT INTO `area_dict` VALUES ('2977', '131121', '河北枣强县', 'HBZQX');
INSERT INTO `area_dict` VALUES ('2978', '131122', '河北武邑县', 'HBWYX');
INSERT INTO `area_dict` VALUES ('2979', '131123', '河北武强县', 'HBWQX');
INSERT INTO `area_dict` VALUES ('2980', '131124', '河北饶阳县', 'HBRYX');
INSERT INTO `area_dict` VALUES ('2981', '131125', '河北安平县', 'HBAPX');
INSERT INTO `area_dict` VALUES ('2982', '131126', '河北故城县', 'HBGCX');
INSERT INTO `area_dict` VALUES ('2983', '131127', '河北景县', 'HBJX');
INSERT INTO `area_dict` VALUES ('2984', '131128', '河北阜城县', 'HBFCX');
INSERT INTO `area_dict` VALUES ('2985', '131181', '河北冀州市', 'HBJZS');
INSERT INTO `area_dict` VALUES ('2986', '131182', '河北深州市', 'HBSZS');
INSERT INTO `area_dict` VALUES ('2987', '132400', '河北保定地区', 'HBBDDQ');
INSERT INTO `area_dict` VALUES ('2988', '132401', '河北定州市　', 'HBDZS');
INSERT INTO `area_dict` VALUES ('2989', '132402', '河北涿州市　', 'HBZZS');
INSERT INTO `area_dict` VALUES ('2990', '132403', '河北安国市　', 'HBAGS');
INSERT INTO `area_dict` VALUES ('2991', '132404', '河北高碑店市　', 'HBGBDS');
INSERT INTO `area_dict` VALUES ('2992', '132421', '河北易县　', 'HBYX');
INSERT INTO `area_dict` VALUES ('2993', '132423', '河北徐水县　', 'HBXSX');
INSERT INTO `area_dict` VALUES ('2994', '132424', '河北涞源县　', 'HBLYX');
INSERT INTO `area_dict` VALUES ('2995', '132425', '河北定兴县　', 'HBDXX');
INSERT INTO `area_dict` VALUES ('2996', '132426', '河北顺平县　', 'HBSPX');
INSERT INTO `area_dict` VALUES ('2997', '132427', '河北唐县　', 'HBTX');
INSERT INTO `area_dict` VALUES ('2998', '132428', '河北望都县　', 'HBWDX');
INSERT INTO `area_dict` VALUES ('2999', '130826', '河北丰宁满族自治县', 'HBFNMZZZ');
INSERT INTO `area_dict` VALUES ('3000', '132429', '河北涞水县　', 'HBLSX');
INSERT INTO `area_dict` VALUES ('3001', '130529', '河北巨鹿县', 'HBJLX');
INSERT INTO `area_dict` VALUES ('3002', '130530', '河北新河县', 'HBXHX');
INSERT INTO `area_dict` VALUES ('3003', '130531', '河北广宗县', 'HBGZX');
INSERT INTO `area_dict` VALUES ('3004', '130532', '河北平乡县', 'HBPXX');
INSERT INTO `area_dict` VALUES ('3005', '130533', '河北威县', 'HBWX');
INSERT INTO `area_dict` VALUES ('3006', '130534', '河北清河县', 'HBQHX');
INSERT INTO `area_dict` VALUES ('3007', '130535', '河北临西县', 'HBLXX');
INSERT INTO `area_dict` VALUES ('3008', '130581', '河北南宫市', 'HBNGS');
INSERT INTO `area_dict` VALUES ('3009', '130582', '河北沙河市', 'HBSHS');
INSERT INTO `area_dict` VALUES ('3010', '130600', '河北保定市', 'HBBDS');
INSERT INTO `area_dict` VALUES ('3011', '130601', '河北保定市辖区', 'HBBDSXQ');
INSERT INTO `area_dict` VALUES ('3012', '130621', '河北满城县', 'HBMCX');
INSERT INTO `area_dict` VALUES ('3013', '130622', '河北清苑县', 'HBQYX');
INSERT INTO `area_dict` VALUES ('3014', '130623', '河北涞水县', 'HBLSX');
INSERT INTO `area_dict` VALUES ('3015', '130624', '河北阜平县', 'HBFPX');
INSERT INTO `area_dict` VALUES ('3016', '130625', '河北徐水县', 'HBXSX');
INSERT INTO `area_dict` VALUES ('3017', '130626', '河北定兴县', 'HBDXX');
INSERT INTO `area_dict` VALUES ('3018', '130627', '河北唐县', 'HBTX');
INSERT INTO `area_dict` VALUES ('3019', '130628', '河北高阳县', 'HBGYX');
INSERT INTO `area_dict` VALUES ('3020', '130629', '河北容城县', 'HBRCX');
INSERT INTO `area_dict` VALUES ('3021', '130630', '河北涞源县', 'HBLYX');
INSERT INTO `area_dict` VALUES ('3022', '130631', '河北望都县', 'HBWDX');
INSERT INTO `area_dict` VALUES ('3023', '130632', '河北安新县', 'HBAXX');
INSERT INTO `area_dict` VALUES ('3024', '130633', '河北易县', 'HBYX');
INSERT INTO `area_dict` VALUES ('3025', '130634', '河北曲阳县', 'HBQYX');
INSERT INTO `area_dict` VALUES ('3026', '130635', '河北蠡县', 'HBLX');
INSERT INTO `area_dict` VALUES ('3027', '130636', '河北顺平县', 'HBSPX');
INSERT INTO `area_dict` VALUES ('3028', '130637', '河北博野县', 'HBBYX');
INSERT INTO `area_dict` VALUES ('3029', '130638', '河北雄县', 'HBXX');
INSERT INTO `area_dict` VALUES ('3030', '130681', '河北涿州市', 'HBZZS');
INSERT INTO `area_dict` VALUES ('3031', '130682', '河北定州市', 'HBDZS');
INSERT INTO `area_dict` VALUES ('3032', '130683', '河北安国市', 'HBAGS');
INSERT INTO `area_dict` VALUES ('3033', '130684', '河北高碑店市', 'HBGBDS');
INSERT INTO `area_dict` VALUES ('3034', '130700', '河北张家口市', 'HBZJKS');
INSERT INTO `area_dict` VALUES ('3035', '130701', '河北张家口市辖区', 'HBZJKSXQ');
INSERT INTO `area_dict` VALUES ('3036', '130721', '河北宣化县', 'HBXHX');
INSERT INTO `area_dict` VALUES ('3037', '130722', '河北张北县', 'HBZBX');
INSERT INTO `area_dict` VALUES ('3038', '130723', '河北康保县', 'HBKBX');
INSERT INTO `area_dict` VALUES ('3039', '130724', '河北沽源县', 'HBGYX');
INSERT INTO `area_dict` VALUES ('3040', '130725', '河北尚义县', 'HBSYX');
INSERT INTO `area_dict` VALUES ('3041', '130726', '河北蔚县', 'HBWX');
INSERT INTO `area_dict` VALUES ('3042', '130727', '河北阳原县', 'HBYYX');
INSERT INTO `area_dict` VALUES ('3043', '130728', '河北怀安县', 'HBHAX');
INSERT INTO `area_dict` VALUES ('3044', '130729', '河北万全县', 'HBWQX');
INSERT INTO `area_dict` VALUES ('3045', '130730', '河北怀来县', 'HBHLX');
INSERT INTO `area_dict` VALUES ('3046', '130731', '河北涿鹿县', 'HBZLX');
INSERT INTO `area_dict` VALUES ('3047', '130732', '河北赤城县', 'HBCCX');
INSERT INTO `area_dict` VALUES ('3048', '130733', '河北崇礼县', 'HBCLX');
INSERT INTO `area_dict` VALUES ('3049', '130800', '河北承德市', 'HBCDS');
INSERT INTO `area_dict` VALUES ('3050', '130801', '河北承德市辖区', 'HBCDSXQ');
INSERT INTO `area_dict` VALUES ('3051', '130821', '河北承德县', 'HBCDX');
INSERT INTO `area_dict` VALUES ('3052', '130822', '河北兴隆县', 'HBXLX');
INSERT INTO `area_dict` VALUES ('3053', '130528', '河北宁晋县', 'HBNJX');
INSERT INTO `area_dict` VALUES ('3054', '130823', '河北平泉县', 'HBPQX');
INSERT INTO `area_dict` VALUES ('3055', '130824', '河北滦平县', 'HBLPX');
INSERT INTO `area_dict` VALUES ('3056', '130825', '河北隆化县', 'HBLHX');
INSERT INTO `area_dict` VALUES ('3057', '580000', '香港特别行政区', 'XGTBXZQ');
INSERT INTO `area_dict` VALUES ('3058', '580001', '澳门特别行政区', 'AMTBXZQ');
INSERT INTO `area_dict` VALUES ('3059', '232127', '黑龙江木兰县　', 'HLJMLX');
INSERT INTO `area_dict` VALUES ('3060', '232128', '黑龙江通河县　', 'HLJTHX');
INSERT INTO `area_dict` VALUES ('3061', '232131', '黑龙江延寿县　', 'HLJYSX');
INSERT INTO `area_dict` VALUES ('3062', '232300', '黑龙江绥化地区', 'HLJSHDQ');
INSERT INTO `area_dict` VALUES ('3063', '232301', '黑龙江绥化市　', 'HLJSHS');
INSERT INTO `area_dict` VALUES ('3064', '232302', '黑龙江安达市　', 'HLJADS');
INSERT INTO `area_dict` VALUES ('3065', '232303', '黑龙江肇东市　', 'HLJZDS');
INSERT INTO `area_dict` VALUES ('3066', '232304', '黑龙江海伦市　', 'HLJHLS');
INSERT INTO `area_dict` VALUES ('3067', '232324', '黑龙江望奎县　', 'HLJWKX');
INSERT INTO `area_dict` VALUES ('3068', '232325', '黑龙江兰西县　', 'HLJLXX');
INSERT INTO `area_dict` VALUES ('3069', '232326', '黑龙江青冈县　', 'HLJQGX');
INSERT INTO `area_dict` VALUES ('3070', '232330', '黑龙江庆安县　', 'HLJQAX');
INSERT INTO `area_dict` VALUES ('3071', '232331', '黑龙江明水县　', 'HLJMSX');
INSERT INTO `area_dict` VALUES ('3072', '232332', '黑龙江绥棱县　', 'HLJSLX');
INSERT INTO `area_dict` VALUES ('3073', '232700', '黑龙江大兴安岭地区', 'HLJDXALD');
INSERT INTO `area_dict` VALUES ('3074', '232721', '黑龙江呼玛县', 'HLJHMX');
INSERT INTO `area_dict` VALUES ('3075', '232722', '黑龙江塔河县', 'HLJTHX');
INSERT INTO `area_dict` VALUES ('3076', '232723', '黑龙江漠河县', 'HLJMHX');
INSERT INTO `area_dict` VALUES ('3077', '270781', '辽宁凌海市　', 'LNLHS');
INSERT INTO `area_dict` VALUES ('3078', '310000', '上海市', 'SHS');
INSERT INTO `area_dict` VALUES ('3079', '310100', '上海市辖区', 'SHSXO');
INSERT INTO `area_dict` VALUES ('3080', '310101', '上海黄浦区', 'SHHPO');
INSERT INTO `area_dict` VALUES ('3081', '310102', '上海南市区', 'SHNSQ');
INSERT INTO `area_dict` VALUES ('3082', '310103', '上海卢湾区', 'SHLWO');
INSERT INTO `area_dict` VALUES ('3083', '310104', '上海徐汇区', 'SHXHO');
INSERT INTO `area_dict` VALUES ('3084', '310105', '上海长宁区', 'SHCNO');
INSERT INTO `area_dict` VALUES ('3085', '310106', '上海静安区', 'SHJAO');
INSERT INTO `area_dict` VALUES ('3086', '310107', '上海普陀区', 'SHPTO');
INSERT INTO `area_dict` VALUES ('3087', '310108', '上海闸北区', 'SHZBO');
INSERT INTO `area_dict` VALUES ('3088', '310109', '上海虹口区', 'SHHKO');
INSERT INTO `area_dict` VALUES ('3089', '310110', '上海杨浦区', 'SHYPO');
INSERT INTO `area_dict` VALUES ('3090', '310112', '上海闵行区', 'SHMXO');
INSERT INTO `area_dict` VALUES ('3091', '310113', '上海宝山区', 'SHBSO');
INSERT INTO `area_dict` VALUES ('3092', '310114', '上海嘉定区', 'SHJDO');
INSERT INTO `area_dict` VALUES ('3093', '310115', '上海浦东新区', 'SHPDXO');
INSERT INTO `area_dict` VALUES ('3094', '310116', '上海金山区', 'SHJSO');
INSERT INTO `area_dict` VALUES ('3095', '310117', '上海松江区', 'SHSJO');
INSERT INTO `area_dict` VALUES ('3096', '310118', '上海青浦区', 'SHQPO');
INSERT INTO `area_dict` VALUES ('3097', '310119', '上海南汇区', 'SHNHO');
INSERT INTO `area_dict` VALUES ('3098', '310120', '上海奉贤区', 'SHFXO');
INSERT INTO `area_dict` VALUES ('3099', '310200', '上海县', 'SHX');
INSERT INTO `area_dict` VALUES ('3100', '310225', '上海南汇县', 'SHNHX');
INSERT INTO `area_dict` VALUES ('3101', '310226', '上海奉贤县', 'SHFXX');
INSERT INTO `area_dict` VALUES ('3102', '310227', '上海松江县', 'SHSJX');
INSERT INTO `area_dict` VALUES ('3103', '310228', '上海金山县', 'SHJSX');
INSERT INTO `area_dict` VALUES ('3104', '310229', '上海青浦县', 'SHQPX');
INSERT INTO `area_dict` VALUES ('3105', '310230', '上海崇明县', 'SHCMX');
INSERT INTO `area_dict` VALUES ('3106', '320000', '江苏省', 'JSS');
INSERT INTO `area_dict` VALUES ('3107', '320100', '江苏南京市', 'JSNJS');
INSERT INTO `area_dict` VALUES ('3108', '232101', '黑龙江双城市　', 'HLJSCS');
INSERT INTO `area_dict` VALUES ('3109', '230621', '黑龙江肇州县', 'HLJZZX');
INSERT INTO `area_dict` VALUES ('3110', '230622', '黑龙江肇源县', 'HLJZYX');
INSERT INTO `area_dict` VALUES ('3111', '230623', '黑龙江林甸县', 'HLJLDX');
INSERT INTO `area_dict` VALUES ('3112', '230624', '黑龙江杜尔伯特蒙古族自治县', 'HLJDEBTM');
INSERT INTO `area_dict` VALUES ('3113', '230700', '黑龙江伊春市', 'HLJYCS');
INSERT INTO `area_dict` VALUES ('3114', '230701', '黑龙江伊春市辖区', 'HLJYCSXQ');
INSERT INTO `area_dict` VALUES ('3115', '230722', '黑龙江嘉荫县', 'HLJJYX');
INSERT INTO `area_dict` VALUES ('3116', '230781', '黑龙江铁力市', 'HLJTLS');
INSERT INTO `area_dict` VALUES ('3117', '230800', '黑龙江佳木斯市', 'HLJJMSS');
INSERT INTO `area_dict` VALUES ('3118', '230801', '黑龙江佳木斯市辖区', 'HLJJMSSX');
INSERT INTO `area_dict` VALUES ('3119', '230822', '黑龙江桦南县', 'HLJHNX');
INSERT INTO `area_dict` VALUES ('3120', '230826', '黑龙江桦川县', 'HLJHCX');
INSERT INTO `area_dict` VALUES ('3121', '230828', '黑龙江汤原县', 'HLJTYX');
INSERT INTO `area_dict` VALUES ('3122', '230833', '黑龙江抚远县', 'HLJFYX');
INSERT INTO `area_dict` VALUES ('3123', '230881', '黑龙江同江市', 'HLJTJS');
INSERT INTO `area_dict` VALUES ('3124', '230882', '黑龙江富锦市', 'HLJFJS');
INSERT INTO `area_dict` VALUES ('3125', '230900', '黑龙江七台河市', 'HLJQTHS');
INSERT INTO `area_dict` VALUES ('3126', '230901', '黑龙江七台河市辖区', 'HLJQTHSX');
INSERT INTO `area_dict` VALUES ('3127', '230921', '黑龙江勃利县', 'HLJBLX');
INSERT INTO `area_dict` VALUES ('3128', '231000', '黑龙江牡丹江市', 'HLJMDJS');
INSERT INTO `area_dict` VALUES ('3129', '231001', '黑龙江牡丹江市辖区', 'HLJMDJSX');
INSERT INTO `area_dict` VALUES ('3130', '231023', '黑龙江穆棱县', 'HLJMLX');
INSERT INTO `area_dict` VALUES ('3131', '231024', '黑龙江东宁县', 'HLJDNX');
INSERT INTO `area_dict` VALUES ('3132', '231025', '黑龙江林口县', 'HLJLKX');
INSERT INTO `area_dict` VALUES ('3133', '231081', '黑龙江绥芬河市', 'HLJSFHS');
INSERT INTO `area_dict` VALUES ('3134', '231082', '黑龙江密山市　', 'HLJMSS');
INSERT INTO `area_dict` VALUES ('3135', '231083', '黑龙江海林市', 'HLJHLS');
INSERT INTO `area_dict` VALUES ('3136', '231084', '黑龙江宁安市', 'HLJNAS');
INSERT INTO `area_dict` VALUES ('3137', '231085', '黑龙江穆棱市', 'HLJMLS');
INSERT INTO `area_dict` VALUES ('3138', '231100', '黑龙江黑河市', 'HLJHHS');
INSERT INTO `area_dict` VALUES ('3139', '231101', '黑龙江黑河市辖区', 'HLJHHSXQ');
INSERT INTO `area_dict` VALUES ('3140', '231121', '黑龙江嫩江县', 'HLJNJX');
INSERT INTO `area_dict` VALUES ('3141', '231122', '黑龙江德都县', 'HLJDDX');
INSERT INTO `area_dict` VALUES ('3142', '231123', '黑龙江逊克县', 'HLJXKX');
INSERT INTO `area_dict` VALUES ('3143', '231124', '黑龙江孙吴县', 'HLJSWX');
INSERT INTO `area_dict` VALUES ('3144', '231181', '黑龙江北安市', 'HLJBAS');
INSERT INTO `area_dict` VALUES ('3145', '231182', '黑龙江五大连池市', 'HLJWDLCS');
INSERT INTO `area_dict` VALUES ('3146', '231200', '黑龙江绥化市', 'HLJSHS');
INSERT INTO `area_dict` VALUES ('3147', '231221', '黑龙江望奎县', 'HLJWKX');
INSERT INTO `area_dict` VALUES ('3148', '231222', '黑龙江兰西县', 'HLJLXX');
INSERT INTO `area_dict` VALUES ('3149', '231223', '黑龙江青冈县', 'HLJQGX');
INSERT INTO `area_dict` VALUES ('3150', '231224', '黑龙江庆安县', 'HLJQAX');
INSERT INTO `area_dict` VALUES ('3151', '231225', '黑龙江明水县', 'HLJMSX');
INSERT INTO `area_dict` VALUES ('3152', '231226', '黑龙江绥棱县', 'HLJSLX');
INSERT INTO `area_dict` VALUES ('3153', '231281', '黑龙江安达市', 'HLJADS');
INSERT INTO `area_dict` VALUES ('3154', '231282', '黑龙江肇东市', 'HLJZDS');
INSERT INTO `area_dict` VALUES ('3155', '231283', '黑龙江海伦市', 'HLJHLS');
INSERT INTO `area_dict` VALUES ('3156', '232100', '黑龙江松花江地区', 'HLJSHJDQ');
INSERT INTO `area_dict` VALUES ('3157', '230601', '黑龙江大庆市辖区', 'HLJDQSXQ');
INSERT INTO `area_dict` VALUES ('3158', '222403', '吉林敦化市', 'JLDHS');
INSERT INTO `area_dict` VALUES ('3159', '222404', '吉林珲春市', 'JLHCS');
INSERT INTO `area_dict` VALUES ('3160', '222405', '吉林龙井市', 'JLLJS');
INSERT INTO `area_dict` VALUES ('3161', '222406', '吉林和龙市', 'JLHLS');
INSERT INTO `area_dict` VALUES ('3162', '222424', '吉林汪清县', 'JLWQX');
INSERT INTO `area_dict` VALUES ('3163', '222426', '吉林安图县', 'JLATX');
INSERT INTO `area_dict` VALUES ('3164', '230000', '黑龙江省', 'HLJS');
INSERT INTO `area_dict` VALUES ('3165', '230100', '黑龙江哈尔滨市', 'HLJHEBS');
INSERT INTO `area_dict` VALUES ('3166', '230101', '黑龙江哈尔滨市辖区', 'HLJHEBSX');
INSERT INTO `area_dict` VALUES ('3167', '230121', '黑龙江呼兰县', 'HLJHLX');
INSERT INTO `area_dict` VALUES ('3168', '230123', '黑龙江依兰县', 'HLJYLX');
INSERT INTO `area_dict` VALUES ('3169', '230124', '黑龙江方正县', 'HLJFZX');
INSERT INTO `area_dict` VALUES ('3170', '230125', '黑龙江宾县', 'HLJBX');
INSERT INTO `area_dict` VALUES ('3171', '230126', '黑龙江巴彦县', 'HLJBYX');
INSERT INTO `area_dict` VALUES ('3172', '230127', '黑龙江木兰县', 'HLJMLX');
INSERT INTO `area_dict` VALUES ('3173', '230128', '黑龙江通河县', 'HLJTHX');
INSERT INTO `area_dict` VALUES ('3174', '230129', '黑龙江延寿县', 'HLJYSX');
INSERT INTO `area_dict` VALUES ('3175', '230181', '黑龙江阿城市', 'HLJACS');
INSERT INTO `area_dict` VALUES ('3176', '230182', '黑龙江双城市', 'HLJSCS');
INSERT INTO `area_dict` VALUES ('3177', '230183', '黑龙江尚志市', 'HLJSZS');
INSERT INTO `area_dict` VALUES ('3178', '230184', '黑龙江五常市', 'HLJWCS');
INSERT INTO `area_dict` VALUES ('3179', '230200', '黑龙江齐齐哈尔市', 'HLJQQHES');
INSERT INTO `area_dict` VALUES ('3180', '230201', '黑龙江齐齐哈尔市辖区', 'HLJQQHES');
INSERT INTO `area_dict` VALUES ('3181', '230221', '黑龙江龙江县', 'HLJLJX');
INSERT INTO `area_dict` VALUES ('3182', '230223', '黑龙江依安县', 'HLJYAX');
INSERT INTO `area_dict` VALUES ('3183', '230224', '黑龙江泰来县', 'HLJTLX');
INSERT INTO `area_dict` VALUES ('3184', '230225', '黑龙江甘南县', 'HLJGNX');
INSERT INTO `area_dict` VALUES ('3185', '230227', '黑龙江富裕县', 'HLJFYX');
INSERT INTO `area_dict` VALUES ('3186', '230229', '黑龙江克山县', 'HLJKSX');
INSERT INTO `area_dict` VALUES ('3187', '230230', '黑龙江克东县', 'HLJKDX');
INSERT INTO `area_dict` VALUES ('3188', '230231', '黑龙江拜泉县', 'HLJBQX');
INSERT INTO `area_dict` VALUES ('3189', '230281', '黑龙江讷河市', 'HLJNHS');
INSERT INTO `area_dict` VALUES ('3190', '230300', '黑龙江鸡西市', 'HLJJXS');
INSERT INTO `area_dict` VALUES ('3191', '230301', '黑龙江鸡西市辖区', 'HLJJXSXQ');
INSERT INTO `area_dict` VALUES ('3192', '230321', '黑龙江鸡东县', 'HLJJDX');
INSERT INTO `area_dict` VALUES ('3193', '230322', '黑龙江虎林县', 'HLJHLX');
INSERT INTO `area_dict` VALUES ('3194', '230381', '黑龙江虎林市', 'HLJHLS');
INSERT INTO `area_dict` VALUES ('3195', '230382', '黑龙江密山市', 'HLJMSS');
INSERT INTO `area_dict` VALUES ('3196', '230400', '黑龙江鹤岗市', 'HLJHGS');
INSERT INTO `area_dict` VALUES ('3197', '230401', '黑龙江鹤岗市辖区', 'HLJHGSXQ');
INSERT INTO `area_dict` VALUES ('3198', '230421', '黑龙江萝北县', 'HLJLBX');
INSERT INTO `area_dict` VALUES ('3199', '230422', '黑龙江绥滨县', 'HLJSBX');
INSERT INTO `area_dict` VALUES ('3200', '230500', '黑龙江双鸭山市', 'HLJSYSS');
INSERT INTO `area_dict` VALUES ('3201', '230501', '黑龙江双鸭山市辖区', 'HLJSYSSX');
INSERT INTO `area_dict` VALUES ('3202', '230521', '黑龙江集贤县', 'HLJJXX');
INSERT INTO `area_dict` VALUES ('3203', '230522', '黑龙江友谊县', 'HLJYYX');
INSERT INTO `area_dict` VALUES ('3204', '230523', '黑龙江宝清县', 'HLJBQX');
INSERT INTO `area_dict` VALUES ('3205', '230524', '黑龙江饶河县', 'HLJRHX');
INSERT INTO `area_dict` VALUES ('3206', '230600', '黑龙江大庆市', 'HLJDQS');
INSERT INTO `area_dict` VALUES ('3207', '222402', '吉林图们市', 'JLTMS');
INSERT INTO `area_dict` VALUES ('3208', '220124', '吉林德惠县', 'JLDHX');
INSERT INTO `area_dict` VALUES ('3209', '220125', '吉林双阳县', 'JLSYX');
INSERT INTO `area_dict` VALUES ('3210', '220181', '吉林九台市', 'JLJTS');
INSERT INTO `area_dict` VALUES ('3211', '220182', '吉林榆树市', 'JLYSS');
INSERT INTO `area_dict` VALUES ('3212', '220183', '吉林德惠市', 'JLDHS');
INSERT INTO `area_dict` VALUES ('3213', '220200', '吉林吉林市', 'JLJLS');
INSERT INTO `area_dict` VALUES ('3214', '220201', '吉林吉林市辖区', 'JLJLSXQ');
INSERT INTO `area_dict` VALUES ('3215', '220221', '吉林永吉县', 'JLYJX');
INSERT INTO `area_dict` VALUES ('3216', '220223', '吉林磐石县', 'JLPSX');
INSERT INTO `area_dict` VALUES ('3217', '220281', '吉林蛟河市', 'JLJHS');
INSERT INTO `area_dict` VALUES ('3218', '220282', '吉林桦甸市', 'JLHDS');
INSERT INTO `area_dict` VALUES ('3219', '220283', '吉林舒兰市', 'JLSLS');
INSERT INTO `area_dict` VALUES ('3220', '220284', '吉林磐石市', 'JLPSS');
INSERT INTO `area_dict` VALUES ('3221', '220300', '吉林四平市', 'JLSPS');
INSERT INTO `area_dict` VALUES ('3222', '220301', '吉林四平市辖区', 'JLSPSXQ');
INSERT INTO `area_dict` VALUES ('3223', '220322', '吉林梨树县', 'JLLSX');
INSERT INTO `area_dict` VALUES ('3224', '220323', '吉林伊通满族自治县', 'JLYTMZZZ');
INSERT INTO `area_dict` VALUES ('3225', '220324', '吉林双辽县', 'JLSLX');
INSERT INTO `area_dict` VALUES ('3226', '220381', '吉林公主岭市', 'JLGZLS');
INSERT INTO `area_dict` VALUES ('3227', '220382', '吉林双辽市', 'JLSLS');
INSERT INTO `area_dict` VALUES ('3228', '220400', '吉林辽源市', 'JLLYS');
INSERT INTO `area_dict` VALUES ('3229', '220401', '吉林辽源市辖区', 'JLLYSXQ');
INSERT INTO `area_dict` VALUES ('3230', '220421', '吉林东丰县', 'JLDFX');
INSERT INTO `area_dict` VALUES ('3231', '220422', '吉林东辽县', 'JLDLX');
INSERT INTO `area_dict` VALUES ('3232', '220500', '吉林通化市', 'JLTHS');
INSERT INTO `area_dict` VALUES ('3233', '220501', '吉林通化市辖区', 'TLTHSXQ');
INSERT INTO `area_dict` VALUES ('3234', '220521', '吉林通化县', 'JLTHX');
INSERT INTO `area_dict` VALUES ('3235', '220523', '吉林辉南县', 'JLHNX');
INSERT INTO `area_dict` VALUES ('3236', '220524', '吉林柳河县', 'JLLHX');
INSERT INTO `area_dict` VALUES ('3237', '220581', '吉林梅河口市', 'JLMHKS');
INSERT INTO `area_dict` VALUES ('3238', '220582', '吉林集安市', 'JLJAS');
INSERT INTO `area_dict` VALUES ('3239', '220600', '吉林白山市', 'JLBSS');
INSERT INTO `area_dict` VALUES ('3240', '220601', '吉林浑江市辖区', 'JLHJSXQ');
INSERT INTO `area_dict` VALUES ('3241', '220621', '吉林抚松县', 'JLFSX');
INSERT INTO `area_dict` VALUES ('3242', '220622', '吉林靖宇县', 'JLJYX');
INSERT INTO `area_dict` VALUES ('3243', '220623', '吉林长白朝鲜族自治县', 'JLCBCXZZ');
INSERT INTO `area_dict` VALUES ('3244', '220625', '吉林江源县', 'JLJYX');
INSERT INTO `area_dict` VALUES ('3245', '220681', '吉林临江市', 'JLLJS');
INSERT INTO `area_dict` VALUES ('3246', '220700', '吉林松原市', 'JLSYS');
INSERT INTO `area_dict` VALUES ('3247', '220701', '吉林松原市辖区', 'JLSYSXQ');
INSERT INTO `area_dict` VALUES ('3248', '220721', '吉林前郭尔罗斯蒙古族自治县', 'JLQGELSM');
INSERT INTO `area_dict` VALUES ('3249', '220722', '吉林长岭县', 'JLCLX');
INSERT INTO `area_dict` VALUES ('3250', '220723', '吉林乾安县', 'JLQAX');
INSERT INTO `area_dict` VALUES ('3251', '220724', '吉林扶余县', 'JLFYX');
INSERT INTO `area_dict` VALUES ('3252', '220800', '吉林白城市', 'JLBCS');
INSERT INTO `area_dict` VALUES ('3253', '220801', '吉林白城市辖区', 'JLBCSXQ');
INSERT INTO `area_dict` VALUES ('3254', '220821', '吉林镇赉县', 'JLZLX');
INSERT INTO `area_dict` VALUES ('3255', '220822', '吉林通榆县', 'JLTYX');
INSERT INTO `area_dict` VALUES ('3256', '220881', '吉林洮南市', 'JLTNS');
INSERT INTO `area_dict` VALUES ('3257', '220882', '吉林大安市', 'JLDAS');
INSERT INTO `area_dict` VALUES ('3258', '222400', '吉林延边朝鲜族自治州', 'JLYBCXZZ');
INSERT INTO `area_dict` VALUES ('3259', '222401', '吉林延吉市', 'JLYJS');
INSERT INTO `area_dict` VALUES ('3260', '220122', '吉林农安县', 'JLNAX');
INSERT INTO `area_dict` VALUES ('3261', '210601', '辽宁丹东市辖区', 'LNDDSXQ');
INSERT INTO `area_dict` VALUES ('3262', '210621', '辽宁凤城满族自治县', 'LNFCMZZZ');
INSERT INTO `area_dict` VALUES ('3263', '210624', '辽宁宽甸满族自治县', 'LNKDMZZZ');
INSERT INTO `area_dict` VALUES ('3264', '210681', '辽宁东港市', 'LNDGS');
INSERT INTO `area_dict` VALUES ('3265', '210682', '辽宁凤城市', 'LNFCS');
INSERT INTO `area_dict` VALUES ('3266', '210700', '辽宁锦州市', 'LNJZS');
INSERT INTO `area_dict` VALUES ('3267', '210701', '辽宁锦州市辖区', 'LNJZSXQ');
INSERT INTO `area_dict` VALUES ('3268', '210725', '辽宁北镇满族自治县', 'LNBZMZZZ');
INSERT INTO `area_dict` VALUES ('3269', '210726', '辽宁黑山县', 'LNHSX');
INSERT INTO `area_dict` VALUES ('3270', '210727', '辽宁义县', 'LNYX');
INSERT INTO `area_dict` VALUES ('3271', '210781', '辽宁凌海市', 'LNLHS');
INSERT INTO `area_dict` VALUES ('3272', '152824', '内蒙古乌拉特前旗', 'NMGWLTQQ');
INSERT INTO `area_dict` VALUES ('3273', '152825', '内蒙古乌拉特中旗', 'NMGWLTZQ');
INSERT INTO `area_dict` VALUES ('3274', '152826', '内蒙古乌拉特后旗', 'NMGWLTHQ');
INSERT INTO `area_dict` VALUES ('3275', '152827', '内蒙古杭锦后旗', 'NMGHJHQ');
INSERT INTO `area_dict` VALUES ('3276', '152900', '内蒙古阿拉善盟', 'NMGALSM');
INSERT INTO `area_dict` VALUES ('3277', '152921', '内蒙古阿拉善左旗', 'NMGALSZQ');
INSERT INTO `area_dict` VALUES ('3278', '152922', '内蒙古阿拉善右旗', 'NMGALSYQ');
INSERT INTO `area_dict` VALUES ('3279', '152923', '内蒙古额济纳旗', 'NMGEJNQ');
INSERT INTO `area_dict` VALUES ('3280', '210000', '辽宁省', 'LNS');
INSERT INTO `area_dict` VALUES ('3281', '210100', '辽宁沈阳市', 'LNCYS');
INSERT INTO `area_dict` VALUES ('3282', '210101', '沈阳市辖区', 'SYSXQ');
INSERT INTO `area_dict` VALUES ('3283', '210122', '辽宁辽中县', 'LNLZX');
INSERT INTO `area_dict` VALUES ('3284', '210123', '辽宁康平县', 'LNKPX');
INSERT INTO `area_dict` VALUES ('3285', '210124', '辽宁法库县', 'LNFKX');
INSERT INTO `area_dict` VALUES ('3286', '210181', '辽宁新民市', 'LNXMS');
INSERT INTO `area_dict` VALUES ('3287', '210200', '辽宁大连市', 'LNDLS');
INSERT INTO `area_dict` VALUES ('3288', '210201', '辽宁大连市辖区', 'LNDLSXQ');
INSERT INTO `area_dict` VALUES ('3289', '210224', '辽宁长海县', 'LNCHX');
INSERT INTO `area_dict` VALUES ('3290', '210281', '辽宁瓦房店市', 'LNWFDS');
INSERT INTO `area_dict` VALUES ('3291', '210282', '辽宁普兰店市', 'LNPLDS');
INSERT INTO `area_dict` VALUES ('3292', '210283', '辽宁庄河市', 'LNZHS');
INSERT INTO `area_dict` VALUES ('3293', '210300', '辽宁鞍山市', 'LNASS');
INSERT INTO `area_dict` VALUES ('3294', '210301', '辽宁鞍山市辖区', 'LNASSXQ');
INSERT INTO `area_dict` VALUES ('3295', '210321', '辽宁台安县', 'LNTAX');
INSERT INTO `area_dict` VALUES ('3296', '210323', '辽宁岫岩满族自治县', 'LNXYMZZZ');
INSERT INTO `area_dict` VALUES ('3297', '210381', '辽宁海城市', 'LNHCS');
INSERT INTO `area_dict` VALUES ('3298', '210400', '辽宁抚顺市', 'LNFSS');
INSERT INTO `area_dict` VALUES ('3299', '210401', '辽宁抚顺市辖区', 'LNFSSXQ');
INSERT INTO `area_dict` VALUES ('3300', '210421', '辽宁抚顺县', 'LNFSX');
INSERT INTO `area_dict` VALUES ('3301', '210422', '辽宁新宾满族自治县', 'LNXBMZZZ');
INSERT INTO `area_dict` VALUES ('3302', '210423', '辽宁清原满族自治县', 'LNQYMZZZ');
INSERT INTO `area_dict` VALUES ('3303', '210500', '辽宁本溪市', 'LNBXS');
INSERT INTO `area_dict` VALUES ('3304', '210501', '辽宁本溪市辖区', 'LNBXSXQ');
INSERT INTO `area_dict` VALUES ('3305', '210521', '辽宁本溪满族自治县', 'LNBXMZZZ');
INSERT INTO `area_dict` VALUES ('3306', '210522', '辽宁桓仁满族自治县', 'LNHRMZZZ');
INSERT INTO `area_dict` VALUES ('3307', '152633', '内蒙达尔罕茂明安联合旗', 'NMDEHMMA');
INSERT INTO `area_dict` VALUES ('3308', '152129', '内蒙新巴尔虎右旗', 'NMXBEHYQ');
INSERT INTO `area_dict` VALUES ('3309', '152130', '内蒙新巴尔虎左旗', 'NMXBEHZQ');
INSERT INTO `area_dict` VALUES ('3310', '152131', '内蒙陈巴尔虎旗', 'NMCBEHQ');
INSERT INTO `area_dict` VALUES ('3311', '152200', '内蒙古兴安盟', 'NMGXAM');
INSERT INTO `area_dict` VALUES ('3312', '152201', '内蒙古乌兰浩特市', 'NMGWLHTS');
INSERT INTO `area_dict` VALUES ('3313', '152202', '内蒙古阿尔山市', 'NMGAESS');
INSERT INTO `area_dict` VALUES ('3314', '152221', '内蒙古科尔沁右翼前旗', 'NMGKEQYY');
INSERT INTO `area_dict` VALUES ('3315', '152222', '内蒙古科尔沁右翼中旗', 'NMGKEQYY');
INSERT INTO `area_dict` VALUES ('3316', '152223', '内蒙古扎赉特旗', 'NMGZLTQ');
INSERT INTO `area_dict` VALUES ('3317', '152224', '内蒙古突泉县', 'NMGTQX');
INSERT INTO `area_dict` VALUES ('3318', '152300', '内蒙哲里木盟', 'NMZLMM');
INSERT INTO `area_dict` VALUES ('3319', '152301', '内蒙通辽市', 'NMTLS');
INSERT INTO `area_dict` VALUES ('3320', '152302', '内蒙霍林郭勒市', 'NMHLGLS');
INSERT INTO `area_dict` VALUES ('3321', '152322', '内蒙科尔沁左翼中旗', 'NMKEQZYZ');
INSERT INTO `area_dict` VALUES ('3322', '152323', '内蒙科尔沁左翼后旗', 'NMKEQZYH');
INSERT INTO `area_dict` VALUES ('3323', '152324', '内蒙开鲁县', 'NMKLX');
INSERT INTO `area_dict` VALUES ('3324', '152325', '内蒙库伦旗', 'NMKLQ');
INSERT INTO `area_dict` VALUES ('3325', '152326', '内蒙奈曼旗', 'NMNMQ');
INSERT INTO `area_dict` VALUES ('3326', '152327', '内蒙扎鲁特旗', 'NMZLTQ');
INSERT INTO `area_dict` VALUES ('3327', '152500', '内蒙古锡林郭勒盟', 'NMGXLGLM');
INSERT INTO `area_dict` VALUES ('3328', '152501', '内蒙古二连浩特市', 'NMGELHTS');
INSERT INTO `area_dict` VALUES ('3329', '152502', '内蒙古锡林浩特市', 'NMGXLHTS');
INSERT INTO `area_dict` VALUES ('3330', '152522', '内蒙古阿巴嘎旗', 'NMGABGQ');
INSERT INTO `area_dict` VALUES ('3331', '152523', '内蒙古苏尼特左旗', 'NMGSNTZQ');
INSERT INTO `area_dict` VALUES ('3332', '152524', '内蒙古苏尼特右旗', 'NMGSNTYQ');
INSERT INTO `area_dict` VALUES ('3333', '152525', '内蒙古东乌珠穆沁旗', 'NMGDWZMQ');
INSERT INTO `area_dict` VALUES ('3334', '152526', '内蒙古西乌珠穆沁旗', 'NMGXWZMQ');
INSERT INTO `area_dict` VALUES ('3335', '152527', '内蒙古太仆寺旗', 'NMGTPSQ');
INSERT INTO `area_dict` VALUES ('3336', '152528', '内蒙古镶黄旗', 'NMGXHQ');
INSERT INTO `area_dict` VALUES ('3337', '152529', '内蒙古正镶白旗', 'NMGZXBQ');
INSERT INTO `area_dict` VALUES ('3338', '152530', '内蒙古正蓝旗', 'NMGZLQ');
INSERT INTO `area_dict` VALUES ('3339', '152531', '内蒙古多伦县', 'NMGDLX');
INSERT INTO `area_dict` VALUES ('3340', '152600', '内蒙古乌兰察布盟', 'NMGWLCBM');
INSERT INTO `area_dict` VALUES ('3341', '152601', '内蒙古集宁市', 'NMGJNS');
INSERT INTO `area_dict` VALUES ('3342', '152602', '内蒙古丰镇市', 'NMGFZS');
INSERT INTO `area_dict` VALUES ('3343', '152621', '内蒙武川县', 'NMWCX');
INSERT INTO `area_dict` VALUES ('3344', '152622', '内蒙和林格尔县', 'NMHLGEX');
INSERT INTO `area_dict` VALUES ('3345', '152623', '内蒙清水河县', 'NMQSHX');
INSERT INTO `area_dict` VALUES ('3346', '152624', '内蒙古卓资县', 'NMGZZX');
INSERT INTO `area_dict` VALUES ('3347', '152625', '内蒙古化德县', 'NMGHDX');
INSERT INTO `area_dict` VALUES ('3348', '152626', '内蒙古商都县', 'NMGSDX');
INSERT INTO `area_dict` VALUES ('3349', '152627', '内蒙古兴和县', 'NMGXHX');
INSERT INTO `area_dict` VALUES ('3350', '152629', '内蒙古凉城县', 'NMGLCX');
INSERT INTO `area_dict` VALUES ('3351', '152630', '内蒙古察哈尔右翼前旗', 'NMGCHEYY');
INSERT INTO `area_dict` VALUES ('3352', '152631', '内蒙古察哈尔右翼中旗', 'NMGCHEYY');
INSERT INTO `area_dict` VALUES ('3353', '152632', '内蒙古察哈尔右翼后旗', 'NMGCHEYY');
INSERT INTO `area_dict` VALUES ('3354', '152128', '内蒙鄂温克族自治旗', 'NMEWKZZZ');
INSERT INTO `area_dict` VALUES ('3355', '150424', '内蒙古林西县', 'NMGLXX');
INSERT INTO `area_dict` VALUES ('3356', '150425', '内蒙古克什克腾旗', 'NMGKSKTQ');
INSERT INTO `area_dict` VALUES ('3357', '150426', '内蒙古翁牛特旗', 'NMGWNTQ');
INSERT INTO `area_dict` VALUES ('3358', '150428', '内蒙古喀喇沁旗', 'NMGKLQQ');
INSERT INTO `area_dict` VALUES ('3359', '150429', '内蒙古宁城县', 'NMGNCX');
INSERT INTO `area_dict` VALUES ('3360', '150430', '内蒙古敖汉旗', 'NMGAHQ');
INSERT INTO `area_dict` VALUES ('3361', '150500', '内蒙古通辽市', 'NMGTLS');
INSERT INTO `area_dict` VALUES ('3362', '150521', '内蒙古科尔沁左翼中旗', 'NMGKEQZY');
INSERT INTO `area_dict` VALUES ('3363', '150522', '内蒙古科尔沁左翼后旗', 'NMGKEQZY');
INSERT INTO `area_dict` VALUES ('3364', '150523', '内蒙古开鲁县', 'NMGKLX');
INSERT INTO `area_dict` VALUES ('3365', '150524', '内蒙古库伦旗', 'NMGKLQ');
INSERT INTO `area_dict` VALUES ('3366', '150525', '内蒙古奈曼旗', 'NMGNMQ');
INSERT INTO `area_dict` VALUES ('3367', '150526', '内蒙古扎鲁特旗', 'NMGZLTQ');
INSERT INTO `area_dict` VALUES ('3368', '150581', '内蒙古霍林郭勒市', 'NMGHLGLS');
INSERT INTO `area_dict` VALUES ('3369', '150600', '内蒙古鄂尔多斯市', 'NMGEEDSS');
INSERT INTO `area_dict` VALUES ('3370', '150621', '内蒙古达拉特旗', 'NMGDLTQ');
INSERT INTO `area_dict` VALUES ('3371', '150622', '内蒙古准格尔旗', 'NMGZGEQ');
INSERT INTO `area_dict` VALUES ('3372', '150623', '内蒙古鄂托克前旗', 'NMGETKQQ');
INSERT INTO `area_dict` VALUES ('3373', '150624', '内蒙古鄂托克旗', 'NMGETKQ');
INSERT INTO `area_dict` VALUES ('3374', '150625', '内蒙古杭锦旗', 'NMGHJQ');
INSERT INTO `area_dict` VALUES ('3375', '150626', '内蒙古乌审旗', 'NMGWSQ');
INSERT INTO `area_dict` VALUES ('3376', '150627', '内蒙古伊金霍洛旗', 'NMGYJHLQ');
INSERT INTO `area_dict` VALUES ('3377', '150700', '内蒙古呼伦贝尔市', 'NMGHLBES');
INSERT INTO `area_dict` VALUES ('3378', '150721', '内蒙古阿荣旗', 'NMGARQ');
INSERT INTO `area_dict` VALUES ('3379', '150722', '内蒙古莫力达瓦达斡尔族自治旗', 'NMGMLDWD');
INSERT INTO `area_dict` VALUES ('3380', '150723', '内蒙古鄂伦春自治旗', 'NMGELCZZ');
INSERT INTO `area_dict` VALUES ('3381', '150724', '内蒙古鄂温克族自治旗', 'NMGEWKZZ');
INSERT INTO `area_dict` VALUES ('3382', '150725', '内蒙古陈巴尔虎旗', 'NMGCBEHQ');
INSERT INTO `area_dict` VALUES ('3383', '150726', '内蒙古新巴尔虎左旗', 'NMGXBEHZ');
INSERT INTO `area_dict` VALUES ('3384', '150727', '内蒙古新巴尔虎右旗', 'NMGXBEHY');
INSERT INTO `area_dict` VALUES ('3385', '150781', '内蒙古满洲里市', 'NMGMZLS');
INSERT INTO `area_dict` VALUES ('3386', '150782', '内蒙古牙克石市', 'NMGYKSS');
INSERT INTO `area_dict` VALUES ('3387', '150783', '内蒙古扎兰屯市', 'NMGZLTS');
INSERT INTO `area_dict` VALUES ('3388', '150784', '内蒙古额尔古纳市', 'NMGEEGNS');
INSERT INTO `area_dict` VALUES ('3389', '150785', '内蒙古根河市', 'NMGGHS');
INSERT INTO `area_dict` VALUES ('3390', '152100', '内蒙呼伦贝尔盟', 'NMHLBEM');
INSERT INTO `area_dict` VALUES ('3391', '152101', '内蒙海拉尔市', 'NMHLES');
INSERT INTO `area_dict` VALUES ('3392', '152102', '内蒙满州里市', 'NMMZLS');
INSERT INTO `area_dict` VALUES ('3393', '152103', '内蒙托兰屯市', 'NMTLTS');
INSERT INTO `area_dict` VALUES ('3394', '152104', '内蒙牙克石市', 'NMYKSS');
INSERT INTO `area_dict` VALUES ('3395', '152122', '内蒙阿荣旗', 'NMARQ');
INSERT INTO `area_dict` VALUES ('3396', '152123', '内蒙莫力达瓦达斡尔族自治旗', 'NMMLDWDW');
INSERT INTO `area_dict` VALUES ('3397', '152125', '内蒙额尔古纳右旗', 'NMEEGNYQ');
INSERT INTO `area_dict` VALUES ('3398', '152126', '内蒙额尔古纳左旗', 'NMEEGNZQ');
INSERT INTO `area_dict` VALUES ('3399', '152127', '内蒙鄂伦春自治旗', 'NMELCZZQ');
INSERT INTO `area_dict` VALUES ('3400', '150423', '内蒙古巴林右旗', 'NMGBLYQ');
INSERT INTO `area_dict` VALUES ('3401', '142601', '山西临汾市　', 'SXLFS');
INSERT INTO `area_dict` VALUES ('3402', '142602', '山西侯马市　', 'SXHMS');
INSERT INTO `area_dict` VALUES ('3403', '142603', '山西霍州市　', 'SXHZS');
INSERT INTO `area_dict` VALUES ('3404', '142621', '山西曲沃县　', 'SXQWX');
INSERT INTO `area_dict` VALUES ('3405', '142622', '山西翼城县　', 'SXYCX');
INSERT INTO `area_dict` VALUES ('3406', '142623', '山西襄汾县　', 'SXXFX');
INSERT INTO `area_dict` VALUES ('3407', '142625', '山西洪洞县　', 'SXHDX');
INSERT INTO `area_dict` VALUES ('3408', '142627', '山西古县　', 'SXGX');
INSERT INTO `area_dict` VALUES ('3409', '142628', '山西安泽县　', 'SXAZX');
INSERT INTO `area_dict` VALUES ('3410', '142629', '山西浮山县　', 'SXFSX');
INSERT INTO `area_dict` VALUES ('3411', '142630', '山西吉县　', 'SXJX');
INSERT INTO `area_dict` VALUES ('3412', '142631', '山西乡宁县　', 'SXXNX');
INSERT INTO `area_dict` VALUES ('3413', '142632', '山西蒲县　', 'SXPX');
INSERT INTO `area_dict` VALUES ('3414', '142633', '山西大宁县　', 'SXDNX');
INSERT INTO `area_dict` VALUES ('3415', '142634', '山西永和县　', 'SXYHX');
INSERT INTO `area_dict` VALUES ('3416', '142635', '山西隰县　', 'SXXX');
INSERT INTO `area_dict` VALUES ('3417', '142636', '山西汾西县　', 'SXFXX');
INSERT INTO `area_dict` VALUES ('3418', '142700', '山西运城地区', 'SXYCDQ');
INSERT INTO `area_dict` VALUES ('3419', '142701', '山西运城市　', 'SXYCS');
INSERT INTO `area_dict` VALUES ('3420', '142722', '山西永济县　', 'SXYJX');
INSERT INTO `area_dict` VALUES ('3421', '142723', '山西芮城县　', 'SXRCX');
INSERT INTO `area_dict` VALUES ('3422', '142724', '山西临猗县　', 'SXLYX');
INSERT INTO `area_dict` VALUES ('3423', '142725', '山西万荣县　', 'SXWRX');
INSERT INTO `area_dict` VALUES ('3424', '142726', '山西新绛县　', 'SXXJX');
INSERT INTO `area_dict` VALUES ('3425', '142727', '山西稷山县　', 'SXJSX');
INSERT INTO `area_dict` VALUES ('3426', '142728', '山西河津县　', 'SXHJX');
INSERT INTO `area_dict` VALUES ('3427', '142729', '山西闻喜县　', 'SXWXX');
INSERT INTO `area_dict` VALUES ('3428', '142730', '山西夏县　', 'SXXX');
INSERT INTO `area_dict` VALUES ('3429', '142731', '山西绛县　', 'SXJX');
INSERT INTO `area_dict` VALUES ('3430', '142732', '山西平陆县　', 'SXPLX');
INSERT INTO `area_dict` VALUES ('3431', '142733', '山西垣曲县　', 'SXYQX');
INSERT INTO `area_dict` VALUES ('3432', '150000', '内蒙古', 'NMG');
INSERT INTO `area_dict` VALUES ('3433', '150100', '内蒙古呼和浩特市', 'NMGHHHTS');
INSERT INTO `area_dict` VALUES ('3434', '150101', '内蒙呼和浩特市辖区', 'NMHHHTSX');
INSERT INTO `area_dict` VALUES ('3435', '150121', '内蒙古土默特左旗', 'NMGTMTZQ');
INSERT INTO `area_dict` VALUES ('3436', '150122', '内蒙古托克托县', 'NMGTKTX');
INSERT INTO `area_dict` VALUES ('3437', '150123', '内蒙古和林格尔县', 'NMGHLGEX');
INSERT INTO `area_dict` VALUES ('3438', '150124', '内蒙古清水河县', 'NMGQSHX');
INSERT INTO `area_dict` VALUES ('3439', '150125', '内蒙古武川县', 'NMGWCX');
INSERT INTO `area_dict` VALUES ('3440', '150200', '内蒙古包头市', 'NMGBTS');
INSERT INTO `area_dict` VALUES ('3441', '150201', '内蒙包头市辖区', 'NMBTSXQ');
INSERT INTO `area_dict` VALUES ('3442', '150221', '内蒙古土默特右旗', 'NMGTMTYQ');
INSERT INTO `area_dict` VALUES ('3443', '150222', '内蒙古固阳县', 'NMGGYX');
INSERT INTO `area_dict` VALUES ('3444', '150223', '内蒙古达尔罕茂明安联合旗', 'NMGDEHMM');
INSERT INTO `area_dict` VALUES ('3445', '150300', '内蒙古乌海市', 'NMGWHS');
INSERT INTO `area_dict` VALUES ('3446', '150301', '内蒙乌海市辖区', 'NMWHSXQ');
INSERT INTO `area_dict` VALUES ('3447', '150400', '内蒙古赤峰市', 'NMGCFS');
INSERT INTO `area_dict` VALUES ('3448', '150401', '内蒙赤峰市辖区', 'NMCFSXQ');
INSERT INTO `area_dict` VALUES ('3449', '150421', '内蒙古阿鲁科尔沁旗', 'NMGALKEQ');
INSERT INTO `area_dict` VALUES ('3450', '150422', '内蒙古巴林左旗', 'NMGBLZQ');
INSERT INTO `area_dict` VALUES ('3451', '142600', '山西临汾地区', 'SXLFDQ');
INSERT INTO `area_dict` VALUES ('3452', '141026', '山西安泽县', 'SXAZX');
INSERT INTO `area_dict` VALUES ('3453', '141027', '山西浮山县', 'SXFSX');
INSERT INTO `area_dict` VALUES ('3454', '141028', '山西吉县', 'SXJX');
INSERT INTO `area_dict` VALUES ('3455', '141029', '山西乡宁县', 'SXXNX');
INSERT INTO `area_dict` VALUES ('3456', '141030', '山西大宁县', 'SXDNX');
INSERT INTO `area_dict` VALUES ('3457', '141031', '山西隰县', 'SXXX');
INSERT INTO `area_dict` VALUES ('3458', '141032', '山西永和县', 'SXYHX');
INSERT INTO `area_dict` VALUES ('3459', '141033', '山西蒲县', 'SXPX');
INSERT INTO `area_dict` VALUES ('3460', '141034', '山西汾西县', 'SXFXX');
INSERT INTO `area_dict` VALUES ('3461', '141081', '山西侯马市', 'SXHMS');
INSERT INTO `area_dict` VALUES ('3462', '141082', '山西霍州市', 'SXHZS');
INSERT INTO `area_dict` VALUES ('3463', '142200', '山西忻州地区', 'SXXZDQ');
INSERT INTO `area_dict` VALUES ('3464', '142201', '山西忻州市　', 'SXXZS');
INSERT INTO `area_dict` VALUES ('3465', '142202', '山西原平市　', 'SXYPS');
INSERT INTO `area_dict` VALUES ('3466', '142222', '山西定襄县　', 'SXDXX');
INSERT INTO `area_dict` VALUES ('3467', '142223', '山西五台县　', 'SXWTX');
INSERT INTO `area_dict` VALUES ('3468', '142225', '山西代县　', 'SXDX');
INSERT INTO `area_dict` VALUES ('3469', '142226', '山西繁峙县　', 'SXFZX');
INSERT INTO `area_dict` VALUES ('3470', '142227', '山西宁武县　', 'SXNWX');
INSERT INTO `area_dict` VALUES ('3471', '142228', '山西静乐县　', 'SXJLX');
INSERT INTO `area_dict` VALUES ('3472', '142229', '山西神池县　', 'SXSCX');
INSERT INTO `area_dict` VALUES ('3473', '142230', '山西五寨县　', 'SXWZX');
INSERT INTO `area_dict` VALUES ('3474', '142231', '山西岢岚县　', 'SXKLX');
INSERT INTO `area_dict` VALUES ('3475', '142232', '山西河曲县　', 'SXHQX');
INSERT INTO `area_dict` VALUES ('3476', '142233', '山西保德县　', 'SXBDX');
INSERT INTO `area_dict` VALUES ('3477', '142234', '山西偏关县　', 'SXPGX');
INSERT INTO `area_dict` VALUES ('3478', '142300', '山西吕梁地区', 'SXLLDO');
INSERT INTO `area_dict` VALUES ('3479', '142301', '山西孝义市', 'SXXYS');
INSERT INTO `area_dict` VALUES ('3480', '142302', '山西离石市', 'SXLSS');
INSERT INTO `area_dict` VALUES ('3481', '142303', '山西汾阳市', 'SXFYS');
INSERT INTO `area_dict` VALUES ('3482', '142321', '山西汾阳县', 'SXFYX');
INSERT INTO `area_dict` VALUES ('3483', '142322', '山西文水县', 'SXWSX');
INSERT INTO `area_dict` VALUES ('3484', '142323', '山西交城县', 'SXJCX');
INSERT INTO `area_dict` VALUES ('3485', '142325', '山西兴县', 'SXXX');
INSERT INTO `area_dict` VALUES ('3486', '142326', '山西临县', 'SXLX');
INSERT INTO `area_dict` VALUES ('3487', '142327', '山西柳林县', 'SXLLX');
INSERT INTO `area_dict` VALUES ('3488', '142328', '山西石楼县', 'SXSLX');
INSERT INTO `area_dict` VALUES ('3489', '142329', '山西岚县', 'SXLX');
INSERT INTO `area_dict` VALUES ('3490', '142330', '山西方山县', 'SXFSX');
INSERT INTO `area_dict` VALUES ('3491', '142331', '山西离石县', 'SXLSX');
INSERT INTO `area_dict` VALUES ('3492', '142332', '山西中阳县', 'SXZYX');
INSERT INTO `area_dict` VALUES ('3493', '142333', '山西交口县', 'SXJKX');
INSERT INTO `area_dict` VALUES ('3494', '142400', '山西晋中地区', 'SXJZDQ');
INSERT INTO `area_dict` VALUES ('3495', '142401', '山西榆次市', 'SXYCS');
INSERT INTO `area_dict` VALUES ('3496', '142402', '山西介休市　', 'SXJXS');
INSERT INTO `area_dict` VALUES ('3497', '142421', '山西榆社县　', 'SXYSX');
INSERT INTO `area_dict` VALUES ('3498', '142422', '山西左权县　', 'SXZQX');
INSERT INTO `area_dict` VALUES ('3499', '142423', '山西和顺县　', 'SXHSX');
INSERT INTO `area_dict` VALUES ('3500', '142424', '山西昔阳县　', 'SXXYX');
INSERT INTO `area_dict` VALUES ('3501', '142427', '山西寿阳县　', 'SXSYX');
INSERT INTO `area_dict` VALUES ('3502', '142429', '山西太谷县　', 'SXTGX');
INSERT INTO `area_dict` VALUES ('3503', '142430', '山西祁县　', 'SXQX');
INSERT INTO `area_dict` VALUES ('3504', '142431', '山西平遥县　', 'SXPYX');
INSERT INTO `area_dict` VALUES ('3505', '142433', '山西灵石县　', 'SXLSX');
INSERT INTO `area_dict` VALUES ('3506', '141025', '山西古县', 'SXGX');
INSERT INTO `area_dict` VALUES ('3507', '140521', '山西沁水县', 'SXQSX');
INSERT INTO `area_dict` VALUES ('3508', '140522', '山西阳城县', 'SXYCX');
INSERT INTO `area_dict` VALUES ('3509', '140524', '山西陵川县', 'SXLCX');
INSERT INTO `area_dict` VALUES ('3510', '140525', '山西泽州县', 'SXZZX');
INSERT INTO `area_dict` VALUES ('3511', '140581', '山西高平市', 'SXGPS');
INSERT INTO `area_dict` VALUES ('3512', '140600', '山西朔州市', 'SXSZS');
INSERT INTO `area_dict` VALUES ('3513', '140601', '山西朔州市辖区', 'SXSZSXQ');
INSERT INTO `area_dict` VALUES ('3514', '140621', '山西山阴县', 'SXSYX');
INSERT INTO `area_dict` VALUES ('3515', '140622', '山西应县', 'SXYX');
INSERT INTO `area_dict` VALUES ('3516', '140623', '山西右玉县', 'SXYYX');
INSERT INTO `area_dict` VALUES ('3517', '140624', '山西怀仁县', 'SXHRX');
INSERT INTO `area_dict` VALUES ('3518', '140700', '山西晋中市', 'SXJZS');
INSERT INTO `area_dict` VALUES ('3519', '140721', '山西榆社县', 'SXYSX');
INSERT INTO `area_dict` VALUES ('3520', '140722', '山西左权县', 'SXZQX');
INSERT INTO `area_dict` VALUES ('3521', '140723', '山西和顺县', 'SXHSX');
INSERT INTO `area_dict` VALUES ('3522', '140724', '山西昔阳县', 'SXXYX');
INSERT INTO `area_dict` VALUES ('3523', '140725', '山西寿阳县', 'SXSYX');
INSERT INTO `area_dict` VALUES ('3524', '140726', '山西太谷县', 'SXTGX');
INSERT INTO `area_dict` VALUES ('3525', '140727', '山西祁县', 'SXQX');
INSERT INTO `area_dict` VALUES ('3526', '140728', '山西平遥县', 'SXPYX');
INSERT INTO `area_dict` VALUES ('3527', '140729', '山西灵石县', 'SXLSX');
INSERT INTO `area_dict` VALUES ('3528', '140781', '山西介休市', 'SXJXS');
INSERT INTO `area_dict` VALUES ('3529', '140800', '山西运城市', 'SXYCS');
INSERT INTO `area_dict` VALUES ('3530', '140821', '山西临猗县', 'SXLYX');
INSERT INTO `area_dict` VALUES ('3531', '140822', '山西万荣县', 'SXWRX');
INSERT INTO `area_dict` VALUES ('3532', '140823', '山西闻喜县', 'SXWXX');
INSERT INTO `area_dict` VALUES ('3533', '140824', '山西稷山县', 'SXJSX');
INSERT INTO `area_dict` VALUES ('3534', '140825', '山西新绛县', 'SXXJX');
INSERT INTO `area_dict` VALUES ('3535', '140826', '山西绛县', 'SXJX');
INSERT INTO `area_dict` VALUES ('3536', '140827', '山西垣曲县', 'SXYQX');
INSERT INTO `area_dict` VALUES ('3537', '140828', '山西夏县', 'SXXX');
INSERT INTO `area_dict` VALUES ('3538', '140829', '山西平陆县', 'SXPLX');
INSERT INTO `area_dict` VALUES ('3539', '140830', '山西芮城县', 'SXRCX');
INSERT INTO `area_dict` VALUES ('3540', '140881', '山西永济县', 'SXYJX');
INSERT INTO `area_dict` VALUES ('3541', '140882', '山西河津县', 'SXHJX');
INSERT INTO `area_dict` VALUES ('3542', '140900', '山西忻州市', 'SXXZS');
INSERT INTO `area_dict` VALUES ('3543', '140921', '山西定襄县', 'SXDXX');
INSERT INTO `area_dict` VALUES ('3544', '140922', '山西五台县', 'SXWTX');
INSERT INTO `area_dict` VALUES ('3545', '140923', '山西代县', 'SXDX');
INSERT INTO `area_dict` VALUES ('3546', '140924', '山西繁峙县', 'SXFSX');
INSERT INTO `area_dict` VALUES ('3547', '140925', '山西宁武县', 'SXNWX');
INSERT INTO `area_dict` VALUES ('3548', '140926', '山西静乐县', 'SXJLX');
INSERT INTO `area_dict` VALUES ('3549', '140927', '山西神池县', 'SXSCX');
INSERT INTO `area_dict` VALUES ('3550', '140928', '山西五寨县', 'SXWZX');
INSERT INTO `area_dict` VALUES ('3551', '140929', '山西岢岚县', 'SXKLX');
INSERT INTO `area_dict` VALUES ('3552', '140930', '山西河曲县', 'SXHQX');
INSERT INTO `area_dict` VALUES ('3553', '140931', '山西保德县', 'SXBDX');
INSERT INTO `area_dict` VALUES ('3554', '140932', '山西偏关县', 'SXPGX');
INSERT INTO `area_dict` VALUES ('3555', '140981', '山西原平市', 'SXYPS');
INSERT INTO `area_dict` VALUES ('3556', '141000', '山西临汾市', 'SXLFS');
INSERT INTO `area_dict` VALUES ('3557', '140501', '山西晋城市辖区', 'SXJCSXQ');
INSERT INTO `area_dict` VALUES ('3558', '141002', '山西尧都区', 'SXYDO');
INSERT INTO `area_dict` VALUES ('3559', '141021', '山西曲沃县', 'SXQWX');
INSERT INTO `area_dict` VALUES ('3560', '141022', '山西翼城县', 'SXYCX');
INSERT INTO `area_dict` VALUES ('3561', '141023', '山西襄汾县', 'SXXFX');
INSERT INTO `area_dict` VALUES ('3562', '141024', '山西洪洞县', 'SXHDX');
INSERT INTO `area_dict` VALUES ('3563', '132433', '河北安新县　', 'HBAXX');
INSERT INTO `area_dict` VALUES ('3564', '132434', '河北雄县　', 'HBXX');
INSERT INTO `area_dict` VALUES ('3565', '132435', '河北容城县　', 'HBRCX');
INSERT INTO `area_dict` VALUES ('3566', '132437', '河北曲阳县　', 'HBQYX');
INSERT INTO `area_dict` VALUES ('3567', '132438', '河北阜平县　', 'HBFPX');
INSERT INTO `area_dict` VALUES ('3568', '132441', '河北博野县　', 'HBBYX');
INSERT INTO `area_dict` VALUES ('3569', '132442', '河北蠡县　', 'HBLX');
INSERT INTO `area_dict` VALUES ('3570', '133000', '河北衡水地区', 'HBHSDQ');
INSERT INTO `area_dict` VALUES ('3571', '133001', '河北衡水市　', 'HBHSS');
INSERT INTO `area_dict` VALUES ('3572', '133002', '河北冀州市　', 'HBJZS');
INSERT INTO `area_dict` VALUES ('3573', '133023', '河北枣强县　', 'HBZQX');
INSERT INTO `area_dict` VALUES ('3574', '133024', '河北武邑县　', 'HBWYX');
INSERT INTO `area_dict` VALUES ('3575', '133025', '河北深县', 'HBSX');
INSERT INTO `area_dict` VALUES ('3576', '133026', '河北武强县　', 'HBWQX');
INSERT INTO `area_dict` VALUES ('3577', '133027', '河北饶阳县　', 'HBRYX');
INSERT INTO `area_dict` VALUES ('3578', '133028', '河北安平县　', 'HBAPX');
INSERT INTO `area_dict` VALUES ('3579', '133029', '河北故城县　', 'HBGCX');
INSERT INTO `area_dict` VALUES ('3580', '133030', '河北景县　', 'HBJX');
INSERT INTO `area_dict` VALUES ('3581', '133031', '河北阜城县　', 'HBFCX');
INSERT INTO `area_dict` VALUES ('3582', '140000', '山西省', 'SXS');
INSERT INTO `area_dict` VALUES ('3583', '140100', '山西太原市', 'SXTYS');
INSERT INTO `area_dict` VALUES ('3584', '140101', '山西太原市辖区', 'SXTYSXQ');
INSERT INTO `area_dict` VALUES ('3585', '140121', '山西清徐县', 'SXQXX');
INSERT INTO `area_dict` VALUES ('3586', '140122', '山西阳曲县', 'SXYQX');
INSERT INTO `area_dict` VALUES ('3587', '140123', '山西娄烦县', 'SXLFX');
INSERT INTO `area_dict` VALUES ('3588', '140181', '山西古交市', 'SXGJS');
INSERT INTO `area_dict` VALUES ('3589', '140200', '山西大同市', 'SXDTS');
INSERT INTO `area_dict` VALUES ('3590', '140201', '山西大同市辖区', 'SXDTSXQ');
INSERT INTO `area_dict` VALUES ('3591', '140221', '山西阳高县', 'SXYGX');
INSERT INTO `area_dict` VALUES ('3592', '140222', '山西天镇县', 'SXTZX');
INSERT INTO `area_dict` VALUES ('3593', '140223', '山西广灵县', 'SXGLX');
INSERT INTO `area_dict` VALUES ('3594', '140224', '山西灵丘县', 'SXLQX');
INSERT INTO `area_dict` VALUES ('3595', '140225', '山西浑源县', 'SXHYX');
INSERT INTO `area_dict` VALUES ('3596', '140226', '山西左云县', 'SXZYX');
INSERT INTO `area_dict` VALUES ('3597', '140227', '山西大同县', 'SXDTX');
INSERT INTO `area_dict` VALUES ('3598', '140300', '山西阳泉市', 'SXYQS');
INSERT INTO `area_dict` VALUES ('3599', '140301', '山西阳泉市辖区', 'SXYQSXQ');
INSERT INTO `area_dict` VALUES ('3600', '140321', '山西平定县', 'SXPDX');
INSERT INTO `area_dict` VALUES ('3601', '140322', '山西盂县', 'SXYX');
INSERT INTO `area_dict` VALUES ('3602', '140400', '山西长治市', 'SXCZS');
INSERT INTO `area_dict` VALUES ('3603', '140401', '山西长治市辖区', 'SXCZSXQ');
INSERT INTO `area_dict` VALUES ('3604', '140421', '山西长治县', 'SXCZX');
INSERT INTO `area_dict` VALUES ('3605', '140422', '山西潞城县', 'SXLCX');
INSERT INTO `area_dict` VALUES ('3606', '140423', '山西襄垣县', 'SXXYX');
INSERT INTO `area_dict` VALUES ('3607', '140424', '山西屯留县', 'SXTLX');
INSERT INTO `area_dict` VALUES ('3608', '140425', '山西平顺县', 'SXPSX');
INSERT INTO `area_dict` VALUES ('3609', '140426', '山西黎城县', 'SXLCX');
INSERT INTO `area_dict` VALUES ('3610', '140427', '山西壶关县', 'SXHGX');
INSERT INTO `area_dict` VALUES ('3611', '140428', '山西长子县', 'SXCZX');
INSERT INTO `area_dict` VALUES ('3612', '140429', '山西武乡县', 'SXWXX');
INSERT INTO `area_dict` VALUES ('3613', '140430', '山西沁县', 'SXQX');
INSERT INTO `area_dict` VALUES ('3614', '140431', '山西沁源县', 'SXQYX');
INSERT INTO `area_dict` VALUES ('3615', '132432', '河北高阳县　', 'HBGYX');
INSERT INTO `area_dict` VALUES ('3616', '140481', '山西潞城市', 'SXLCS');

-- ----------------------------
-- Table structure for award
-- ----------------------------
DROP TABLE IF EXISTS `award`;
CREATE TABLE `award` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `award_name` varchar(255) collate utf8_unicode_ci default NULL,
  `award_level` varchar(255) collate utf8_unicode_ci default NULL,
  `award_get_date` date default NULL,
  `award_desc` text collate utf8_unicode_ci,
  `award_order` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of award
-- ----------------------------
INSERT INTO `award` VALUES ('3ad14f84-4291-4551-bb05-10ab1c9cb00c', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '2015年「甲骨文杯」全国Java程序设计大赛A组二等奖', '国家级', '2015-07-18', '', '1');
INSERT INTO `award` VALUES ('53b54533-9f93-49b2-929d-d9e169b8b2dc', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '2014年「远标杯」C语言技能竞赛A组三等奖', '省区级', '2014-12-18', '', '2');
INSERT INTO `award` VALUES ('8424d834-c1e0-4c5f-81b1-43db877b93e3', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '123', '班组级', '2015-12-12', '123123', '2');

-- ----------------------------
-- Table structure for certificate
-- ----------------------------
DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_type` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_name` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_get_date` date default NULL,
  `certificate_order` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of certificate
-- ----------------------------
INSERT INTO `certificate` VALUES ('25e02b21-82b2-469b-bde1-2e0577cff248', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '计算机证书', 'CCDP 思科认证网络设计专业人员', '2015-05-01', '0');
INSERT INTO `certificate` VALUES ('84a7db7e-d715-4adf-a638-9b73cdb8ae41', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '职称证书', '初级经济师', '2013-12-01', '0');
INSERT INTO `certificate` VALUES ('9dd2d2eb-7738-43e2-a89e-683882ae2263', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '外语证书', '大学英语四级', '2013-06-01', '0');

-- ----------------------------
-- Table structure for certificate_dict
-- ----------------------------
DROP TABLE IF EXISTS `certificate_dict`;
CREATE TABLE `certificate_dict` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `certificate_type` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_name_language` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_name_computer` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_name_accounting` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_name_post` varchar(255) collate utf8_unicode_ci default NULL,
  `certificate_name_other` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of certificate_dict
-- ----------------------------
INSERT INTO `certificate_dict` VALUES ('1', '外语证书', '托福', '全国计算机应用技术证书', '注册会计师', '初级工程师', '全国律师资格证书');
INSERT INTO `certificate_dict` VALUES ('10', '', '高级口译证书', '全国计算机等级三级', '', '', '注册咨询工程师(投资)执业资格证书');
INSERT INTO `certificate_dict` VALUES ('11', '', '俄语四级证书', '全国计算机等级四级', '', '', '房地产估价师执业资格证书');
INSERT INTO `certificate_dict` VALUES ('12', '', '俄语六级证书', '计算机初级', '', '', '房地产经纪人执业资格证书');
INSERT INTO `certificate_dict` VALUES ('13', '', '法语四级证书', '计算机中级', '', '', '电子商务师职业资格证书');
INSERT INTO `certificate_dict` VALUES ('14', '', '法语六级证书', '网络初级证书', '', '', '注册税务师');
INSERT INTO `certificate_dict` VALUES ('15', '', '日语一级证书', 'MCDST微软认证操作系统技术支持工程师', '', '', '注册资产评估师');
INSERT INTO `certificate_dict` VALUES ('16', '', '日语二级证书', 'MCAD 微软认证应用程序开发专家', '', '', '统计上岗证执业药师资格证书');
INSERT INTO `certificate_dict` VALUES ('17', '', '日语三级证书', 'MCP 微软专家认证', '', '', '公共关系资格证书');
INSERT INTO `certificate_dict` VALUES ('18', '', '日语四级证书', 'MCSA 微软认证系统管理员', '', '', 'ISO体系内审员/注册审核员');
INSERT INTO `certificate_dict` VALUES ('19', '', '德语四级证书', 'MCSA: Messaging 微软认证信息系统管理员', '', '', '报关员资格证书');
INSERT INTO `certificate_dict` VALUES ('2', '计算机证书', '托业', '全国计算机软件技术资格与水平考试', '高级会计师', '中级工程师', '企业法律顾问执业资格证书');
INSERT INTO `certificate_dict` VALUES ('20', '', '德语六级证书', 'MCSE 微软认证系统工程师', '', '', '报检员资格证书');
INSERT INTO `certificate_dict` VALUES ('21', '', '英语专业四级', 'MCSD 微软认证解决方案开发专家', '', '', '外销员资格证书');
INSERT INTO `certificate_dict` VALUES ('22', '', '英语专业八级', 'MCSE: Messaging 微软认证信息系统工程师', '', '', '保险代理人资格证书');
INSERT INTO `certificate_dict` VALUES ('23', '', '', 'MCSE: Security 微软认证安全系统工程师', '', '', '导游人员资格证书');
INSERT INTO `certificate_dict` VALUES ('24', '', '', 'MCDBA 微软认证数据库系统管理员', '', '', '办公自动化证书');
INSERT INTO `certificate_dict` VALUES ('25', '', '', 'MCT 微软认证培训师', '', '', '珠算技术等级证书');
INSERT INTO `certificate_dict` VALUES ('26', '', '', 'CCCP 思科认证网络规划和网络支持工程师', '', '', '普通话等级证书');
INSERT INTO `certificate_dict` VALUES ('27', '', '', 'CCIE 思科认证互联网专家', '', '', '驾驶执照');
INSERT INTO `certificate_dict` VALUES ('28', '', '', 'CCNA 思科认证网络工程师', '', '', '');
INSERT INTO `certificate_dict` VALUES ('29', '', '', 'CCNP 思科认证网络专业人员', '', '', '');
INSERT INTO `certificate_dict` VALUES ('3', '会计证书', '雅思', '初级程序员', '中级会计师', '高级工程师', '注册建筑师');
INSERT INTO `certificate_dict` VALUES ('30', '', '', 'CCIP 思科认证的互联网专业人员', '', '', '');
INSERT INTO `certificate_dict` VALUES ('31', '', '', 'CCDA 思科认证网络设计工程师', '', '', '');
INSERT INTO `certificate_dict` VALUES ('32', '', '', 'CCDP 思科认证网络设计专业人员', '', '', '');
INSERT INTO `certificate_dict` VALUES ('33', '', '', '思科认证专家-- 有线', '', '', '');
INSERT INTO `certificate_dict` VALUES ('34', '', '', '思科认证专家--互联网解决方案', '', '', '');
INSERT INTO `certificate_dict` VALUES ('35', '', '', '思科认证专家--安全性思科认证专家--SNA/IP', '', '', '');
INSERT INTO `certificate_dict` VALUES ('36', '', '', 'Novell授权网络管理师', '', '', '');
INSERT INTO `certificate_dict` VALUES ('37', '', '', 'Novell 授权网络工程师', '', '', '');
INSERT INTO `certificate_dict` VALUES ('38', '', '', 'Novell授权高级网络工程师', '', '', '');
INSERT INTO `certificate_dict` VALUES ('39', '', '', 'Novell授权Internet专家', '', '', '');
INSERT INTO `certificate_dict` VALUES ('4', '职称证书', '全国公共英语等级考试', '程序员', '助理会计师', '初级经济师', '注册结构师');
INSERT INTO `certificate_dict` VALUES ('40', '', '', '3com 认证网络大师', '', '', '');
INSERT INTO `certificate_dict` VALUES ('41', '', '', 'SUN 认证', '', '', '');
INSERT INTO `certificate_dict` VALUES ('42', '', '', 'Java程序员', '', '', '');
INSERT INTO `certificate_dict` VALUES ('43', '', '', 'Intel 认证方案咨询专家', '', '', '');
INSERT INTO `certificate_dict` VALUES ('44', '', '', 'Intel 认证方案集成专家', '', '', '');
INSERT INTO `certificate_dict` VALUES ('45', '', '', 'Adobe认证专家', '', '', '');
INSERT INTO `certificate_dict` VALUES ('46', '', '', 'Domino R5 Application Development CLP', '', '', '');
INSERT INTO `certificate_dict` VALUES ('47', '', '', 'Domino R5 System Administration CLP', '', '', '');
INSERT INTO `certificate_dict` VALUES ('48', '', '', 'Sybase 认证考试\\IBM Certified AIX User', '', '', '');
INSERT INTO `certificate_dict` VALUES ('49', '', '', 'IBM eServer pSeries AIX System Administration', '', '', '');
INSERT INTO `certificate_dict` VALUES ('5', '其它证书', '通用英语初级', '高级程序员', '会计上岗证', '中级经济师', '注册土木工程师');
INSERT INTO `certificate_dict` VALUES ('50', '', '', 'IBM eServer pSeries AIX System Support', '', '', '');
INSERT INTO `certificate_dict` VALUES ('51', '', '', 'IBM Certified Advanced Technical Expert - RS/6000 AIXIBM AS/400 Associate System Operator', '', '', '');
INSERT INTO `certificate_dict` VALUES ('52', '', '', 'IBM AS/400 Professional System Operator', '', '', '');
INSERT INTO `certificate_dict` VALUES ('53', '', '', 'IBM Certified Specialist - DB2 V6.1/V7.1 User', '', '', '');
INSERT INTO `certificate_dict` VALUES ('54', '', '', 'IBM Certified Solutions Expert - Business Intelligence', '', '', '');
INSERT INTO `certificate_dict` VALUES ('55', '', '', 'IBM Expert - DB2 UDB V7.1 Database AdministrationIBM Expert - DB2 UDB V7.1 Family Application Development', '', '', '');
INSERT INTO `certificate_dict` VALUES ('56', '', '', 'IBM Expert - DB2 UDB V6.1 Database Administration', '', '', '');
INSERT INTO `certificate_dict` VALUES ('57', '', '', 'IBM Expert - DB2 UDB V6.1 Application Development', '', '', '');
INSERT INTO `certificate_dict` VALUES ('58', '', '', 'IBM Certified for e-business - Solution Advisor', '', '', '');
INSERT INTO `certificate_dict` VALUES ('59', '', '', 'IBM Certified for e-business - Solution Designer', '', '', '');
INSERT INTO `certificate_dict` VALUES ('6', '自定义证书', '通用英语中级', '系统分析员', '会计电算化证书', '高级经济师', '监理工程师');
INSERT INTO `certificate_dict` VALUES ('60', '', '', 'IBM Certified for e-business - Solution Technologist', '', '', '');
INSERT INTO `certificate_dict` VALUES ('61', '', '', 'IBM Certified Specialist - MQSeries', '', '', '');
INSERT INTO `certificate_dict` VALUES ('62', '', '', 'IBM Certified Solutions Expert - MQSeries', '', '', '');
INSERT INTO `certificate_dict` VALUES ('63', '', '', 'IBM Certified Developer - MQSeries', '', '', '');
INSERT INTO `certificate_dict` VALUES ('64', '', '', 'IBM Certified Specialist - MQSeries Adapter Offering', '', '', '');
INSERT INTO `certificate_dict` VALUES ('65', '', '', 'IBM Certified Specialist - WebSphere MQ Integrator', '', '', '');
INSERT INTO `certificate_dict` VALUES ('66', '', '', 'IBM Certified Solutions Expert - WebSphere MQ Integrator', '', '', '');
INSERT INTO `certificate_dict` VALUES ('67', '', '', 'IBM Certified Solutions Expert - MQSeries Workflow', '', '', '');
INSERT INTO `certificate_dict` VALUES ('68', '', '', 'IBM Specialist - IBM VisualAge', '', '', '');
INSERT INTO `certificate_dict` VALUES ('69', '', '', 'IBM Solution Developer - IBM VisualAge', '', '', '');
INSERT INTO `certificate_dict` VALUES ('7', '', '大学英语四级', '全国计算机等级一级', '国际财务会计证书', '助理工程师', '执业资格证书');
INSERT INTO `certificate_dict` VALUES ('70', '', '', 'IBM - WebSphere Server', '', '', '');
INSERT INTO `certificate_dict` VALUES ('71', '', '', 'IBM Enterprise Developer - WebSphere Server', '', '', '');
INSERT INTO `certificate_dict` VALUES ('72', '', '', 'IBM Specialist - WebSphere Server  VisualAge for Java based', '', '', '');
INSERT INTO `certificate_dict` VALUES ('73', '', '', 'IBM Enterprise Developer - WebSphere Server  VisualAge for Java based', '', '', '');
INSERT INTO `certificate_dict` VALUES ('74', '', '', 'IBM Systems Expert - Administration for WebSphere Server', '', '', '');
INSERT INTO `certificate_dict` VALUES ('75', '', '', 'IBM - WebSphere Commerce  Business Edition V5.4  Implementation', '', '', '');
INSERT INTO `certificate_dict` VALUES ('76', '', '', 'IBM  -  WebSphere Commerce  Business Edition V5.4  Customization', '', '', '');
INSERT INTO `certificate_dict` VALUES ('77', '', '', 'IBM WebSphere Commerce Suite V5.1 Implementation', '', '', '');
INSERT INTO `certificate_dict` VALUES ('78', '', '', 'IBM - WebSphere Studio  Professional or Advanced Edition', '', '', '');
INSERT INTO `certificate_dict` VALUES ('79', '', '', 'IBM  WebSphere Studio Family of Products  V4.0', '', '', '');
INSERT INTO `certificate_dict` VALUES ('8', '', '大学英语六级', '全国计算机等级二级', '', '助理经济师', '造价工程师');
INSERT INTO `certificate_dict` VALUES ('80', '', '', 'IBM WebSphere Studio Application Developer for Windows', '', '', '');
INSERT INTO `certificate_dict` VALUES ('81', '', '', 'IBM WebSphere Studio Application Developer for Window', '', '', '');
INSERT INTO `certificate_dict` VALUES ('82', '', '', 'IBM - XML and Related Technologies', '', '', '');
INSERT INTO `certificate_dict` VALUES ('83', '', '', 'Domino R5 Application Development CLS', '', '', '');
INSERT INTO `certificate_dict` VALUES ('84', '', '', 'Domino R5 Application Development PCLP', '', '', '');
INSERT INTO `certificate_dict` VALUES ('85', '', '', 'Domino R5 System Administration CLS', '', '', '');
INSERT INTO `certificate_dict` VALUES ('86', '', '', 'Domino R5 System Administration PCLP', '', '', '');
INSERT INTO `certificate_dict` VALUES ('87', '', '', 'LPI Certification Level 1', '', '', '');
INSERT INTO `certificate_dict` VALUES ('88', '', '', 'LPI Certification Level 2 ', '', '', '');
INSERT INTO `certificate_dict` VALUES ('9', '', '中级口译证书', '全国计算机等级三级', '', '', '执业资格证书');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL auto_increment,
  `course_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'C语言');
INSERT INTO `course` VALUES ('2', 'C++');
INSERT INTO `course` VALUES ('3', '数据结构');
INSERT INTO `course` VALUES ('4', '算法设计与分析');
INSERT INTO `course` VALUES ('5', '操作系统');
INSERT INTO `course` VALUES ('6', '数据库');

-- ----------------------------
-- Table structure for cover_letter
-- ----------------------------
DROP TABLE IF EXISTS `cover_letter`;
CREATE TABLE `cover_letter` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `cover_letter_name` varchar(255) collate utf8_unicode_ci default NULL,
  `cover_letter_content` text collate utf8_unicode_ci,
  `cover_last_modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cover_letter
-- ----------------------------
INSERT INTO `cover_letter` VALUES ('b094088a-b49c-41ad-a2a5-87e4f6aa7c7c', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '我的求职信', 'private void btnAdd_Click(object sender, EventArgs e)\n        {\n            newcoverletter.ResumeId = resume.Id;\n            newcoverletter.CoverLetterName = txtCoverLetterName.Text;\n            newcoverletter.CoverLetterContent = rtxtCoverLetterContens.Text;\n            newcoverletter.CoverLastModified = DateTime.Now;\n            coverletterservice = new CoverLetterService();\n            coverletterservice.AddOrUpdate(newcoverletter);\n            this.Close();\n        }\n修改完成 ', '2015-12-12 21:26:37');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `CustomerID` varchar(255) NOT NULL,
  `ContactName` varchar(255) default NULL,
  `Phone` varchar(255) default NULL,
  `City` varchar(255) default NULL,
  `Country` varchar(255) default NULL,
  PRIMARY KEY  (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', 'Vincent', '111', 'Guangzhou', 'CN');

-- ----------------------------
-- Table structure for degree_dict
-- ----------------------------
DROP TABLE IF EXISTS `degree_dict`;
CREATE TABLE `degree_dict` (
  `id` int(255) NOT NULL auto_increment,
  `degree_code` varchar(255) collate utf8_unicode_ci default NULL,
  `degree_level` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of degree_dict
-- ----------------------------
INSERT INTO `degree_dict` VALUES ('1', '0101', '中专');
INSERT INTO `degree_dict` VALUES ('2', '0102', '大专');
INSERT INTO `degree_dict` VALUES ('3', '0103', '本科');
INSERT INTO `degree_dict` VALUES ('4', '0104', '硕士');
INSERT INTO `degree_dict` VALUES ('5', '0105', '博士');
INSERT INTO `degree_dict` VALUES ('6', '0106', 'MBA');
INSERT INTO `degree_dict` VALUES ('7', '0107', 'EMBA');
INSERT INTO `degree_dict` VALUES ('8', '0108', '中技');
INSERT INTO `degree_dict` VALUES ('9', '0109', '高中');
INSERT INTO `degree_dict` VALUES ('10', '0110', '初中');
INSERT INTO `degree_dict` VALUES ('11', '0111', '其他');

-- ----------------------------
-- Table structure for education_background
-- ----------------------------
DROP TABLE IF EXISTS `education_background`;
CREATE TABLE `education_background` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `edu_start_date` date default NULL,
  `edu_end_date` date default NULL,
  `edu_school_name` varchar(255) collate utf8_unicode_ci default NULL,
  `edu_major_name` varchar(255) collate utf8_unicode_ci default NULL,
  `edu_degree` varchar(255) collate utf8_unicode_ci default NULL,
  `edu_unified_enrollment` int(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `education_background_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of education_background
-- ----------------------------
INSERT INTO `education_background` VALUES ('04865385-54f7-4343-be4c-92bb631100f7', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '2009-09-01', '2012-07-01', '广东北江中学', '理科', '高中', '1');
INSERT INTO `education_background` VALUES ('614f3d9c-3a6d-4ec1-a371-14b58cf5a3b2', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '2015-09-07', '2015-12-21', 'aas', 'ssssss', '大专', '1');
INSERT INTO `education_background` VALUES ('6ce93373-07eb-446c-ac3b-d75a25816361', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '2012-09-01', '2016-07-01', '南方医科大学', '生物医学工程（医学信息工程）', '本科', '1');
INSERT INTO `education_background` VALUES ('e8f444c6-2771-4ba5-b73f-85d1f19b337b', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '2015-09-07', '2015-12-21', 'SMU', 'asdasdfasdfas', '本科', '1');

-- ----------------------------
-- Table structure for expect
-- ----------------------------
DROP TABLE IF EXISTS `expect`;
CREATE TABLE `expect` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_full_time` int(1) default NULL,
  `expect_part_time` int(1) default NULL,
  `expect_practice` int(1) default NULL,
  `expect_area1` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_area2` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_industry1` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_industry2` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_job_class1` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_job_subclass1` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_job_class2` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_job_subclass2` varchar(255) collate utf8_unicode_ci default NULL,
  `expect_salary` varchar(255) collate utf8_unicode_ci default NULL,
  `work_status` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of expect
-- ----------------------------
INSERT INTO `expect` VALUES ('704c997d-83c2-412b-bd76-17ca6e874aad', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '0', '0', '1', '440101', '440300', '互联网/电子商务', 'IT服务(系统/数据/维护)', '实习生/培训生/储备干部', '实习生', '实习生/培训生/储备干部', '培训生', '2001-4000元/月', '我目前处于离职状态，可立即上岗');
INSERT INTO `expect` VALUES ('c6603e82-9b4f-4305-a9ee-646bf666f1cc', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '1', '1', '0', '440101', '440101', '计算机硬件', '', 'IT运维/技术支持', 'IT技术支持/维护经理', '', '', '1000-2000元/月', '我目前在职，正考虑换个新环境（如有合适的工作机会，到岗时间一个月左右）');

-- ----------------------------
-- Table structure for experience
-- ----------------------------
DROP TABLE IF EXISTS `experience`;
CREATE TABLE `experience` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_company_name` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_industry` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_job_class` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_job_subclass` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_job_name` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_start_date` date default NULL,
  `exp_end_date` date default NULL,
  `exp_salary` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_company_type` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_company_scale` varchar(255) collate utf8_unicode_ci default NULL,
  `exp_job_desc` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of experience
-- ----------------------------
INSERT INTO `experience` VALUES ('abf234bd-2f38-4cf1-b93e-8c475738b4c7', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '广州宜诚数字医疗系统有限公司', '计算机软件', '实习生/培训生/储备干部', '实习生', '软件开发实习生', '2014-11-01', '2015-10-01', '1000-2000元/月', '国企', '20-99人', '参与宜诚体检信息系统的前期调研，需求分析，数据库设计，编码实现，后期维护等整个完整的开发过程');

-- ----------------------------
-- Table structure for identity_type_dict
-- ----------------------------
DROP TABLE IF EXISTS `identity_type_dict`;
CREATE TABLE `identity_type_dict` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `identity_type` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of identity_type_dict
-- ----------------------------
INSERT INTO `identity_type_dict` VALUES ('1', '身份证');
INSERT INTO `identity_type_dict` VALUES ('2', '护照');
INSERT INTO `identity_type_dict` VALUES ('3', '驾照');

-- ----------------------------
-- Table structure for industry_dict
-- ----------------------------
DROP TABLE IF EXISTS `industry_dict`;
CREATE TABLE `industry_dict` (
  `id` int(255) NOT NULL auto_increment,
  `industry_type` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of industry_dict
-- ----------------------------
INSERT INTO `industry_dict` VALUES ('8', '互联网/电子商务');
INSERT INTO `industry_dict` VALUES ('9', '计算机软件');
INSERT INTO `industry_dict` VALUES ('10', 'IT服务(系统/数据/维护)');
INSERT INTO `industry_dict` VALUES ('11', '电子技术/半导体/集成电路');
INSERT INTO `industry_dict` VALUES ('12', '计算机硬件');
INSERT INTO `industry_dict` VALUES ('13', '通信/电信/网络设备');
INSERT INTO `industry_dict` VALUES ('14', '通信/电信运营、增值服务');
INSERT INTO `industry_dict` VALUES ('15', '网络游戏');
INSERT INTO `industry_dict` VALUES ('16', '基金/证券/期货/投资');
INSERT INTO `industry_dict` VALUES ('17', '保险');
INSERT INTO `industry_dict` VALUES ('18', '银行');
INSERT INTO `industry_dict` VALUES ('19', '信托/担保/拍卖/典当');
INSERT INTO `industry_dict` VALUES ('20', '房地产/建筑/建材/工程');
INSERT INTO `industry_dict` VALUES ('21', '家居/室内设计/装饰装潢');
INSERT INTO `industry_dict` VALUES ('22', '物业管理/商业中心');
INSERT INTO `industry_dict` VALUES ('23', '专业服务/咨询(财会/法律/人力资源等)');
INSERT INTO `industry_dict` VALUES ('24', '广告/会展/公关');
INSERT INTO `industry_dict` VALUES ('25', '中介服务');
INSERT INTO `industry_dict` VALUES ('26', '检验/检测/认证');
INSERT INTO `industry_dict` VALUES ('27', '外包服务');
INSERT INTO `industry_dict` VALUES ('28', '快速消费品（食品/饮料/烟酒/日化）');
INSERT INTO `industry_dict` VALUES ('29', '耐用消费品');
INSERT INTO `industry_dict` VALUES ('30', '服饰/纺织/皮革/家具/家电）');
INSERT INTO `industry_dict` VALUES ('31', '贸易/进出口');
INSERT INTO `industry_dict` VALUES ('32', '租赁服务');
INSERT INTO `industry_dict` VALUES ('33', '教育/培训/院校');
INSERT INTO `industry_dict` VALUES ('34', '礼品/玩具/工艺美术/收藏品/奢侈品');
INSERT INTO `industry_dict` VALUES ('35', '汽车/摩托车');
INSERT INTO `industry_dict` VALUES ('36', '大型设备/机电设备/重工业');
INSERT INTO `industry_dict` VALUES ('37', '加工制造（原料加工/模具）');
INSERT INTO `industry_dict` VALUES ('38', '仪器仪表及工业自动化');
INSERT INTO `industry_dict` VALUES ('39', '印刷/包装/造纸');
INSERT INTO `industry_dict` VALUES ('40', '办公用品及设备');
INSERT INTO `industry_dict` VALUES ('41', '医药/生物工程');
INSERT INTO `industry_dict` VALUES ('42', '医疗设备/器械');
INSERT INTO `industry_dict` VALUES ('43', '航空/航天研究与制造');
INSERT INTO `industry_dict` VALUES ('44', '交通/运输');
INSERT INTO `industry_dict` VALUES ('45', '物流/仓储');
INSERT INTO `industry_dict` VALUES ('46', '医疗/护理/美容/保健/卫生服务');
INSERT INTO `industry_dict` VALUES ('47', '酒店/餐饮');
INSERT INTO `industry_dict` VALUES ('48', '旅游/度假');
INSERT INTO `industry_dict` VALUES ('49', '媒体/出版/影视/文化传播');
INSERT INTO `industry_dict` VALUES ('50', '娱乐/体育/休闲');
INSERT INTO `industry_dict` VALUES ('51', '能源/矿产/采掘/冶炼');
INSERT INTO `industry_dict` VALUES ('52', '石油/石化/化工');
INSERT INTO `industry_dict` VALUES ('53', '电气/电力/水利');
INSERT INTO `industry_dict` VALUES ('54', '环保');
INSERT INTO `industry_dict` VALUES ('55', '政府/公共事业/非盈利机构');
INSERT INTO `industry_dict` VALUES ('56', '学术/科研');
INSERT INTO `industry_dict` VALUES ('57', '农/林/牧/渔');
INSERT INTO `industry_dict` VALUES ('58', '跨领域经营');
INSERT INTO `industry_dict` VALUES ('59', '其他');

-- ----------------------------
-- Table structure for job_dict
-- ----------------------------
DROP TABLE IF EXISTS `job_dict`;
CREATE TABLE `job_dict` (
  `id` int(255) NOT NULL auto_increment,
  `job_class` varchar(255) collate utf8_unicode_ci default NULL,
  `job_subclass` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of job_dict
-- ----------------------------
INSERT INTO `job_dict` VALUES ('1', '销售业务', '销售代表');
INSERT INTO `job_dict` VALUES ('2', '销售业务', '客户代表');
INSERT INTO `job_dict` VALUES ('3', '销售业务', '销售工程师');
INSERT INTO `job_dict` VALUES ('4', '销售业务', '渠道/分销员');
INSERT INTO `job_dict` VALUES ('5', '销售业务', '区域销售专员/助理');
INSERT INTO `job_dict` VALUES ('6', '销售业务', '业务拓展专员/助理');
INSERT INTO `job_dict` VALUES ('7', '销售业务', '大客户销售代表');
INSERT INTO `job_dict` VALUES ('8', '销售业务', '电话销售');
INSERT INTO `job_dict` VALUES ('9', '销售业务', '网络/在线销售');
INSERT INTO `job_dict` VALUES ('10', '销售业务', '团购业务员');
INSERT INTO `job_dict` VALUES ('11', '销售业务', '销售业务跟单');
INSERT INTO `job_dict` VALUES ('12', '销售业务', '医药代表');
INSERT INTO `job_dict` VALUES ('13', '销售业务', '其他');
INSERT INTO `job_dict` VALUES ('14', 'IT运维/技术支持', '信息技术经理/主管');
INSERT INTO `job_dict` VALUES ('15', 'IT运维/技术支持', '信息技术专员');
INSERT INTO `job_dict` VALUES ('16', 'IT运维/技术支持', 'IT技术支持/维护经理');
INSERT INTO `job_dict` VALUES ('17', 'IT运维/技术支持', 'IT技术支持/维护工程师');
INSERT INTO `job_dict` VALUES ('18', 'IT运维/技术支持', '系统工程师');
INSERT INTO `job_dict` VALUES ('19', 'IT运维/技术支持', '系统管理员');
INSERT INTO `job_dict` VALUES ('20', 'IT运维/技术支持', '网络工程师');
INSERT INTO `job_dict` VALUES ('21', 'IT运维/技术支持', '网络管理员');
INSERT INTO `job_dict` VALUES ('22', 'IT运维/技术支持', '网络与信息安全工程师');
INSERT INTO `job_dict` VALUES ('23', 'IT运维/技术支持', '数据库管理员');
INSERT INTO `job_dict` VALUES ('24', 'IT运维/技术支持', '计算机硬件维护工程师');
INSERT INTO `job_dict` VALUES ('25', 'IT运维/技术支持', 'ERP实施顾问');
INSERT INTO `job_dict` VALUES ('26', 'IT运维/技术支持', 'IT技术文员/助理');
INSERT INTO `job_dict` VALUES ('27', 'IT运维/技术支持', 'IT文档工程师');
INSERT INTO `job_dict` VALUES ('28', 'IT运维/技术支持', 'Helpdesk');
INSERT INTO `job_dict` VALUES ('29', 'IT运维/技术支持', '其他');
INSERT INTO `job_dict` VALUES ('30', '实习生/培训生/储备干部', '实习生');
INSERT INTO `job_dict` VALUES ('31', '实习生/培训生/储备干部', '培训生');
INSERT INTO `job_dict` VALUES ('32', '实习生/培训生/储备干部', '储备干部');
INSERT INTO `job_dict` VALUES ('33', '实习生/培训生/储备干部', '其他');
INSERT INTO `job_dict` VALUES ('34', '销售管理', '销售总监');
INSERT INTO `job_dict` VALUES ('35', '销售管理', '销售经理');
INSERT INTO `job_dict` VALUES ('36', '销售管理', '销售主管');
INSERT INTO `job_dict` VALUES ('37', '销售管理', '客户总监');
INSERT INTO `job_dict` VALUES ('38', '销售管理', '客户经理');
INSERT INTO `job_dict` VALUES ('39', '销售管理', '客户主管');
INSERT INTO `job_dict` VALUES ('40', '销售管理', '渠道/分销总监');
INSERT INTO `job_dict` VALUES ('41', '销售管理', '渠道/分销经理/主管');
INSERT INTO `job_dict` VALUES ('42', '销售管理', '区域销售总监');
INSERT INTO `job_dict` VALUES ('43', '销售管理', '区域销售经理/主管');
INSERT INTO `job_dict` VALUES ('44', '销售管理', '业务拓展经理/主管');
INSERT INTO `job_dict` VALUES ('45', '销售管理', '大客户销售经理');
INSERT INTO `job_dict` VALUES ('46', '销售管理', '团购经理/主管');
INSERT INTO `job_dict` VALUES ('47', '销售管理', '医药销售经理/主管');
INSERT INTO `job_dict` VALUES ('48', '销售管理', '其他');
INSERT INTO `job_dict` VALUES ('49', '销售行政/商务', '销售行政经理/主管');
INSERT INTO `job_dict` VALUES ('50', '销售行政/商务', '销售行政专员/助理');
INSERT INTO `job_dict` VALUES ('51', '销售行政/商务', '销售运营经理/主管');
INSERT INTO `job_dict` VALUES ('52', '销售行政/商务', '销售运营专员/助理');
INSERT INTO `job_dict` VALUES ('53', '销售行政/商务', '商务经理/主管');
INSERT INTO `job_dict` VALUES ('54', '销售行政/商务', '商务专员/助理');
INSERT INTO `job_dict` VALUES ('55', '销售行政/商务', '销售培训师/讲师');
INSERT INTO `job_dict` VALUES ('56', '销售行政/商务', '销售数据分析');
INSERT INTO `job_dict` VALUES ('57', '销售行政/商务', '其他');
INSERT INTO `job_dict` VALUES ('58', '客服/售前/售后技术支持', '客户服务总监');
INSERT INTO `job_dict` VALUES ('59', '客服/售前/售后技术支持', '客户服务经理');
INSERT INTO `job_dict` VALUES ('60', '客服/售前/售后技术支持', '客户服务主管');
INSERT INTO `job_dict` VALUES ('61', '客服/售前/售后技术支持', '客户服务专员/助理');
INSERT INTO `job_dict` VALUES ('62', '客服/售前/售后技术支持', '客户关系/投诉协调人员');
INSERT INTO `job_dict` VALUES ('63', '客服/售前/售后技术支持', '客户咨询热线/呼叫中心人员');
INSERT INTO `job_dict` VALUES ('64', '客服/售前/售后技术支持', '网络/在线客服');
INSERT INTO `job_dict` VALUES ('65', '客服/售前/售后技术支持', '售前/售后技术支持管理');
INSERT INTO `job_dict` VALUES ('66', '客服/售前/售后技术支持', '售前/售后技术支持工程师');
INSERT INTO `job_dict` VALUES ('67', '客服/售前/售后技术支持', '其他');
INSERT INTO `job_dict` VALUES ('68', '市场', '市场总监');
INSERT INTO `job_dict` VALUES ('69', '市场', '市场经理');
INSERT INTO `job_dict` VALUES ('70', '市场', '市场主管');
INSERT INTO `job_dict` VALUES ('71', '市场', '市场专员/助理');
INSERT INTO `job_dict` VALUES ('72', '市场', '市场营销经理');
INSERT INTO `job_dict` VALUES ('73', '市场', '市场营销主管');
INSERT INTO `job_dict` VALUES ('74', '市场', '市场营销专员/助理');
INSERT INTO `job_dict` VALUES ('75', '市场', '业务拓展经理/主管');
INSERT INTO `job_dict` VALUES ('76', '市场', '业务拓展专员/助理');
INSERT INTO `job_dict` VALUES ('77', '市场', '产品经理');
INSERT INTO `job_dict` VALUES ('78', '市场', '产品主管');
INSERT INTO `job_dict` VALUES ('79', '市场', '产品专员/助理');
INSERT INTO `job_dict` VALUES ('80', '市场', '品牌经理');
INSERT INTO `job_dict` VALUES ('81', '市场', '品牌主管');
INSERT INTO `job_dict` VALUES ('82', '市场', '品牌专员/助理');
INSERT INTO `job_dict` VALUES ('83', '市场', '市场策划/企划经理/主管');
INSERT INTO `job_dict` VALUES ('84', '市场', '市场策划/企划专员/助理');
INSERT INTO `job_dict` VALUES ('85', '市场', '市场文案策划');
INSERT INTO `job_dict` VALUES ('86', '市场', '活动策划');
INSERT INTO `job_dict` VALUES ('87', '市场', '活动执行');
INSERT INTO `job_dict` VALUES ('88', '市场', '促销主管/督导');
INSERT INTO `job_dict` VALUES ('89', '市场', '促销员');
INSERT INTO `job_dict` VALUES ('90', '市场', '网站推广');
INSERT INTO `job_dict` VALUES ('91', '市场', 'SEO/SEM');
INSERT INTO `job_dict` VALUES ('92', '市场', '学术推广');
INSERT INTO `job_dict` VALUES ('93', '市场', '选址拓展/新店开发');
INSERT INTO `job_dict` VALUES ('94', '市场', '市场调研与分析');
INSERT INTO `job_dict` VALUES ('95', '市场', '其他');
INSERT INTO `job_dict` VALUES ('96', '公关/媒介', '公关总监');
INSERT INTO `job_dict` VALUES ('97', '公关/媒介', '公关经理/主管');
INSERT INTO `job_dict` VALUES ('98', '公关/媒介', '公关专员/助理');
INSERT INTO `job_dict` VALUES ('99', '公关/媒介', '媒介经理/主管');
INSERT INTO `job_dict` VALUES ('100', '公关/媒介', '媒介专员/助理');
INSERT INTO `job_dict` VALUES ('101', '公关/媒介', '媒介策划/管理');
INSERT INTO `job_dict` VALUES ('102', '公关/媒介', '政府事务管理');
INSERT INTO `job_dict` VALUES ('103', '公关/媒介', '其他');
INSERT INTO `job_dict` VALUES ('104', '广告/会展', '广告创意/设计总监');
INSERT INTO `job_dict` VALUES ('105', '广告/会展', '广告创意/设计经理/主管');
INSERT INTO `job_dict` VALUES ('106', '广告/会展', '广告创意/设计师');
INSERT INTO `job_dict` VALUES ('107', '广告/会展', '广告文案策划');
INSERT INTO `job_dict` VALUES ('108', '广告/会展', '广告美术指导');
INSERT INTO `job_dict` VALUES ('109', '广告/会展', '广告制作执行');
INSERT INTO `job_dict` VALUES ('110', '广告/会展', '广告客户总监');
INSERT INTO `job_dict` VALUES ('111', '广告/会展', '广告客户经理');
INSERT INTO `job_dict` VALUES ('112', '广告/会展', '广告客户主管');
INSERT INTO `job_dict` VALUES ('113', '广告/会展', '广告客户代表');
INSERT INTO `job_dict` VALUES ('114', '广告/会展', '广告/会展业务拓展');
INSERT INTO `job_dict` VALUES ('115', '广告/会展', '会展策划/设计');
INSERT INTO `job_dict` VALUES ('116', '广告/会展', '会务经理/主管');
INSERT INTO `job_dict` VALUES ('117', '广告/会展', '会务专员/助理');
INSERT INTO `job_dict` VALUES ('118', '广告/会展', '广告/会展项目管理');
INSERT INTO `job_dict` VALUES ('119', '广告/会展', '其他');
INSERT INTO `job_dict` VALUES ('120', '财务/审计/税务', '首席财务官CFO');
INSERT INTO `job_dict` VALUES ('121', '财务/审计/税务', '财务总监');
INSERT INTO `job_dict` VALUES ('122', '财务/审计/税务', '财务经理');
INSERT INTO `job_dict` VALUES ('123', '财务/审计/税务', '财务主管/总帐主管');
INSERT INTO `job_dict` VALUES ('124', '财务/审计/税务', '财务顾问');
INSERT INTO `job_dict` VALUES ('125', '财务/审计/税务', '财务助理');
INSERT INTO `job_dict` VALUES ('126', '财务/审计/税务', '财务分析经理/主管');
INSERT INTO `job_dict` VALUES ('127', '财务/审计/税务', '财务分析员');
INSERT INTO `job_dict` VALUES ('128', '财务/审计/税务', '会计经理/主管');
INSERT INTO `job_dict` VALUES ('129', '财务/审计/税务', '会计/会计师');
INSERT INTO `job_dict` VALUES ('130', '财务/审计/税务', '会计助理/文员');
INSERT INTO `job_dict` VALUES ('131', '财务/审计/税务', '出纳员');
INSERT INTO `job_dict` VALUES ('132', '财务/审计/税务', '审计经理/主管');
INSERT INTO `job_dict` VALUES ('133', '财务/审计/税务', '审计专员/助理');
INSERT INTO `job_dict` VALUES ('134', '财务/审计/税务', '税务经理/主管');
INSERT INTO `job_dict` VALUES ('135', '财务/审计/税务', '税务专员/助理');
INSERT INTO `job_dict` VALUES ('136', '财务/审计/税务', '成本经理/主管');
INSERT INTO `job_dict` VALUES ('137', '财务/审计/税务', '成本会计');
INSERT INTO `job_dict` VALUES ('138', '财务/审计/税务', '资产/资金管理');
INSERT INTO `job_dict` VALUES ('139', '财务/审计/税务', '资金专员');
INSERT INTO `job_dict` VALUES ('140', '财务/审计/税务', '统计员');
INSERT INTO `job_dict` VALUES ('141', '财务/审计/税务', '其他');
INSERT INTO `job_dict` VALUES ('142', '人力资源', '人力资源总监');
INSERT INTO `job_dict` VALUES ('143', '人力资源', '人力资源经理');
INSERT INTO `job_dict` VALUES ('144', '人力资源', '人力资源主管');
INSERT INTO `job_dict` VALUES ('145', '人力资源', '人力资源专员/助理');
INSERT INTO `job_dict` VALUES ('146', '人力资源', '培训经理/主管');
INSERT INTO `job_dict` VALUES ('147', '人力资源', '培训专员/助理');
INSERT INTO `job_dict` VALUES ('148', '人力资源', '招聘经理/主管');
INSERT INTO `job_dict` VALUES ('149', '人力资源', '招聘专员/助理');
INSERT INTO `job_dict` VALUES ('150', '人力资源', '薪酬福利经理/主管');
INSERT INTO `job_dict` VALUES ('151', '人力资源', '薪酬福利专员/助理');
INSERT INTO `job_dict` VALUES ('152', '人力资源', '绩效考核经理/主管');
INSERT INTO `job_dict` VALUES ('153', '人力资源', '绩效考核专员/助理');
INSERT INTO `job_dict` VALUES ('154', '人力资源', '员工关系/企业文化/工会');
INSERT INTO `job_dict` VALUES ('155', '人力资源', '企业培训师/讲师');
INSERT INTO `job_dict` VALUES ('156', '人力资源', '人事信息系统(HRIS)管理');
INSERT INTO `job_dict` VALUES ('157', '人力资源', '猎头顾问/助理');
INSERT INTO `job_dict` VALUES ('158', '人力资源', '其他');
INSERT INTO `job_dict` VALUES ('159', '行政/后勤/文秘', '行政总监');
INSERT INTO `job_dict` VALUES ('160', '行政/后勤/文秘', '行政经理/主管/办公室主任');
INSERT INTO `job_dict` VALUES ('161', '行政/后勤/文秘', '行政专员/助理');
INSERT INTO `job_dict` VALUES ('162', '行政/后勤/文秘', '助理/秘书/文员');
INSERT INTO `job_dict` VALUES ('163', '行政/后勤/文秘', '前台/总机/接待');
INSERT INTO `job_dict` VALUES ('164', '行政/后勤/文秘', '文档/资料管理');
INSERT INTO `job_dict` VALUES ('165', '行政/后勤/文秘', '电脑操作/打字/录入员');
INSERT INTO `job_dict` VALUES ('166', '行政/后勤/文秘', '后勤人员');
INSERT INTO `job_dict` VALUES ('167', '行政/后勤/文秘', '其他');
INSERT INTO `job_dict` VALUES ('168', '项目管理/项目协调', '项目总监');
INSERT INTO `job_dict` VALUES ('169', '项目管理/项目协调', '项目经理/项目主管');
INSERT INTO `job_dict` VALUES ('170', '项目管理/项目协调', '项目专员/助理');
INSERT INTO `job_dict` VALUES ('171', '项目管理/项目协调', '广告/会展项目管理');
INSERT INTO `job_dict` VALUES ('172', '项目管理/项目协调', 'IT项目总监');
INSERT INTO `job_dict` VALUES ('173', '项目管理/项目协调', 'IT项目经理/主管');
INSERT INTO `job_dict` VALUES ('174', '项目管理/项目协调', 'IT项目执行/协调人员');
INSERT INTO `job_dict` VALUES ('175', '项目管理/项目协调', '通信项目管理');
INSERT INTO `job_dict` VALUES ('176', '项目管理/项目协调', '房地产项目配套工程师');
INSERT INTO `job_dict` VALUES ('177', '项目管理/项目协调', '房地产项目管理');
INSERT INTO `job_dict` VALUES ('178', '项目管理/项目协调', '证券/投资项目管理');
INSERT INTO `job_dict` VALUES ('179', '项目管理/项目协调', '保险项目经理/主管');
INSERT INTO `job_dict` VALUES ('180', '项目管理/项目协调', '生产项目经理/主管');
INSERT INTO `job_dict` VALUES ('181', '项目管理/项目协调', '生产项目工程师');
INSERT INTO `job_dict` VALUES ('182', '项目管理/项目协调', '汽车工程项目管理');
INSERT INTO `job_dict` VALUES ('183', '项目管理/项目协调', '电子/电器项目管理');
INSERT INTO `job_dict` VALUES ('184', '项目管理/项目协调', '服装/纺织/皮革项目管理');
INSERT INTO `job_dict` VALUES ('185', '项目管理/项目协调', '医药项目管理');
INSERT INTO `job_dict` VALUES ('186', '项目管理/项目协调', '化工项目管理');
INSERT INTO `job_dict` VALUES ('187', '项目管理/项目协调', '物流/仓储项目管理');
INSERT INTO `job_dict` VALUES ('188', '项目管理/项目协调', '咨询项目管理');
INSERT INTO `job_dict` VALUES ('189', '项目管理/项目协调', '能源/矿产项目管理');
INSERT INTO `job_dict` VALUES ('190', '项目管理/项目协调', '其他');
INSERT INTO `job_dict` VALUES ('191', '质量管理/安全防护', '质量管理/测试经理');
INSERT INTO `job_dict` VALUES ('192', '质量管理/安全防护', '质量管理/测试主管');
INSERT INTO `job_dict` VALUES ('193', '质量管理/安全防护', '质量管理/测试工程师');
INSERT INTO `job_dict` VALUES ('194', '质量管理/安全防护', '质量检验员/测试员');
INSERT INTO `job_dict` VALUES ('195', '质量管理/安全防护', '化验/检验');
INSERT INTO `job_dict` VALUES ('196', '质量管理/安全防护', '认证/体系工程师/审核员');
INSERT INTO `job_dict` VALUES ('197', '质量管理/安全防护', '环境/健康/安全经理/主管');
INSERT INTO `job_dict` VALUES ('198', '质量管理/安全防护', '环境/健康/安全工程师');
INSERT INTO `job_dict` VALUES ('199', '质量管理/安全防护', '供应商/采购质量管理');
INSERT INTO `job_dict` VALUES ('200', '质量管理/安全防护', '安全管理');
INSERT INTO `job_dict` VALUES ('201', '质量管理/安全防护', '安全消防');
INSERT INTO `job_dict` VALUES ('202', '质量管理/安全防护', '其他');
INSERT INTO `job_dict` VALUES ('203', '高级管理', '首席执行官CEO/总裁/总经理');
INSERT INTO `job_dict` VALUES ('204', '高级管理', '首席运营官COO');
INSERT INTO `job_dict` VALUES ('205', '高级管理', '首席财务官CFO');
INSERT INTO `job_dict` VALUES ('206', '高级管理', 'CTO/CIO');
INSERT INTO `job_dict` VALUES ('207', '高级管理', '副总裁/副总经理');
INSERT INTO `job_dict` VALUES ('208', '高级管理', '分公司/代表处负责人');
INSERT INTO `job_dict` VALUES ('209', '高级管理', '部门/事业部管理');
INSERT INTO `job_dict` VALUES ('210', '高级管理', '总裁助理/总经理助理');
INSERT INTO `job_dict` VALUES ('211', '高级管理', '总编/副总编');
INSERT INTO `job_dict` VALUES ('212', '高级管理', '行长/副行长');
INSERT INTO `job_dict` VALUES ('213', '高级管理', '工厂厂长/副厂长');
INSERT INTO `job_dict` VALUES ('214', '高级管理', '校长/副校长');
INSERT INTO `job_dict` VALUES ('215', '高级管理', '合伙人');
INSERT INTO `job_dict` VALUES ('216', '高级管理', '其他');
INSERT INTO `job_dict` VALUES ('217', '软件/互联网开发/系统集成', '高级软件工程师');
INSERT INTO `job_dict` VALUES ('218', '软件/互联网开发/系统集成', '软件工程师');
INSERT INTO `job_dict` VALUES ('219', '软件/互联网开发/系统集成', '软件研发工程师');
INSERT INTO `job_dict` VALUES ('220', '软件/互联网开发/系统集成', '需求工程师');
INSERT INTO `job_dict` VALUES ('221', '软件/互联网开发/系统集成', '系统架构设计师');
INSERT INTO `job_dict` VALUES ('222', '软件/互联网开发/系统集成', '系统分析员');
INSERT INTO `job_dict` VALUES ('223', '软件/互联网开发/系统集成', '数据库开发工程师');
INSERT INTO `job_dict` VALUES ('224', '软件/互联网开发/系统集成', 'ERP技术/开发应用');
INSERT INTO `job_dict` VALUES ('225', '软件/互联网开发/系统集成', '互联网软件工程师');
INSERT INTO `job_dict` VALUES ('226', '软件/互联网开发/系统集成', '手机软件开发工程师');
INSERT INTO `job_dict` VALUES ('227', '软件/互联网开发/系统集成', '嵌入式软件开发');
INSERT INTO `job_dict` VALUES ('228', '软件/互联网开发/系统集成', '移动互联网开发');
INSERT INTO `job_dict` VALUES ('229', '软件/互联网开发/系统集成', 'WEB前端开发');
INSERT INTO `job_dict` VALUES ('230', '软件/互联网开发/系统集成', '语音/视频/图形开发');
INSERT INTO `job_dict` VALUES ('231', '软件/互联网开发/系统集成', '用户界面（UI）设计');
INSERT INTO `job_dict` VALUES ('232', '软件/互联网开发/系统集成', '用户体验（UE/UX）设计');
INSERT INTO `job_dict` VALUES ('233', '软件/互联网开发/系统集成', '网页设计/制作/美工');
INSERT INTO `job_dict` VALUES ('234', '软件/互联网开发/系统集成', '游戏设计/开发');
INSERT INTO `job_dict` VALUES ('235', '软件/互联网开发/系统集成', '游戏策划');
INSERT INTO `job_dict` VALUES ('236', '软件/互联网开发/系统集成', '游戏界面设计');
INSERT INTO `job_dict` VALUES ('237', '软件/互联网开发/系统集成', '系统集成工程师');
INSERT INTO `job_dict` VALUES ('238', '软件/互联网开发/系统集成', '其他');
INSERT INTO `job_dict` VALUES ('239', '硬件开发', '高级硬件工程师');
INSERT INTO `job_dict` VALUES ('240', '硬件开发', '硬件工程师');
INSERT INTO `job_dict` VALUES ('241', '硬件开发', '嵌入式硬件开发');
INSERT INTO `job_dict` VALUES ('242', '硬件开发', '其他');
INSERT INTO `job_dict` VALUES ('243', '互联网产品/运营经理', '互联网产品经理/主管');
INSERT INTO `job_dict` VALUES ('244', '互联网产品/运营经理', '互联网产品专员/助理');
INSERT INTO `job_dict` VALUES ('245', '互联网产品/运营经理', '电子商务经理/主管');
INSERT INTO `job_dict` VALUES ('246', '互联网产品/运营经理', '电子商务专员/助理');
INSERT INTO `job_dict` VALUES ('247', '互联网产品/运营经理', '网络运营管理');
INSERT INTO `job_dict` VALUES ('248', '互联网产品/运营经理', '网络运营专员/助理');
INSERT INTO `job_dict` VALUES ('249', '互联网产品/运营经理', '网站编辑');
INSERT INTO `job_dict` VALUES ('250', '互联网产品/运营经理', 'SEO/SEM');
INSERT INTO `job_dict` VALUES ('251', '互联网产品/运营经理', '其他');
INSERT INTO `job_dict` VALUES ('252', 'IT质量管理/测试/配置管理', 'T质量管理经理/主管');
INSERT INTO `job_dict` VALUES ('253', 'IT质量管理/测试/配置管理', 'IT质量管理工程师');
INSERT INTO `job_dict` VALUES ('254', 'IT质量管理/测试/配置管理', '系统测试');
INSERT INTO `job_dict` VALUES ('255', 'IT质量管理/测试/配置管理', '软件测试');
INSERT INTO `job_dict` VALUES ('256', 'IT质量管理/测试/配置管理', '硬件测试');
INSERT INTO `job_dict` VALUES ('257', 'IT质量管理/测试/配置管理', '配置管理工程师');
INSERT INTO `job_dict` VALUES ('258', 'IT质量管理/测试/配置管理', '信息技术标准化工程师');
INSERT INTO `job_dict` VALUES ('259', 'IT质量管理/测试/配置管理', '其他');
INSERT INTO `job_dict` VALUES ('260', 'IT管理/项目协调', 'CTO/CIO');
INSERT INTO `job_dict` VALUES ('261', 'IT管理/项目协调', 'IT技术/研发总监');
INSERT INTO `job_dict` VALUES ('262', 'IT管理/项目协调', 'IT技术/研发经理/主管');
INSERT INTO `job_dict` VALUES ('263', 'IT管理/项目协调', 'IT项目总监');
INSERT INTO `job_dict` VALUES ('264', 'IT管理/项目协调', 'IT项目经理/主管');
INSERT INTO `job_dict` VALUES ('265', 'IT管理/项目协调', 'IT项目执行/协调人员');
INSERT INTO `job_dict` VALUES ('266', 'IT管理/项目协调', '其他');
INSERT INTO `job_dict` VALUES ('267', '电信/通信技术开发及应用', '通信技术工程师');
INSERT INTO `job_dict` VALUES ('268', '电信/通信技术开发及应用', '通信研发工程师');
INSERT INTO `job_dict` VALUES ('269', '电信/通信技术开发及应用', '数据通信工程师');
INSERT INTO `job_dict` VALUES ('270', '电信/通信技术开发及应用', '移动通信工程师');
INSERT INTO `job_dict` VALUES ('271', '电信/通信技术开发及应用', '电信网络工程师');
INSERT INTO `job_dict` VALUES ('272', '电信/通信技术开发及应用', '电信交换工程师');
INSERT INTO `job_dict` VALUES ('273', '电信/通信技术开发及应用', '有线传输工程师');
INSERT INTO `job_dict` VALUES ('274', '电信/通信技术开发及应用', '无线/射频通信工程师');
INSERT INTO `job_dict` VALUES ('275', '电信/通信技术开发及应用', '通信电源工程师');
INSERT INTO `job_dict` VALUES ('276', '电信/通信技术开发及应用', '通信标准化工程师');
INSERT INTO `job_dict` VALUES ('277', '电信/通信技术开发及应用', '通信项目管理');
INSERT INTO `job_dict` VALUES ('278', '电信/通信技术开发及应用', '其他');
INSERT INTO `job_dict` VALUES ('279', '房地产开发/经济/中介', '房地产项目策划经理/主管');
INSERT INTO `job_dict` VALUES ('280', '房地产开发/经济/中介', '房地产项目策划专员/助理');
INSERT INTO `job_dict` VALUES ('281', '房地产开发/经济/中介', '房地产项目招投标');
INSERT INTO `job_dict` VALUES ('282', '房地产开发/经济/中介', '房地产项目开发报建');
INSERT INTO `job_dict` VALUES ('283', '房地产开发/经济/中介', '房地产项目配套工程师');
INSERT INTO `job_dict` VALUES ('284', '房地产开发/经济/中介', '房地产销售经理');
INSERT INTO `job_dict` VALUES ('285', '房地产开发/经济/中介', '房地产销售主管');
INSERT INTO `job_dict` VALUES ('286', '房地产开发/经济/中介', '房地产销售/置业顾问');
INSERT INTO `job_dict` VALUES ('287', '房地产开发/经济/中介', '房地产评估');
INSERT INTO `job_dict` VALUES ('288', '房地产开发/经济/中介', '房地产中介/交易');
INSERT INTO `job_dict` VALUES ('289', '房地产开发/经济/中介', '房地产项目管理');
INSERT INTO `job_dict` VALUES ('290', '房地产开发/经济/中介', '其他');
INSERT INTO `job_dict` VALUES ('291', '土木/建筑/装修/市政工程', '高级建筑工程师/总工');
INSERT INTO `job_dict` VALUES ('292', '土木/建筑/装修/市政工程', '建筑工程师');
INSERT INTO `job_dict` VALUES ('293', '土木/建筑/装修/市政工程', '建筑设计师');
INSERT INTO `job_dict` VALUES ('294', '土木/建筑/装修/市政工程', '土木/土建/结构工程师');
INSERT INTO `job_dict` VALUES ('295', '土木/建筑/装修/市政工程', '岩土工程');
INSERT INTO `job_dict` VALUES ('296', '土木/建筑/装修/市政工程', '建筑制图');
INSERT INTO `job_dict` VALUES ('297', '土木/建筑/装修/市政工程', '建筑工程测绘/测量');
INSERT INTO `job_dict` VALUES ('298', '土木/建筑/装修/市政工程', '道路/桥梁/隧道工程技术');
INSERT INTO `job_dict` VALUES ('299', '土木/建筑/装修/市政工程', '水利/港口工程技术');
INSERT INTO `job_dict` VALUES ('300', '土木/建筑/装修/市政工程', '架线和管道工程技术');
INSERT INTO `job_dict` VALUES ('301', '土木/建筑/装修/市政工程', '给排水/暖通/空调工程');
INSERT INTO `job_dict` VALUES ('302', '土木/建筑/装修/市政工程', '智能大厦/布线/弱电/安防');
INSERT INTO `job_dict` VALUES ('303', '土木/建筑/装修/市政工程', '室内装潢设计');
INSERT INTO `job_dict` VALUES ('304', '土木/建筑/装修/市政工程', '幕墙工程师');
INSERT INTO `job_dict` VALUES ('305', '土木/建筑/装修/市政工程', '园林/景观设计');
INSERT INTO `job_dict` VALUES ('306', '土木/建筑/装修/市政工程', '城市规划与设计');
INSERT INTO `job_dict` VALUES ('307', '土木/建筑/装修/市政工程', '市政工程师');
INSERT INTO `job_dict` VALUES ('308', '土木/建筑/装修/市政工程', '工程监理/质量管理');
INSERT INTO `job_dict` VALUES ('309', '土木/建筑/装修/市政工程', '工程造价/预结算');
INSERT INTO `job_dict` VALUES ('310', '土木/建筑/装修/市政工程', '工程资料管理');
INSERT INTO `job_dict` VALUES ('311', '土木/建筑/装修/市政工程', '建筑施工现场管理');
INSERT INTO `job_dict` VALUES ('312', '土木/建筑/装修/市政工程', '施工队长');
INSERT INTO `job_dict` VALUES ('313', '土木/建筑/装修/市政工程', '施工员');
INSERT INTO `job_dict` VALUES ('314', '土木/建筑/装修/市政工程', '建筑工程安全管理');
INSERT INTO `job_dict` VALUES ('315', '土木/建筑/装修/市政工程', '其他');
INSERT INTO `job_dict` VALUES ('316', '物业管理', '物业经理/主管');
INSERT INTO `job_dict` VALUES ('317', '物业管理', '物业管理专员/助理');
INSERT INTO `job_dict` VALUES ('318', '物业管理', '物业租赁/销售');
INSERT INTO `job_dict` VALUES ('319', '物业管理', '物业维修');
INSERT INTO `job_dict` VALUES ('320', '物业管理', '物业顾问');
INSERT INTO `job_dict` VALUES ('321', '物业管理', '物业招商管理');
INSERT INTO `job_dict` VALUES ('322', '物业管理', '其他');
INSERT INTO `job_dict` VALUES ('323', '银行', '行长/副行长');
INSERT INTO `job_dict` VALUES ('324', '银行', '银行经理/主任');
INSERT INTO `job_dict` VALUES ('325', '银行', '银行大堂经理');
INSERT INTO `job_dict` VALUES ('326', '银行', '银行客户总监');
INSERT INTO `job_dict` VALUES ('327', '银行', '银行客户经理');
INSERT INTO `job_dict` VALUES ('328', '银行', '银行客户主管');
INSERT INTO `job_dict` VALUES ('329', '银行', '银行客户代表');
INSERT INTO `job_dict` VALUES ('330', '银行', '银行客户服务');
INSERT INTO `job_dict` VALUES ('331', '银行', '综合业务经理/主管');
INSERT INTO `job_dict` VALUES ('332', '银行', '综合业务专员/助理');
INSERT INTO `job_dict` VALUES ('333', '银行', '银行会计/柜员');
INSERT INTO `job_dict` VALUES ('334', '银行', '司业务');
INSERT INTO `job_dict` VALUES ('335', '银行', '个人业务');
INSERT INTO `job_dict` VALUES ('336', '银行', '银行卡/电子银行业务推广');
INSERT INTO `job_dict` VALUES ('337', '银行', '信贷管理/资信评估/分析');
INSERT INTO `job_dict` VALUES ('338', '银行', '信审核查');
INSERT INTO `job_dict` VALUES ('339', '银行', '外汇交易');
INSERT INTO `job_dict` VALUES ('340', '银行', '进出口/信用证结算');
INSERT INTO `job_dict` VALUES ('341', '银行', '清算人员');
INSERT INTO `job_dict` VALUES ('342', '银行', '风险控制');
INSERT INTO `job_dict` VALUES ('343', '银行', '其他');
INSERT INTO `job_dict` VALUES ('344', '证券/期货/投资管理/服务', '证券总监/部门经理');
INSERT INTO `job_dict` VALUES ('345', '证券/期货/投资管理/服务', '证券/期货/外汇经纪人');
INSERT INTO `job_dict` VALUES ('346', '证券/期货/投资管理/服务', '证券/投资客户总监');
INSERT INTO `job_dict` VALUES ('347', '证券/期货/投资管理/服务', '证券/投资客户经理');
INSERT INTO `job_dict` VALUES ('348', '证券/期货/投资管理/服务', '证券/投资客户主管');
INSERT INTO `job_dict` VALUES ('349', '证券/期货/投资管理/服务', '/投资客户代表');
INSERT INTO `job_dict` VALUES ('350', '证券/期货/投资管理/服务', '证券分析/金融研究');
INSERT INTO `job_dict` VALUES ('351', '证券/期货/投资管理/服务', '投资/理财服务');
INSERT INTO `job_dict` VALUES ('352', '证券/期货/投资管理/服务', '投资银行业务');
INSERT INTO `job_dict` VALUES ('353', '证券/期货/投资管理/服务', '融资总监');
INSERT INTO `job_dict` VALUES ('354', '证券/期货/投资管理/服务', '融资经理/主管');
INSERT INTO `job_dict` VALUES ('355', '证券/期货/投资管理/服务', '融资专员/助理');
INSERT INTO `job_dict` VALUES ('356', '证券/期货/投资管理/服务', '股票/期货操盘手');
INSERT INTO `job_dict` VALUES ('357', '证券/期货/投资管理/服务', '资产评估');
INSERT INTO `job_dict` VALUES ('358', '证券/期货/投资管理/服务', '风险管理/控制/稽查');
INSERT INTO `job_dict` VALUES ('359', '证券/期货/投资管理/服务', '储备经理人');
INSERT INTO `job_dict` VALUES ('360', '证券/期货/投资管理/服务', '证券/投资项目管理');
INSERT INTO `job_dict` VALUES ('361', '证券/期货/投资管理/服务', '其他');
INSERT INTO `job_dict` VALUES ('362', '保险', '保险业务管理');
INSERT INTO `job_dict` VALUES ('363', '保险', '代理/经纪人/客户经理');
INSERT INTO `job_dict` VALUES ('364', '保险', '保险顾问/财务规划师');
INSERT INTO `job_dict` VALUES ('365', '保险', '保险产品开发/项目策划');
INSERT INTO `job_dict` VALUES ('366', '保险', '保险培训师');
INSERT INTO `job_dict` VALUES ('367', '保险', '保险契约管理');
INSERT INTO `job_dict` VALUES ('368', '保险', '核保理赔');
INSERT INTO `job_dict` VALUES ('369', '保险', '汽车定损/车险理赔');
INSERT INTO `job_dict` VALUES ('370', '保险', '保险精算师');
INSERT INTO `job_dict` VALUES ('371', '保险', '客户服务/续期管理');
INSERT INTO `job_dict` VALUES ('372', '保险', '保险内勤');
INSERT INTO `job_dict` VALUES ('373', '保险', '保险项目经理/主管');
INSERT INTO `job_dict` VALUES ('374', '保险', '储备经理人');
INSERT INTO `job_dict` VALUES ('375', '保险', '其他');
INSERT INTO `job_dict` VALUES ('376', '信托/担保/拍卖/典当', '信托服务');
INSERT INTO `job_dict` VALUES ('377', '信托/担保/拍卖/典当', '担保业务');
INSERT INTO `job_dict` VALUES ('378', '信托/担保/拍卖/典当', '拍卖师');
INSERT INTO `job_dict` VALUES ('379', '信托/担保/拍卖/典当', '典当业务');
INSERT INTO `job_dict` VALUES ('380', '信托/担保/拍卖/典当', '珠宝/收藏品鉴定');
INSERT INTO `job_dict` VALUES ('381', '信托/担保/拍卖/典当', '其他');
INSERT INTO `job_dict` VALUES ('382', '采购/贸易', '采购总监');
INSERT INTO `job_dict` VALUES ('383', '采购/贸易', '采购经理/主管');
INSERT INTO `job_dict` VALUES ('384', '采购/贸易', '采购专员/助理');
INSERT INTO `job_dict` VALUES ('385', '采购/贸易', '供应商开发');
INSERT INTO `job_dict` VALUES ('386', '采购/贸易', '供应链管理');
INSERT INTO `job_dict` VALUES ('387', '采购/贸易', '买手');
INSERT INTO `job_dict` VALUES ('388', '采购/贸易', '外贸/贸易经理/主管');
INSERT INTO `job_dict` VALUES ('389', '采购/贸易', '外贸/贸易专员/助理');
INSERT INTO `job_dict` VALUES ('390', '采购/贸易', '贸易跟单');
INSERT INTO `job_dict` VALUES ('391', '采购/贸易', '报关员');
INSERT INTO `job_dict` VALUES ('392', '采购/贸易', '其他');
INSERT INTO `job_dict` VALUES ('393', '交通运输服务', '机动车司机/驾驶');
INSERT INTO `job_dict` VALUES ('394', '交通运输服务', '列车驾驶/操作');
INSERT INTO `job_dict` VALUES ('395', '交通运输服务', '船舶驾驶/操作');
INSERT INTO `job_dict` VALUES ('396', '交通运输服务', '飞机驾驶/操作');
INSERT INTO `job_dict` VALUES ('397', '交通运输服务', '公交/地铁乘务');
INSERT INTO `job_dict` VALUES ('398', '交通运输服务', '乘务');
INSERT INTO `job_dict` VALUES ('399', '交通运输服务', '船舶乘务');
INSERT INTO `job_dict` VALUES ('400', '交通运输服务', '船员/水手');
INSERT INTO `job_dict` VALUES ('401', '交通运输服务', '航空乘务');
INSERT INTO `job_dict` VALUES ('402', '交通运输服务', '地勤人员');
INSERT INTO `job_dict` VALUES ('403', '交通运输服务', '其他');
INSERT INTO `job_dict` VALUES ('404', '物流/仓储', '物流总监');
INSERT INTO `job_dict` VALUES ('405', '物流/仓储', '物流经理/主管');
INSERT INTO `job_dict` VALUES ('406', '物流/仓储', '物流专员/助理');
INSERT INTO `job_dict` VALUES ('407', '物流/仓储', '货运代理');
INSERT INTO `job_dict` VALUES ('408', '物流/仓储', '运输经理/主管');
INSERT INTO `job_dict` VALUES ('409', '物流/仓储', '快递员/速递员');
INSERT INTO `job_dict` VALUES ('410', '物流/仓储', '水运/空运/陆运操作');
INSERT INTO `job_dict` VALUES ('411', '物流/仓储', '集装箱业务');
INSERT INTO `job_dict` VALUES ('412', '物流/仓储', '报关员');
INSERT INTO `job_dict` VALUES ('413', '物流/仓储', '单证员');
INSERT INTO `job_dict` VALUES ('414', '物流/仓储', '仓库经理/主管');
INSERT INTO `job_dict` VALUES ('415', '物流/仓储', '仓库/物料管理员');
INSERT INTO `job_dict` VALUES ('416', '物流/仓储', '理货/分拣/打包');
INSERT INTO `job_dict` VALUES ('417', '物流/仓储', '物流/仓储调度');
INSERT INTO `job_dict` VALUES ('418', '物流/仓储', '物流/仓储项目管理');
INSERT INTO `job_dict` VALUES ('419', '物流/仓储', '搬运工');
INSERT INTO `job_dict` VALUES ('420', '物流/仓储', '其他');
INSERT INTO `job_dict` VALUES ('421', '生产管理/运营', '工厂厂长/副厂长');
INSERT INTO `job_dict` VALUES ('422', '生产管理/运营', '生产总监');
INSERT INTO `job_dict` VALUES ('423', '生产管理/运营', '生产经理/车间主任');
INSERT INTO `job_dict` VALUES ('424', '生产管理/运营', '生产主管/督导/组长');
INSERT INTO `job_dict` VALUES ('425', '生产管理/运营', '生产运营管理');
INSERT INTO `job_dict` VALUES ('426', '生产管理/运营', '生产项目经理/主管');
INSERT INTO `job_dict` VALUES ('427', '生产管理/运营', '生产项目工程师');
INSERT INTO `job_dict` VALUES ('428', '生产管理/运营', '产品管理');
INSERT INTO `job_dict` VALUES ('429', '生产管理/运营', '生产计划');
INSERT INTO `job_dict` VALUES ('430', '生产管理/运营', '制造工程师');
INSERT INTO `job_dict` VALUES ('431', '生产管理/运营', '工艺/制程工程师');
INSERT INTO `job_dict` VALUES ('432', '生产管理/运营', '工业工程师');
INSERT INTO `job_dict` VALUES ('433', '生产管理/运营', '生产设备管理');
INSERT INTO `job_dict` VALUES ('434', '生产管理/运营', '生产物料管理（PMC）');
INSERT INTO `job_dict` VALUES ('435', '生产管理/运营', '包装工程师');
INSERT INTO `job_dict` VALUES ('436', '生产管理/运营', '技术文档工程师');
INSERT INTO `job_dict` VALUES ('437', '生产管理/运营', '其他');
INSERT INTO `job_dict` VALUES ('438', '电子/电器/半导体/仪器仪表', '电子技术研发工程师');
INSERT INTO `job_dict` VALUES ('439', '电子/电器/半导体/仪器仪表', '电子/电器工程师');
INSERT INTO `job_dict` VALUES ('440', '电子/电器/半导体/仪器仪表', '电器研发工程师');
INSERT INTO `job_dict` VALUES ('441', '电子/电器/半导体/仪器仪表', '电子/电器工艺/制程工程师');
INSERT INTO `job_dict` VALUES ('442', '电子/电器/半导体/仪器仪表', '电路工程师/技术员');
INSERT INTO `job_dict` VALUES ('443', '电子/电器/半导体/仪器仪表', '模拟电路设计/应用工程师');
INSERT INTO `job_dict` VALUES ('444', '电子/电器/半导体/仪器仪表', '版图设计工程师');
INSERT INTO `job_dict` VALUES ('445', '电子/电器/半导体/仪器仪表', '集成电路IC设计/应用工程师');
INSERT INTO `job_dict` VALUES ('446', '电子/电器/半导体/仪器仪表', 'IC验证工程师');
INSERT INTO `job_dict` VALUES ('447', '电子/电器/半导体/仪器仪表', '电子元器件工程师');
INSERT INTO `job_dict` VALUES ('448', '电子/电器/半导体/仪器仪表', '射频工程师');
INSERT INTO `job_dict` VALUES ('449', '电子/电器/半导体/仪器仪表', '无线电工程师');
INSERT INTO `job_dict` VALUES ('450', '电子/电器/半导体/仪器仪表', '激光/光电子技术');
INSERT INTO `job_dict` VALUES ('451', '电子/电器/半导体/仪器仪表', '光源/照明工程师');
INSERT INTO `job_dict` VALUES ('452', '电子/电器/半导体/仪器仪表', '变压器与磁电工程师');
INSERT INTO `job_dict` VALUES ('453', '电子/电器/半导体/仪器仪表', '电池/电源开发');
INSERT INTO `job_dict` VALUES ('454', '电子/电器/半导体/仪器仪表', '家用电器/数码产品研发');
INSERT INTO `job_dict` VALUES ('455', '电子/电器/半导体/仪器仪表', '空调工程/设计');
INSERT INTO `job_dict` VALUES ('456', '电子/电器/半导体/仪器仪表', '音频/视频工程师/技术员');
INSERT INTO `job_dict` VALUES ('457', '电子/电器/半导体/仪器仪表', '安防系统工程师');
INSERT INTO `job_dict` VALUES ('458', '电子/电器/半导体/仪器仪表', '电子/电器设备工程师');
INSERT INTO `job_dict` VALUES ('459', '电子/电器/半导体/仪器仪表', '电子/电器维修/保养');
INSERT INTO `job_dict` VALUES ('460', '电子/电器/半导体/仪器仪表', '电子/电器项目管理');
INSERT INTO `job_dict` VALUES ('461', '电子/电器/半导体/仪器仪表', '电气工程师');
INSERT INTO `job_dict` VALUES ('462', '电子/电器/半导体/仪器仪表', '电气设计');
INSERT INTO `job_dict` VALUES ('463', '电子/电器/半导体/仪器仪表', '电气线路设计');
INSERT INTO `job_dict` VALUES ('464', '电子/电器/半导体/仪器仪表', '线路结构设计');
INSERT INTO `job_dict` VALUES ('465', '电子/电器/半导体/仪器仪表', '半导体技术');
INSERT INTO `job_dict` VALUES ('466', '电子/电器/半导体/仪器仪表', '仪器/仪表/计量工程师');
INSERT INTO `job_dict` VALUES ('467', '电子/电器/半导体/仪器仪表', '自动化工程师');
INSERT INTO `job_dict` VALUES ('468', '电子/电器/半导体/仪器仪表', '现场应用工程师（FAE）');
INSERT INTO `job_dict` VALUES ('469', '电子/电器/半导体/仪器仪表', '测试/可靠性工程师');
INSERT INTO `job_dict` VALUES ('470', '电子/电器/半导体/仪器仪表', '其他');
INSERT INTO `job_dict` VALUES ('471', '汽车制造', '汽车动力系统工程师');
INSERT INTO `job_dict` VALUES ('472', '汽车制造', '汽车底盘/总装工程师');
INSERT INTO `job_dict` VALUES ('473', '汽车制造', '车身设计工程师');
INSERT INTO `job_dict` VALUES ('474', '汽车制造', '汽车电子工程师');
INSERT INTO `job_dict` VALUES ('475', '汽车制造', '汽车机械工程师');
INSERT INTO `job_dict` VALUES ('476', '汽车制造', '汽车零部件设计师');
INSERT INTO `job_dict` VALUES ('477', '汽车制造', '汽车装配工艺工程师');
INSERT INTO `job_dict` VALUES ('478', '汽车制造', '安全性能工程师');
INSERT INTO `job_dict` VALUES ('479', '汽车制造', '汽车工程项目管理');
INSERT INTO `job_dict` VALUES ('480', '汽车制造', '其他');
INSERT INTO `job_dict` VALUES ('481', '汽车销售与服务', '汽车销售');
INSERT INTO `job_dict` VALUES ('482', '汽车销售与服务', '汽车零配件销售');
INSERT INTO `job_dict` VALUES ('483', '汽车销售与服务', '汽车售后服务/客户服务');
INSERT INTO `job_dict` VALUES ('484', '汽车销售与服务', '汽车维修/保养');
INSERT INTO `job_dict` VALUES ('485', '汽车销售与服务', '汽车质量管理/检验检测');
INSERT INTO `job_dict` VALUES ('486', '汽车销售与服务', '汽车定损/车险理赔');
INSERT INTO `job_dict` VALUES ('487', '汽车销售与服务', '汽车装饰美容');
INSERT INTO `job_dict` VALUES ('488', '汽车销售与服务', '二手车评估师');
INSERT INTO `job_dict` VALUES ('489', '汽车销售与服务', '4S店管理');
INSERT INTO `job_dict` VALUES ('490', '汽车销售与服务', '其他');
INSERT INTO `job_dict` VALUES ('491', '机械设计/制造/维修', '工程机械经理');
INSERT INTO `job_dict` VALUES ('492', '机械设计/制造/维修', '工程机械主管');
INSERT INTO `job_dict` VALUES ('493', '机械设计/制造/维修', '机械设备经理');
INSERT INTO `job_dict` VALUES ('494', '机械设计/制造/维修', '机械设备工程师');
INSERT INTO `job_dict` VALUES ('495', '机械设计/制造/维修', '机械工程师');
INSERT INTO `job_dict` VALUES ('496', '机械设计/制造/维修', '机械设计师');
INSERT INTO `job_dict` VALUES ('497', '机械设计/制造/维修', '机械制图员');
INSERT INTO `job_dict` VALUES ('498', '机械设计/制造/维修', '机械研发工程师');
INSERT INTO `job_dict` VALUES ('499', '机械设计/制造/维修', '机械结构工程师');
INSERT INTO `job_dict` VALUES ('500', '机械设计/制造/维修', '机械工艺/制程工程师');
INSERT INTO `job_dict` VALUES ('501', '机械设计/制造/维修', '气动工程师');
INSERT INTO `job_dict` VALUES ('502', '机械设计/制造/维修', 'C/数控工程师');
INSERT INTO `job_dict` VALUES ('503', '机械设计/制造/维修', '模具工程师');
INSERT INTO `job_dict` VALUES ('504', '机械设计/制造/维修', '夹具工程师');
INSERT INTO `job_dict` VALUES ('505', '机械设计/制造/维修', '注塑工程师');
INSERT INTO `job_dict` VALUES ('506', '机械设计/制造/维修', '造/锻造工程师/技师');
INSERT INTO `job_dict` VALUES ('507', '机械设计/制造/维修', '机电工程师');
INSERT INTO `job_dict` VALUES ('508', '机械设计/制造/维修', '材料工程师');
INSERT INTO `job_dict` VALUES ('509', '机械设计/制造/维修', '机械维修/保养');
INSERT INTO `job_dict` VALUES ('510', '机械设计/制造/维修', '飞机设计与制造');
INSERT INTO `job_dict` VALUES ('511', '机械设计/制造/维修', '飞机维修/保养');
INSERT INTO `job_dict` VALUES ('512', '机械设计/制造/维修', '车设计与制造');
INSERT INTO `job_dict` VALUES ('513', '机械设计/制造/维修', '列车维修/保养');
INSERT INTO `job_dict` VALUES ('514', '机械设计/制造/维修', '船舶设计与制造');
INSERT INTO `job_dict` VALUES ('515', '机械设计/制造/维修', '船舶维修/保养');
INSERT INTO `job_dict` VALUES ('516', '机械设计/制造/维修', '其他');
INSERT INTO `job_dict` VALUES ('517', '服装/纺织/皮革设计/生产', '服装/纺织品设计');
INSERT INTO `job_dict` VALUES ('518', '服装/纺织/皮革设计/生产', '服装打样/制版');
INSERT INTO `job_dict` VALUES ('519', '服装/纺织/皮革设计/生产', '服装/纺织/皮革工艺师');
INSERT INTO `job_dict` VALUES ('520', '服装/纺织/皮革设计/生产', '电脑放码员');
INSERT INTO `job_dict` VALUES ('521', '服装/纺织/皮革设计/生产', '裁床');
INSERT INTO `job_dict` VALUES ('522', '服装/纺织/皮革设计/生产', '样衣工');
INSERT INTO `job_dict` VALUES ('523', '服装/纺织/皮革设计/生产', '面料辅料开发/采购');
INSERT INTO `job_dict` VALUES ('524', '服装/纺织/皮革设计/生产', '服装/纺织/皮革跟单');
INSERT INTO `job_dict` VALUES ('525', '服装/纺织/皮革设计/生产', '服装/纺织品/皮革销售');
INSERT INTO `job_dict` VALUES ('526', '服装/纺织/皮革设计/生产', '服装/纺织品/皮革质量管理');
INSERT INTO `job_dict` VALUES ('527', '服装/纺织/皮革设计/生产', '服装/纺织/皮革项目管理');
INSERT INTO `job_dict` VALUES ('528', '服装/纺织/皮革设计/生产', '其他');
INSERT INTO `job_dict` VALUES ('529', '技工/操作工', '车床/磨床/铣床/冲床工');
INSERT INTO `job_dict` VALUES ('530', '技工/操作工', '模具工');
INSERT INTO `job_dict` VALUES ('531', '技工/操作工', '钳工/机修工/钣金工');
INSERT INTO `job_dict` VALUES ('532', '技工/操作工', '电焊工/铆焊工');
INSERT INTO `job_dict` VALUES ('533', '技工/操作工', '电工');
INSERT INTO `job_dict` VALUES ('534', '技工/操作工', '水工/木工/油漆工');
INSERT INTO `job_dict` VALUES ('535', '技工/操作工', '铲车/叉车工');
INSERT INTO `job_dict` VALUES ('536', '技工/操作工', '空调工/电梯工/锅炉工');
INSERT INTO `job_dict` VALUES ('537', '技工/操作工', '汽车维修/保养');
INSERT INTO `job_dict` VALUES ('538', '技工/操作工', '普工/操作工');
INSERT INTO `job_dict` VALUES ('539', '技工/操作工', '其他');
INSERT INTO `job_dict` VALUES ('540', '生物制药/医疗器械', '医药代表');
INSERT INTO `job_dict` VALUES ('541', '生物制药/医疗器械', '医药销售经理/主管');
INSERT INTO `job_dict` VALUES ('542', '生物制药/医疗器械', '药品市场推广经理/主管');
INSERT INTO `job_dict` VALUES ('543', '生物制药/医疗器械', '药品市场推广专员/助理');
INSERT INTO `job_dict` VALUES ('544', '生物制药/医疗器械', '医疗器械销售');
INSERT INTO `job_dict` VALUES ('545', '生物制药/医疗器械', '医疗器械推广');
INSERT INTO `job_dict` VALUES ('546', '生物制药/医疗器械', '医药学术推广');
INSERT INTO `job_dict` VALUES ('547', '生物制药/医疗器械', '医药招商');
INSERT INTO `job_dict` VALUES ('548', '生物制药/医疗器械', '医药项目管理');
INSERT INTO `job_dict` VALUES ('549', '生物制药/医疗器械', '医药项目招投标管理');
INSERT INTO `job_dict` VALUES ('550', '生物制药/医疗器械', '生物工程/生物制药');
INSERT INTO `job_dict` VALUES ('551', '生物制药/医疗器械', '药品研发');
INSERT INTO `job_dict` VALUES ('552', '生物制药/医疗器械', '医疗器械研发');
INSERT INTO `job_dict` VALUES ('553', '生物制药/医疗器械', '临床研究员');
INSERT INTO `job_dict` VALUES ('554', '生物制药/医疗器械', '临床协调员');
INSERT INTO `job_dict` VALUES ('555', '生物制药/医疗器械', '临床数据分析员');
INSERT INTO `job_dict` VALUES ('556', '生物制药/医疗器械', '医药化学分析');
INSERT INTO `job_dict` VALUES ('557', '生物制药/医疗器械', '医药技术研发管理人员');
INSERT INTO `job_dict` VALUES ('558', '生物制药/医疗器械', '药品注册');
INSERT INTO `job_dict` VALUES ('559', '生物制药/医疗器械', '医疗器械注册');
INSERT INTO `job_dict` VALUES ('560', '生物制药/医疗器械', '药品生产/质量管理');
INSERT INTO `job_dict` VALUES ('561', '生物制药/医疗器械', '医疗器械生产/质量管理');
INSERT INTO `job_dict` VALUES ('562', '生物制药/医疗器械', '医疗器械维修/保养');
INSERT INTO `job_dict` VALUES ('563', '生物制药/医疗器械', '其他');
INSERT INTO `job_dict` VALUES ('564', '化工', '化工工程师');
INSERT INTO `job_dict` VALUES ('565', '化工', '工研发工程师');
INSERT INTO `job_dict` VALUES ('566', '化工', '化学分析');
INSERT INTO `job_dict` VALUES ('567', '化工', '技术应用');
INSERT INTO `job_dict` VALUES ('568', '化工', '化学操作');
INSERT INTO `job_dict` VALUES ('569', '化工', '化学制剂研发');
INSERT INTO `job_dict` VALUES ('570', '化工', '油漆/化工涂料研发');
INSERT INTO `job_dict` VALUES ('571', '化工', '塑料工程师');
INSERT INTO `job_dict` VALUES ('572', '化工', '化学实验室技术员/研究员');
INSERT INTO `job_dict` VALUES ('573', '化工', '化工项目管理');
INSERT INTO `job_dict` VALUES ('574', '化工', '其他');
INSERT INTO `job_dict` VALUES ('575', '影视/媒体/出版/印刷', '导演/编导');
INSERT INTO `job_dict` VALUES ('576', '影视/媒体/出版/印刷', '总编/副总编');
INSERT INTO `job_dict` VALUES ('577', '影视/媒体/出版/印刷', '艺术指导/舞美设计');
INSERT INTO `job_dict` VALUES ('578', '影视/媒体/出版/印刷', '摄影师/摄像师');
INSERT INTO `job_dict` VALUES ('579', '影视/媒体/出版/印刷', '化妆师/造型师/服装/道具');
INSERT INTO `job_dict` VALUES ('580', '影视/媒体/出版/印刷', '主持人/司仪');
INSERT INTO `job_dict` VALUES ('581', '影视/媒体/出版/印刷', '演员/模特');
INSERT INTO `job_dict` VALUES ('582', '影视/媒体/出版/印刷', '配音员');
INSERT INTO `job_dict` VALUES ('583', '影视/媒体/出版/印刷', '音效师');
INSERT INTO `job_dict` VALUES ('584', '影视/媒体/出版/印刷', '期制作');
INSERT INTO `job_dict` VALUES ('585', '影视/媒体/出版/印刷', '经纪人/星探');
INSERT INTO `job_dict` VALUES ('586', '影视/媒体/出版/印刷', '放映管理');
INSERT INTO `job_dict` VALUES ('587', '影视/媒体/出版/印刷', '作家/编剧/撰稿人');
INSERT INTO `job_dict` VALUES ('588', '影视/媒体/出版/印刷', '文字编辑/组稿');
INSERT INTO `job_dict` VALUES ('589', '影视/媒体/出版/印刷', '美术编辑/美术设计');
INSERT INTO `job_dict` VALUES ('590', '影视/媒体/出版/印刷', '记者/采编');
INSERT INTO `job_dict` VALUES ('591', '影视/媒体/出版/印刷', '电话采编');
INSERT INTO `job_dict` VALUES ('592', '影视/媒体/出版/印刷', '文案策划');
INSERT INTO `job_dict` VALUES ('593', '影视/媒体/出版/印刷', '校对/录入');
INSERT INTO `job_dict` VALUES ('594', '影视/媒体/出版/印刷', '发行管理');
INSERT INTO `job_dict` VALUES ('595', '影视/媒体/出版/印刷', '排版设计');
INSERT INTO `job_dict` VALUES ('596', '影视/媒体/出版/印刷', '印刷排版/制版');
INSERT INTO `job_dict` VALUES ('597', '影视/媒体/出版/印刷', '印刷操作');
INSERT INTO `job_dict` VALUES ('598', '影视/媒体/出版/印刷', '其他');
INSERT INTO `job_dict` VALUES ('599', '艺术/设计', '设计管理人员');
INSERT INTO `job_dict` VALUES ('600', '艺术/设计', '艺术/设计总监');
INSERT INTO `job_dict` VALUES ('601', '艺术/设计', '绘画');
INSERT INTO `job_dict` VALUES ('602', '艺术/设计', '原画师');
INSERT INTO `job_dict` VALUES ('603', '艺术/设计', 'CAD设计/制图');
INSERT INTO `job_dict` VALUES ('604', '艺术/设计', '平面设计');
INSERT INTO `job_dict` VALUES ('605', '艺术/设计', '三维/3D设计/制作');
INSERT INTO `job_dict` VALUES ('606', '艺术/设计', 'Flash设计/开发');
INSERT INTO `job_dict` VALUES ('607', '艺术/设计', '特效设计');
INSERT INTO `job_dict` VALUES ('608', '艺术/设计', '视觉设计');
INSERT INTO `job_dict` VALUES ('609', '艺术/设计', '用户体验（UE/UX）设计');
INSERT INTO `job_dict` VALUES ('610', '艺术/设计', '美术编辑/美术设计');
INSERT INTO `job_dict` VALUES ('611', '艺术/设计', '多媒体/动画设计');
INSERT INTO `job_dict` VALUES ('612', '艺术/设计', '包装设计');
INSERT INTO `job_dict` VALUES ('613', '艺术/设计', '家具设计');
INSERT INTO `job_dict` VALUES ('614', '艺术/设计', '用品设计');
INSERT INTO `job_dict` VALUES ('615', '艺术/设计', '工艺品/珠宝设计');
INSERT INTO `job_dict` VALUES ('616', '艺术/设计', '具设计');
INSERT INTO `job_dict` VALUES ('617', '艺术/设计', '店面/展览/展示/陈列设计');
INSERT INTO `job_dict` VALUES ('618', '艺术/设计', '工业设计');
INSERT INTO `job_dict` VALUES ('619', '艺术/设计', '游戏界面设计');
INSERT INTO `job_dict` VALUES ('620', '艺术/设计', '其他');
INSERT INTO `job_dict` VALUES ('621', '咨询/顾问/调研/数据分析', '咨询总监');
INSERT INTO `job_dict` VALUES ('622', '咨询/顾问/调研/数据分析', '咨询经理/主管');
INSERT INTO `job_dict` VALUES ('623', '咨询/顾问/调研/数据分析', '咨询顾问/咨询员');
INSERT INTO `job_dict` VALUES ('624', '咨询/顾问/调研/数据分析', '专业顾问');
INSERT INTO `job_dict` VALUES ('625', '咨询/顾问/调研/数据分析', '调研员');
INSERT INTO `job_dict` VALUES ('626', '咨询/顾问/调研/数据分析', '数据分析师');
INSERT INTO `job_dict` VALUES ('627', '咨询/顾问/调研/数据分析', '情报信息分析');
INSERT INTO `job_dict` VALUES ('628', '咨询/顾问/调研/数据分析', '猎头顾问/助理');
INSERT INTO `job_dict` VALUES ('629', '咨询/顾问/调研/数据分析', '咨询项目管理');
INSERT INTO `job_dict` VALUES ('630', '咨询/顾问/调研/数据分析', '其他');
INSERT INTO `job_dict` VALUES ('631', '教育/培训', '幼教');
INSERT INTO `job_dict` VALUES ('632', '教育/培训', '小学教师');
INSERT INTO `job_dict` VALUES ('633', '教育/培训', '初中教师');
INSERT INTO `job_dict` VALUES ('634', '教育/培训', '高中教师');
INSERT INTO `job_dict` VALUES ('635', '教育/培训', '大学教师');
INSERT INTO `job_dict` VALUES ('636', '教育/培训', '职业技术教师');
INSERT INTO `job_dict` VALUES ('637', '教育/培训', '家教');
INSERT INTO `job_dict` VALUES ('638', '教育/培训', '兼职教师');
INSERT INTO `job_dict` VALUES ('639', '教育/培训', '理科教师');
INSERT INTO `job_dict` VALUES ('640', '教育/培训', '文科教师');
INSERT INTO `job_dict` VALUES ('641', '教育/培训', '外语教师');
INSERT INTO `job_dict` VALUES ('642', '教育/培训', '音乐教师');
INSERT INTO `job_dict` VALUES ('643', '教育/培训', '美术教师');
INSERT INTO `job_dict` VALUES ('644', '教育/培训', '体育老师/教练');
INSERT INTO `job_dict` VALUES ('645', '教育/培训', '校长/副校长');
INSERT INTO `job_dict` VALUES ('646', '教育/培训', '教学/教务管理人员');
INSERT INTO `job_dict` VALUES ('647', '教育/培训', '培训督导');
INSERT INTO `job_dict` VALUES ('648', '教育/培训', '培训师/讲师');
INSERT INTO `job_dict` VALUES ('649', '教育/培训', '培训助理/助教');
INSERT INTO `job_dict` VALUES ('650', '教育/培训', '教育产品开发');
INSERT INTO `job_dict` VALUES ('651', '教育/培训', '培训策划');
INSERT INTO `job_dict` VALUES ('652', '教育/培训', '培训/招生/课程顾问');
INSERT INTO `job_dict` VALUES ('653', '教育/培训', '其他');
INSERT INTO `job_dict` VALUES ('654', '律师/法务/合规', '法务经理/主管');
INSERT INTO `job_dict` VALUES ('655', '律师/法务/合规', '法务专员/助理');
INSERT INTO `job_dict` VALUES ('656', '律师/法务/合规', '律师');
INSERT INTO `job_dict` VALUES ('657', '律师/法务/合规', '律师助理');
INSERT INTO `job_dict` VALUES ('658', '律师/法务/合规', '企业律师/合规经理/主管');
INSERT INTO `job_dict` VALUES ('659', '律师/法务/合规', '企业律师/合规顾问');
INSERT INTO `job_dict` VALUES ('660', '律师/法务/合规', '知识产权/专利顾问/代理人');
INSERT INTO `job_dict` VALUES ('661', '律师/法务/合规', '合同管理');
INSERT INTO `job_dict` VALUES ('662', '律师/法务/合规', '其他');
INSERT INTO `job_dict` VALUES ('663', '翻译(口译与笔译)', '英语翻译');
INSERT INTO `job_dict` VALUES ('664', '翻译(口译与笔译)', '法语翻译');
INSERT INTO `job_dict` VALUES ('665', '翻译(口译与笔译)', '日语翻译');
INSERT INTO `job_dict` VALUES ('666', '翻译(口译与笔译)', '德语翻译');
INSERT INTO `job_dict` VALUES ('667', '翻译(口译与笔译)', '俄语翻译');
INSERT INTO `job_dict` VALUES ('668', '翻译(口译与笔译)', '西班牙语翻译');
INSERT INTO `job_dict` VALUES ('669', '翻译(口译与笔译)', '意大利语翻译');
INSERT INTO `job_dict` VALUES ('670', '翻译(口译与笔译)', '葡萄牙语翻译');
INSERT INTO `job_dict` VALUES ('671', '翻译(口译与笔译)', '阿拉伯语翻译');
INSERT INTO `job_dict` VALUES ('672', '翻译(口译与笔译)', '韩语/朝鲜语翻译');
INSERT INTO `job_dict` VALUES ('673', '翻译(口译与笔译)', '其他语种翻译');
INSERT INTO `job_dict` VALUES ('674', '商超/酒店/娱乐管理/服务', '店长/卖场管理');
INSERT INTO `job_dict` VALUES ('675', '商超/酒店/娱乐管理/服务', '楼面管理');
INSERT INTO `job_dict` VALUES ('676', '商超/酒店/娱乐管理/服务', '品牌/连锁招商管理');
INSERT INTO `job_dict` VALUES ('677', '商超/酒店/娱乐管理/服务', '大堂经理/领班');
INSERT INTO `job_dict` VALUES ('678', '商超/酒店/娱乐管理/服务', '酒店管理');
INSERT INTO `job_dict` VALUES ('679', '商超/酒店/娱乐管理/服务', '客房管理');
INSERT INTO `job_dict` VALUES ('680', '商超/酒店/娱乐管理/服务', '收银主管');
INSERT INTO `job_dict` VALUES ('681', '商超/酒店/娱乐管理/服务', '收银员');
INSERT INTO `job_dict` VALUES ('682', '商超/酒店/娱乐管理/服务', '店员/营业员/导购员');
INSERT INTO `job_dict` VALUES ('683', '商超/酒店/娱乐管理/服务', '理货员');
INSERT INTO `job_dict` VALUES ('684', '商超/酒店/娱乐管理/服务', '促销主管/督导');
INSERT INTO `job_dict` VALUES ('685', '商超/酒店/娱乐管理/服务', '促销员');
INSERT INTO `job_dict` VALUES ('686', '商超/酒店/娱乐管理/服务', '品类管理');
INSERT INTO `job_dict` VALUES ('687', '商超/酒店/娱乐管理/服务', '前厅接待/礼仪/迎宾');
INSERT INTO `job_dict` VALUES ('688', '商超/酒店/娱乐管理/服务', '预订员');
INSERT INTO `job_dict` VALUES ('689', '商超/酒店/娱乐管理/服务', '行李员');
INSERT INTO `job_dict` VALUES ('690', '商超/酒店/娱乐管理/服务', '服务员');
INSERT INTO `job_dict` VALUES ('691', '商超/酒店/娱乐管理/服务', '防损员/内保');
INSERT INTO `job_dict` VALUES ('692', '商超/酒店/娱乐管理/服务', '奢侈品销售');
INSERT INTO `job_dict` VALUES ('693', '商超/酒店/娱乐管理/服务', '主持人/司仪');
INSERT INTO `job_dict` VALUES ('694', '商超/酒店/娱乐管理/服务', '其他');
INSERT INTO `job_dict` VALUES ('695', '旅游/度假/出入境服务', '旅游产品销售');
INSERT INTO `job_dict` VALUES ('696', '旅游/度假/出入境服务', '旅游顾问');
INSERT INTO `job_dict` VALUES ('697', '旅游/度假/出入境服务', '导游/票务');
INSERT INTO `job_dict` VALUES ('698', '旅游/度假/出入境服务', '旅游计划调度');
INSERT INTO `job_dict` VALUES ('699', '旅游/度假/出入境服务', '旅游产品/线路策划');
INSERT INTO `job_dict` VALUES ('700', '旅游/度假/出入境服务', '签证业务办理');
INSERT INTO `job_dict` VALUES ('701', '旅游/度假/出入境服务', '其他');
INSERT INTO `job_dict` VALUES ('702', '烹饪/料理/食品研发', '厨师/面点师');
INSERT INTO `job_dict` VALUES ('703', '烹饪/料理/食品研发', '食品加工/处理');
INSERT INTO `job_dict` VALUES ('704', '烹饪/料理/食品研发', '调酒师/茶艺师/咖啡师');
INSERT INTO `job_dict` VALUES ('705', '烹饪/料理/食品研发', '营养师');
INSERT INTO `job_dict` VALUES ('706', '烹饪/料理/食品研发', '厨工');
INSERT INTO `job_dict` VALUES ('707', '烹饪/料理/食品研发', '食品/饮料研发');
INSERT INTO `job_dict` VALUES ('708', '烹饪/料理/食品研发', '食品/饮料检验');
INSERT INTO `job_dict` VALUES ('709', '烹饪/料理/食品研发', '其他');
INSERT INTO `job_dict` VALUES ('710', '保健/美容/美发/健身', '美发/发型师');
INSERT INTO `job_dict` VALUES ('711', '保健/美容/美发/健身', '化妆师');
INSERT INTO `job_dict` VALUES ('712', '保健/美容/美发/健身', '美容师/美甲师');
INSERT INTO `job_dict` VALUES ('713', '保健/美容/美发/健身', '美容顾问(BA)');
INSERT INTO `job_dict` VALUES ('714', '保健/美容/美发/健身', '健身/美体/舞蹈教练');
INSERT INTO `job_dict` VALUES ('715', '保健/美容/美发/健身', '按摩/足疗');
INSERT INTO `job_dict` VALUES ('716', '保健/美容/美发/健身', '救生员');
INSERT INTO `job_dict` VALUES ('717', '保健/美容/美发/健身', '其他');
INSERT INTO `job_dict` VALUES ('718', '医院/医疗/护理', '医疗管理人员');
INSERT INTO `job_dict` VALUES ('719', '医院/医疗/护理', '门诊/全科医生');
INSERT INTO `job_dict` VALUES ('720', '医院/医疗/护理', '内科医生');
INSERT INTO `job_dict` VALUES ('721', '医院/医疗/护理', '外科医生');
INSERT INTO `job_dict` VALUES ('722', '医院/医疗/护理', '儿科医生');
INSERT INTO `job_dict` VALUES ('723', '医院/医疗/护理', '牙科医生');
INSERT INTO `job_dict` VALUES ('724', '医院/医疗/护理', '美容整形科医生');
INSERT INTO `job_dict` VALUES ('725', '医院/医疗/护理', '中医科医生');
INSERT INTO `job_dict` VALUES ('726', '医院/医疗/护理', '麻醉医生');
INSERT INTO `job_dict` VALUES ('727', '医院/医疗/护理', '心理医生');
INSERT INTO `job_dict` VALUES ('728', '医院/医疗/护理', '眼科医生/验光师');
INSERT INTO `job_dict` VALUES ('729', '医院/医疗/护理', '医学影像/放射科医师');
INSERT INTO `job_dict` VALUES ('730', '医院/医疗/护理', '化验/检验科医师');
INSERT INTO `job_dict` VALUES ('731', '医院/医疗/护理', '药房管理/药剂师');
INSERT INTO `job_dict` VALUES ('732', '医院/医疗/护理', '理疗师');
INSERT INTO `job_dict` VALUES ('733', '医院/医疗/护理', '兽医');
INSERT INTO `job_dict` VALUES ('734', '医院/医疗/护理', '护士/护理人员');
INSERT INTO `job_dict` VALUES ('735', '医院/医疗/护理', '营养师');
INSERT INTO `job_dict` VALUES ('736', '医院/医疗/护理', '针灸/推拿');
INSERT INTO `job_dict` VALUES ('737', '医院/医疗/护理', '其他');
INSERT INTO `job_dict` VALUES ('738', '社区/居民/家政服务', '保安经理');
INSERT INTO `job_dict` VALUES ('739', '社区/居民/家政服务', '保安');
INSERT INTO `job_dict` VALUES ('740', '社区/居民/家政服务', '家政人员');
INSERT INTO `job_dict` VALUES ('741', '社区/居民/家政服务', '婚礼/庆典策划服务');
INSERT INTO `job_dict` VALUES ('742', '社区/居民/家政服务', '宠物护理和美容');
INSERT INTO `job_dict` VALUES ('743', '社区/居民/家政服务', '保姆/母婴护理');
INSERT INTO `job_dict` VALUES ('744', '社区/居民/家政服务', '搬运工');
INSERT INTO `job_dict` VALUES ('745', '社区/居民/家政服务', '保洁');
INSERT INTO `job_dict` VALUES ('746', '社区/居民/家政服务', '其他');
INSERT INTO `job_dict` VALUES ('747', '能源/矿产/地质勘查', '石油/天然气技术人员');
INSERT INTO `job_dict` VALUES ('748', '能源/矿产/地质勘查', '空调/热能工程师');
INSERT INTO `job_dict` VALUES ('749', '能源/矿产/地质勘查', '核力/火力工程师');
INSERT INTO `job_dict` VALUES ('750', '能源/矿产/地质勘查', '水利/水电工程师');
INSERT INTO `job_dict` VALUES ('751', '能源/矿产/地质勘查', '电力工程师/技术员');
INSERT INTO `job_dict` VALUES ('752', '能源/矿产/地质勘查', '地质勘查/选矿/采矿');
INSERT INTO `job_dict` VALUES ('753', '能源/矿产/地质勘查', '能源/矿产项目管理');
INSERT INTO `job_dict` VALUES ('754', '能源/矿产/地质勘查', '其他');
INSERT INTO `job_dict` VALUES ('755', '环境科学/环保', '环保技术工程师');
INSERT INTO `job_dict` VALUES ('756', '环境科学/环保', '环境评价工程师');
INSERT INTO `job_dict` VALUES ('757', '环境科学/环保', '环境监测工程师');
INSERT INTO `job_dict` VALUES ('758', '环境科学/环保', '水处理工程师');
INSERT INTO `job_dict` VALUES ('759', '环境科学/环保', '固废处理工程师');
INSERT INTO `job_dict` VALUES ('760', '环境科学/环保', '废气处理工程师');
INSERT INTO `job_dict` VALUES ('761', '环境科学/环保', '生态治理/规划');
INSERT INTO `job_dict` VALUES ('762', '环境科学/环保', '环境管理/园林景区保护');
INSERT INTO `job_dict` VALUES ('763', '环境科学/环保', '其他');
INSERT INTO `job_dict` VALUES ('764', '农/林/牧/渔业', '农艺师');
INSERT INTO `job_dict` VALUES ('765', '农/林/牧/渔业', '林业技术人员');
INSERT INTO `job_dict` VALUES ('766', '农/林/牧/渔业', '园艺师');
INSERT INTO `job_dict` VALUES ('767', '农/林/牧/渔业', '畜牧师');
INSERT INTO `job_dict` VALUES ('768', '农/林/牧/渔业', '动物育种/养殖');
INSERT INTO `job_dict` VALUES ('769', '农/林/牧/渔业', '动物营养/饲料研发');
INSERT INTO `job_dict` VALUES ('770', '农/林/牧/渔业', '饲料销售');
INSERT INTO `job_dict` VALUES ('771', '农/林/牧/渔业', '其他');
INSERT INTO `job_dict` VALUES ('772', '公务员/事业单位/科研机构', '公务员/事业单位人员');
INSERT INTO `job_dict` VALUES ('773', '公务员/事业单位/科研机构', '科研管理人员');
INSERT INTO `job_dict` VALUES ('774', '公务员/事业单位/科研机构', '科研人员');
INSERT INTO `job_dict` VALUES ('775', '公务员/事业单位/科研机构', '其他');
INSERT INTO `job_dict` VALUES ('776', '志愿者/社会工作者', '志愿者/义工');
INSERT INTO `job_dict` VALUES ('777', '志愿者/社会工作者', '社会工作者/社工');
INSERT INTO `job_dict` VALUES ('778', '志愿者/社会工作者', '其他');
INSERT INTO `job_dict` VALUES ('779', '兼职/临时', '兼职');
INSERT INTO `job_dict` VALUES ('780', '兼职/临时', '临时');
INSERT INTO `job_dict` VALUES ('781', '兼职/临时', '其他');
INSERT INTO `job_dict` VALUES ('782', '其他', '其他');

-- ----------------------------
-- Table structure for language_ability
-- ----------------------------
DROP TABLE IF EXISTS `language_ability`;
CREATE TABLE `language_ability` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `language_type` varchar(255) collate utf8_unicode_ci default NULL,
  `rw_ability` varchar(255) collate utf8_unicode_ci default NULL,
  `ls_ability` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language_ability
-- ----------------------------
INSERT INTO `language_ability` VALUES ('08646ad8-3f45-4c34-be1e-8ff29fb1a7fd', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '粤语', '精通', '精通');
INSERT INTO `language_ability` VALUES ('2fbb9a9f-45b7-46e7-8021-acaf4b7837ff', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '英语', '良好', '良好');
INSERT INTO `language_ability` VALUES ('b73b1eca-3767-4109-ac95-ccd1daedf4af', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '日语', '一般', '一般');
INSERT INTO `language_ability` VALUES ('faffa97a-cd63-43d2-96ba-2f7d4d25971c', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '英语', '良好', '良好');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `OrderID` int(255) NOT NULL auto_increment,
  `CustomerID` varchar(255) default NULL,
  `OrderDate` datetime default NULL,
  PRIMARY KEY  (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '2016-02-16 09:36:32');
INSERT INTO `orders` VALUES ('2', '1', '2016-02-14 09:36:38');

-- ----------------------------
-- Table structure for person_info
-- ----------------------------
DROP TABLE IF EXISTS `person_info`;
CREATE TABLE `person_info` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `person_name` varchar(255) collate utf8_unicode_ci default NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `person_gender` int(1) default NULL,
  `person_birthday` date default NULL,
  `person_workdate` date default NULL,
  `person_born_area` varchar(255) collate utf8_unicode_ci default NULL,
  `person_living_area` varchar(255) collate utf8_unicode_ci default NULL,
  `person_tel` varchar(255) collate utf8_unicode_ci default NULL,
  `person_email` varchar(255) collate utf8_unicode_ci default NULL,
  `person_qq` varchar(255) collate utf8_unicode_ci default NULL,
  `person_marriage` varchar(255) collate utf8_unicode_ci default NULL,
  `person_identity_type` varchar(255) collate utf8_unicode_ci default NULL,
  `person_identity_code` varchar(255) collate utf8_unicode_ci default NULL,
  `person_abroad` int(1) default NULL,
  `person_party` varchar(255) collate utf8_unicode_ci default NULL,
  `person_avatar` mediumblob,
  PRIMARY KEY  (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `person_info_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of person_info
-- ----------------------------
INSERT INTO `person_info` VALUES ('66887e9d-0c66-467c-bc4f-388444625c8e', '程慧涛', 'dbcbcf64-94a8-47f4-bd27-d19ebdbabb79', '1', '1993-10-06', '2015-12-20', '130426', '440101', '15521380940', 'chenghtao@foxmail.com', '420675710', '未婚', '身份证', '', '0', '中共党员', 0xFFD8FFE000104A46494600010201012C012C0000FFEE000E41646F626500640000000001FFE10FE04578696600004D4D002A00000008000B010F00020000001200000092011000020000000B000000A4011200030000000100010000011A000500000001000000B0011B000500000001000000B8012800030000000100020000013100020000001B000000C00132000200000014000000DC0213000300000001000200008769000400000001000000F0882500040000000100000384000003984E494B4F4E20434F52504F524154494F4E004E494B4F4E20443230300000012C000000010000012C00000001000041646F62652050686F746F73686F702043532057696E646F77730000323031323A30393A31392031363A32303A3330000026829A000500000001000002BE829D000500000001000002C6882200030000000100010000882700030000000100C800009000000700000004303232319003000200000014000002CE9004000200000014000002E29101000700000004010203009102000500000001000002F69204000A00000001000002FE920500050000000100000306920700030000000100050000920800030000000100000000920900030000000100000000920A0005000000010000030E928600070000004A00000316929000020000000338320000929100020000000338320000929200020000000338320000A00000070000000430313030A0020004000000010000019DA0030004000000010000024FA00500040000000100000360A21700030000000100020000A30000070000000103000000A30100070000000101000000A30200070000000800000374A40100030000000100000000A40200030000000100010000A40300030000000100010000A4040005000000010000037CA405000300000001005A0000A40600030000000100000000A40700030000000100000000A40800030000000100000000A40900030000000100000000A40A00030000000100000000A40C00030000000100000000000000000000000A00000640000000820000000A323031323A30393A31312031313A33333A313700323031323A30393A31312031313A33333A313700000000020000000100000000000000060000002D0000000A000002580000000A200020002000200020002000200020002000200020002000200020002000200020002000200020002000200020002000200020002000200020002000200020002000200020002000000000010002000700000004303130300000000000000002000201000201000000010000000100010000000100000004020200000000000000000006010300030000000100060000011A000500000001000003E6011B000500000001000003EE0128000300000001000200000201000400000001000003F6020200040000000100000BE10000000000000048000000010000004800000001FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F434D0001FFEE000E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A0007003012200021101031101FFDD00040007FFC4013F0000010501010101010100000000000000030001020405060708090A0B0100010501010101010100000000000000010002030405060708090A0B1000010401030204020507060805030C33010002110304211231054151611322718132061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204040304050607070605350100021103213112044151617122130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00B49949285ACD05924F09424A593A4989004B8C0F3494A4A1296F1213C833AA4A59284E9109295094274924B184A14928414FFFD0B8927496AB456493C2C4FAD3D51D8386DA2925B91933B5CDFCD60FA65094844127A28024803AA1EB5F59A8C76BE8C4FD25BA873870349DCD72E632FACF52CC8175C76B6218DD04891BBFE92AD5D2EB0E809F82D0C5E83D43263D2A1C5BFBDC05432F324EE78476B6E63C1D8711697DBB3891FA7B34E21C74FF005853A3AB753A2C7595E43B7BBE9171DD3FE72DE67D49CE2C9DCCDD1F46610AFF00A97D42B6EE680EF2054039A8DFCE7ED65FBBCBF713F4DFAE20C579EC87F01EDE0E9B7DDFBBFBEBA8ADECB18D7B08735DA82355E7995D1F2F1A7D4ADC23830B43EACF5D760DEDC1C9D716E30D20496BDC7E91FDE6AB9839AE235237DA5FC5AD979731D40AF07B649391063B84A15B6BAD09D249253FFFD1BC94249D6AB4565C37D63B1D9BD7AEAC71416D0CFECFD2FF00A6E72EE97136B059F58F35DC817BFF002C2AFCDCAB1FD59B97173FA3B9D23A3E2E3D15ED6036BB573DDA9F92E871B09DB65A240EC38553098035B3A6816A63BAE262B1A2C09C8CA46EDDA880000161447309DD8DBF8040F356036E1F49A0FDE939990FFA0132975B8D9B82D00B4896F76F208F9AE17EB1F4A662582DA87B1C7511A2F46C965B5926E11E32B9DFAC38CDB706D1B660133E0A5C333198ECC79622503DC36BA2E61CDE938B92EFA6E66DB348F7B0FA4FD3FB2AEAC5FA9CE2EE81583F9B75A07C243BFEFCB6E17470371893D4070A62A4476256493A49C87FFFD2BF0927496A3454B98662B6BFADF754FF00A171F59A0F70E1EAFF00D5EF5D3ACDCDC3B1FD4B03A8B580369B5D458F0752D21ED6CB7F936FE77F2D55E74C462A26A52F93FACD9E5232392C0B11AE2F074E9C775EF3B9FE9D639DBC9F20EFCD57EBE8F6B00B28CCCAAC11C6E686FF00D4215747AD58AD84B67920907F0526FD5AC26E45795B2722B61AC3DDEE1074DCE63F732CB76BBF9D7B7D458A0EFD3C9D522EB63E6DEC7B2E6FE8ED7FA91A6E7403FDA51CA73AE3E8B5EEADA443B6183AFF002DAABB838DCCA1A4ED643773B527FAC7F392B2A2CB5F53BDD55A36BFE060A69257708AFD885B81D19BA9B45B60D20E4179F302A758E59FD4312AAE8BD95C9A9F5BE0132018E1B2B5FF00E6E74F0EC8BBD169B72C0F5DFB5BEF8870DF0DFDE6B5FF00D75533A8F4B16CAA3F35C1BF18213AF50353E680343B7D1C1FAA357A7F57F189E6D7596FDEEDA3FEA16BA8D18630A8C7C60E2E6D7454049E34DB11F45BF454FB2DFE5B2C72628CA20D0F4FABFAAE2F318E58F218CAACFAB4FEB2BB26EC9D253313FFD3D04E924B51A2A52B8BAEA5F4D4D0063816DA7931F4F686FE6EE73BDD628A4EDAE6FB8490D2D0E1CC42A7F10C539C21280E2E026C0F9A8B7391C9084A4246B8C0A276B0E9F4C2D004EA7B2D89E0F3E616161BB6B1BF0D5687DADACAFDC63E2B1C1DDD321A4EDD667B8338DD1B8F12A790DB1990D0E870741907583A2AAFAEAB3259739A1BB49702E25BAFD1DCD6FD2F737F7135BE91B19734B439A0B402E2E3E3F49DEE4D257805DF6DAD1508322163F52736C1B4FD173834F2742769FA32EFF351EBCD05A2B3A18D3C0F9854B26DDB6B1C3521C74F9393A20CE518C45C89D078F4584C631323A01A928AE20E8D0763096D4E77D22C1F43721A7264CE83C8265BBCA61962C3184BE6D49AFEB7471B9ACA32E5338FCBA017E1D56493A4AC30BFFFD4D2492496AB454940492494971ADDACDA4EADD0A3D65B658DDD3A1F11A69ED76BF495170F7360C132251A97ED7C3F4F35CF7378462CD288363E61E024EDF2F97DCC424743B1F3093EC0C6D85F6175DAEE89327FB5293F12BB1BB4D3B3B8320F3F04716ED8D84388D613D991BDB101BDCA82CF76C091AAB4019553531AD02593B48EFB902C77A964F66693E654EE3B9DB58741AB8F8042688688E15DF86E312CDC47F40710FAFA5A5CFE431C543F4CF09FFA4A492496DB92A49249253FFFD5D24938496AB4564E925FEA1252DCBD83E28D6D5ED04708B6605D5D18F9641D8EDC2C1FBAE7106ADFFD760D88A6ADD51583CF4B8B98911D287D8EBF262B044799FB4B5998AF7B7F4566D778112145D8B7364D966E234F6880AFD346E603DD3DD5681B1CAAA5B3D1AA58DAF1C08D4F3F15519F41BF00B4F2181B54181035F2081FB2F3ABE9F4DD6B4BAC739E76012E6D25C5D89BFF0094DABE97FD6D5EF864C472C81FD28EED3E7E24E3891FA32D9A8927496CB96B4249248A9FFFD6D44B4024F656F0FA5666600E6336547FC2BE403FD46FD3B3FB2BA1E9FD071314B6C78F5AD1A87BE343FC8AFE833FE9BD5F9E78434BB3D835238A52F01E2E160F44CCCB02C70F428E7D5B06A47F22BFA4E5AE3A56362E29B6967B811FA47FB9C4131B9DFC9FE4316AB9BBC86F2264FC94AEA85B55951E1ED2D9F885572669CF7D0760D88638C7CFBB571E9AC83558D0E63816B9A44820F65999DD31D87AD72EC771F693CB49FCC79FFA87FF00ABF5F1F73EB617087810E1E0E1ED72B0E6B5EC2C780E6B84381D410557C98C4C78F42CD8F2181F0EA1E56B0F6E80C4762A704BA5C6614F3F0DF8191064E3D9FCD5A7583FE86D3FBDFE8DFF009E8983817659D41AE8FCFB382E1FB957FE95547825C5C15EA6E71C7878AFD2CFA774FF00B5DA2EB5BFAAD6740787B81E3FE2D9F9FF00E67EFAD4CAAB7D6F7786AACB58D630318035AD00340D000146E03D32D89DDA42BB8F1884687D4B4F2643395F4E81CB7F48C6CB0E6DA3F48D302C6C078FFC92C7CDE839D8B2E6B7D7ABF7983DC3FAD5FD2FF31748EADFEA178E4FDC8D497F0E0403C03C82AC63CD38680D8FDD2C53C7196E35EEF0820F092ECF37A3E0E6CBACAF65A7FC2B3DAEFED47D3FED2C1CCFABD95402EA4FACD1AEDE1D1E5F9AF56A1CCC25BFA4F8EDFE335E586436D5FFD7F506B406B89E448F97829F0DF804F02212E52529A2079A7492494C4E8E07F7B43FC139200249803524A4E1B811F8AADD42A391817E39D3D4ADCC711A6847BBFCE6A4A7CA3EB175EC9EBBD4AEB4BEC661D6E3562E3EE2D68634FF003CF634B5AFB723F9DF77D067A75ADBFA899BF585992EB9C6CBBA3DBB83CDC5CE25CC1FCF63596173BDBB7D37FF0081B3FAEB07EB3E13303A9E4E3504CB29A9C63F7DD5EE77FDF57AB748AF1474CC71890EC434D6283D8D7B1BE9BBB7D26A5AAB46DD76576B03EB70734F70939DFA46B7C8941A70C52F06B710DEE3C51CB017071E42095D28FC13A48A1499CD0E104484E924A7FFD0F5549327494A4924925290B26CAEBC7B5F6B8318D639CF79E0340F73BFB28AB9AFF1819DF65FABB754D30FCB7371C1EFB5D2FBBFCEA6AB1A929F37EABD4DFD573F37A916EC190E9AD9DDB5B1ADAA969FE57A55B77FF2D7A3FF008BCCB37FD5AAA93A9C3B2CC7F903EB543FB355D5B179854C86EDF1E7E6BD13FC594FECACDFDDFB518F8FA544A450F6292492495249249294924924A7FFD900FFE20C584943435F50524F46494C4500010100000C484C696E6F021000006D6E74725247422058595A2007CE00020009000600310000616373704D5346540000000049454320735247420000000000000000000000000000F6D6000100000000D32D4850202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001163707274000001500000003364657363000001840000006C77747074000001F000000014626B707400000204000000147258595A00000218000000146758595A0000022C000000146258595A0000024000000014646D6E640000025400000070646D6464000002C400000088767565640000034C0000008676696577000003D4000000246C756D69000003F8000000146D6561730000040C0000002474656368000004300000000C725452430000043C0000080C675452430000043C0000080C625452430000043C0000080C7465787400000000436F70797269676874202863292031393938204865776C6574742D5061636B61726420436F6D70616E790000646573630000000000000012735247422049454336313936362D322E31000000000000000000000012735247422049454336313936362D322E31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595A20000000000000F35100010000000116CC58595A200000000000000000000000000000000058595A200000000000006FA2000038F50000039058595A2000000000000062990000B785000018DA58595A2000000000000024A000000F840000B6CF64657363000000000000001649454320687474703A2F2F7777772E6965632E636800000000000000000000001649454320687474703A2F2F7777772E6965632E63680000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064657363000000000000002E4945432036313936362D322E312044656661756C742052474220636F6C6F7572207370616365202D207352474200000000000000000000002E4945432036313936362D322E312044656661756C742052474220636F6C6F7572207370616365202D20735247420000000000000000000000000000000000000000000064657363000000000000002C5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049454336313936362D322E3100000000000000000000002C5265666572656E63652056696577696E6720436F6E646974696F6E20696E2049454336313936362D322E31000000000000000000000000000000000000000000000000000076696577000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C9E0000000158595A2000000000004C09560050000000571FE76D6561730000000000000001000000000000000000000000000000000000028F0000000273696720000000004352542063757276000000000000040000000005000A000F00140019001E00230028002D00320037003B00400045004A004F00540059005E00630068006D00720077007C00810086008B00900095009A009F00A400A900AE00B200B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB01010107010D01130119011F0125012B01320138013E0145014C0152015901600167016E0175017C0183018B0192019A01A101A901B101B901C101C901D101D901E101E901F201FA0203020C0214021D0226022F02380241024B0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002EB02F50300030B03160321032D03380343034F035A03660372037E038A039603A203AE03BA03C703D303E003EC03F9040604130420042D043B0448045504630471047E048C049A04A804B604C404D304E104F004FE050D051C052B053A05490558056705770586059605A605B505C505D505E505F6060606160627063706480659066A067B068C069D06AF06C006D106E306F507070719072B073D074F076107740786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608AA08BE08D208E708FB09100925093A094F09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511131131114F116D118C11AA11C911E81207122612451264128412A312C312E31303132313431363138313A413C513E5140614271449146A148B14AD14CE14F01512153415561578159B15BD15E0160316261649166C168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD230A23382366239423C223F0241F244D247C24AB24DA250925382568259725C725F726272657268726B726E827182749277A27AB27DC280D283F287128A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236AE36E937243760379C37D738143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE4230427242B542F7433A437D43C044034447448A44CE45124555459A45DE4622466746AB46F04735477B47C04805484B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB51065150519B51E65231527C52C75313535F53AA53F65442548F54DB5528557555C2560F565C56A956F75744579257E0582F587D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F56249629C62F06343639763EB6440649464E9653D659265E7663D669266E8673D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A67301735D73B87414747074CC7528758575E1763E769B76F8775677B37811786E78CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81CD8230829282F4835783BA841D848084E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFDB00430001010101010101010101010101010101010101010101010101010101010101010101010101010101010101020202020202020202020203030303030303030303FFDB00430101010101010101010101020201020203030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303FFC0001108024F019D03011100021101031101FFC4001F0000000602030100000000000000000000070806050409030A0201000BFFC400B51000020103040103030203030302060975010203041105120621071322000831144132231509514216612433175271811862912543A1B1F02634720A19C1D13527E1533682F192A24454734546374763285556571AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FAFFC4001F0100000603010101000000000000000000060504030702080109000A0BFFC400B5110002010302040403050404040606056D010203110421120531060022134151073261147108428123911552A162163309B124C1D14372F017E18234259253186344F1A2B226351954364564270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDD00040034FFDA000C03010002110311003F001BD4146D2DFE02D7BDFF0037E39BF373EFA3409618F23D61E50AE388EB207B313F50C08FA1E4B1E6FF00EB7BDD069E34EB60E6BC7AE5A890F6E189161F4FD3C1BFD3F16F7655D542C7B7AF6A3A74D7AE3A993EB76B7F64ADF48B1B807F24DFFDBFBB150DC0F55183D7277D5E9D3E9FC358FF008D81FA8B7BA18F186EE1D5CBB1A29F84F5C020079FA7D7FDA8AFD2E2D7FF007BE3DF8B571D54D75155EBB61637B8B280349B9E48BFF8717F7B1414523273D7A87893D743516FE8082C08B5C0F4FE7FC7FE23DEE81118D2A7FC1D78D6BC73D658CA805483C5C8E78B03CFE391EFC756081DA4E7AB2E902872475DB5F48208E4F2BCDC1E05AF73F5FAFBA86EE2338FD9D58B023511F97589800CA0D8F3F4078E2F7238FA127DF8D7248C7AF5523D00EB100630C146A1736B13C0FA9FF61EEE06A00B547AF5538AD0E3ACEA015049FED580E385FCADCFD6E7DD4B056200AD475B403CDB1D74751256C2CBC8FF00037B800FF5F7BC61A84138FB3AF126BC3AF1B8602E6FF9FA7008FA8B8E071EF7E448EB59A8A71EB1F2E49219ACA7F008B2F1FEC49F7E002D7D7AF50E5A981D79943FA96E340BD8F05892091FD2CA3DFBB940D438F5A00B640EBA26DA56D607EA7EB63C936FA127DED4922A4E3AF1AD40A752635D36E6CA793700827F23EBC7BA49524D4E074E28AF1343D6503D26C45EE7FD607EB7FEADFF0014F74246B1A72B4EAE2A50F034EB830208D638D5C7D49E45B802F6E483EFCB45A807AA3829C467AE45069040058926D7BFD09D23FDBFBAD5896EEA01D7B480BAABDDD61640815948D67D416F73F5B1B0E6FC37FB0F6E86AE00EDEA86A0638F5C502DDB8FD4012A411F53C817FAFF00C507BB30AFDBD7948058F1C75C98006C38502E3F162C7EB623E9EFCBE75F8BAF354F963AE022BF1AAC357EABDF91CFD781C9FAFBD574B50F0EB41453AF48A41B802E2D76E4836FA802FF0053EF60838AF1EB4453EDEBA08350D2C7F483FD40BFD40E2DC9F76391C31D5A82A33D728C3A1F50B937B6927F4D8D893607EBFEF5EE8C4690145475500AD6833D705238FA9D5C1B8B8E09B9B8FA13F8B7BD114A50777CBD3AD814A13D7362BC9B1E47A500D442916B9FCFD57DD9410294FCFAB1D20D40EB8AFA98802CAD721AC6F6FF005BFC6DEFC4902A5BADAD58B05183D72F1A0054717E413EA06FFD9FF5FDD0338009E3D54D148EBCF1DBD57B7D2DC7F43F5FEBEF75046734EB6413F675C963BAC47EAC198FEABDC727FD88F7A6932D9C53ADE9A8041CF5DB1063245B8FA8B0E45C7F68FE3DF80646018F975B2405ED39EB0A8E406E7535FD46E2C39B7E3820FD3DDFB7CBA6C1232694EA4322120A7E6C0707817FAF22E3E9EE84D707A71A84D40EBC00F50FA1B71CDFFAFD3EB6BFE3DEAB40079F5B5507513E63AE654A296F4EA207FB622DFEDF8F755A36A627875E15C85EA398C9B0FC9B5893F5B7FAFF00406FEEF81523F87AA952403E55EB91562A429BD8DB8FA71FD2E2FF004F7A041D1519EB66A1480C3AF302AA05AE0E9FA8FE87F51E7E97F7B5A6A6EEEEAF5B018558814EBAB32A806C4DEF65B9516FC7F8DFDD89C82067AF310545067F975D85526C58A8FE801BFD7FA7F88F6DB352842D49FD9D686961A7CFD7AE4C0AB9D3FA6C2F7FC127916078F7E14352FC7AB9055810B8A75D084B3901485E4F1C0F4F247FAC4FF8FBAB3AAA8038F57D22829F09EB8155B5EFEA259401CFD0DAFF00D0703DEC13DA0FF3E9B3A6943861D71F1D87E4827FC458917FAFBB9D04D463AA75CA306E7D375FEA471F9373FEB9F6D48DF08A9A7575CD71DBD7727A429D47F5582DC91FD78E4580F7B046432E69D78A1CFF0083AF79070341D563CFFB5703E9F5E07BAD0FAE3FC9D37514D34C75FFD01C9938200375B5AE4DC0B8B7FBC7BE8DEAAFE1EEEB0F0E4758F4FA6DFDAD6DA45CDB906C6F6E6DEF6C48602B8EABE441E3D77AB4B00C3921B9B3707E80DCFD6FEFC013565FF8BEBD5A0234F5ED4596C1B9038E39B81CFD3E9FD7DB9A749A9E3D6AB53F3EB96A2BA2FC96524DBEA0FD6F6E05B8F7E2093E8075BF21D630CCAFA7EB7D4149FF0016B5FF00C05FDEC85620E9CF5BC54671D76D259415F52B70C6F7E6C05C7E6DC73EEC46AA038A75E270338EBB52CE50F0180238E6CAC0037FF1F7E600161E5D6CD4818EB3058D8599AF6FCFD0EA3F403FD80F7AD4C2A475ECD33C3AF5EE6CDC5AC413C7FAC0DFFADBDE8E900E935CE7AD8EBCA080DCA9D7F8FE8491F9E79F6DF695504641EB40E9A8EB8141F8B927F24EAB8B8B116BDC7B7079D7E1A75EA6A000E3D7300DB917E38E78600D89B7FB0F6DE0102B8EB5C295EB891F420DD4B12D620FE0FF00BD7BBD3E23F2EB66A4D57AC8155C2B29D5ABD2BF8B5B817E07FC47BA69604E714EB63875C02856D24FD5481E9205FF00D8DBDEC9AAD40EB44D304E3AF2DF49FA2DEEC2DCEAFEBEFC7346353D6D6A4F1A0EB90E486914150C2E6F6B9B1FD438FA7BD8A69217E2EBC4D7B9BA928A2EB71AB521F483C03FD7E96E3DB2E08E07CFA7299038E3ACC88406054100102C2C4123937B7D00FF0061EDA6A546687AB2541D2457AC3C01A981B85B703F17B8E48FCFB77486341C3AB376A92739EB8806CB7372E6C3904FD6E9724580B1F7EC0C01D319A0CE3AE1A2CF606D62DC1FA83C703EBF43EEE0828DE94E3D68649F2EBD28170C2E428FAF17B9E7FD6D208F76889209EBCEAA4E2B41D776529A8FE6E2C3EA78BDADFEB8FF006FEEA4E9702A7AD52AAAD5F3EBA015543598826E1783763F4047F4E7DECB166D341D6F032323AC8141E5801704B007FB5F5FA7D4FBA9A558E48EB60D4E7C879758B4D9EDE9FEAAA0DF8E0DCDC716FCFBB9F831E9D573AC13D636D61AE0FA47E05AEC7FC3E9F50DEECB42003C7AD9F5F3EBBB685E4FD7530B5EFC81C106E01B9FAFBA30A914AE3AD5280EAEBA55B0049E1BEB637B7D49553F8B81C7BB927208EBDC4759820F511C2802C3E86FFEB7F881ED9A9F5E3D3801209180075E64B8B0239B313C900823D5F4B7D3DEAA6BD68AE78F5E36D5F5BF0148E0126C2DFEB71FD3DEC06287D6BD549A79E3AF599CD882027F607FB50BDBFC7FDBFBDE9A0AD7AB0A107B6A075C4862AC0AF8ECA47D38E2C7FD637F765CF9F55C904500EB885200E7E9C6903F27E845F9245BDEAAA2A695CF5A1DA093E9D66D238D5FD940180239FE86C3FC7DE998B290001FEAF2E9C21891ABD3ACEB196E08FCFD47D471C736E2DEDA660063E2A74E00540D4D51C29D726172E1C0365B123F1CF163FEB7BF0600290B93E5D58B05AAD73FE0EA349FD8607E838247F4FA5AF71C0F6EA0153439E98248A15F84F59230ACDFEA6C2E18DB82C7E9FE36B5BDD183807D47575635CE3E7D753290029FA92A09FEBF5E38FA03EF6A01A914EBCF85515C75C5610588B1B5F4FD78B587D081F4E7DFAA74EA27BBAF201521BAE0CBE33CDFF5D8023F171F4FF61F9F7A06A7F2AF5A23C3615151D722B6B0D44EB2071F416FC922F637FAFBF005875B6A282286B5EB8D8A93663A7E97FC8D5F516E2C07BF0CD2A335EAC062A6A140EBA58D48B392185F41FA023F04F1FD7DFA573A869A69EAA0002AC307F6F5C7C67C60000DC8FCDC93C71CFE3DD974D7E5D5749A02060F5C96E8AA38B9BA9B5FD201FAFF00AFEDB2BA9BE63AB29A2E92456BD71D16D458FE2E8083CFD6C791F8F77E231C2BFB3AD1041D5ABAE3A16D6D22E5BC97BB5B816FE9FEA8FBDE695D58E1E5D529F656BFEAFE7D7FFFD11E9D47D00FA136BFE47E7E86C0FBE8C2B1353C3AC3D6D5C070EA2C9E95B006F71FED5C1B03FE37E3DB806A3A8F03D54F007AEEC5E355B10DA8FE3F1F5FF7AB7FBE1EF6288C2B914EB5C569E75EB0E828C45FE8C5B57E6DF5B7FBC7B7410C01A5053AA8E3406BD7654F04598D85985BFD703DE802E28C3F9F56152075DADF9BD8D85EC7EB71CDFF00C6C3DD8E29D7B8FE5D763D6A00B0BFA8DBEA39E7F4FF0088F7BA0152C30075E1907AE2E841055BEA437D48048BF03FD723FDB7BF07A935E03AD9F55EB292CBA5B4737E435EC78B837FF7AFA7BA281900F5EA914AF59092E43020DAC0ADBE87EBFEB9F75A05F975EA93C3875D03A750B5F9BA8E49FC9F49FE9EF4CBA80CF5E14F4EBA4240BAFD18100FD08FF5BFA6AF6E1A502F061D6B50C5067AE4C03A01F90001F5BF363F5B5F81F5FF005BDD492A6A16A3CFADF11F3EB20550845CF007D0FE781FD07D7DD0D756AE15EBDC0104E7AC8AA38522DA9B9E3926DF5E6C07BA9D433AB3D5C6298EB818C790DCB1B5C8B35C1E41BFD7FD6E3FAFBBEA25453E2EAB41A813C3AE0C45980161F5B1B7E96FF536FCF1EEC3D3CBFCBD7988A934A0EB8816E56DC016279D5A48FC1FA9F7A0751E181D6BD7ACC966E4822E6E79B5AE45978B5811EE8415EE343D5974D7BEBA4F52E32C0B2962A847E7937041FC9BDC8FCFB4ECA48AE9CF4F20EC39F3EB0EB50180B907D37FAF0DC81C9FAD8FB742F68A9EA8CD5AA8F8475C091AD46A039E3F04F161FE22D6F7B1EB4EAAA46A527AF5872073C92E48FF006E47371C7B705000699EB40915A79F5C1A45555016FAEE858737551E907F03DF803A9BD00EBCAE00A1183D724BA2916D37D42E792071620F005C0FEBF5F7E2413C2B4EAABEBE5D738E32C7904017BF1C5EDC91FE247BA3900135E3FB69D5914B0A81D79940B9B8B1FF00616FA8FE839F7A0304D73D68D412C4D6BD7002EC08E6D604FF004B8247A8FF00B6F6E7019C127AF5338E1D76C884AE962188E6C4594D86927F3C7BA06392462BD7881EB9EB1DBD2A1892033026FF005047173F43CFBB3575161F0D3AD7000370EBC8A35585C28FAD8DCDF9FF0061EF618D687ADD00E1D7678B8B588FAF363F502E2FFE3EE84B52A4E0F5A24015C83D79873C0B2803E97E7F1FEF24FF00ADEF5A40341C3A7093814C7F87AE6000C4000D94331D362A6D60071F5B7D7FD7F7B662156A3CFAF506B01463AED6DA4B83C7D2F63FE37F57F4B7BF1A5294EB5DB418CD7AEAC08656E74F20DEC0126C6FCDFF00D6F7ACA9A201D6AA08A3711D76A0DD786B1370783623FE22DF9FC7BB634F771AF56553518AA71EB21522C7E9722F7E4DEC4D8FF85FDD0D0E380EAC549274FCBAC8031D207371EB2BF436B91FEB7BA357E2A02A3ADD1E829E5D6461AC3106C34F0B6B58FF00AFF526DEEA085A57893D6CD1D750E23AC3E31A5C38D570A517FA13CDBFD8FBBD78143D50006AA456BD7600E2C17D27904DBF24127FC3DDD6A29D3B44000F4EB24A18C69213A80E1873E91627F1F51F8BFB6876B32D683AAE480F826BD455D474902DC5D85F8161C73FEC3DBA699FF0F544635E343EBD6362CC793EA53A80008B8FF0E0F04DBDFB4D0135C1EB552C4D4E7AEE32780469FC804FFB76F7A619341C071EBC8C4F6B120759B4E9F5F0D72AB626E45EF6FA71F4F74D42854F1E9D34030DD79A2B85624F2485E3FA5EFC5CDFE9EF7AEAD819EB457518C934EB0BA95E6D7E781F8205C7038F7B1F207AABA9A9606943D74005E7EA48E2DC9B9B716E2FC7BD9AD6800A81D6BB724E5BAE8DD9D439E102DC9E4FE45801F85BF3EF545553FB69D6AA48049EDEBAB2EB22E6DA80FA1B5F93F4FF0053A7FC2DEEDF83579D3AF63552B8EBFFD2305A59AEA6E48FD363FEAAFC0FAF16F7D165C0F3A7587C7CC79F581D05949049E6FC702C48B027F047FB1F6E464935C67AAB705F51D79483C06F4FD3401CF3C8E0DBF07DBDA4F76334AD7AD56BF67589E3D4E182902E57EBF500FE6DFD2DEF6A4D3B8F5AA0AF0C75D3A90188B152C14DAE4F1C820DF8E7DD54AE09AEAFE5D7BCAA0F583C6C4022EC79B8BFA89248E07161EDC241CF975AA1F2EBB54B3B2800122D726DFEC3E9FF001BF7E6C0C1AF5BC120573D71D041E45F48BA83CADEFF004FF5C8F7E241CD3AAE57073D651EA517BDEE0FD6DF5FEA7E9700FF00B61EF5A48205283CFABE28BE9D645245CA83A75104580B9047D011F9F7A26A42F9F5A0715F4EB8B962785F482BA48E1AE5AC6E2E39E7DF869C8AE475BC53863AC8CA34AEB0435FF06C6DA85AD636FA1F740DA89A70EB5506941D7348D4B00BC312DA81E3D47EABC8B5881EEACDA01AE475614D434D41EB9E82A3F0092392786B722F61C1BFBD06AB55863AF1228053B8F5C5C3B69F502509F48170781C1B9FEBEEE34AD7073D7883F98EB8F2A4DFEA543000F16D56E393FD7DE97CCA8EBC315AF1EB890A1B904901941FEB717B1E6DC5BDECB301E5F3EB6481DB5EB801A5458B5FEB636E39171C1B7BD8CE6BDBD56800AD4D7ACB75FC5C8617B0FC5AD6B9B5B807EBEE86A40A904578F0EADF3A75962245EEFF009D5FE2381C5FE96238F75914D450777564038938EB8DD4FF0042C2F61FE06DF51FE17F7EA39A01C7AD76D481C3AC722AF02F62181B7F871C83CDF9F6E0D5C471EAAE147C2287AC7662C1416B5AE4D8D88E3EA7FA0BFBBD54035A6AFCFAAE0D057AE6491A554720DC0B5C01F4FC1E7E9EE83B812452BD6FCA83D7F9759940F506D5C82C3FC6C2FC7E45AE473EEA01E02951D6C500D2D5AF599410010472A09E491EA3602D7FA9F75256A6ABD5ABF3EB89D3660CA49BF0071736B93FD492C3DE8796687AA8A798A83D74541048166E48F5720817FA7FAC3DEEA7C8D47561E61450D7AE80052E786B1B9FC86E2C09E38B03EE990C0838EB6CB8C8EBA60AB6FF005AE47E01BFFADF5047BBE588073D54D07975E55B736D42FF004B8B8E7F208E6EDEEC73DA46475BC2D4E29FEAE1D76406D47480380ADFD6C39FF90871FD3DD48A69A1AF5E23550D3B41FF00557AE2FF004B2B1E7F1C6AE3936FF69BFBD2EAAD4F0EBCF4FC07AF3B370556DF8E2DF802FF00EBDFDEC514124D7AF0074827AE218B2E98D7F22C08E2C3927FC47F5FC7BD15AB862DDA7ADEAC11A475D311A5B8B93A6FF437BF22DC01C5FDBA0D6808C754A8CFD9D6745D360BC3302D63CF26C2C0FF0080F757A1A9F207A7636D268071EB96A3755FA9BB1B7D3FC01FA71EEA286A4F5E6600D138FCBA90A42063637B1B5EE6C0ADB83F817F6C9525BB862BD6EAC7870EB8EA6D214A80410435B93FEC7F3F8FC7BDE9504B818EAC188201F87E7D7364716E56CC6E7EBC1FEB6BFD6C7DE918693519EAA56829AB07AC463FD03823569BFD4FF5B73FD49F772469F9D3AF153401403D729381A89B290781F524FD011C5ADEDA1527E7D788A0E38EB069E0F23902D7FA9BF207040361EDCA91F87AA0A641152475DB006DA4700D830FD47FD7FF00522E7DED4F777703E55EADF1151FE0EB894B328372750B7E4F24FD3FC01BFF00B1F7B151AA868B4EB440072735EB21F490B6FCF22E0B316B8E07E2D6F6D2804935C756A8C0F21D74C18AF3C2A860002069B81F4FCD8FD3FD7F7650413A467AD035A0D54A75D1D2CD105075020B0FC302B7E49E49BFBF29651212DD788F8748CD7AEDA20489547E48B736161F8B73FE1EEA1C8C31C756088D42075834DC102DA810C07D7501FD7FD61EDD14FDBD34012F40D51D77E337D5EBB7D3EBC5BFDB7FAAE3DEEADF063FD8EB7A5B56AC69AF5FFFD330B21D5EA1C7D07D07F4209B7F80F7D17041A8F2EB10586357135EB1C9187B30B5810C2E7EA2C6F716FEBEEC8C17CB879F4DB28AFAF58D534317362BAACBC7216FC2FF005207BB1626A1781EB41684B7E1FE7D72B86FA7D2ED7BFE2E78B73C0B7F4F770585030EB6475E700017D161726D72751BF24736F6D0A9E15EB7803AC1FA9CB8BDC5EF6FEA05C1E79245BFDE7DA8042D053AA5789EB98555258F21F4F1F5247D4DC7E2C3F3EE8D5614C83D6C10083A7F2EBA2149E41E07D39B9B5C8E3FE0BEFCA180615EBD5AD7D3AF3456234FD3EA41B01637F55BFD50BFBF063A48EB445781EB88075724D941FF000B13F93F9B9FAFBF0350A286BD68021A84E3AE27592C18FD2DC9B5EFF4BFD05811CFBB2802840EAA6A6B5E23AC9A081CFEAD41AF7E4F16241BF02E7DD75EAA15E35EB62A0569D7BD762158DD45CDD47D4FF427FC7DECD352E3F3EB7AB183D7B493C72A005E4DFF00D73FE000FF006FEFC4A92079F5E20915F2EB90460CBA7E84DCDEE6D71C93F4B7D7DEF01694EB6350208E1D782EB66D3CD89F48E01FA93CFF008B7BAD0C74D4680F5B2351217AC72270A403C9207E2C6E41E3FD6F7A539A530075A2B4A578F5CF4370495E585FE86E0588BFF43FD7DECB2D09CFD9D6C54FDBD6429A2405459581BDB92401CFFB603DD756B415E23AB50FE5D701186D7F505EDCFD0024F37F501F9E3DFB532850470EA82A4B0F3EB8DC802324971752DC5B81C7D4D8FE3DEC7F1D7B4F5BAF014EEEB194F48D7C920DD7FA7274D80E46907DB9515E383C3AD6735EB36840B72783F5B917B7D7FD81F6D9249A0F8C75AA2FAE7AE688D6240000FA1047F891FEF1EEBABBB454D40EAEAA48391D65B5C017B900D9BFA8E4D8F16BB5FDD58FA2F5B028075CD6CA0122DC0BDC716B9BDFF3CFE3DF89E27ADD5BB7381D74CA15988FAF0471C7F5BDFF00A5CFBD0229C71D68D03E057FC1D7162493C81C86B0E3922F6B9FC589F7614146D543D7981E0707AEAC3D449FE960B6E01B1B1B1E783EF4685A8388EB66B42DA7AC4A090DAAFAAF7038E0580BFD7F3EDC6608428CF554C93518EB981E8B8BA9B8B0B12194D85FF27823DD49667153C7AD5452BF8ABD732BA54F06DF5209E2E00BDBFC4FBA935A1AE0757008C1E3F3EBA68F4905D7F55ACE07D07D0036E401EEBAF55421A003AD11A470A83D75A1B8BF2410348B1B93F520FBD8D2558F5EEED4299EB204B8B582F2757D458DCDFDEAA28B9EAC0200411DDFE0EA3E90350E0DAF6FADD802071F9E3DBA49A2907E5D500E23AE4A5EE188FA83C8E2DC01604FF4F7A608319EB4BE67E5D6406C6F6D5C0FAD89B585B8FA7BAE91A7B8F565AD568327ACBAD6D66FD561CDAC41FEA7FA803FA7BA2AB79500EAE0D0E8233D64166E74DAC2CB720F3CF0BC704FF4F7AF26AFAE7AF004E4F1EB81624046078B31E0DFEBF9E781C7BB228156071D7AA34D054375CD958DACA781E923FC3F26E2FF00EBFBF540AE727AB9AEB0467AC6E542062A7EA2C3FA936E6C3DE941272D51D509A1A819AF5D7A412A493C1D2458FE2E3FDB13EF5DCD423D7AF060AC6BD73500695FCB5ED73F5079E6C2DC7F4F753DC4927AB06C1A0A75ED251979E0D8DCDB57FAC2C7E9EF54EDC7FB1D78023BABDA78F5C4852CC5ADCF05AD626D73FE3F53EF62A170B8E9BA80D43D6362198E90DF500ADEE2F71F5FE9FF0011EEC871527AD9209E03AE8B1526C071C104F04F3C03CFD3DED5032D7553AD548C75E53A78E7904D89FA13CF07EA7EBEFC78300715EB618D287AE3A46A5BDC163AAF7B6917B585C01F51EF60860349F2EB4428A9614CF59AFE9D36FF000FECDEFAAFFEB73FEF7EF543AAB53D5F59FE1C75FFD430AD25F4000836214FD78079BFFAC3DF45B45189FF00557AC41A168C53E21D787E6C6CC3F0400083FF0015F760C406A8A7542B9A8346EB99208FA0B9E42DEEB71F4FCDC1B7BF657CC853D5DA9C14D5BAC454163A56DF4B81F4B822D6E3EB63EED534E351D3596D4475CB4FD7D22E6DC122E071AAC0DFE87DD853528AF4E574A95C7DBD7055551FA4937E3FA0200FF1B5CDF9F7AA9C538FA754D231515EBC514B310783606FFA57EBC585FEB7F7B248504AE6BE5D6C0EEA83C3AEB40B6AFA841642472081FD7FA73EF7A8E3CABC7AAD00E19EB96860BA8588D27FADAED72469FF007DCFBA6A5D44573D5A874D6B8EB008DCEB2A438BDD81E1BE9706E7F501EDC2C0815C1E9B00B703D7228BA8DC96FC58F3C003E9FF0005F75EE1400F56A153DC3AE0A03064049018EB24F3FABE9CFE2E47BB30A10C0D3AAD6BDBD7311AAB0259AC2C56DCFF005F57FAF7F7A3263033D5C22F1AF590836BA8B837238E3E9603F1FD2DCFBA56A284D3AD8A9CAD7AE28082CDCF240209D56E3E84FF0081E3DD9A802856EA8324F5ED3A4D86A22F7B01CDEDF43FD6D6F7B670D4A9F3EB6491D6307D254EA3FAAC41FEBFD49FD3CFBDB6083C075EAB1013AE40F0BC596DA79BF07E80FD4DEFF9F7A6153C7AB50695A7AE7AC82F6B7FA9045CFF00BC7F81FAFB6BCEB4C9EAD50A4696A81D6205C2F0A14836BF0393FEF7F4F6F695278D474DD6808A5075C56FC86B6A2C413C5EF7038E2FEF4452B41D9D52B938EB385BAD9EC08E6E39B8E7D36BF23DE89A656B5EAF4E15EBA03D07F4F26FFD2CA7EA381EFDC0A93827AF2A92480475CD3956B1BAF24DF9200E09B9FF006A1EEAD4AE57BBADAEAA35063AED4E920DB57A4A956FA83F5B803EA7DE98EB20114F9F5BAAE286A29FB3ACA083C73AAD66B2FF008DB803FA83CFBAE91535A53AB16AA81D717600B71736005FE97FEA3FD8FBD2821788EA848A9CF5D152D7E6F6B1047D48FEBF920DCFBBD4003D7AF67CCD7AE45752DC90C02F2470C483F4B9B5EDFEF03DD2B923CCF57A02050F58D512D71E97FD47E9623E9F5B5EE7DF897D59CAF540067493ABAF5C023FB3624151FDB06DA48FED01EDDA7CEBD78E389EBDAEDC13637B72413CFF00640FC83EE8149AD2B4EB6581F3C75DAB90487E7D5C90A482A2E00FCDAE7FD87BD11E6001F2EB41A86847596D7E7569286EBE93723FC7FA5B9FEBEF42A57D41FE5D5C69F3F2E1D7989FA7E09D5AAFF9FC93FE07DF80A114F2EBD8A70CD7AC5CB2DACB7172A458DED6B9FA5F9F6E8015857D3AAFC45817CFCFAE1ABD2CC6E34D8FD3806D6039BDBDD8E90574FA754A65BD69D66B596CBF922C0FEA27FD87E3FDBFB688AE9D5C3A756812A4F7F5C7C600BEAB13C5FF003F81F43EF75F975AA8C0A75CD4941AADCA9B803F4FE6E7FC6D6F7A61DC32323AD806B8381D66B8642E01592E011C0163CF3F4FEBEEB460C457B3ABD75AB13C7AF32BA3461BD40DECA0FE2C013C0FD27DD352B6B15A75B05AB5238F581800C096B5D9AF6FD3606D6E3FA5FDB8A080682A69D34348A7107AC41587A95B56926E4FE9BFE3FD811EECAC00D2463AD004D00E35E3D487B7A15C8BA90CDC58F36FA1E3E97F6DAA921CA8C757634C1353D7290228F4F2C7FD7E141B0B0FA0E0FBA26AFB057AF369A69A0AF584831920D80665FD5FD39B73CFE47FBCFB7412E428181D5492052B8EB80425881C146FD5F4D44DB8FE9717FF006DEFCC294A91A4FCBAD850781CF5DB2100AB59886E6F6E58FABEBFEB7BD6AE18E3D68E314E1FCFAE9632E40E0692493CD8DFE83FE0A09FF6FEF449C9E19EBDA4E806BE7D6478C2F249FADD47D6CC6F604F3EEAAF4F21F3EAC78713D60D4D7B5BFB56B7E2FF004FF6D7FF0079F6ED7F6755D7DFAA838F5FFFD5310C0AA8365BD88B32F1EAE011F417FEBEFA2D4A9A063D6206470E3D744906FF009B05E01E6C0FFD0B7F7722B52067AA914A9A75C56C4B0249503D3C1373736BD87EA047BB0518E35EBCA4126BC29D6573A580552AD617E2E0B28B7D7F173CFB6D46A0D53DBD78B50E050F58CEA37005CDC1B5C71C904823FC6DFEBFBB0C54F0C75E5048A0E24E7AE765D26E749171FF0007248B1E0DEC2DFEB7BD025B00E7AB1142C41E1D62D22E46A173C1B9B7D40B1B5F917F773A8D00069D5282B5D5DDE9D6529A2353F42401C9B1E6E012391CDBDD41258802A475661A541F3EB103E9B0FD3720FD6DFD7836FA7BB00A3B88A9EA95040F51D7106E41E5745CF04DCD8717FF0069E7DEB2327D3ADE38F5C803773C037BFF00B03F5B8239F7B246953D78026B8EBCAADC80A2CDC6A1652C7FA917FA8FF6FEDB320A7C5DD5EBC17D476F5C96364FC6BB9BF26FF5B5FF001C7FADEF7A94925B03AB0142282A7AC846905CDD4313FE00717007E6DFD3DD70D814D5D58A91535A11EBFE4EB0300BCDC7FAFF00D4F06FFEF3EEEAAC4015A81D50D075C64059AC00F501736E7FA020FD0727DDD4541A935EAA726BD71508000A391CB01C8BFE4FE40B7BD124E187D9D7B05453E2EBD22B6A52092A6C6DF41FEDBE838F7B43821A9ABAB18D8D1A9D72D26E4A825748E2FF00F1279FAFBA038A7550A19B8123AE6AA791C93A81B116E0F27FA5CFBD12A0035A01D78216240EB83B4713471BD99E697C4B6E6D2B23C881AC6EA4A21FF6DEE8241466385FF0F57D3F840A9A74CB5998A3C7478FA8ACA886923AAC95163A733CF1C7A2A2BBEEA1A5809761EA9AAA1D2BF9363FE3EDDF12A028E241A7CC815FF0755D0D91A6B419A753A2AC8D8544E0A187EF23A4D5AC70142452691FD619490DFEB1BFBA02781A96FF0057F87ADF000838EB23D646249A12F1A3C451A342EA85A39234647724DC2B313C81603DF95D6BC3FCBD7B4FE10D939E9B60CED24B0D1D579230B5D398A986A525D9943158D80D0E6263E3B83667B0BDCFBB8A02C9AB34A9F975A6AE2A335EA63E523494C762B5067AB85633C8D347248B3CCE45F42AA44F607EADC7BA93FA64FCABFB7ADA03E271E1D466CDD2C53D5B4B20BC73D150C315CF91AB2B75BC7118D4121E52834B721941B7BD2804D09A0F3FF8BEBCC1948C549FF274EB054C28104950ACD388DC349641234E25D11C2A6D6E216B28E40524FF005F7AD4991F887566A00BA460F5C669FC72D245A963591A72E641CBA451A91EAFECDDE45E4FF66FEEC8416A119A75A0A74FC581D641510DE384DC4B36B31C3C1731C7A4B4840B958ECC2F7FA6A17E4FBD303F10F2EB40D480064F59A550E57D3EAE0123EA147FBD9BFD3DDD58A9249ED3D7987911DC7AF0097240F501624DCFFAC6E392DF9F7E05947CBAD1A53867ACC84321040161A8936079FEBF9BDBDB6C071073D5F3C0D31D64F4050154F3702E3FD71CF1FEBFBA00FF0088E3ADF652B9A57AE253E85943721790781F5B93FEB8F7B0D500022A7AAD18F715CF58B491A88209D56B58DC8B0FC7D2DFD3DBBE95F4EB4B435C8AF5C4DF865360DA49078FA7E0FF00B1F7E523F12F5E06868B8C7592D60BF9FF001BDDAF6FC5FEA00FF79F7ACEB274F6F975E1F3EBDA49B12B6E0DB57D7E9707D27EBCFBDD7F675BC16C0EBB656D2DC0B9B371700016239FF88F6D9C11DC7ADD09AD054FAF5EBD949B7FC1BFC05BFDE4DFDDC0AB0AF5E28556A48AF5C8B13A6C05EF6BDB900DC13CFF0087FB0F74D00120F1EB7DC349F23D7522285562095D4E3EA2E00E4727F049F7B4675240F4EBCC00EE618EBA01B42A016BB598FF00517BAD87F813EF7A86A2C4E7AA0240E14AF5CB410A1C90751B0B7E07D45FFA5EDEF55A5541A756D2680918EB90D3A89716D3FD2DCD85ACC3FA0FF79F74228A40E07AF0E356EB93272CEE2E838240E09E381FE363EFC0D15555B27AB52AC58D74D3AC4CAA4800937FF6D71FEB8B0241F760D45F9F552178019EB914D362CDAC00140034F23EA4FF00ADEEA097A81D7980522BC3FC1D7358C58DB4FA89207FA91F5361C726DEE849142C7874E0A7C3EBD7178B4A93F50A4153FD08B73C8B1FAF3EF6186A14A57FC3D51AAC4E703FD55EB0689355EDCDFEBC5B55F8E2FEDCAC74A66BD6F4669ABAFFD6310E858B02C6C0F0D6BF37FA1BFE003EFA311F134C7587F5F235EBA6E7D24DBEA6F7E383F5FF000FAFFBCFBF0F32075A248C54E7AED5482081650B6BA916FA93F404DCF3EEFAB047E2E27ADAAE0D057AC86E402AC0927EBFEBF247F5BDBDB5535FE8F5B03207E2EBA60190E9FD5F4B936B9FEA0FD7E9FED8FBB7C24EA38EB75D58D54A7588A943183A8D8DF802DFF217D7E86DEEF4043FA74D906A3391D7654B36AB0BAA9E4F216F637FF5FDEB5500507AF799A8EB91BB11A8EAD42FA4FD16DCFF00B71FD3DE882BA88E23AF56A727AC5E90DEB202690428BFFB1B7FAC4FBB061A1683BBAD50571D7373F40BC5B936FA9FD22D7BDB807DF803AAA475E27864D475921B81CA86FE8AC7FD873FEBDBDB527F0838AF4EA93A7864FEDEBCD6018A705890141BFD2DF427F36FCFBD52814B0AD3AA8AD24CD33D63058AA900DAFC5C124DB8FEA7F27DDDA9C35770EAA0920547595C1168C8FC6A3C7A45EC015E6E2FEFCB91503BBA71AA74AF5C42AD8D94B5AD6BDFEBFE1FD3DF8D4649EAAB55AD723AE2D185009BF20FD0FA47F4E07D483EF6AC49228283AF114E1C4F58940D401245EE05AC750BD87D3E9FF1AF7B21A991DBD51680F71C7502BEB9690122CEF10D4B090E0CE46A22289C2B012308DADC1048B1FAFB6DAA17863CFABA8A922B8E90B47D9184A9CA54E38D6C034FDCD2A6962275CAC50CD54B43247AAC1E5A681B430255DD1B4923E9B0C190946527CB3C7D7F3F9713E9D3DE0C8ABACA1038D7E5EBF21D45CCF63EDDC22F9ABAB9D2860C451CF3981D5EA552BE9EA2AF1F530D3DBCB355CD263E40A846A6650A016201DBD34E4E2BC69C694FE5F679F4DAAC84B154AE7803FCBA2C5DC3F26F6562B6766F73516E7892A7133C78393C0C90D3A673ED9B3942F532B0229E1ACA4C6CF4EA5C7330119E1BD946E1B95BD95B4D72F32F86A7D7CFC94FA57E7E9D1C59ED9713CB0C26061AFF0068E1538F4A838EABF1BE74E47726DE5ADCB56513E5B318A863928A9C54253D4E668325257616B239019268F373B33C2E7C6BA5045A432963EC2F6FCEF6D7B6DAE244D4AC41507018528D5F98AE074207E557B1B9F0F5484710D4CD1B0508F4F3F5E86BDA7F35F6FE576FD7C55D91A8C65264F0BB89A8D2A22AA7A3A41539784EDFC84F22B96A7A591AA6A71F54BC4E2A29B50B07001CC1CC3692440FD40E343F6D719E3C327E75A70E8B26D8AE51C116C43541A800E00C80B5C9AD29F239E9574BF2F369E5DA5A08B3F533E467FE1D5994488B4F6A4AAC5458D6A019012C4A9494713D4B164114AAF1A865636F6CDA7345A39F0CCA0CAB934C803CA83D7FCDD7A6D9248D55FC0223A517CAAD927F67A7CFE5D24B1FF3AB65883299AACA8A68D6833F3E2F1D4044D3D2E34435D8E96AEBE9633F6E269EB6AE7AD96355555310000428B7723E6BB0D133F8C8115A82A47A81DC7F6FECEAFF00D5FBC6786310B99596A4D3D412348FD95AFCFA11F0BF3436A2CBBF33D90DD18F866A1AE96969B0EF2C41B27434185AF92BEBB16CCE6D50D910C198583C7322824AEAF6A46F36B2ADD4B14E86DD40A0AF75070A0E0D9A8C79015A74965DA278D6D2230389DEA493E59A6938C7953E75E919DD5F36F686CD1D6A13290E533990DAAB9C5852679A8E396AC543E12B725246E04461C844484BEB5492C2EA5812CDDF9B76BB136E249D43CC6AAA4E9F3C7E55E2787CFA5B63CBB7975F591C513158A80B0F2C55B072481E43F9759317F34B1D9BACC363B1F59535B52733514994ABD34622AFA3C548D0BD4634EA434744F9DCA057AAB5842638F516D5670737EDE6E22B69241F5058EA0070F9541C9C0E3D6D396E6114B308088283492739F3614E1F2C54934C0E8F4EDAEF1DA9BAAB6A4D2E5A9AB69E8A9D0C4F43A6A1A6C7511ADAFCBE4994CAC29F1D354D1A45134843491D339172DA408E39E19190C72292C4F98F414E1C78F1029C479741D92DA5504786DA69FE1FCBF974B9C16E94CB55D1E4E59A98EB9A8B1DE54750B0C3538C8E7AAB599543CD90AAA647FAF11F034E925760E13D0F9F1A638FD80D3A46C0212AC7BBCFD47CBA11A7AF86282A3C6C259633E28D432867A9758CA4576B01EA992FC9B6AFEBC7BA31F86A7CFF0060EB5815A70EB9C33B9F26A22614A561A831AD83D5958DDD109B1610A48A0FD2ECC4585BDE86412315E1D59406C57BBA994B224F4FE546D70979515F529D7E395919D082494D4A40FEB6FE9EE9538507BFAD114F2C7598B72069005C9BFD2E1BE838F7B0AB9D46A69D6C82011C3CFAE6CE145FF2DC7D3802DC053FD93EF68B4D20F5B2C080E0E7AC57B301F552B6BDBE96E4F1FE1EEFEB4E3D3750694EBA8D4825AECCC7D43816007D001F4161EF6454296C2F5E02A49A67ACC34B69522CC79D42F70083AB9BFE7DE88A7C071D5C32E1597F3EBCBA01048279FAFF008036F49FA8E3DE8863DA475BA807505ED1D7AFEA36F5066B7D3E839E2C7E83DD556AA7563AF1241EDC81D77A3D643F16BEAD36FA58FF004FF0FF006FEFC1980A28C1F5EB44D5816FF63AE844083FDA6E47E481F43CF22FEF60F1AF5740AD50475CD912D1A0B92A3F49FA7F8124FF008FBA9622BA8507552003DBC075E0A4B102EA415E2D737B8E3E9C0BFBF0229502A0755182C41CFA75D37D6C14AD88FA9E3D26C49FAFD0FF0087BF015D346EAD4AE063AED22770A5BD219BD46DC31E78FEA41F7E665EE5073D596A57BF02BD73789882080BF5B006FA98017FF61FD7DB6ACBA854927AD156C6075D470B305BDACC0D80BFA78E0F039BFF008FBB1650E4F98E9C55C0A8A11D7258AE4F00AA8BF3626C3D23FA9E49F7A2DDB5FC75EB79AB631D724D4C86E145FF004926C6C6E09000E00B727DD0805B20D7A6D6A72467AE4D12381A5890780092401FD45AFCFBA2B104F6E7AB69520D3CFAE1E2E74EA1FA74DEC6F7FA7D7FA7F8FF004F6E6AC6BA75BD2D5E3DBD7FFFD731C11955AD6366BD8F37B03C7D01F7D15620B06AE69D620F063414FE7D6370C45D56DA8F000F4852395B93FE3EDC402AA09CF54625B23AE561C000816F4917B1B8FA5CF36E7EBEFCD42C6B4EAC08D07883EBD776D5A401A6DA755BF2781FD7E86DEF59CD7AA8CB0070A07EDEBDA010C589BDF9079007E4DC7D6FEEA490CAC38756A0A6723AE996D760AC10022E6E791FEF26C7DDD58331E05BAF32D28470EBA5520330FED0B01FEB11FE3FE3FEF1EF6482285723AAFA9F51D7255B3ADFFB37B81C836B7D47E78F7A278E3AF64D09E207975824550C585DC1003736E7F03FA7BD2D7495A67AF0D2493E5D728D010C0B3599BEBFEBF040B5BFAFBDB392057CBAD514D4126BE5D6436BF00A01C1BDC93C7363FD2FCFBAAD4509A756343C0531D76CBA88B0D3F81FD0FF00893C9E07D7DE871615AF5A3FCC75D45CB6922D652BC93F936BDCFBD9A0EEF3EAEA46AEEE03AE6CA4B1019AE080C4DC002F64FF00783EEA1B00F027F9F5A60DAC935CF5DB25D2DABE9C137B03FD7FD7FA7D7DD8710722BD58851A6ABE5D622842807FAF37E7E841FCFBDE73438EB5508549033D24B776E8A0DA58F4C8E42458E1F3410A6AE1666966585A2573C095124F201F560840F7B572691E351FE5D6D232C094CB0A9C7CBA2D5DFBDC38BDB503D351E5200F342B2A4C6A628E85E76A9C75252D3D4D582160A2A96C944F292C8F1C527901006AF65F7B722D901900A915A134F3A115F2F4E976DB6DF52EC4A76569C2BF9D3CE9C4F97552F9CF943498BC7D5E261A8A95C3DABEAB0F9315B2BD66369B1158A2870F573CA5E7AD38DAAAC8164297654496EC6ECD246F73CD496D0B049C801F0C684F6E067E5A695E34E87706C924B2230856BA00205403A80AE3D0F1A70F4E822EC3F9B94F9CC4B632096AE45CEEDEC463F3B8E59AA8C343B830E94F4BF71E6A98D65757A6A3351198593C7532B15600FB29DC3DC8DB96055FAC24150405CE971C41F3009248FB3A576DC9F7BE30616C01590F757E2534350BC090304119E889EEAEF3DC3B9A8ABD2B7315D35566B31257EE08A5455C7647C3451D0D0D73D32BE96C84C8F21985B4DD8104B13EE27DEF9E2FB718E755968643461E4C0647E75C9F9F43BDBB96ED2D24898C75F0C7693C56A2847CF1807C863A08DB71D6D2A7DAD1D45453C4DF6F331A794879A5819595DB4E92A4685B5FE8C8A7EA380643B8DD5BD7C09996A6B83D08A4B686420C88A40EA552EFBCF434792C753642BA3A4CAC718ACA635B298EAA582A9ABE1999198A2CDF740BB9172EE6E7D98C7CCBBA4514D0ADC1F0A45A11E99AD57D0FFB3D266DAED098A51080E86A3E7E59EA456EEAA913D4C22BAA64A8C8457C864E496749A5B806A238E3595521894B1075062E6FF406DED31DE7720F2C8B78E24714342474EFEEFB62AB1BC0863535C8AF51309B92A6866526596A22D6C224760210D23FDA19E6591896FF002692429C5C31047B4BF5F786092DFEA1BC263522BC4FCFA796D61122CA221A862BE74EBACE66AB286BAAE90D609D144E8B2AC8EE922562FDD338577B016A8B2D87E3E9EDD8777DC228D23FA972AA280126807A71F3E9B9ECE0690CAB1AD49AF58F2BBD72BB82515599AA7ACA861E0FB99812C21489218234452A8894D1A8F18002A7E07BDDF6EB79B94A93DDCC5A40001E4001C001E54EA96D650DAAB470C6029C9F524F1AF4ADDA9DAD9EDBB9EC4E52275A95C5D1575353D14F34C941F6D514D344F1CE914ABAA9D810EE808579103105B9F6AACF7CB9B5B98EE1896D20E2BC7FD469D3373B624D0BC581AA99E878EB0F969BCF61ED7DC789A59A492A373C95265AC350DE568A6A0A8C40875E96920A7A5A0ADAB4548EC00A96D203124C85B1FB9B77B6D8DC09D09B8663A684540230A09E001CFDBD05774E4D86FAE62788808A06AC54120D4923152694CF974703AB3E7A4B487138DCDD556D52D164B1B32CB903E035D2CF5346F5F5B3885A54A481521091463C92322A6A6207B91B62F736CEEA2B7B7671E2022A5BB49247051F6D6953938E0700EDCF926E219A49A05FC340077507AB7E7C69E4704F568F49F26E9675C46067C962A7DCF96497755651E36B8C7518A13636829E820AD7589E376D75D54CCA8C6435422502EAA0CA116ED01484C85567741A541048069C4570493F3C13D01DB6C7D6EA953146749620D09F91F3E15A71F9F474A3DD628B6824952F4F0E5567A3C5D6C74F5295494D9CC8D4D3192296A5352C92E3E9EA44D369FD2C197FB0D65E016C9422B522A2981FE738E8B9D575B2C520640788FF00274B0C3D74230B14FAA3A1A1A181695A5A893CC58D09FB49E4049BBAC934642B359A43CD8DFDEEB90145493FE1EAAC056AC40AF0E9D68E313468D34B2CAC630E75B9501A42656D31A68E222C10702D63FD3DF9B5E69403AF12A001404F4E16550A16C08FF6365008FED124B1BFBDE9E2189EA8588A114AF58F822C472178207F689B9BFD3DDD4508A79F55E1C475C82D89603920022FFE3F4FF0B0FF0079F762569A4D69D780353439EB290A4826D6007A7F361F4FE9F4F6D0A80406EAC750A0607FC3D7726A1707F6C16E0706D73C1FC9F57BD269D468D9A7566A01838EB31F1D9415BB3D87D6F6B7D7FE4223DD3492C683AD03406B963D628C032017BF2010483F41FDAFF6FEDC7C253ADAD430A71EB315542E45ED76B8FC36AFA8FA0E437B6E84851E7D5CE95C118EB13705091F46B8FC8256C6C6DF8B1F7722B5CF974D1D55031A7AE47D7676E0DB4DC0B02091FD05EC39F742026071EB66A724F5E91B4A8000D44026FCF3F9FCFF00873EF68060E9AF572485040A7F97AED57D3C49C1E1BFA231E6D627EA6FEEAE406355CD7F68EB4BDC29A893D646B488ABCEB5E2C0581E4DCFFAE3FDEBDD461D89CAF57C5155B8F5D8478A4B12C458290A3F3C58FE6C2FEF4183EA38AD7AD80453BAA29D74BA9148D0CCE18B06B7E0117047D3F1EF7404E0F9755A91C41AD7AE8FAEE0D948258803E80FD6FF00D2E0FD3DE995948A7C3D78518F7711D63D2C09BB7D7D6B6B01604802FC0FCFFB1F760405D5E7D7A854915143D660D1FA9F57AF5AA03A869B687B922DF5BDADEE9A4D40A76D3FCBD6FB74D3567AFFD0320C406753EAB9BFE3824F23E86FF4F7D135AB004629D62155831A75C79BA81F8E4016B1B7F5FF005C7B75416F215F9F5B60598114A75C946BB58E95BB5B8D36172086E7DF8E95D55356A754A1735A80BD72D06DC83717B30FA1B8B69F742CA32327AB695150727CBAECA0D447E348B9FECDC8B9BEA3EF409A1CD4D71D5587775C19ED74BDC7049B7040B0B8B9FAFBD84E041CF5AD472053AE22E00205C1BFE39FADCD97FC3DBB41E673D78D01047C27F3A75C0EA2580205BFDBDAD60793700DFDF810092475522BF675CEC2E2E05B83A6F617B7D45F927E9EF46B53A7AB9008A8AD3CFAE6C96BB2DADA7490DF5BF26E3FC2DED95A934EAC53CD7853AC7E54B580FC7049B906C6E00FEB73EDDF0CB150703A6F579531D720DA8024703F22FC120024DFFDBFBAD086A5453ADD7581515EBB41CDAFF5360DF516FAF1FE17F7A666D3ABCC75B04D41F2FDBD73604FA87A41201E4DEF6F4DFF00A0E3DD15989E02BD5E4F223A8D2108A753285D417531000B9E2E7FA927DB955A0F5E9B20F1A8E838DEBBD69701896CB2D75249454955514F92559A3592028A4D354A4DE540AB455B1A899795783C838602FBA956D441029F90E1C7FC1F6F564457608681FCBA22DDEFF21707B9762493AAB54E0F2B4ED064168EABEEF21839B19948A93213454912C0D2D6E304B4B5A17CC923C1254828CB18604BBA6E16A96CC431311AF70FC2D5A7750D714A903CB8D3A3CDB36F9A3BAEE917C643C29F183C02938AF1143C788EA92BB07E526E9C960EBB055B96FE2735065625A3C94754D36325C4D0415B888686A6945E19D96862A19A3A9086532C6BA8DC5FDC37CC3CEEB0DBDCDBBB87B80C1706AA4014CFA114C1CD7A92B6CE5756B88AE952911049A8A30639C7CB88A7447735B9F21929E4A979E40934B3C82991C88164942C6F288C103C8E8A0335B5B002FEE0EBDDD6EAEA490195842CD5D20E2B5EA47B7B38A38C3681AC0A57CFA49BD5544A1DA56676B2867E05E402C97717E483FEC47FB1F656EC58D6B9E95A2510D78F52E5A4969E971DFB04D4D7A5448DAC31F4192214AD10B10018C9E4DEF7F6D835240E03A774F68C71F3E996A5A64F4B27A4EA0420BB124FA89E2E07F5FC7BDE2B4AE7A6D9699AF6F5DCB758C488CC155F4F22C753A92A9FD01655F7EEAC4F100F6FA752D1618A14599E467525E4D36F5193E91A9E4BE9205FF17BFBDF57CA8E19EBCCD730F841443182E786E57F71999598DD955BEB6FA7BD13404F5AA163538EA55652249053D7B4D239956484A30B04FB711A462E4962CF1F03E82C3EA7DD431D7A48C538F5A550723874D6645F1F1122FA99B58F5305D22E006E01FF001B7D7DD8F0EB43195191D76F1940A2446BB440058CEA65591498C15BFD2E6F6FE87DD351048153D58A568695AF53BC7570C14AE8E05342965D4D7D12B191E451C061FA8B71F4045F9F7BF10134F2EB7E1E9EE06869D48C5D7D5C13255D3E913D354433C2CCA5BC524720963641FD911B47AAC7FA7B763B86B79A2653DC0822BC2AA6A3A69A20E8CA78914E862D93DCBBB303B9A4CEAE7EBBEFD2A68E515F0954A9D54D951918E489594C69A2BA4FB825FF00B4809FA0F636DA39E374B3DD23BCB89B5276838E0A0D68070A7F9BA0EDFF002E5A4F64D6B1C54E2464FC4452B8FF00567AB56D83F2EB6DE5B736D9DB70E51E836AC52E2774EE3824C9207C8E6219B25495782832CA8D2C8D2503C20CF2BC924A1E79E424308FDCFDB6739D85F5CDB59DB5EB1560AEC49EEE3F0D78126BC29C71E5D45777CBB736D6B7175770A2B26A450ABDBC0104AD3005280D7AB0AA1F975B469B2187DB18FAB7CFE7EBF214F534D888E492381097CB1AA9AB52013647C5125E592468999503CA545EE06ADBC59AC89133FEAB600C79D299F979E3CFE5D05936BB8B8D4C8948D464D09A53E5819F2A91F3E8E6F5FEFDA6DD18DC7D6AD6876C93493523BC6D4E6BE9D02B1C8789AF530E3CB3910C616E11407B126E6913090064A140070A9F953A2A9A3F0C9AD69E55FF002D381FCFA1840B7E4117B806DF522C6E3F009E7DBE589EE2A6A3FC1D3045315EB9B00D722D7B5B4DB83F4B1001FA7BD0C70E07AB61CE6B5EB910558587E013FE06DCDAE47D0FBA82699EAA6A7E118F3FCBAF056376B8205B4D85B571C023FDE7DECB0040F2EAD5268CDC3AE4CA5D828BDBF5D80BDC0FA8E2DC81FEF3EF4A34D091E7D58D3F831D78AA477B062783EA1C5FF3F93CDBDFB5B312070AF1EA874A83406BD762EA785B9BF0C2E0D88FEBF8207FAFEF474B8E26BD5B5BFDBD48642101B0B91A883C8B8B0E45CF278FF0F75E24819A53EDEACC7CB15EA332C8B6D43863753F55038BFD38F6EA806B9C8F5EA85580155CD7AEC0E1AE2D620122C3FC6F73CFD7DD5C70A71EBD4A6A523AE5A18DAE350B5812C0DAC3F07F3C7B6CB038E03AB69200F4A759424765B7001BFA4DC927FAD81E6E3DD18B7DA7AB1D34C6075C9482CA5C72A0802DC837E357E6E7DD4EA5CD78F5B043007ACC196ED70355C58DBF03F2DFD2F7F7AC0A57AB0F3C75C4C62CCDA8802C4DCF049E6E4F1C13EFC082481863D68E086D581D71D4840402DE9B020DEF6FAB7FAD7F77209A939EABA81C531D61D3CBADC3AE92403C9D43916FE9FF001AF766CD1CE0F5A02B500D4751BC66DAAFEABDBFE356BFD6DFEC7DDB51E1E5D534375FFFD1324CA9C95E003FD6C35717BB03F4B1F7D1342D8AFC5FE4EB10EB90C41EB1D829016ECD7FD5F8FA707FA5FF00D7F6E815EE269D799400B4E27AE7EA1E8D17003103F258FD6E0FE38F75146AB0E34EB42BA82D315EBB274A8FA803E80F245CDEDFD4FB6C67F0D4F55ED5A9CD7AE562C2E6EA5C9B0E6D6B71CFF881EF4A4027CE9D5C8AA920F1EB800A6C40B16241BDEC47E2D71F416F6E54F1A0D5D50020AB03D6304825BF04900117171F4BDCDC0BFBB13C07AF5E38EF6E15EB20462A5ADA4E8BDFEB73FD3FD6BFBA6AA5456A6BD6F4D4123A687660C0963AEE6E2E6DC1E39E39F6E6A2C1B00FF87AA1E3418E9C5599A2563623D5E93FABE87EBFD47B6C328245287AB77045208EB969404051F4B37D3FB66E7FD7B13EEFAD8D01A53AF5515B1FEA3D72522E2DFD6F6FA0FC06B136FEBFD3DEE9C09E3D68139CFCFAE40D8FA4A9B863623903FC6D6B0E3F1EDB6525A94FCFAB839D408A9F975CA63E8606E3530FE963C7A4A823FA7BD0AEA15EBDA832D6B9E822ECDEC5C76C6DAD94CB64AAE3A034904C7C4CA955F7C238A59BEDA9BC52232554D140E632CCA0BA683F5BFBAC8D1005E47A462A4938E02A69D5A38A4670AA85892386695F33F2F5EA937E427C93C76E68653B5B79E2A6C6D7B89F1B8E92682AE8A8AB5A8EB1853D5C153A2BE920DC34CE54F904863AA87C522B900B0177DDF9FC3912DAE91E064EDC804F99058530714AF0A64020F438DAF6B40C8668245BA186C118A8C81918F9791F9F555E7B9371536337A610564A20DC518A89A396699E3A6C843571CD3D4D222C85239AB2991A3696C1B4BB004063783EEB9F2F523DC6C28423834F3A38C71FF2F527A72DDBC9259DD50164A0F2CA8E1FF15F2E81281A93230E5DEB65965FB5C4D6E429D22611B357BBD251C4927A6C6284CFE57B5B508ED717F7194D3C92BB348C4926BD0B56344000C103A4795D4A15646D4A1AFEA005FD4D651737BDB93FD7DA73C7E5D6F3A698EBA2DABD0503AAA82B7D434DC052C14F0CC49B9FCFF4F7E615A05C7565D55208C759DAA279E0A659E4D2284A41026B6120A795E472B1A90752446FC122DAADCFBD050320757E0BA4F58D515644D5EAA66AA4321B5C5422B866565B7A54A2DADFE3FEBFBA9C31A71A75B2069AD053ACF554F4D155D5D234A8D4E6ACCD4F2C47D0C819DA9CF3C59A2700FF004B7BF2B549A8CF5B214F97505A23254056D46CFF00A958852A4DC1B58FA547F8F3C7BF6B1E5C7AF69AB28F2F5EA7253EB9752945D0B25849A550158DD822836BCCF6B2836D4C47B6CB1C107ABD06A269D49831D2412D4354C2F188E89E778AA2374285D0C5491957B1F248F20200BD80BFBD17A03E67AD150B423A6B31286B122FABEB7241FA8B7D08002816FEA0FBF5492953C3AF50024834C759A364659667D4F207FD4C14411D8A84B29B16D2A3F3F9F777249A75E4D54D4463AC91432573AACD50451C2A649028B318F510FE32C5610D37F4BDAFEEA1A9AA9F157AF15AE49C752A2A4A77D0008E1A569199C8A8596AC0041F1A285D21A4536D44691CFBD5751A902BD780047953A6D95E4A396A16959E3A79C11A81D724916A574123ADB5016171C0BFE3F1EDC43EA73D69854D7CABD63A7ADA98678E68EA0DE1B1E0BAA02090B731D9AE3FD87B550DC4D6ECAF1485581A8A1A749A58126465954107F3E8CAF4E76F576D0C9D6BAC951365F72C347B6CE62AEAA41514988AB9E9A1CA434D3C92F917F88D1AFDAC8C1E26103B0122827DC85CA5CDCD6D780DFCACF33B2A866268079FF9ABC7A0B6FBB1ACF6BE05BA88E11DCCAA29A88E1FCFC8F57EFF0018FE4561AAE2A9C8560A3A0A082A931B8CA5965A7815248A21105A4C1E383D4CB1C67D107EE7D8C09A99DF51E726363DD61BD46185800C1C53D69526B5F3FE751D42BBC6DF3C5A4BB6AB82738CD3F92D3E6694F207AB3DD87BBE837B6229F3147098E094A88C4A1639E7D51A4A2A56156730D3CD1B5E3573E4205C8163EC49514678DAA84609E07ECF5E83257C37D0F96F40474BC2A0152140B92029B9205F8048FA13EFC1E8A509F2E3D5F0BC41AF5974EBB58D89D26E6FF4B59813727FD87B6C3692453AF1504020F5D69D57B5C85208E4FA85C8B28163F51C7BF1231503F2EBC1B560701D74B703527D147D2DC87BDC8FF6DEEE4FE16A907F9F56C9EFFC23AC83D684DB93AAC0F2D6041278FF001FA7BAD429001A53AF543291C18F0EBC8ACAA0952CBCB0FF005AFF00F11EFC486A9AD0F555141522A3AE2C759E6E41B8B0E2D66E2FF4FEA6FF00D7DED4571D50B549D42BD7642DACE4B2F213F0ABAD4DAE6DC016F7EAD4D41A756A102A1B3D74B7605580BD859B9B0E3F20737E07BD91E7538EAC4530C335E3D72907A6262468B1F483AAEC3806DFD39F6DA9A960479F1EBCD4A020E3D3AE718661A835AEC095E2E0026E0FE45BFDE7DD5E8281A94F5EACA6A01AF5CA456890900162C5CF3C8BDC1FA5CFE7DE8156201181D788D20951E7D76D2599484B960035BE807246AFEA6DEE8141A83C6BD6CB15A7A7521404536D250917D57B7171FEF17F7E6A96C7103AB04ED269DBD6368F4B3B050430D400E2C07E38FC31F7AD44D17CFAD67241C1EA29215FF4D8DC37D6E0A93F8B7171F8F6E8259597576F542E14FC39EBD78BCB6D434DEFA6CDF5FAFD6FFAEDEFDFA9A3E74A7E5D6F5AFAF975FFD23362045206A560CC6C09240F4DED6078373C7BE87173C0FC23AC47A2F01C3AC120D164FAAEAB8B726C3861722E48F6EA1D4950083D34D55C1F83AC7CB10518D892035AC5578B5FFC3DDB51A534E69FB7ADE469D278F5C79E0302C38BDCFD7EA2E38BDFDF9549A9AD0F4DFE2A52BD4A552CAAC0E904102E45BF55883FD38FAFB64E0953C7A77C89A53AC66360E011FD4A95E2E2FC7F85EFEEC1948A8F8875A201D14F4EBC1358363A6D6005BF240173F53704FBDD49A713D54D5C51A941D7308AA482C549040B7D0D8F208FEA48F7E0C58F68A81D5A94AAF0AF509E9E2255882CC4FA87F417BF03DBCACDE7C3AA102829C4F59C2AC614850747FBAF80A41B806FF5F742A6A057AF706F551D730A6E588F5037B126C2C415047FAC3DE988A2A806A3AB84046AAF775D04B1624586BB9BFD3D7F8E7926FEF5ABB081C7AA85F33F0F5EB076E3D3C5AC0589B716248B7D3DF81C509A7DBD68124D3803D20B7BEF0A3DA38BAEAFCA97828A9918C9334064863254F8D67713C22266201570C471660BF5F7A4641A999D5569C49E9CF0A491C244A59CFF00ABF3EA92BE5F7CB3D99B83159CC06377267B0BB87C6B2C7821286A0A39E486A5FEE31F9AC5CE938AD778E39BED2A9A781D25504472A12411CCDCC161696B2C49B86893F858696E074E41353E808E19A823A17EC5B4DCB4F1EBDBFC44341A81257073DA69C3E10C299AF11D51AEE6CCE432595AEC8CB507CD90F254642B529E2A35AA964A8F334F2D2D1A47046F349A5B4C6A1757D3FAFBC5BDDF74BBB8BA9A4325093E5814F5A0C0FCB1D4E767670C70C71952428F3249FCC9C9FCFA4749572CCCC643796E5B5F376B8BB717D363F9F61F7919D8B1353D19A2E0A8A52B8EB846CEB223C674A4C92C532963A4A49E875BF1702E0F3F4B7B6EA78757D20E48A75D2D04924BA510EA43FB6B6B1D4D71F5240B1D3F53C0F6D9703CBAB08C13C7A9C989A88E1D6CB2C859923531D9D4090B330908BFE93C0FF1F7EF117CC63AB0420924E7AE6D8D9C3C90CAA19BD3A63FA48196FAAE1B9D4BFD3E9EDBF197B88F2E9E489C0656A69EB35251C6B0D42081E69E48F483A4A882446560E3D6DA9AD752A428B1B8F7567186638EAD1C6D9503A86D432BDA5609A91AF7FA17427E840B95D0DCFF00423DEC4806A00D71D7BC2D44671D3A0C53AC7139A44206AD4FFB8259049A468750E51563FEC950073CDFF0CF8C81B49C0EAFE0B5388EA6250158A9F52AB69D16520120994B4664274EB2A6FF005FF61EE827058FA75658AB4AF1EA3D6D256B491D3D53CF2470F97446CCE5BC6082FA58FD2F6B9173EFC2552A7038F5B6840C15A74D92635A2E046B663AF480CFA6390FEDAA1FD4580FC9E45FDB82451827A68444D7CBAC7FC2E4A882A2F74305DD232A6EC2F765B037D28A08BFD2FEFCD2AAB64F1EAC5092CA3C8D7A8FF6537A699118B3B8D2145ADE9FCDF807F37FC0F76D6B4E3D50A10D4A7595A19A9248610FE3F15EF2A8571293632588D48E17E9FE1EFC0839AF5AD04629FE4EB04B058958BD5A54A220B73617365E6DEA039BFE4FBD9341D79940FC408EA3AD328B972ACC38555017596B6ABADACC759B7D3FA7BBEA34A571D574D0034EB8A79166F203A0AD948753A52C7FB5A56C0E9BDB8F7747D34F2E9B78F5107A1676F76365F0B92824C4564F0A182082A639C0D35C1559244AA2F2C9780AB93A599549FC5FD8BB66E68DC76E78A249C988E0D49CFE7E5D106E3B2DADDC6C648BBFC881C0FAF5B097C29ED3DD14B89C0E5373D7AC395CED22418AC3E42A131F0D0ED189BC38BACA6C043044F1C792902AD3B953355DAE2C81D8E56F2A6E2F7B631F8E484651A14F681F91A56BC6B9E3D413CC7670DACD346920699492CDF11CF0048C0A7F08A53CFAB83C5D6C7910A629E2A961A4CCD010123761C283721BE86C47A7FA720FB179EC4248A370CF41153AC8A67A76D051EE0917F481C716163C8FE97F6C961A4022B8E940200153D734701FD20F008E40B02BC0E47D755FDD0860B523AAAE58B0FCFAC5C86BFD1589249FC906FF004FC5FDBC3232B91D5900155273D73B904104965BFD481A471603F3F5FC7BA1C921850F4D614D470EB32331FA9009502CCD616B124DEDF927DD5A884D78757EE6F3A7582FEB2DCDC11FED2A0FF5239BFF005F6E1AE9A538F54241248AFCBAC974FD26CE03737FA5CFD2C05C703DD34920F5BAAAD3CC9EBB52AADAC7000B3007E84F17B372A3FA7BD77302A7ABD4135C1A7591552E3D4349BB007EA0B1E0DAFEFCCC4D3C88EBD456A1F2EB2B2AAA8B10A198063F5E3EB7FF001B9F6D00496AE7AD96033F3EB8C88ACBC1F51173CFD2F61FF13EF719F9F9F5B201D5434C751872546A3607F4B5FF00D8588FE96F6E30342D827A68FC4A01C75297F4DDC6917FD373F93C1FF63ED96C61589E9D15233D632E5A62ABFA4A91A6C4120726FF004FE9EEE16884B0F3EA95AB691C3A8B29E545D47E48E2DFEC6DFD3DBB191DC7F9F5592A0AD0F0EB0E9E2DA5B57D4B587D6F7074FF00AD7F6E57CF50EBDA93556A6B4FE7D7FFD3328494606DC589506DC736E49E47BE8A555EA7CCE3AC40F84827AC932DB435C8D57BF22C14DAE4704DEE3DD6326A5698EACFE59E3FB3AECBE9F4A1BDEDC903FC781FEB11EF78268CB9EBCCC71A4E3AE06CC109D2CCE7F16F49FAF3F5FE9EFC6A0E010075A243003CFAE95802107009B920F02E4016E45F9F7B0A684D2BE9D685051479FF0087AC849BB0620AA6A1C83FD79B5FE9F4FA7BF0404024115EAE085E27863E7D7563C10874700927F27F4DFF00C0FF0087BD5429EA8454860081D7124B7A1BEAA415BFE7902DCFE0FBD81A4EA18AF9756D551527B870EB89176D5F8E09B8FA9FA117FE84FBD839C9EAA581604F0EB210A56E4691A7E87F27EA07D3F1EEBA8AB65ABD5BB695EB803ACE96F42FF6AC39FA5AC4DBEA0FBF15FC4BF17555EE34F2F5EB906BB15F568FC0279200FEB6FA7FC53DF8A9A16A67AB83920D48EB13FED2348CCA8B1DCBEB2AAA53F2C1CFD08E38279F7A621A9E94EAA57E2F51D5717CF9EE0DE3D5DB263DC3B4F152E5B0B2B8A03B871F4EB9BC7E2EBDC85A8A2CA28AB48F1F57A2DA4CC8E0A48DA4820021CDFF00763B359F8CF6CCE18F9A92A46718C79703D08397B6E8B769CC4979A645F20C038F98AE69F679F5AC9F6D6FA6DFBB96A33C987C660E5A91FB94F874A6829D99C9791E78A9A38A26919A46B9D23823F1C7BC60E6EDFE1DD2F4496F6DE185E39E26BFE4F2EA73D876C96CAD8C73DD191C9AE7C87A0C0FCC9E273D0532CD2BC0B04D33491C6B6895C16654B03E256B6A281871F551EC1534EF2D351AD38742158516B4040EA24303BFF9B205AC012BA988B7E41BE9047B4C5BD7A7D50E69E9D2968B112552FA553537043385491A38C96D00F170A2FF00EBFB4CEFA05751D3D2B8E2AAE78F4E74942E1A5A7991503054321477536B95B4C82F0DC020A9E0DBFC3DB2F28280A9E94471D38F53DB18CF1068502BC5A46A89D6CCC3E81E356BFA6D6B8FC7E38F6C34C41D5A8F4EF8418515457A9231EF3D2C466A2696489CA19CA3B81C16D1E78ACEC4037048B823FA7BA17C96AD2BD39A1A9A08E1D4AC6E0E633312B208A78A48D9994BDCA12C009029590861CDEC6DF5F6D4B3155A06C8EAF0C1AE452CA7479F4FCFB22A27D3A29A491604D53430026454BEB778C2DD5C693FE207FBCFB49F5F1AAF748057A301B5C8E488E3E1C47A8FF3F4BCC7F5BCD578A79E9A1150145C3FA8BB850AE21A88101F05481FD4E96FA8BFB2AB8DE155D40229F2E8D6D764631302B9F9E3A7CA5E9DAAADA332E84863490CD1ABDE3975429A844D746F2191D4A7201562B7B5CFB4937314711A07EEA74A62D81350490533E5D30D475C54554A524854031708E0F9C392E8AA15870E4B6922DFD0FE7DA94DE5046181F99CF4CCDB2D653A96B9A0E9BABFABE68E6D2B0CD0C9FB2425B5160B68C185BF2AD230238E07BDC7BE2934C11D525D80104A822BE9D353F5D57060169E566AA815E64D2DA900456651C29D45D7902F66F6F8DEA03525C0CF4C3EC52AE3C3AB1E93359B2E7A7F24750A567926625D870B1FA74C6C7D2A6CA0F37B93FE1ED6C5B8C520D48E29D1749B4C91928E8D5E99EA36984120588C8CAD1C70331B2451889B5831F1EBD60B7D6F7F6A45E87A1D58E99976F60069049FB3A649301550A6AF090D21605A4BF0A86EE4936F18616FCFD01F6EADC293412678D3A4BF4720018A769EA18C24ACE821594C8245749F48D21CBEA8C8B1625491FD6D6E7DBEB3B0CE29D30D031A8033D60DD18F5A6A833AA308AAD22AC8D45AE8250C258401600C756AEA2FC85B7F5F6A22935D41A6AE9A78E8053E2E93D4F2CE8FF751A469E068C026389B4826C0AA392ACC9F9FAFD47B571BE9A352ACBC3A4D2A332B5700F439F5F7796F0D9F5D1D54554F5B69E94BC8D3D6CB5DE385D14451D42C8D2C1198CFA8200C748008B0B485B1F3EEE760614B8959E214A12C6A07A0FF008AE821BA72C595DEA68A208D9380324F9B79B7ED15EB637F83BF24937C6CF6A05C243056BE5841267335BBDBED4554F4A2A24C7D20CA4B5992AC9E8E9029902232A3369690B59465072E6F706F5671DC2F8AED4182CAC33C056AA7F2D3D41BCC3B3CBB6DE3ABBC31C5E8AA437DB4008A7CCB57EDEAD2A99D270AC9245286500B44C248D8B2A96D0E059873EC4648A5320F41FA0A800569FB3ACCA9A49007D458DEE42BFD2C7F22C4FBD1A1AD4F0EBDA68A403DDD79E1D1C5EFA79FEADC8FAD810383F4F768D8328A82075B214102B9F5EB9AA0D6801003A92CA4DCEB17D46FF83CFE3DB6F5AB13C7AD83DC02914EBC780E2C793F4FA00A6DF93F56B7BDD0BD2ADC3AA963422BE7D65D51A80813483CFAEC4A8BF040FC7FC47BAE92549D5D3805057200EB0850E0AFD0DF52DC7E2C56C7FD89F7BD3A1831F4E9B04361BAEDA32E38D2149B024FD0F37FA9FC5BDEC3281C33D7B4E5A831D723E38D95554300A3E9F8B7D7E83902FEDB0A5C3333533D5AA56800AF5294280C1AFF005BADBFA5FD47F008E3DD093C2B8E9C1C0D4669FB3AC0554096D72E6C7904AFF5E09BFBBF9282280F541515D3F11EB82C615585C825AE0D87E923F50FA8FC7BD91F0D38D7AF0CE08EEAF5DC4482C2424E96B7E2DC58736B103DEE4551C463AD2F12BAB875C88412901893F82A6CC072486B9E3DD2A34507C3D58692E0F516751AAC4050DFDA03FD871F4E38F6E45F0D7CFA6A5AD5718EB25E2B0E4DB41F571FAAE00FC7F4FC7B6E8751C67ABEA5A03E54EBFFD432E14845BD88BEA02DF526DF5E6FF9F7D14D553C3CBAC41258A8F21D7260CA0EB173FD91C1005FF1CF16F7AC13DAC2BD7BB88A15EB8229624FFA9E14FD0DADEAD5C703FAFBF1AA50935EB6A0922BF075E54D2DC8B7A7505BFD0F1F4B5C5FDDC92C8C4755A283D7360B61655FA5F83F4FA81C036E757B6D49247775614A600269D7129E952DF90491CF26FC73F86F7E0E2B45E1D7B4E16BF9F5CA27B29420B0BF02E7FA581FA716F7664A9D5E7D681E2B4C75D39BDD7F161F41C9FF000E6D7B7BAD28454E7AF05A82780EB969D4A45CB160A05BF045ADCF1C7E2DEFC0AAE1800BD6C2827B9BACCA9C588BB022F6B0E3800D89FC7BD160C750229D6E868001DC3CBD7AC402A5FF00B4CC48B107EBFD40FCFD3DD98EAC81C3F9F5A383DBD675895547E45AFF00A45AFEA207F50003EDA7624E3A7057893D20BB1B72CFB4767E6F7053501C9CB8DA29EA931EB353C7255B46A5C4508A98E58A69481C25897B691C91EEB2958E39246562A149341C00FF002755556691103AAEA34A934E3F963EDEB554F941F29F3BBE375658606B66C1524B19A2AAA7DAE6AF6DE33271195E6F06E3C023262320D4B312A18400803822E0083F9D79CD94359D8DC69D43B914EA420702C1AB43F667A98397396542C7777D06B75A68670352FCD1D68687E7D57CD5D49ABAB9679342BC84BC8C8B65048BFA5515574926C16DEE05BCB869DDD9E9AABD49B14423A6314EB88875B2DACCC48BDCB582FD6E13FE209F681BD7A58AA2A003D2971788AB9F4388F4EBB08988557762C50690CC9AAEC6DED1CB3014A0A8E9745002535633D2C20A49681E6A5AC5F1CB099515A065999E45BDD55E3D68D72BF50C011F427DA2925D46AA680FAF4B911558AE8AFD9D3ED2627EE239648A9A758E452F500A4CA5B48505A528A1667576B83A3FC6FED3493E8C1714E94C76CEE0523233FB7A7FC56C8ACC9278690219A472CAB2B189F902D6995027056E01B03FEBFB41717F1C62A5C1FCC7F83A33B6DADE4735465AF950FF0087A10B09D3F95C8E41A88C7534720758E198A48A2A1DF4DDDA37446755362081761FD7D96CBBF411C7820B798F4E8CA1D80B392D555A7C5D0F9B6BE3A6E9A793C671F3CC9308C064A795698333282FAD607D007FB52A937FAFB0E5E73444D5A305F957FCFD1F5A72C32A8222763EB4FF00274767AEBE190CBD4C559571D46267929D1E55F1C0F495320D3FB914E3D0B775BF0A458F001F60BDCB9A4286D32569E5D0A2CB97A50C1658885F5033FE7E8D5627E095254792A64A2A386A242C2A66A061E2AA8ECBE8A9A7BE9955D001E44D2E0FE3D84AE39C996B42D5F4CFEDF91E84F6FCB70BAA46CD51E47FE2C7FABD7A9137C28189903D340F5546D28D3116733C41C809149A109A9834F00C9771C827DA05E733236990914E07D7E47A5ADCA56A55B47F694E1D05F96F837B8173092D1E382631A7925C6D53D3DE730CA637482580AB12F432B3A1D5EA78C2B0B11C9F5AF3547E18D6FF00AB4248F2A7953FCBD13DE72DA86251BF4C9151E60F9FE5D2931DF0C30F34D55FDE849969AA68AA3CF250637F768B2D4D1A32C7FB889AAF221200E195FF0022DED89399D8E9314814D706BFCBAD45CBC9192CD117F95698F5E903BA7E1A629B1B04D8A9A47AC9A0A5FBA8DE82449A9A27452F18D01BCB24B57AA36B7D4293F427DA84E657590069002463D2BC7FC1D79B618E489B444CA01F3F3E8B3EF4F887B9E896AC4B8D2636954BD4C113CA2256934CE0C8A2D1543AA2A2DD6C807B39B5E6756C89BB8791C745F75CB33AA8711EA5A67FCDD04196F8DD361296596A30F5125CA45041AEC91E973E6916EB79594A59998851C93C587B388B986E6565FD4A2F13D11CFB3087B8C0057F67FC5F406EEFEA6AAC652491985AB2951AA161A1A1A673414D593040B0CD5AE8DE40D1A6A73AFEAC78F67D65BF869143B802BC7CFF00E2FA289B63D6A5A3425BD0F0FCBA0766D9F9DF18AB54A4A2811F4FDB53C44E98F4241779DA38D9D40436D26CA79FAFB12C7BD5B10AABDCC7CEBD10CDB1DD21324C4AAF9003A09B71616B29C985D55DD1646460D1BFEDB10593431660C8F636E09B9F67D657A922D471E8377D60F6E4D287A0EE481A9488D8000D8B868832876B8BFA58B017FADC5BD9AA4A588000E8A4C66BA4920751A582A350929DA1824043218BD11C963FD9BDC5D5AC6C4EABFB54AC0640CF49E48EB500E0743E744F736E6EB2DE389ABA3CBC34891D5A2D7495E9FC4A1FB49A58DEA025254A4D482480465D0E8059DAC4F02D23725F385DECD73044F20FA6AF163F0FCD6B80467A06F316C16FB84523088F8FC415C1A8F22C334FE5D6D37F0EFE4CEC6EE3DAB252E3B3A27CA50B46AD1646AB19455F32D8248D1E269ABA6A7A65599599D61015438B8BF032AF6ADD2DB77B48EE2D6E1643E74029FC893F9569D63F6E7693EDD78F0DC42C849C0C9FDAC40AF478102B0D5EA00DD883C6AFA80473FF0023F6635C56A3A440541238D7AC852CA7FAB81AAE41000B81CDB8B71EFDA9AA2BC3AD53B493E7D76B12290E7D7CA9047005FEA3E8011EFD526B5E3D795722A7AE6EA0B6AB58DC1B126C0DAD6B7E6E2DEF4A69504E47566030715EB1F88120DC71704DF9B917D3CFF41EEDAC70E1E9D540A556B8EB8C88A8AE554B105558F208B807FDF5BFD7F7E0C588AB63AAB50924255BAE16D205BD4A01361C85FA5CFF005361FE3EED42734EB40915A671D728EEEE0B69529EAFF122FF004E38FC7BD15D233E7FCBADA96663E83ACF7B7A880BA8690A48B8526C4FD3F37F74A528074E063A8B31E38A75D2583946370FFA0F36B7205FDFA9DB50287AD6AA1A115AF5D4B628DC0F4D97EB7B5BE9F41F527DF93E5D6D86A534E23AC291358B5C8D64F06FF4BFF53FE23DDDD80216953D5346350C1EB346097242000EA1F5F50E0589FF0003FD49F6D35000075702A723CBF3EA314BB2AB2B0526E971F500FE7EBF53F5F772D8D60E474C6700834EBBF18FD5A7FB5FA6DC6A0D6D3F4BD8DED7F7AD42B4D5E55E9CC53553B7AFFFD533FA41E47D0702E3F207F8F1C13EFA220901853AC4400004AB60F5E7E56C3F00B1BF26DC06FE9EE9E7A875E3DC287D2BD796226C54595F4FD4FD4FD38E2DC83F4F76F102E18E3AD68AE40EB8C91B25AEA0150DAC83CDC7E92473616F765624915A83D55D71C3875C4A9B17042EAB35FF00B22C4DEFF5BDC8FF006FEFC4E747CFAD7C235D7AE896B0D447AF4B1D47D3637038FAF07DFB0012A2A7AB5091527ACA235637520FA41FCDBFD716FF005BFD6F75D64AE479F572A0814EB838B581B960E086FAE9FA1FE845ADFD7F3EFC09FDBD54AD2833ABA96015D5C1B6AF4B6937FA5F916B5BF3EDB60682A3ABE056BC3AC4BA40B924805AE2FEAD23E97FEA3DD882182819EBC2991E5D7953512796B37901E03F160793C91CDFDE9890386381EAA056875678F5E0AD673AAE096D2072CC2F70001C5CDEC3DDB1453A334CF572BA80604D0F5591FCC7BB136FEDDEB9830B99CE64F13592572CF8CA4C50686AAA9DA9E75A99A793C91968A9E36B3C2741B3DC136F61BE62BC5B7B099C5DF84C3F166A7E43E47CFF002E8FB61B6926BD5516AB2571DD4A03F613C7D307AD5F372E4A86BAB65067ADA88BC92B53CB3AA2B885893E158A39DE3401D8F20DBF3FE1EF13B7BBDFA9BDB97594BA54E92718EB2076F83C2B786368C2B01900D7A49BD343E462819D801A10B86453F8240B6A6F61A63406BD1AAA0AEAAF4F38CC73BBC4C220EC1D6C9666045FF4DEF6B5EDFD6DED895C2A924F4BE088B0AE9AB7430EDBDB959917712513C9505E30CCB2C2B1C717ACE98A200C8D216171A48FA1F61DBCBD8A11ABC4A2FF0087A116DFB64B7048F0B553F2A7463F6974854E5699FCEAD1EA0AC69668C4C5F5B310B17DCCD645F1DF5155D571F41EC2977CC66362AA41A7432B2E5B8A8A590E78FA7461366FC6A9E575924828E24B78FC5E28D99D55C1D0C5E3F43C852E4024036F61DB9E649242E09A8FB7A3E87976314D31914F97477FACFE29C154909CAD1525546A10C7054635969233C17613431A46C4A9E7917D37F60CDCF99954B00E0B7C8F428B1E5D3A56670DA3E62BFC891D1D4DAFF17B63C1122546DEA269E3B32D47956AE1531AAF85A359A2492123FA2B937FA7B05DEF33DC121525351C7E5F9F426B4D8AD83197C15D247A53F68C8FD94E8C2ED8EA4DA983A6A583EC11D916411BAC4A4401CAE90A5AED32488A2E180B1FEBEC357DBDCF70C58CC6A78FFC5F46F0ED414B058804F2A0A57A1328B6E62A8610915140D1B382E829E3552E6E780DC25CFF005E2E7D934F7CD22E9D47E79E8CA0B1EFD470474A0870F046CB32AC8A9E35648E1D31A05E2FADD14312BCFF0087F5F68A5BA3E6DFB3FCBD18476E8A3488C16EA650C5522A1CF81658AD7D4594DC5EFF004D37FD3F5FF1F6905CB2162079FAF4E9B546C1A03FCFA53BD379A34634D4F18B176165B691CB348C7EAC187D7DBC9B84A4818D1FB7A4D26DB1E6B53D617C263EB1B54B491CA015661E145D43517F59423CA037D09E6E7DBEB7EFDDFC3E9D35F4217E2C374D190DB18178F8C7D3C463975968E30CE1975E822E146A018FA49B5CFD7DEC5D482AC5A99FB7AABD9AB6388A74126E6DA343502684D1C4F1346DAD4C51A8A8B824C6F1A86D0CC7EAFCD8FB5516E12466BE21CF5E362A40C70FE5D17CDCFD4BB432291A5663A30875C73A31BCBA09B8D3AD8A88D18F1602FF00E07D9EDA6FF72A481213D209F698DC106252A33C067FCBD007B8BE36ED99C6BC70D490176A649E5F047087624CA11164B9B31B9521FF00008F67F6BCC9296553F081E5D144FB159B805A3D2C7F97452BB0BE35D6D51AAA538782B66798D49FF241E175642A354D3296935F1605C0B9BFD7D8A6D39862D28E1E8FF23FE6E83D77CB2E35188D53E671FE5E88D767FC7A936D4CF28DB78A8A4A886485E2469B5A487D459F1FE2929291FC5CEA57753F5041F632DBB985B4C75958AFDBD032FF0063D3E22C912EBF5D3FE5F3E88DEEDD87362EA2A164A57A33148C91A54224D4F20B0FDB4A98C2B6A3F8E4DFFAFB9276DDDE3B95568DB35CE69D477B96CC6DDC9231E440A8FCFA072B68BC1E480A116058F889674B58DD756A628F6FC83A4F1EC4F0CEACA2ADD05658886640B43FE1E98632B05439961523C80D88617079042ADB59B7E41B0F6B91AA067CBA452065D248033D5B2FF2E5EEDEA6EBBDF7491EE1C5E3B1F5D5862821CB677255B494A277992D34550E571D4AD082CFFBAAE5F485035107DE427B59BCECEA56CA4629726B525F48AFF150E18531938E343D44BCFB69BA3C12CE956B40461535103E7C1BF603D6D0F84CD506E0C463B3189AEA1C9D0E528E9EAA9AB71B38A9A2A9A79E359239A9AA10949A36561623FD8D8DFDCF8106AC11A3D78D7ECA629E629D434AC4D5594AB039A8208FB41C8E9D9031BB5ED1DEC7D562189FAF23EB7E08F7E638A0E3F675EE2D5F2E1D67D1C312C4A8B2D8FD2F623F17B916E7E9EE81B1F3EAF4153D73B02CAC48082DEA245F501C0B7D7EBEF42A031E2C7AF150429385EBA0884315B124824FF8AFD471F4D47DDAA68ABE9D7A8338EA33B7EDB10349056E00B5B96BB1FC10BC7BDA8EE009E3D6AA74B05EB181A5059756A375B5F902E6CDFF001BF6ED6A4D4D29D345740E153D64591D1235007AEE41E05AD6F48B0FADFDD74E4FCBADA921168724F5902BF2A5C12E08B93CF1FEA7FC05AFF8BDBDD2A09AE9ED1D582B7754E4F5C3C6EAC8A8548B00431E42F3EBFF005EDF8F7AAEAA9A75EA5080A7F6F5E50A031B680187F53A8FF5FEB6FAFBF3023469353D7811520E0F58C6B5559355AFC800FD10DFF5716078F7714AE8619FF57F2EBCD5A13FB3ACA9F5D62DEA4FAFF8916524DAC003F5F6D91F87CBAB28000A0EBA90804DC8F4E80856EC4927EB63700723DED5714C67AD315F3E3D62BC9AB57F66F7FD5C69BD87F8FBBE95D14A74DEA3AAB5EBFFD6344AA5AC5974D89FC006FF005049FEA47F5F7D0E6C02037588C3510318F4EB192646F4F24282BFED40FD41B7BDAF6282684D7AAE581200D43ACAA48900D4748650437EA1CDC71FED3F4FC7BD16016BA73D78035A06C0EB84D200ECA05CFE495FD40FD2F722F627FD87BDA862A4F9F5E2454823AC41BFCE2706E79B9B051F8B0FC723F1EED524A9EAAB92DD74C3D36B066376048B8078D417FC09FF0061EF600A9A7975E6054354759D635F1121F8404DD4DCDEC4E923FA73FEC3DD49EFD54EAD41A30D8EB1A335EC34B2589200E4806DC1E2C6FEF6C2993E7D6813E59EA6A49AAF66BB228D239B9BFF00873F51F5B7B6D8311818E9DA834201EB033306B141C804DB9254DC96B93C73CFBB023F8B23A6CB306A14CF5E73A9C150A2D60140B823E9CFF8D87BAF91143D6E84B63141D70A812C70CBE32124F13B464DCA232A920955E4A8239FF0F742748AFCBCFAB301420934EB57BFE643D9993DEDD9D90C7D6D338A2C40928239727582BEA29463DFED75D2D35378E3C3AD73832849516A19586A162BEE0CF74372225581239285699C01C2A4529507CABE9D4B3C89B68581A7528416A923B893E5526B91E80E3AAB092281E40D1A17080E963A817248D3C7E9451FE1C9279F7033B771D43B73D4AA8B4A3027A97498D92490B431B9E46A51C01C8D4BF9B7045CFB43248AB9638E97C10B49DD4E8C6F53F5066379E45A9A8E01CA2BB6A658D23E0932EA7B9658C5FE83D4781F5F610DF77D8AC63A8A97E86FB06C06F9C3C9DB1D7ED3D5A974B7C43C9CB431CD5EE94B46A1FCB2A52C69355C96551AA5902CC91286E3D5FE02DCFB87F7AE6F3DDA4F77A7A75316D1CAB0854D61B4118F5FB69D1DFDBBD1BB470694D04A249FEC86B479152366D3EA7675455F2967371C9E00F602B8DFEEA4D4C1F8FA7F9FA1BC3B2DB41F0C3F657FCDD0D3B67AFF0017533A57CB494D4F49090F4C8F002CCA0FAA56560C0338E79FF61EC8EEF77915582C8757F87A358B6E50AA593BB80A797432D3D2C684478FF2C7129B093D2B185206B9405550148FECD8DBD87E4BB91C3176E8CE2B38876C883A1270B4A5ECA7CB318FC4525BE850C7F4BD82E960AB7FA737F6572CC09700E40AF4AE3B4D3A485001C53A15B118DB05D71A3DEC6ED7FA0370AAD62B727FC7E9ED297620D454756640B40B8A74FAD8E532A19158AEA0C12CAE8812E2C0A817F50FCFFB7F6C991003E5D7A2573902B4F3EB2C891D3342829E512C8C55882348BDFF0047D45BFAFBAA2F88AF2821682BC7FC1D3CC990388AFA7F869D395152460A9D2ED192CAA0B00FE4205D95782458FD6FFE1ED316001D5904FE7D5F455AAB4D4327A9D2D0C50C467909FB58AC5CC84FEDA2905D9FEA78FC8B5ADEEA119467E11D5EA5A800AB9EA5BD044B1238D2098EEB202C352B0BA81C0B28B7B702D00A9A9E93B6A6720AE3CFA4E64239903285D6D21BAAB9291B0BE8BF01BCA428247BB093001069FEAFDBD5BC10C46714E91B91A37750C210CDEA13462E59471774001274DB9FF0E7DA8AC55A115AFA7555858371A0E90F96DAB4F91818220D76E1AE3EBAB52D837D058FFB1F7647D2C0548A7F3EBC4146AB70F4A74156476E5563E4F1CF09F0D8B466D7F14808B1038263B7D6C79F6630DC927B5F3FCFA4ED123EA6193FE4E913B82968903A3D3995190032B6B0E19506BF1936FDB2C480A7FB36FCFB3786615051C83D2336AC56A4002BC3A2F1BD3616273690CF558F8AA52076469109592385C02189B98DF9363AADFD7FAFB3DB2DC6489A9E2F45F71B62B6A6645607E5D57177E74361696AE492928E68A86A5A7B88DD902F9559E9DCA49757D138D218589007E47B1FEC5BDC8AC078D57AE3FD5E5D0077CD955433AC03401C29D560F6775BD1E0EA2A63802C8D1B3F8A654585A23FABC35242DE42F211A4901883F9BFB98363DDA4B840B330AF97CFA86F7CDA821324519A57F67459720D1473886A2178E4472182928E8D6E19781652DCD88F63A8640E80EAEEE80D382AE55A3C0E871E92CD60F6F6E0C7D465C602A71F0D541573479F6AC82279E11E5869C57E2966ABC5A4D3A69F2956894D8BA91EC7FC8F796B0EEB1C77889E0B79B1A1A83E4DE44F413E618E66B295ADE4612AE4506A1F9AE2A3E433F3EB703F8DFD87B737FF00566D7C8E024C7B53D2E2A929E6871794C7E6682095624D6949598F9344D4C262CAA4A447D24685370330ED0C6F696F25B9FD265C0A82053D0AE29E84758D977E30BBB913B6A90B57510CA4FCCABF70F9743F00D6D3C5B55F81C6A61F42B6B8E07B7F89C749A8457FC3D65BB020056B7E78D23F03E84FE47BA52A0934A75B2694A0EB1480B30B5F4DFEA0D80FAFD6E7EB7F6EC745C8EB64546A268075EF19BAB13CDECE0709607916B704FBA9722B55C74D950406AF9FD9D66900119B69BF16E4588E7FAFE4FBAC752EA6BC7AB3500E391D4404E804FA2C6E00E41E7D16FE97FA1F6F7C4727A6AA40AF05EB9B02543EA370A1AF7B006F6B0FEA7DE852BA4F0EAE72060D69D64368CA822FA87E0DF8FA0BFD00BDFDB62AD504D287AD962B4A8C9EB2B0252E16FC0239B907E87FD6E07BD02A3F1757A120E33D6221880A45EE55AF6E383F4FF6DF8F7BA0A92AD4A75AA165A95C57AE28CC47A85F4DF4AF046920F16FAF007BB1D38A79F54A543065E07875C09D2404058B00006FA004F24FD2D623DFA8C4E4D00EB4586028AFF93AE522863A7559C0B2B0B8D5C0D47D37E47BAA540AD3CFAF13A9E95A1EB878C5BF5736D5FA79BDB4DBFD7F77A9FE7EBD5749F5CD2BC3AFFFD7342C8C469D475D8921781A45AE2D7B936F7D0D5D34A85C75888C092057AE018211620840D61F924DBFDB7D7DDB0734CF5EF831514EB2EA2E4AB5E3E6E7802E00D405FEBE9F7EA6306A3FC1D6F89CE31D476B3598FD2DC7E6DF427FC6D7F7742106067AA3D0D08353D72D23F52826FF00AAE3E9C92BF51F8F7ED54A8E07AF283F10F8ABD64B82B1850386209B5C116FF6FF00F14F75A65AA6A4F5B2C4AD08E3D7368C82CCAC14328D22F606DC5EE3FA7BA03E54EBC45321A829D658D348D44ADED6B7005AFF00E36FA5FDF8B1268463AB814F3CF5DAA73700060A3D43926DF5E0F161EEAC4D34938EB607A1EB8396203A8B5EEA4FF87F8F3F4373EF6A294AD3AD1AD3B450F5C01E3F0A00001FF126F707FA7FB7F76229A4E49EB458F91F2E82EEE0DC34FB5FAFF74E6ABBF8D1A4A1C356544C982AAA7A4CACC904524CF163E6960AB7FBA758F480B131606DF9F69EE2510C2D2193485A9A81538FB71D3B6F1BCD3220883335050D687F667EDEB4EDEF1DEC77EEFADC991A582B31F867C8CD5141415F5AF5F5C16671A65ADAB92389EAAAA76176628AD600102D6189BCE3BC9DC2F6E5503780AE72DF1135E269D644F2FEDDF496B02B850FA4616A1463F083D04694859356B0B72A3D2082E471A6DF4400FD00B93F9F71FC8FAAA7A164519A814CF43975AEC19F3B5B4D0188C50191249EA447E56545209486072A1E62CCA35315417E4FB0E6EFB82DBC75FC5E5E9D08F6AB17966453FD983DDD5CE7C6DEB0C4E2A1823A7A1491DA25F3D43DA5264460A8B2542AE991518EAFDB0118A802E07304732EE7233BBB39321F9F53E72BEDE08529181128C7564B8848283151D250C48618E295BCB60647704215526FA7E9F9FC9F714DECED24A5998F1EA4DB3B60003C18507EDEB2D0E226AB750599A59DE379750244297FF32A7E8A2C6FC73FD7DA3B89D168226AE33F6F464106AE1C3F9F4316176FBCF0430C5A8471B7AC58024A02382058C63E9FD09F64B34E4139E3D285D2BDCEB5E845C66D6D4226D24DF400562472C2C4369D570C05EFC7B41248D8A374F2150C6AA2BD2FA83111C4B12434F3C8E3EAEEBFB68B6FD07FDAB9FF005BFA7B4ACCA0AD2BAFF974FE4D5AA0253F3FCBA554147AD92064954850AAC232B6BFAAD76215D6DFD2E41BFBA4920721589A53AA8465AB541E9DD31B3AB9454545112332B891017018000F3CB5B904727DB4E0842A2943EBD5D6986F2F974EC311AC473C81D9DA2BE9721087E07A0A816403FD736F7B608741CD34F0F9F5E5622A09F3FF00557A71A6C7A44C19E1D2585918EABB100EA65FA16506FC81EE84292452BE9D78D49C1C74F31E1EAA5ACA678FED24A314F2B48B2C7234C2652343C72EA8A18908521B52B5C5AC6FED4410C923AD28479D6B8FB380FDBD78BC6B1BD75071C294A1FF0057CBA9D538B8424A19557508D7F71AC146B22E3C8C2FAB50B71723F1EDF6800772013F2E9309492013C3D3A4D55E1A350A24D33AB92B13A3104B0218D938E153824002DEDB687B7394F2A1E1F975613549D0083D266AE858D540B0524F234C4EA3042CE116152F24ACDA418A3D1F5661616F6DF82C68621561FB7FD5EBD3EA084264229F6F5132DB7678E927A9147E6740668638E074A929A17509748750E1CDAEBEF7E14F2B1257FCF8EAD0A248CB187CF9D787E5D05B92C7516429C191248E6FDD596DAB483AACB1BC2C43C52C6C08B81CF20FD3DD14E8241C4B5FF50EAD25BC90B9520691C3FCE3A0CB3DB4E0303A4D092AC9A90941E93CADD4F3CAFF00B0E3DAF8262481E7D2370CAD51C4F40CC78A8E92B2A7173AAAC329BC73942C0B9B2AAB6A2429603806FECE19EB1AB0F8C74CC81CA8620D079740B76D75B52E428A7F0C2921548F40D2B222B46DE4D210F29707506248B8FA5C7B36DB3706561AF883F9F48AE208EE2360CBDA7CFAAC4EF1E9CA28054138F823872705AA0AD2B6A88A2F9692BA91AF2796157D50D4205BA90A48005C4A1B1EEB2060C242581F5EA29E65DAD103109DA7CA98FF002D3AA7FECADA50E1F2554AD3898392A93005243504EA961B5DE32C8DC696B1E3E9EE75D92FDAEA057268DD41DCC16715BCE55452A3A09618FC732282C2404308CA312E558DF57D5A3D2A09B69B71CF1EC5D13D349AF7740E963CB5467AD8BBF945760E52BE8F71EC7FE3E32B87A48D6B63A07C7D3C52E264F22204A5AA5AAFBA9B1F3162E15E08C231362C49B653FB55B94F77B3C903C8AEB19A2D16840F42699FCCF0EA0BF70AC6DE1BF8AE954A4AE3356C353CC29F31E74F9578F578E5CFF6495219AE4D82D85803FD5881EE56056953C0FEDEA3939F2E1EBD6760E47AAFCD9490391F91617208FAFBA8E3DBF08EB75C034EB8AA8B58A315436E481F43F51FD49F7B7072DABAF0C8A531D74FEA209BB1B5C004FA549B1041FC823DF96A076914EB478D29D7BC5AC3DF817040FD4C7822DC1E073FEC7DD835349AE7AAE80C1810687AE3604A0376001D4428B5C7F64D8F363F9FAFBDFF001600AF553A700D481D7522B11CE95F5051F906E4690001C8B9BFFB0F7B565A9CE69D5EB418141D7337D04B0245883A7F079B71C1FA8FF61EF454060053571EBCC28294C53AEC6AD042B72CBFF20905469048BD9AFF00E1EEB4058D57CFAD282076B7753AEA37B0651F556B05376B7D01B7D2F6F7A7018EA1C0F56538D3C0F5E2A75075650154D8107EB6FF001FE9FEBFBB29054AD3AA9AEAA861403AE207EEA91C90199980E3E841B0E49F7B071C3AD11DC29D7AFA5B5315D22DA47F6AC41E78BFF4E7DD698341D6C6AC1AE075DE916FD4D7D57FAF1C7F6ADF4D1736FE9F9F75D4D4F873D6EA3E7C7FD5F975FFD034FF00EB70589502E1BF1C1B7F88FEBEFA1618D69F847588C16A58F027AE0AAAA0DB48E2D73724816FA5FE9FEC3DF896A0EB4AB4AD69D74B66677B6955FA123EA6D624FD750B7FBDFBBB54002B93D681152461475C4AAAA6A453EA5366B736FEBF8FA7FBD7BD54EAEE7CF5BF2AA8E3D771A12756A600E906FF00465FCB5CFE6FFEF3EF6ED4031D7A95AE7ACE556E02A1FA83716D2A01E4B0FA5AFEEA0E35547E7D6F48A8C6475974162A2D6D16F57F507FC3FAFBAEB02A7CCF5BA1E006075EB2287161FD45EE49FC7208B5BDD4D781EAC71D71074EA04EA0156DF86007D07F523DDFE7E7D541E26BDBD7122CA00040241161C0B736FF000F49F7E0C69F3EB7E43D3AE2CA1EC153E854DEFC5FF1C0249E7E9EEDC2849E23AD115A2D31D112FE61FB9F39B6BE36EECFE019A830B575F251D04AFF007629ABABA9669C7DC50D09588D442D2A2FAA55910AAA91A5831B0779A6EA6B6D9EF6684D085F503CBF6827C88E1D1CF2F5AC575BBDA4522960189D20120D33DD5C507CFAD50B20940B2C89F74F595724979A540D0D14279B84BA89EA2517249F4A7F407DE1CDEB4AD23C92B55D89F9F9D78F59290B281A11280014A7A7D9E5F674A6C0E3629E6A743A611AD0254490348150F28EB000E230B71736666B716FA7B23B8934AB7AD3A37B7425854E0F47ABA4F6A513574269A396B09B34B5350BFB9AE33A357DBA16869E2666BA23333B7E7E9611BF30DE3AEB15C0E1D485B059E90AC3CFD78F5711D438FA6831741053C66310C28AEA7EBE63C4CF269038E40503FE35EE0CE60B826520B8A753D72E5A68B7155F4E8CDD3C312C035060903223585F53C9A7D26D6D24691C0E49F6049DCB1201343D0D618F045050F4B5C2D18F288E21A5E4B34AE509755626C9A6E021B7D07D7DA29A4502BAAA29D28D2C68C4768E870C2D096862A711A244AAAB660BAA4F55CA9D25758773CDF922FECA1A5D4F50BFB7AB6902AD5CFCBA18B6FE2A2485DBC62498C847EDC61824320D0740D5A61440481A6C05BDDE3D275029FA9F2CE3A665624A90689F3FF567A14719B5627A786F4F046191596385BC92C8AA46B2FAF54666B1E78F4FD7FD754B648C9F080DE95A93D30D76EAFF00113FE4EA74BB42A1258D851CB223B030C8E490A073A6FA426B402FC0FF008A7B2E9AC658DBE16209C7D9E9D1845751B27F682B4CF5969B1622989923916CAC083E92C092AB720306B9FF0078F768E224FC049EACEF54C529D3AFF088E495965021D3A424618F9D9EC3C9AAE3482C1B83C8B7BBB5B54F1D23F9F4CAC8532057D7D3AC52508D414AB30D3E90E8AEEA17929A96C355BF3C7D3DB7E0A9257D0533C7A77C421415141F2F3EA23C428ED217A895643705342AC761FABCAE50AAFF005B03FEC07B73C348530CC54FA797F83AF07F13B74AEAEA244723515FAC2BD7435049F5C905A185554EA4629A9ECE5BEAC589FA73EDE43E30523B89C52A30075568D230483A48FB7A9CB83A99D8A074259C8863588AB4712AB07699B5163EAFC58716F76116A3A117FD5FE6E9B3346ABA981F99AE3EC1D2960DA5530C69309A9A6640631A91999ED1974500212AC0724AF1F83EDE8AC9A32642412BD277BC8D8D08603A8178A2691A28FC6E404693C533B8922566E3493E867E3E80DEDFE3EDD5701895C37AFA7556F12A33FE0E1D03BBCF6FB178AB699E03A4B992268C0F1863AE40A50A9659246E3503663EC8EFE27D6B329045723FCBD19DADC070D1B860DEBC6BD04D96C745514EE1148B870D1B28492394358037E486FC11C7B482539D353D38412C350F3E8BF6ECC22CACC4472248198B98C10CC63FD135C588D1C303ECD6D6EF42A6AE351D5D501A8E838ACBD528A0A9291CFE3D1AD8DBEEB4B7A66522E183036FAD87B338C04265438F3E93490840469ED3FCBA297DC5B5A334157495B1AC94F2A3CA90C88087906A23C2C87CB4D3A8E51D2C43017E0FB14ECD7A0C8141C8E835BDD8896DA4755C641F31FB3AA35F903B122A6A8CA5750452555154CAECF155AD3C72E3EAEE7D22A299824C1BF51F2C62E38D5A85FDCF7CA9BAC85A386418F5F5EB1FB99ACA368E4654A48A3EDFF0E7F9F443AB51E199D66A520ADD4B87689E172085652E3FCDB1FA837FAFD47B972DDF52820E47513DC4441248A1A747F3F974F6C3F5A77C6DB4C851E3A4C6E6EA1719575F3D23D556E3A967568D8D04D4C92CB1F9DE501EDCB01C5BDCD1ED46F6963BB3594A06895680E453E58E3FF17D467CFBB64B79B5B4F1B3F8911F85403AABEB5F4FE7F2EB6DF8654962826404C334513C234B21585D03A1757E43686FA1008F7945182D500F01C7A805C3635D41E9C99EC8AA0DB48F4F37E0588FA5AFFEDFDD180A9257A730071C75C74920107506FF005EC0DC5CFF00C8FDD81F2D39EB4013E78EB2F8C20BDC7F81B82745F973FEB116FA7BA0635D34F3EACCA01AF5C094B161A8B5D43736B2FD011F4F76D26B93DA3AAD6868067AE8C6547A092355C5B9B5FF002C3EB73C7BB935F8875E20E6873D637577562CC02DEC09E48B102DF8FA81FEC3DF835382F9754AEA0751EDAF591433028348BA8B137E7FD88FEBFF0013EF44A935393D6C57295EB0F1621835C7039B2D940BDADC81EEC749A15EA84E28475E1FA48049F5024FE471CA9FC81FE3EFC4E41031D7B80201C75C5558B10DC2F0C483FD01B902DCD871EEE5C014033D6812FC7E0EA653F32595469B71CFD403C8B5BF3CFB625F53C7A7A36CF014F2EB84D1AFD54724FD145AD73F4BDC7D2FEFCA5811A9B1D79941068B93D47D0DFE6F57AAD71C9BE9B0247D6F7BDBDBBA871D229D56829A3F175FFFD1350006205D7D2C7569B5FF00AFE7E9C0F7D0A2299D39EB11C54D4023AC6FA79D0DA4B1B853CDC92481FEDFDED037E218EB4687E134EB806BEA0DE86B7A908B836FF58FD3DDF0541EA80B1720E29FCFACD1B70DC695E2D606D6B8BDADF8E7DB6C294AE4F57520D69C3AEC1500293C9E0F240E0F1FE20DBDDA878AE3ADE3D7AC8CAB61A07D4D9B924D8FD4DB9FAFBF06E00F5BA7CB3D73D578C7371CAFA78B01C03C589FF63EDB3F11C75A56A8201C75D0D3C02B72C412E2E48B86E34F00DFDE81A1041EB67ECEB238FD36B161A85AC2C05B8BF171F5F7B1C4F975B22BC38F58D7D37D77234D89BDFEB73C7039FC7BD9F507AAD48E23AC22F62BA7483C86E7902F62073F8FC7BBB004D07C5D6949A124501EAB63F99F8CBC7F1E2678AB29A931CBB831AF56AB2562D6CEA23A8F133FDBBC426892423F6EFA412A5AFCAFB05F3C191762B96451A066BFEA071F2E859C9EB17EF9B6AB12F4345A62BF3C8CFA1A75ABC490319EFA59CCAD74048E46A205ACA755FF00C38F788770CACC4838AF59111AE571903A18B6562DB22F0269645001734C2EC74AB6A8F54ADFB7653EA6BD87FB0F61EBE90A6A23E2A7479650F8BA298A11D59A7456DFA7A38A9521869DE6A98E36881F354CB140CA5649667568D518804960CCD7165B5FDC4DBFDC336BD4DD4AFB24388805CFD9D5A7F5FE36920A682348F4CC63456216C49D4A42E91C2BA93C01F41EE0FDE242F239626953D4DFB3EA48A2072B41D0DF8EA73573C74E91AC6D1BFE85FF0038DA4D8B28BD8D8FD09FA7B0C48C4549AE9E850828327A16315414B48CBA6C5BD2BE81C8BA8D6EED62D23017FE82F6F6573484AB54F56A1D205315E856C353492CBE44558228E2488175B6A671C80ECA097623E83FA7D6DCFB495259740A0033F6F5E2A117BB2C4F97439E12131224778D62A740657D0AAC8D20546F1846058BC9736B926FFD39F6BEDD7B0D2940338E904B4D55A92D5F5E874DBEF4F0D2D33572B3318BC48B6D00C2225F1AC9180AC093FDAD46FF00EC3D9E5B152885C64F0A7A7455397D4C2261EA7D47E7D2A649E8E6A6922D712A98C028633AF59F5A6828FE9428BA7502091F5FAFBBCB1A30230147578667420D0D7F9748E9B1B8E469A688A46C5ACBA22F248AA2CE23462EEC919FC717E48F654F6B0A8674A0E8CD2EE5ED5604E3ECEA0D45245269895D638C2FAACAF18B2827C7A980F5FF00AC6C4F1ED349086A00FE5D5A290EA248F3E1D334D88AD855B4D4543C6C48118637371C0BB73F9FA7D3FC3D96B5BCE8E74C8C53D3CFA3349219000146AEA7E3B1CA8EB1D642059115527558F93CA82194AAAB7E7FA8BFB5F141E52210BE55FF0067A6A56084946CFCBA57AE2F14545CAE90CB178A9F5806562488E3F1AC44E8B7A88FD27DAE5823030453E5FEC79F45725CC952A327E7FEAE1D42C8D0C551492A41354515AA90544914D3F9ED0B8758E37428DADCA80C4DC69B8E09BFB74C257B90953E79FF00571E99596ACBA9432D2B4F2EA647928C532F98B88D1C2EBA97B1D51A694D2492028B8BD98923DBA5FB41C95AE6BFEAFF002F542B46C53F2E987213C62A16A12A29C5E3915E279C20FAF3E647263360BE836B93FD7DA7970FAD0AF0E15E9C56142AC0F1E3D05DB8C4A1CC8D2D155D24D1B4FAD5D4B04F526869622CAACC458DC716FC7E492E925D54645309CD7FD91D1942F19028CC2418A538FEDE81EAE78165284F95E5D6A63AA55D0D1B0546B4A8435D7EB19238B0BFE7D95D17580323D0F4BD8BE9AF01F2FF003741D6730DA0C92D346A402BE30EC416427FB25B8915C6A17B7E3FC3DB9AD909D2944E9C4A35353F40B6EDC1473C2882330D7ACD34904A6E8CFA45C432EBBDA48D8304365D4A7906C3D9859DC3C64356B19343D38DDF5A0ED033D00DBDB111667013C15708798C720F2003C8922837B03C872CB6FA7E7D9EDA4A619D5E33C3A2C9E20C1E36FECCFF0083AA82F915D70AB0642A0E3EAD967824A55A981D9A247496363FC422321369509E49D3717B7E7DCC1CB3BB774219F4906BF6F50DF336D46296458D7F4981E3E5D539EEEC44B8ACAD5A4ACAB2F92C89ABF50B820E93AD5415038B9B1F790BB5DDADC408C868081D409BBD91B6B865AD4134E854F8BB9DA9C2F7A75D4B1BD2A3D6EE8C4D22355D3504E11EAEAE1A549A115D0CB4892D9C85665B73F826E24EE449D60E63DB4BAA9D4F4A30A8CFC8F51E734C2EFB45F51D8694AE0907193919EB764A349129A15A840B2AC412601BC8BAD2F1EA42A4A697D371624006DEF33413460BE5D630A814535AFCFF006FCB3FCBA98CAABA349BB11C9FC01FD01E6DEFC093861C3AB9E0283AE2E74E900301FE1F404F36BFE6EBEEC99D66B4C75B268063AC84992C3F4000F0A3EAA7E9C73FD3DB40E9CD6BD78D5C815EBA8F53AB8BAB0E6FA47F43C5B91FEC7DB8E4AD2A0F55018B1E1D61569002021B1240247D05FD47EA0FD3DB9D9A412DD340C95345AE7AC8A809F1D8D96C7EB61C9E4DBFD87D3DEBC8B0F3EAF82DA74F59D556CC030017593FE16D3F93CD80FF006F7F6C1D5F8B8D7ABAE4D07975C4C71000726F6607513F9E47D6D7E7DBA0B915AD3AA681F6F584290AE81417636FADB42DAD76E39FA7BF1342A7C875AA535034EB20164405BEA480DC7D6FFA7FDB0F7EC8935018EB6B45519EBCA3D609216D601413C5B93A47FA9FC7BF31A0A52BD6980D4093C3AC2E48901526EC4D893C5BF20FF5E47BD8F84E303AD1A960C0D7F3EB96893579758BFD3E83EB7B117FA7D7DD752D3ABE6BF175FFD2357A74DCB68B31F55873E91CF16B83FE3EFA0F52719AF58900713E5FCFAC57460781A2E00E09606FE90C3F1CFBBE96343C074D96CE3E1AF5CB4DD97817B7208B70DC581E78F7A14D3D38A2A69E7D72402CC222A2C4310C2EB6BF36FAD893F8F7BAE14B0E07AD5295D38EBCEB6274A92C6D7E00B5B9BD8F1EFDC6956C75A3A853D3AE43505241BB0E035800A49040FADEDE9F7E2A38F56048AD38F59148D2CD7B9BDC587A4923D4BFEB93F8F7A02BDA3E13D7870F9F5D2126437F4800697205FF00AE9FF793EFC5400286A7AD558B1A8EDEB928008372C17511C7E38E7EB7254FB6DAB4A0E3D38A00E3C3AE63E9736B9BF27E8DCDAC3936B1F7634ED1E9D6AB834E1D632C2CA5C291FA55B4DC917FA5BEBA8FBB90751A755AF0D5D55E7F35581A5E82A59229150C1B8A92630173E7969E34749AD10075C224953C84DD57806D7E409EE0EA1CBF7049EEF4F5FF008AE85DC94A5B7C88D0814F4E07EDF2EB5989E49EAEB12496594B85F126A20B04E7C718048545507802C001C7BC4AB8C120014A9EB21211914A9E8CCF57E1E14A8A4257C8C200AC4093C114C483A6A0C655E4859858AEABEA24F16F60EDDE57114A54D2BD0BF66854CAB55AD3AB4FE9CC5699299E2590CEFE08E473078E34172522A62DA8AA19158A0173717209BDA20DE640E242ED8EA5BD9A2EF550283D7D3AB1BD8F4C20A649B57EE8425154FA516550116EC0B3CAC9F5FCF37F710EED99480682A7A96B6A61E08CD4F0E865DBF4C69DCCEE2CC47A0852CCCE4E821EDFA57D5FEC3FC3D86663AB50071D0A14298D7CEBD0C181C6EB8F53300011A41D370E0737B03A8F27E9FF001BF658C4EAD200D3EBD5DD97B40F5E856C418A28A0548E4658895911C846690FA095003B2BFD7531FA0E07BB69550A013A578F495F53B35699E1F674B6A3C8912C48912C680C6E88D29924D440BB13C8672AA79B707F1EDC57155D0B927CCF49D929427FC1D2DA9F2D5554237ABA8F0AB3191490EEF20D6238C9172C4A2A803FB371FEBFB5497323105F03F3FCBA6FC08D2BA16BD2AA9F70524118492A219516E5B5CBE3D04924AC9600C7A89E140047E7DBCB3B0A6A2083F3E93F8658D141007CABFCBA71194A49AF2C2612579668EA6366000B31526401AC7FA7BDBE9275A8EE1F3AF4F2EB0023934FB3ACD03A55812A0D7FA4A112B27A5AE3D681CC643707E84F3ED211E26A7CFCBCBA78154C569F6F4EF126B455689D0F886B2F50248EF70A9E257E61663FA793C723DEC2170088D81F99AF5BF1429D42414AF90CFE7D39D3D4D0D3ABA15F2D448AA1A6796222240DA6F16B3A14ADAC18DEF63603EBED72B281DD97A7AF0E99919DC8A1A47D37499357966F0378228D5D96591FCD27A8F0AA51123D371C8BD8DC7BD0912BDA787E7FEC755688E90CC2A4F103A48556664A22E1E76922F55E18630CF2484DE40C14AE9B93F9BDFF00AFB4735CE8D5A9FB7ECCF4A56DC380563A37AD714E92D57B8639242B0AEB5B16D16558502FEBD5F9F25CDFFD6FA7B2F6DC14B150A49FE5D2A5B33A496C1E93792CFC1303E59825EC928F2248190B15790C6B11B055B82A3EB7F6DC978A69C413EBD596D1879547491AAAB80C71859A26863122AB44A3482D63170162363604824D81FEBED139A1440468CF0E19F2F2E9F0AF52C477F499AAF1CEC966150ACAAACC47A92CDA8F88DC9D001B5BFAFB649D5C48E1FB3A7C60540A1E9A9A9A1A852D092ED1AC9A941F4AAA937B8B0D2226E6FF00E3FEBFBD935D34C8EABA8F9E09E82EDD747ADA6132296750E8ACC5C79402166471EAFD60116E7F1ED5DB921F34D3E9D391B600AD7E7FE7E817ADA282642B3463CB3465896B0433A37AD4FF00A96751FEB036F6760614A0E92DC390580355FF00570E896F786D4C635354145585E58A48C48CABE204FD12A0B2B2F882B11723FD623D8DF9767649143640E80DCC912DC5B35546BA71EB5E0F90FB7EAB0FBAEBEA129D29AD20F21890888A4C2F4E63D6BA18CB1F21919D581E0FBC91E50BC492D1623E54EB1CF9A6C8A49E36A248F3E826EB3ADFE1FBEF6CD49A6ABAA7873B8D97C34551153D4C8CB57148AB8F6923944756C6E10106EF6E3F065EE5A9346F9B63004813A9C71E2387AFD9E7D45FBCC41B6DBCCAD4C6C3BAB4C83C69E47CCF5BC9ED2AE7CB6D6C064A586A699AB30B8FA910D7DBEFE3592962654AE223807DE0BDA51A12CF7E07D3DE702B55158313500D48A1AFCC758A250A48E842D549C29A819E00D4E3D327E75E942AB606FF0093A949B5C116B5AD6B0E3E9EECC6A01AE3AD0193D73B6A25393604FAB81F417FA71FEB7BF0207C8F5BCD29E5D72403962BA48B701AF717E09FEABFF11EF6189A0E23AD05AD58D453E7D76A801758DB4B3F2748B8524D8B1E2DC8F7A6AD07981D6C7A0EB02EB12FE18692A755AEA7E848047D00FF0061EDC3A7491C0F5400EBAF1EB280AA847D357FAA005DBEA6DF4B83EEBAEA70703ADD0283D7231F079038D4DC58FF005B5AC38B7BAB1A82734EB7C334C75D9F490F62148BA8B8FED116FF000E7DF8124508C8EB608AD41C53AE0EAAC81AC793FA85EFC5CF240FF1FAFBBA9AB0CF5470BA4923AC3A351500D9501E7FA9201BFE6E4FFBDFBBD48AD5BAAE80E1541EDA75990281691941E00700DCF1F9FA706D7FF1F6D3027E119E9CA80454F58557C65F580589D084DAC358E1883CDBDB95D54A711C7A68766AF4EB9683A2D71AB91F43A7EA05EDFE23F3EE955D55A76D7AB7878E3DD5AFCBAFFFD335A6CDAAE2F63705BF03F07FAEA27DF4241D24D3D3AC49D3503D3AEB4A8048B0624DC7D091FEF5CFBD02680FFAB1D68F6F1EBB1C2EA3F8537B1E7F23816E1BFD8FBF364D2BD7BAED0C635589239B5ED7E6E79E2FF5F7E218609EBDC6B439EBB0DCD98D81FF000D5A4800F207D471EF74C1D273D7BAE3A49B0D4195BF4F005FEBF4FA7D7DEF520E0B9EA84D0AD5BF2EB9A1B591980E49FA0E6E4F1F4B1FA7BDD003A867ABE7ACFE353F9E38616E6E45BEA4588B8F74C835F3F4EADC410063AC4540202F206B3C73C937B5C7FAFEFC6873E7D54E01233D7ACA5412348517B0361F9FA7F4B9F7AFCFAD0000C0EB8F0153F23EAB6E08FF006038FEBF8F7E35AE78F5607875599FCD3EB722FF001D63C2D05093475DB8E972198CB4AFA20A1A7C4C534F1D3465A485A5ADC854BAAC68BAB80495F607F701DC72E5E2A255DA99F41E79FB3A15F25843BEDBC8F200895C79B13C29EB9E27CBAD65A91624AA864F49D3247A411CB3875F5B6AFA81F81F4E7DE235D12C5D0FCFAC8AB705990F9E3A3A5D5B48B0FDB5554422A3CF550784D41628924B0C91C0AB4D15BEE18B92C9A49D2AB7622E018FB7B9188288C71D0F766431A2B01566EACABAA5C88A965577A679ECCB2BBA2EB90A4A259A30575DCC64AEAE1AD722C0F316EE95024EDE3D49BB5328611B0A13C3FD5EBD586EC28A9D68E92A19C3A2913788DD4AA46BE388BD9BFB6A2FF5248E49371EE2DDE7516340295EA4CDA5BB3485A31A7CFA1C30B0DD110C6F0CA4B10922BA3156218B90E2F760D717FEBC7B08CE2B9A11F2E8548E54509ED03A177014E43442CECC6411AC46CC153D6BAF402759551F9FA5BDA22BA4D454E7875676D429500538F425521A6A389198046115C2A69D1226AB8D478F5305B5FF00DA7DEC2554313D32CECC580C8F23D355464EADE667A72B196F4FD16465E405766365247F4005BDA632B216000D55C7F9FECE942229550F914E9D68D6AEA91C3CF5ACCABA59A39046240191CFA112DE22CB6B5BE9F4FA7B61A694EAAB31A7A74E8118388D40F9F4B1C5608CAAA4A0D3A75991F5FA5010482750B107EB7E7DE923924506A69F9F5E79954D169D28BFBB92C0C74B8372591D02808ACB70092A35820DEF7F6E182756ED6A839FB3E5D6D67471F0F0EB04D8CCCD2DA48754D11740CB12B1B31B5CB2FD2451FEBDC0FA7B67C3B88C1249E944620970568DF3EA7C78FC9311E905AC39525438E013A59AEC3D5F8F76D370C48526A3E7D6B4C4A1B229F674A7A4C4388524324A8EB62E51A33CFE47A5B4944BF07D57F6BA381B42D5D83749249935690BD49AAA7869E2BCB3F9DD97F4C9E88C331FDB40AA23D4C96FD5FEF1EDD91112AFAC934A53CBA691B56563007AF9F490C8C6F3C91C493229478DA78A35599C20D4344AC342C7AEE3EBCFE6DECBA712B2804803D3CE9FEAF5E9547C4B69AFA1F2E9A2BF11592F91A9A94AA15BA9BEA8D1748B9B7A8B3329248FADFDA778F493A6334FF57E7D3E8E0E9D520AD7A47556DDAB8B4B92F6943370AAC2C5ADCFF696C47FB6F69DD6653AD81A1F974A35AB0F9749EA8C456A790C724E4A80B23246ACA1580B928C0D80B817FF0001EFC166AEAC9FCABD366488E283F6F4C1352554726A150EB244D1FEDB2AAA889C5F58916C0B3B0E5481FE1EEE88E5876D0FD9D36D2A05614C7511EB100904BE9075198A8651662C2F7D5A8862393FEDFDAA58DA814815AF4C173A95871F9F48CCF8130119FDC42BA41BD9A32BF4161F507EBC1B7B79203ACE303AF098A862A7BBA057334CB4D2BAB480A02ECA00F4BEA00EAB372081F5FE9FD3D9D5BA9C7CFA69E42E9AE991D14CEE9A7BD0D50768E254A793C7238E5B53296592C7D4850F041B8FAFE3D8AF66ED916873AABD0637BA359BB30AE29D5177CA7C4B4F8BAAA96A5F0FDA4E60151202D13A53EA923823629AA9DCA1FA1015C8BF04FB9DB93E7097488ADDA47502F33C25ED2E29E46BD104DBED4D0E66865A987CF494F5904B3C7ADD4BC0254731B346F1C9A0AF06CE8D6FA106C44D7B5BAADD5ABCAD44122E4608A11E7EBF3EA21BC01A09900058A91FCBADE33A665A0A8EA8EBCA8C7697C7CBB376FF00D93254CB5F19A6FE194E2222B2692696A494B5DD9989FC93F5F79E166DE259DB48AD506353C6B8A0F3F3FF0067AC49BA14BABA05406F15B00690324617801F674282F075311C90A07D3922C2F617163EDEAD0D3A67AECFD4816FCA9522F7FADEC38BDFDEFE6463AD8A9C7975DBE92A34ADADC496BDC8E34DEFF4B7BDA935343D7980E07875C92CA2463F42AAB7FA1E08FC7239FEA7DD49381C73D56A067C8751F57A8EB2A0D89FA03A6D6B1B0E2FFD7DBC171C7AAEA029ABCFACA016453C5B8249BD80B5AF6FF13EDBA05635E1D5B88AF5CD7EAD7370071FE36FA5C1E3E83FC3DD7D69D5ABE5E5D71B1375D36E2E01B5829FA11FE27DEEA0D0926BD68000529D6308788C5EC41279000E7E9F40403EEDC4D471EAA413503AE996F18B583293E91C585AE6C6F637F7B53DD9EB440D34AF5CE08830E5B50B5D41E2E40FA1FEB627DF9DA870287AA2283C6BD74420606E2D61A87E35036B7FB13EE82A4F1EAC081C5687AEB571AB5FE2C78FCDAE38B7FAFCFBB6935F871D7B5E7F3A75FFD435970082C4B73C291F4B11704FF8DFE9EFA0F4A6299EB12811E7D73731B86005FD4A47D0DC017BADFE841F7B1518AF54D2280531D7137B11603936218D9BF27FDBFBB000B7A75BEBB0141B8039F4B136B0241257FD7FCDFDFA94205707AD50549A67AF5C2EA5173C691C290CB6E4F27923DD78138C1EAC0E08EBAE7408C5AEABF5FA5C7F4FF5F9F76A77163D50D00C71EA46B1E923EBC588173C0E3E838B13FEC3DD2806AAF1EAD5A815E3D76016D3EAFE84A8E03372BF53FE3F8F7B0400715EB6412450F975C80B2C6594DD85F4DFEBC8BFBAD46A3438EBDDDDA74FDBD715D2C594801896E3FC01B6A3622DCFD7DECD34D475BC6AA8EB830B31003021458F1606E7F493CF23DF978F1C75ED2013D5417F374C8E457AE7ACF0D4ED489415DB833194AB59237358F3505253C11789EFA5604352495D3C9372C058345FEEACCF1EC0635382C3D7FE2B3FB7E5D0F3DBB855B7A92461958B031E78AFAFECA0EB5EFA7A3126429E2FED3CA8AAC48172CE349B1360AE2DC9FA7BC5A95880ED5EA7B8400CB56E8FEF5263E2582948A77A8103B62E866959E58696AEA69D96B678639ACCD34C916A056C552C17822D1AEFD26A7D2A687CFA93761882C31B691A88FCE9D1FAEB1C247364A3A944FBCB8D7098017666790F861A7322F85A69593C92CAC2CA8410A2EA3DC69BA5C8489C16ED3D487B3DBB3C9A82E7AB1AD958B929E8E9834464B2EBAA9003E3762AB748CC86EEB1A9039FA93FD3DC57B9CFA9D803E7D49D610AE9465C0FF567ECE863A087478DDB544CD229B3124AC6A4BD805E178FAF3EC37264D49AE7A375254B2E08E97D8EC922AA3457D4CBA632DA8312C47AB83AAC45FE96B7B64C4490D4CF56F129F17FA874A815C1B407707405174B2471A339B58137625CDB937F6E884124D2A3ECE9399C2364F1E9438CA75995250AE0192E48401DCAFD5AE033104AFD78B5BDD3E8D8B5427E74EBDF560900B8FDBD0B182DB752D1404C6CB248C9205046AD0ED6018D800CD6BFD6FCFB763DAA4740429049FE5D6BEB90BD2A294E86CC36D090C411A26D6FFAB41B9553724B8BE93C2802DECC536960A42AF9F974C3DF2B1A07057A50CBB3E1AC56A4969DE45208D5FBB18040F4B1789D0828791CDAE39E38F6D3D884620A93D5E2BDD203AB529D721B61A08C45E13C268565BEB1E3E149051C5EC7E87DA77B5A76D29F674A56E4BB7881B8FECEB0CF879C452C668DC09D551D3547AA43762240518B1B037007D3FA7BA342541FD33FCBA73C5259089063CBFCFD35BE023A1A3682851D243EA569A491F4BB124DC31D48B700E9BD87BF18D4251568DD5BC669260D291A47A63AC276FBD4C63CA06BFF0076CDA9B49282DAAD62545CDAD71CFB4FE09719E3FCBADB4AB1B513E0E9C71BB2DE423F6A3721C462C8049736B861A458FE406B9039BFB531D81A558024F5592ED5700D3A53B6CAA7A3A7B490BB173748E466762CD6BDCA282AAC3E9FD3FAFB569B622A866520F45B2EE5DD50457E5D36D66C2A59621FB2B12AABA83A82966918B1170387E78FF5BDA8FDC88F4257FD47A46FBCB21357CF41366F68D1E39D486604B1461AAC594690A5D0691209071C106E391EEABB1AA8A693D7A4DF28B5D43857A05F735262A956A74CAAC442CD2C71F1280012085E75143622D6FCFBD1D85D72B423ECE931E6046E2C750E8BD6E3CBD0E3248EA23AF5AAA09C10F504A9928DB52C6CB5680F915617E0FA6F6BFB65B6395891827A5306F91BF0143E9C7A6796B9BEDD5FCB0BD2D400F4D346E2442081C2B2F1A4FF0067E847D0FB45F47246D468CF47715D452D194E29D227394E278E43A5643722E790482DA956FA743E9279F6FC6A1084A70EAC8C6A0072013D17AECDD95266B6F57111AD43AA9291B803546A08588C8A1991B4DB4B7E1AC79B5BD9BD94FE14CAC4D14F49AFE35962F09493EB5EA8F3E5AEDC971DB7727016332C13CD3C73AE8F552B2DBC154A0B59D653ABEBE965603D36B4DBCA3396BBB52452A38F507734DB22ADEAC67047ECFB3AABADB94153579AA1A681229A4A8AC8E08A2731A19999957C28D21540F286D2B7E093C7B9F76C8CCD35BC416AC580FF0007504DE10B14E75534824F5BBB744E3E7C474D759E32A055452506C9C0527DBD7288AA69845410A240F19446531280003723FAFBCEEDB10C7B6D8A15A69894670780E23EDEB12B706D5B85F3578CCDC0D41CF91E85D543A410BC29B137B6A3717247F404FB5A5B8D789E925282BE5D71FEADA9ACC4E963FD903F0B6FF01FEF3EFC470A0C75B18A93C3AEC464104DCAB5AFC9BD8DF8FEBCF1F9F7E26950075B205727AED94225BF3F424F248BF00FD4587FBC7BD03435EAA48183D460A8CDEABDBE97B5873CF1FEB5BDBA0B00083D568A4914EB3FEA240D4B1A6901BEBADB807EBF8E3DE8D2991DDD7BB89A705EB35AC013F5D27922C4D8D97FD61CFB6FD787571C327AC2A199D45882C2E7FC45FF00A11C587D3DEE9E44F0EB5F975D30656B5AFA41205FF26E6D73F55F7B2789C53AF75874B1604036B0D2B6247A89E48B01C7B706921AAD9E9AA3D4759D0320FA31520DEC38B0B036B036173FEDBDB6CCA49C75754351C683AE52103D565F569E058F038B5BFC3FE23DE956A69D6DB870C7A758AC755EC34E9D3AF49B5AFF00AAFF00E1EEF9D34F3EA9535D5A71D7FFD535A233EA249E47A6C34A707FB57FCFBE83E49F9F58934EB95EE02A8B692549B0FA0FCDF806DEED4EE51D5435460758F4B3588E01360BA6FAB9B7D2E79F7BA8EFAF1EBC41243571D6411F373C11A4FD2DA9813F8BFE40F75AF03D6FAC845EF6601AC47F82827FC47E2FEF7E6BC48EBDC6B9EB8B44A6C41B9362DFD2EA2D6E0588BFE3DF95B4D41E1D79954D003D72555450B70DABE9C5D8B5AE79B5AC09F7E3DD5206075EEB9F20DAC458DBFC01FA93C5FEA3DF80C035A57AD8CE3CFAC8CD71A6E7FA837B907EB617FA7B6C8A1C756E1839EB0A9FA5C82DCDCFD1B5126DF51C5EDEEF5C541C7541E40FEDEBB1CFD598588079BF038E07F5F7A14EB62A4D075531FCD7E82B2A7ADF62C863A7871D1EE19E39EA2431F9C9313158D9D2F20A4D655CAF20B28B0B9F717FBA7A9B613E1A57BB269C07FB3F97E7D0FBDBE206F0E8EF43A385789F234F975AF2189D2BE33F4691FC97D4A1806720B381FA49B7D3F1F8F78B92108AF5071D4EF02B1913EDEAC37A63CB91870AB138D3443C931885E4C7D3B2C8B50CA6E35D6D634C64790ADF948D07A4DA2EE61A44D2B15C9EA55E5C3E34712A1C0EADD7A13AC27868686B2B62F0058DE410C803C8000BA919ACCAAA82251C00CCEBF5B0B183B7FDCC0FD2439EA68D9EC92345241AFDBC3A3BD8FC7C34B4C8A52C9122DC28D20AFD57EA7FADEE7D80E77D66A0D7A16C6A5400A7ACA268E224B9B8762113512093EA08A47F679BFF008DBDA7116AA80B9E9D770A0B57BBA9AB9083158EA9CBE56A61A3A2A7552B34FAB4FD095861890F96699CAD955796FC7B5F6B6125CCA91AC658F0F3A7486F2FE3B78C966A311F99FB07482A7EE4A15AF7A97A89F20197C74786A37869AAA558A54850D48D4E69943B92CA496B8B5C107D8C60D9238D009140A7123FD9E82571B85C3B11129A9CE787F2E862C777C613054CB599AA2A8C7CB52BA21A765F1BA46033B2BB4CDE58E1016E65D2A8C490242782A93678A69291281D13CBB95C5B801E4D55E26B81D0F3B4FE52750C10D3CD9CDD982A0678D66FB79AA617A88E1D690EA9228659255BEA1763C81ED6B72FCAD42B06298AE3F9F48D398F4B682E59EBE59E8C66D7F917D47928BC387DD387ABA86B111C55B1487C2C78934192E6E5B83F8F6924DAA551DA9DC388F9FECCFE5D2F8398124203574FFABEDE85CC5EFDDB35D2208EBE96452158DA68F5D8B5D6E030D09FE2473ECA67B0923ABC90907EC3D1CC5BB4132512505BD2B5FF00074B94ACC4D6B6A8596CE49336AFDB626C7407B28E0FB2B9AD9436169D1BC172FA454E3AC8713472A33F06D6E5C0D69C16B2A853FD38B7E3DA39AD4F9E57A5E974C4A8D393D61A8C2A2246C0C4636B69BAAA154BDCB16BEA275702E3EBED93070A283D3D1CF5660C4D7A9347824D47546A62B12CA06AE00200D2548373FA88BFD7DD56DC0625876F5E92E31C687A8D5D3D0E3BFCA74421D6F235CA2872A854DDC15691C281F5FE9FE1ECC2283591A463A2FB8BB650549C740CEF9EF4DBFB3E872392AF9D1A1C7424551489AA120F1AF97423401D4CC21B318F96B7FAFECEADED965203B003E669D062EEF5D6A22D4589F21E7D570762FF00333A2A0AC931FB576C6573B51E814F1D2515589AA6394BDA68E96485E6890280F7754BAB7173C7B3F86C2CD51DE49D020C54B607F83A2871BCCD88E0624FA0FF0009151FCFA00B3BFCC6B2393A391723B1B7462265F1F9864A83C94E13CBA65280252D729608EFA74974517BD8DBDDCEDFB7C87F4F7088A9FB47F338E9BF037D46FD6B17AFC8838FB29D02F57F2B06FDC946B874ACA7779668CBFDBD7AAC27C9A5E4929256FB84A075417209B5C5D45CFBDCDB7DB5BA788274200FE2FF0051E9EB68AFE66647B3909FF4A47F3E1D0954D0EEADD5432412D35349036A8A1ACC852CD4D232AC614892B912391239186A572195D86A00DCFB0FCB340AC4A4675039A57A3FB7B629A0C935030F97F83A0F9F31BE7AFA5A8A5CAD3459DDBA6A1E5071B54B5791C7DD8869253136996995B5690DE37D201E49F69DD6C2F18161E1CC7CC9C1FC89C1E8E6DD2EA005E026451E5A7CBE4682BF6138E855DA3BBF0FBAE94CD415914E23B972165E5D58A34722CEA8D1C88382AC2F7FEA39F651B86D72DB832E81A7D78FF83A36B5BE496A2A6A0E452943FF0017D286AB1EB570D746B1F916685E302E34901032BA5BE9EA1C9F650DA96951D2B92AF42780EA8C7E7DED718AA4C865E9C78DE579E3ABA67791154B47A4BC1A50453ACECDA9E36F49B0239D5EE61E43B8D72DB29355D5F9F51673C43A166D0A0395E3C6B8AF54A9B7296AABF71E369A9560FBCAAADA3A3A7F2D4AE3A3FB89254829DCD64AF1C744E2522F2B3044FAB1001F7931B4C724D736D1DBFF006CCE00CD3351C09FB7AC6CBF916186E1E5E0012715C0E3F6F5BB6747626BF05D43D7383CA2C832586DA987C6D6F92AE2C83BCF474CA923C95D4F2CD054B31FEDA3142391C5BDE77ED8651B7D98B9D66711A83AB8D683FD43AC49BF684DF5EBC2E86132120AD69439F3CF42B0D403DCA81A4102E41E5811F5BDFF00D6F6B884A039E91A924D2A3AEF4331F529D2AC580B9B0FA5F8FF001F75A81C0E7AF50D73C3AC80EA536D2003C15009E0F173FEC7E9EFC450915EBC039A93C2BD71D2ACCEACC08297B8FF006FF4FF001FA7FAFEFDC0569E7D6EA86A0B75874F2CEBA78FD2B6FD4792BC8E0587F5F760E6A01E1FE0EAA064B63E5D735361EBE1980B0B706C0717FE9FEDBDE88F88AF0EBC09C0606BD6741E4E1881CFE6C3FC749B7D01B7BA9C1029D38323AE6E405673A41B7E3803900F27E97FF7AF7B183904F5E6CD694EA300A0DEF7B8E411A85ED7B58FE79F77C82453FD5FEAF3EA80E2A3AE0751BA95D2EC78B31040047D0FFB1FC7BB01E7AAA3AA1F314A31EA42A4818589365B32F238205AE7FC7FDE7DB6748C1383D5D55A82A7AE121039F4DD46AE7F4EAE058FF8FBD8E3D789E3418A751EE6C7D0DA4A8F45C7D05C7D6DFA751F77D2386AFF003D7A6B5E3569F2EBFFD63665803727D3C836B9B7040B002C2FF9F7D08D3E5EBD62387A67AE1A98A8F4B292C405E2C05FEA7FADEDEEC69AC0246075AD4C1681715EB3A269BB95240FF9256FF8001B8373EF4588A50F5BC83F0E3AE170E45B9016E3F16E4587F516B7F4F7ACA9C8EEEBC0D723875DE95B11A4028A59B9B5DAC49005C820DBFAFBF03DC09E1D7A9C3AE409D23E80800A8E355BF36FA7D2FEF7A5454F1EB75EB915B117074B01723EB736FA5C7D2FF5FF005FDE80C1EBD9C1031D712ADC29BDEC4026FF00D09E7EBC0F7AC50538F56208A1EBDA94F042FD00047D6DCEA048B8D5EF6149E1D57AEC200A38504FFA9B7D4D8863CFF8FBF120904F5B34C0AF5D15B37278BF040FCFE6E7FAF3EF55F4EB440AF4417F98DECFA7DC7F1DB2B98931D156D7ED4C9D0E4A82770EF251795CC3532241192D501E02C0AF0A9FAC9016C417CFB68973CBB787456441A80AD054799F5F90E855C9B74F6FBF5B51A8B2769C54E7D3D3EDEB58158676AF69A45891DA7F4A971A52CDCEBFA328054D87D47D7DE205C03AA4D6339EB23ADF88653D5867C64852B323454741AE6AB96BA1352EA3FC9038114F1408BA98A889E4F533007F6C5AD7F7167371648D89C0A1EA53E508D2578E3519278D69F9F5B0CF5BE27F83EDFA359C15A86A685DD8052640C80F2000117D565500055FF63EF1AB7697C5B9974F0AF5909668B1C71A000D3A57CB571D40A9B301A4B24808D22C6FA8116F51407EBFE3ECB0C2490DFE0E8C8910A86E3E75E839CAEE596091C51D2CD2CB4E008D2286496222DA101D239F40BFA6E00F6716B6098927600748EE27924C462AC73F9F59369758EFFED999327BAA49E931A933350E3A28E7A5852883F22D514A9279665B2EA5701FF038B7B3917B0DA911D828A7E22739FD9C3A2D96C916AF76FAE439A7F0FCB8E7E7D0E29F1673792C72D1E06BFF00BB72828F053F86B524A68D54C40BD43D0AC734AC8E105D1ECA2DABF2194DC6E83860AAD9F33E5FB33D2696DADE6044ACC169F869FECD3F67486C9FF2D1DDBB8295DB25DAFB8DAA8461E182A29E8EA29967F2BCA5D92231AB6947201604F23F3ECC8F32EEF0802082D801F2353F2AF45BFB936094B78D6F706B5E1270AF9805695FF557A42E3BF96D653033C872DB83FBCB4BCBCD11A5A9A20CE89E33221FBA9FCD30BB11AC2803823E87DD2E39C2FA74D12C4B1FCD58F1FCEBD28B5E5DDA6DDCC96824D4786BD2683F2A71F9F4A6A6F83387A4579F11555988A94E217A79EB2460B65F1B5A6779A9678481778D85C7B2D6E66BCAEBF17503E473FECF4BC6D968481258A83E640A7F9483FB3A18BABBA537175D4EBE2C9D6D5C285E5915AB2A9BCB5C2CD2842D2FA56A400CA1C3A0736D23EBEF4FBE4D75FDA39A8FF553A665DAA051A608557EC14E8F36C8DD7591C656BBC91342C9A56466918F91016D414222956FC1FA1FEBED2493A38F8A9E7D5AD6DA68DB4D2BD0F381DC0B5122B447F724B70F29B0B5EEE1189553CF3ED0B4A09D22A47DBD1EE97F0806A63E5D2E0D4208111D85945DC1B0FD64B9E492C39B1E01B1F7A523801DC7A6D14B3E299EA656572C5079E273631DD4790162D600E9B10400473FEF5EDC9559285B875631924A3AE7A2F1D91B8A59E90D3533C9F75212A4052D7F1DDD8395D2841B1BFF0081F765BB548EB5FD4FE7D2492CD9C9057B3A2AB5FB25F3F8FF00B4CC4929A2792490D283258EB454757B496918852013CA8FA7B4726EF2202A8D415FD9FE7EAE9B3A78AAF405853A64C6740ECDA58F46376FD2D34F3E91F702957EE1E35F4C6BE5652F12C6B7B5B9B1E7D96B6E32B3062E59BE75E8CDAD6445F0D8811FA0C01F97FC57421E27E376CEA8655A8C35319660CB3545553C45E480A85748785F18361F8D46DCFB7C5D4EE9F19049F3E1FEA1D256B60A6B5AA0F2F3E851C5FC76EACC6539A5A7DA98590C9A833C98FA47924FD4199A5FB6772187045FE9ED4C2213533558FA926BC7FCFD372CD7869E1C8CA9E401A0E9AABFA6BAAA9B271E39307865CD8C7495B4B447130C91FD924C94CF2C52D4D3C9029824900D370C41E05870F7870B6A54934923E1D46A7E74AE69F3E9B57BAD25D9098C1CB50100FA57D4FF00C5F416EF0EB7C74B13502C108511323C690D3434E217E3C72451AD316041FA7E41BFD7DA30A2270061B8F90FB3A5BA4B80C5CE9FCF8FF31D10FDD3D2F41B27313E5F02FF0064C25FB99A3A496A529AA636935309E25A9991DE23FE6EE2E2FF0091C7B1159DF4D7108B691EABE40FFB3D332C70B347298C78A3CC52A7EDA015E9478E94C94AF22112F0549B05E1978D409BF37FC7B23BCB7F0A665231F2E952BEA029E9E7D545FF0032DC2787669AFF00B72F4EE16196550DA90CC4E99D7FB0591C106FEA2A7DC81EDCBD2FC422A185083FEAF5E809CF2A7E884C00A806BF653CBAA18EB4C3C3B837DE070D50B33A64B378EC632C41C55BCB57571D34669F43C6D154976050974048B1617BFBCBBE56B7173BAEDD6EEC143CA33F670A7DA7AC55DEE5686D2F2655A95527F2F9FCA9D6EC7B070476FECDDB5836A89EA8E2F0D8EA36ABA8F44F308A921895A54FB7A5689888F94640C849524DAE73A2D91A3B6891DC16D2BF2E03FD5F3F5EB136E9C493CCEA9A417269E95271FF001448E9648AA7C8AC012385B905AE08049B922C7E96F6EE7143D27C66A33D7409405989BE927D27E9C00413F4200F7B02A40F5EB5D7384031145BD89E5831FD3CF0C08E757E3DEA41DC3D7AF4641040EB0C601766D20A80E45D79000B7D49B13C7BB9C003AAD012703AE94EA251402BC9663F800006DFD41F76294009C03D7B502DA40EBA555245815F490DFDA3C7FBC8FAFBA9C501CF5AF8412C286BD48488E93E9BB0B0623FD6E1ADF4BDFDD59BD7874EA81A47A75882B052AD6D3A4FA8FD4117FAF1622DFEF3EF75A2F1CD7AA0D618D69A7AC5EB0351002A7FA9FED58117FCF1EDCC39A039EA859948EDED1D668C2056621891F427EA0D8703816049E2FEEAC4E16BD5D68416D39EB32DBC6CCC08BDD0212471C01737FA8BF1EE874EAA75BD54C806BE9D47984642A15208B9622C09B0009FF1BFBBC75A9CF1EA8F4C5063A8FE54B78EDE9B1F4FE7EA1BEBFE27F1EEDA1F8EACF55D634D34F5FFD73664121CE9245C5C9BD9AE79038B037F7D09A9C54F0EB110014D400A9E3D724461FA858060001F516E7820DFEBF4F7A241E1C7ADD4A9C9EDAF5D8901FD2A49B1B924853C8B03FE371EF7A29F11FF003F5ED75C81D72375E0736173A6DC1238FF00102F6F7E3426A703E7D6AA34E922A7E5D76BA8AD9CA8BF0CC07D07E386E4F07FDE3DEDA8BC057D3AB29C64F5C542EABC66F606CC08B0BD811F4B723FDEFDF8573AF811D688C761CFAF5CC1D41C002C9C6906E4ADB9E08FADFDE883404F56047AE7AE451554DFE960CA6F7FA7E3FA022DF43EEA4E7870EAC00A67AC463BB6A04024FD4FD7E9F5B5BF3CFBB062B83C3AD103CBAEE204000B06363F4E6D73E9E4FE0DFDE98A9E03AAAAE454F59495B316D42C0E9FC9BFD0FE0D87FB0F75A13C3AB7119E83AED1C00DCBD77BCB0645019327B7F234F054E4A9A9ABA8A86A1A9641157CD4B592474728A36FDC5121281D4120DADED3DFC097369344C80A95E06A41FB69D28B295EDEE21975B0218641A1A79E93E4698EB4FCDEF86381DE397C5C88639A832359463596275D3D4CB13C8DAA38C33C812E0D85C9B802F6185DCC96DF49BADEC245087381C3F2EB28B689966B3B6981A06507F979FCFF00CBD1F5F84CF46774E2E56789246AC8BF643A92AB118E192A250D602495A7052FFA98FF0041EE13E788A4FA6974FC343FEAFB3A97B91E7459630C2AFAA9D6C4D8889451428069F1D2A03EA1F5504846FC313F93F4E3DE345CAB78AD8C57AC84B770A06AA54F974D3550BB199E325125075102EC48000207D0AADCFD3EA7DDE28E942CB5E95CB2D55540E95BB3F62A57D4ACD3242C8EC8C63FB7883CFE408C4995C33C65585FDBB7129D25500CF5A465D40826B4FCBA3B5B4B6E536230CD163E8694D6A207A715AE4C724A506815128491D05D79600E9B703DA589DE346216AFF3FF003F4DBA09645D6D44AF90CFECE85FC25653D3AA1C878455B44B1CA20690D2C732056714EEC53D2C491AF4866E38F6E0B9C067A063E55C0F975536608222A94AE2BC4FDBD2F6932893C7222C5AA36D03D402950782E095F52DC0FADBFC7DB6F70ACA40AD7AD8B3D2416A57AE2903D64D2462922914B3ADB4296283E92F02D6627E9716B7B2D69242EC34E01FF51E961862550C5BA6DA8DA14B2B4A52078648D8A3810B47A891AAE085018588E79F69C864258D411D3C0A9515208E83EAFC0C104875A316D456FCD88D440FE8473F9F6C990AD0EA3C7CBA742838A0E1D33261DE3791E9D74AB10743C97D441243DBEAA54FD2E7DBB1CB2307C1A74DBA2020F9FA8E97BB644AAC0542076674BCC8EECD1A0E4A94E496E2E4FD7DAA8B5365F8FAD7A734A691A4E7D0F9F42AD6C55E29E3FE1CC166720A3C9677627FD52DED6FADC37B5C246B73AA3505BE7E7D56D7C20EDE29ECF97F9FA6CAD9F230D3D454652402A188F23469E28A3BF3A9150E82A07E147F4BFB6E7B892604BA853E8303A726682AA9083A3E66A4F40D66AB28E59E529EA949B891AE029600D86AB8B37F4FCFB27924D24B29CF5E48F59D2C28A7A6BA08BEE66368EE755C97FA335C5D4104FA45FDA10C656E049E94B2C718E841C7E3E34612B80D282A3EB745163EA1A578E7FDBFFAFED4E924839AFA749998B023CBA504B4B1110492B5A48D5CC56D49CDAC3528B9B37F43F5F7670C4AD314E9B040D4169D3AD2D165C40F51A835346A822997480CC46A2AA9C1D6BA79BDFE9ECCEDC4CC0554114E8BEE24816A0351FA40E67711A598ABF89A520B0D6DA58CE091A158DC0D4A6D7BDBDB734E913E546BA74E411F880D18E9E9079EAD8B2104C59623E45495CE9D4C248C0FD57FD4A961C01CFB66E265900C71F3F4E94C31E8ED271E9D179DF58A8A586594AA2F961259122474465503F52A2B82ADCF36F6B6C26D2FADB874DDC8ED007AF458A9A9D6964ACA798BA98A491159414D48AA1D5B4B00495D5FD7D9ADE422401D7891D321CA8535C70A7557BFCCB5624EA64A82DE68D6A5E29534900C6144AACE4303E3722C74F2A6C7E97F62DE42568F74546C54AFF873FEC7409E7807E85D8035FF0063AA5AF861B421DEBF24BACB1F55413D5D236ECC5CD5A61599FC11C1379E3A87485D0E88E68D016B8D37D4391639B1EDAD94779CCBB6473296843863C714CF902727AC42E74BB92D766DC2542049A08C9A56B8233FCBADC722209D4A4942A806AE7D36F4F279B851F9F79A469A450758B4726A7ACE225B86502EE093AD8706F7E071C5BDFAA6846AC755D2B5AD33D4794AB3117FAB30D407A7FD883F4F764057B853AAB693C6BFEAF9759222C8CC14E98C8B0039B916FD44F205BE9EEAD9E3F175B028D53C3863FCBD735054956E07AB48FA5F8BDC83F400FBF1A695A71EB6011C4F9F5856E8DA6C6EF762E00B0B5EC3922FC9BFBB96D4BC303CBAA5740A1A927CFAE51598B7FAB3ABD5FEA85EDF4005AC07BB118A0029D696869FC43D7ACE0B88CB06080121873F5BF1C1E48B7B6481F3A74F54D38F5C82B2A6B3C06520FD4DD8FD383C0FF5BE9EEB8AD3CFAF69E0D4EA39FAD873F5E6FE90BFE3F4E09FF0F6E648A9F2EB5F880AF1EBD73EB06C3D5606D702FCA93F8FA8F7BA0A0A7DBD50BD2B5FCBACD70E817F36FC1E2FC5D87D7F3CF3EEB8278D3ADB296033DDD43989D215801EA02FF822E6C09E2F706FFEC7DB9185A935C7547CD148CF5D684D064B27E91E9FC5EC7D36BDFF00D87BB79D334EBDDBA6B4CF5FFFD036C18D8051C0E05BF047D39BF2491F53EFA114273D62093A8E9000A759813A41200B0FC7D4DC737BF3F53C7BAF9D01C756A95A6469F975C24883321375D22E79FAF1F91C8FAFFBDFBB2B52BD6AB85047EDEB92952B6E38E43000DD4716FC7E7FAFBD10471E9CAE4529A69D71284B7373720DC91C85FE9FEBDFDEC1229D78804E704FF93ACAA8C016000B339BFE07D2E47E05FDE8927CEBD7949E21453AE20313702F66E40001BF3F537E07FC57DDB230DC29D57577D00C79F5C8290AEA4EA6524D869FA702DFEC07BD1A629C0F57A9209E27E5D7154B21D37B12792C78B9FE9FEA411EF44D71E5D780C50D7AEAC56C1AF73FED8DAD624FE07BF0073D789028B4EB92FA95FD206920DCDC122F6E7E9F5F7BA6169C4F5AA9C823B7D7A8F3C11544524151024D04C2D34522EB8A48DB82A5581041B03FEBFBA30D40A91D5C332952A4835E3D6ADFF3DB60C7B0BE456F2A4A1A37831D90A883314CCF12804D7D3C73D4D4ACA235BC52486E2E4952C41F55CFBC5DF7476F5B6DE1A48A3A071527E67CBECF4EA7FE44BB7BBDA2312480BAB114AFA7AF517E25679A87B136EC24287ABC8C7550425111231027869CB370D28D4D70B63A9AC4FD2FEF1DB9B2DC4B617353C14F0EA6FE55B9105F5BD7D467FD5C4FA75B346018FF000F4172C5A288727EBAA316B926FF004E7DE324D152460571D64A4328D0A5723E7D2AB1B8932E87F1F034DEEA48D3A2EA2D7E58917FF01ED15429C363A50F2FA74386D4C647022C9247ACE94B96005FFD637D36B5BDA19E45615D5527F2A74A2DEBDB9F9F42E41B81292036D0B20891436A2B6B1D375FF10A78FF001F68DEEB4D470A0F5E96E90597A978FCEB555640CB22809EA7767D777FA23116D0E149E7DA413EB9106A34F3EACECA91B9AD0F43B62F7F6D1C562D4E5EBF1D452471AC5E5C864296916F6D322B3CF2C7121623D3FEBFB11DB98664558E22F27A01535FCBA0C5D5E98252F2DC2247F320749A1DF1D418DC94C0F606C58AA16393CF45FDE6C23D647153AF9A4A89D0640D4470D24520666640AAA751207B65ECAED5FC45DBE4D35A574B7F869D5977BDBDC2C6FB945A8669AD7A56E3BBB364EE3489307B87039B59CBAC6F87CAD06443043A84BAA8A7997D5FE26D73FE3ED04CB22315B881D0934A10470FB47CBA5B04F6F3AB3DBDC2B2D3C88A758B2AC9550493D3A7A9DCBB92F737B7A74724E923FA7D3DA092DD89D68B5F3E8D6099490ACC294E91F1472B3CAEC48014B131D9CA9FD2E194B2120A7F8707DEE285A95C81E7D392384C0FE7D66C7EE2868643281CB283FABD32696011F9274B301EAF6AA29A28D757957ADE976146E3FE4E96A3B052689238BC219752C9A755EEBA7D05EFEA6B9E7DEE7DCA334D005474EDB593D4EA274F11FE7E99F75760472E2A3A52ABAD9E38668E102278E2918079BF70D9F4D81363ABF1ED3CFB82B42289DFF2E3F9F4E4763A672E5BB78E787412D3D4ACCE8CCC190962496D448BB7373C9B5BD96BA96D235713D38C4212C0E0FF0087A5EC109A08229BCAA2D1EAB5D5A354645243DD1486048FF007DAA681A244351A87D9D278E4590B83C3A0B37AFC92EBEEBD32E2EBEA7219BCE43493569C1EDAC7D4E6F2821A68E5A89DA4A5A0599E2D314458193429FEBEDEB1B6B9BB7D1146598F0F25FCCF9FD801E91DE4E2DD0C8C6883D707F9E3F691D5726F0FE74FD3FB4F64B76126C1DE191C441BAE3DA506DEAFCCED4C26FF00C94B2E327CAC79FA5D975997A9CA7F7452380D3BE41B420AA221B6A3C485B67B63BF6E882682783C004866D40D0F929048735F260BA7D4D71D479BCFB8365B35C7D0DDDACA2EDD0BA8A1D256B427C40AC81BFA05831AD40A7436617F9B8ECFDC5BFB6FF4CEDCEA8CDEF6DCFBAF0F8ACB626BFACF78ECEDEDB784996C1CB9EFE0E7274B5F8F8A3DC588A488A5652AA3B53CC0C6493CFB517FC8FBA6D48D6F732462602BA41D474F00DD84FEC391E7D17EDDCE30EEF126E36D1B0B1D7A0B3AB47461C451D41201C6A183E5D639FE6F74BD5E79F6BEE2CBE73AF374CD532BC789EC4C456E0CF99CAB3C50655D6A70CC8ACC00FF0028502F6FAF1EE3EBDE5BDE91259A1459953274B54AFCB4B50D7ECEA46B0DE6DDDA10F1B22362A0554FE63FCA3A17B17D814F910D252D65354D335A48268678AA29EA622A3D48F148E8548E3EBF5F61E49A40CD1CB19471C411E7E9D084C61954A1247F83A76C9BA6529D8A73AEDAE3172007537219792755FF00DB7B31B79F40A0C039E92C91D30DD005BCB0E6965D62CCA6266D454EB3C0209E7F49FA1B8E3D8A76E944F1AAB355BA28B85D0E280D07975533FCC8A8A47E90A99C02FE3C9457D2C11D639E3651F5B2C8AAF60CBF906FEC7DC93185DEE20CBC7A06F3BB03B639A7D95FB3FCDD106FE55BD6591CB77953EF27A1927C3E02832A5EB62255A9EBDA358A91240F14C9323C5726EB182A48D6182839F9ECCED123EE47729109810501F99E15EB083DCCBF8D36B96C94FEB3918CD48AF97F9FF975B32C68C7D240B315B2FE7FA7FB6B71EF2749C93D4004104D0D7AE95514FAB86E411C9B736045BE96F7E2491F21D6B4804313D79A3437522DA830E7963CFA6C4DB8B0FEBEFC01143D5980C8F2EB89045FF23EBC29040B71F4FAFBB1A1C69CFDBD54547138EB227A8FAAE74DC7D2D7E3927FD81F7A229E62BD554B35588A01D460C400C4037F4FE6C073A4DFEBFEC3F3EDD0A0F69E1D345998127C8F59A27248242DC7F4E4AF208278E47E2C7DD5C63071D3A1D704D3A90591836900B69BDC13F45376201274FF0087B6B3402B8EAF507F3EB91D4551585880C16E7EA0FAAD6279373F53EF54393E5D6C1231D610A002CCB60090141B020F06FCFD2FEEF5A022BC7AA9C0D4475878018EAD5EAE6C2E7802C57F1C03EEE6B8001AF4DF6E18E58F5CC2807D2096E086FCDEFCFD3E97BFBA9A819C74E79F5D48001CD9DB528B1170185813C13C5BFAFBF20CF1F2EBCD503D7AF788DFF4AEBD77BF1A6C38FADBE801FE97F7BAF954D3D3AD50F1A7775FFFD137A8AA41370A49BDB8B13C8173F8E7DF410B1FCFAC4104162C7AF1FCEA00ADBF03FA9E78B5C1E3DD863238F5B09405ABDBFCFAF3ADEC57D414723F36BDAD73F43C7BB83C41FDBD6FE351A780EB1C8BA4ADC707FC2C47F41C7F8F3FD3DD9321B3E5D79F046053ACECA1914DAD7B06B9E54DAFFEB7247B6C0F53D5DB200FF553E5D74C4B2916B8FA817E49B11CFE34ADBDF801F9FF0093AD0626B41403AE017F532B306056E2FC702C4FD39161EF6C4D029F2EB61725BAE6A584A0EAB064B706E483F8FA7F85BDD4E40EBCA02B506075DCBFAD585C0E47FAC0FE1ADFD4FBF0F975B27E22388EB8B12A84050C7E9FD091C588FC7D07BD8F99C75A25957855BAE02D7B93636D07FA5ED6B15FCDEDC7BD907F0F0EBC0D695E3D77EAD2C41D278B8616F4DCF207F678FF000FA7BD62B9E1D78545580CFCFAAAAFE66DD3593DE3B3B09BDF0F4342E9808E5A4CCD6B0860AAA6A433B54AC8D3B389EAE1D7268481011A9CB1B923DC5FEE66CDF5DB578B15B8691389F3001F33D48BC83B9ADBDF35BCD2950FC054D09F403D7EDF2EA99FA8EB27C6764EDB4AB66866C6E5A82992E7C7245245530C0A9EB00330BD9949B0E4FBC3FDF2026DAE2155EE2A7AC94D8A655BBB477341AA9D6D8DB569524C4635881AE4A7A77662490C4C680316E352ADBF02DFD3DE2BEE10E9965634AD4F59396136A8215AE74F0E86BDBB831318D1509206A5BA9F5127EA16F62B6FA7B0A5CB9D4429AD3A368C93927F2E845F10C7C1EB5D08033126C34841CFEAB5EFFD2DECAE69986B0568A3FD58E97C6952A54D5BA073766F1C96375B62F13579494EB8E9E08C1D12B692C3539F42A71C9B8B03ECAE366B893480C52BC7A3C8ECB52D5E454C79F9744DB77E6BE44EF4CF5362E5DFF51D59B564AD58E7C7ED9A178AAE7A3D09207A8DCA637A801E46F1958CC4BC3163F41EC77B545B1D9AA34F124972D91ACD40FB5787F84F44FB8ED52DFA136D2C86250492081AC8C529F153E7C3EDE9FBBE3E0861FB6FA1E8EB3ACB76CBBAFB6B6B564F977A6CC6E99EAABB79D3CB14B164B1FAF23909234AF894F9A8431B33A04BADC7B906C2E55616976C29E2815A2D3CBC80FF0027512DDDBDC5A6EA23DD6C98589340C549D35F3278D3D7AA74C1FC53EFA9BB42B62783B720DFD98A26DB19486B533387C8D550E428E0C456E07399BAE969922DBEF878D619BCF51F6C69D15482A2DECE3FAFF7BA0D928885D11A6A540635191434A1F991D3A7DB7D89EBBA14D7B7AB87081AB182B9AE0924D7CAA73E5D6C7BD37F13BE29F47FC76DA5D71BDF7BE0293B71EB66DC3B8373EC96ABC8D46DDCBE6E6A5926C67DEED853513D06169A04411C6DFB86326C357B0DEFCB6570216BBDCA08AF34F12E31F68151D536E7E689AFE59F67D92E64DB54F02940D4F35D7A727A13BA9B7E55ECCCCA6D7ADDDD94DF7B0F33BC26C0ED0932F8BADFEF6458BFBBFE1B8DAECA471503478CFBDB79E3496A646581975B5FDC6F751416FE2A45B8DBC9106A5430AB9FE8AE596BE5A88AFA752AC2973730DBCC76B960BF10EA954FC09500D35D40723F16806871D1AEDEB8A830B8BA8AEA7A803C92CCD058E9658D2C07A41B2BF3661EA3CFB6658152CDA61F1838FB3A4EB766799633C299E80193233C8F13960AA559D806B5981160107D073706F6F656AA640AAA298AF46913A96D20D4F4E741967921A8929699AB2B158D3AAD3D42C7A11DB4C933799D575C40EA600863F41CFB4534688ECC10B483183FCFA13416C744435510F991FE0E9219DCB56F14755A8F8FD29280D690820D835CB11CF3CDC1FA9F6DD098C293561D5EE6CC26A911AA08FF00563AE782CABD318FCCC56416F148492396E381F4B13EFC1BC168CB7C60F442EBE2175FC3D0F7BE7254B59D6072BB745657665969A1AEC76264A05C998DA6095CB8C59D4462B169CEA8CC80FE926CC47B125C436D25A417D24AC2DC535E950C467341E78F3F2E88A36B85BC96C91543124A339217E553E84F453BAA771EC0EA4CCE4F3551D77B833E725137DD7DF418CF324F587FCAA9EA2AE6C8D7D656CA9ADD3CB205D62DC2824037D937AE5EB09FC79679197F08D046915E0496E34E38E3C31D20E68E5EE60DFE1861B592188A002A6424353F100105070A0249F53D547FCB4F843B2F796F5A9DC1D2F8F92A36BE76AAB32AFB4378636AB1790DA9595558B532E371F5F4D4F5F4395C587765898F8CC6BC58FD7D9DDEF35EDB673C773B3EE6F56AF9142B5FC26A686BF2AD3EDEBDB472B6F33D9BDA6FF630992323B810EB201C1B85411E847468BE107C61D85F1C3737FA55DE94353BC37D4789929F66ED9D9B85AE8309B366C9C423AFAAC8E6333150FF0011CD082F4EA61530C31EA2198B5C52DF98B6AB7792F2E7716795C542286620F1EE2683F613D21DF39777BDC618F6EB4B5486D95A8CF23280479695524D3ED1D0ADDF3D4B49DDD95932D9FEBCC0E3E8E6A91571495E86B3243CC58CD2C72513C029A7939D40CAC0FD4A9F6437BCD01E769ADA26453EA78FDA07AF421D9362B6DAECCDA4F74667A0A80300FC8B0E3F31D33EC0E9D1B1E8E9E9F1D9AA858A94DB4EB5549E22D6549689418B5C4BC6B4B123922FC9076E1711EE12996BA18FA1C0FF002D3A18C378161FA79E0D6A050123B80FB452BF9F46EB6C5186852092615062463AD7F493A4692DA8FEA6BDBE9ED989644A233EAF9FCBA25B928C4BA2D057A4C6FEC544F4CF20BA2C4B23B5806523438D17FA9009FA7D7E9EC45B44D4B84507D2BE9D13DE0EC2D4A9EA9E3F98E6380F8FB919DD14BC59FC247136AB2992A249D211724825B5D8061EE5FE5253FBDE16F2A7F87CFA00F36BD36797E5FEA38E919FCB9B2BB7FAD3A2322FB830C62DE391DC721C553E2E8FCF9BDD7847A5F0D01A152B1470C3455B4B51154BBBA471B6969082CA1BA13CABCEFC9FEDDF209DFB9BB7086D5158E91C6597CD04518EE7639E181E74EB09B77F6F79C7DC3E704D9F956C649A3280BBB76C30E68C6590E0018200EE352141EAC876EEF1CF64648A5CCED56C263EA0858EA23AE6AF9E9D5AFA4D645F6B0A28D47D4D1B305FF11CFB0172F7DF2F9137EE658F659B65BAB4DBE5902A5C3B29193405D07C2B5E24134F3E87DBF7DD1799367D865DC2CB99ADEEF77890B340B1B286A0A958DC9353E9502A7D3A12188B9172CDA8A936E45BE9F5BAFE3FDE7DE60C6CAE892A906365041041A83C0FCC1E3D622BA98E5922941591199581190CB8208F5071D71762AA1FD2C7E9726F7E3F4F3F9D5EDC50A49CF4C3332D3151EBD7252C49D3CDC0208242F246A17FEB7F7E618A939EAE3271F0F59741FC03622D6FCDFF00D57F42BEE98FCFADF1A53E1EB1346A356A26EA7581C0B8E069B0245BFE2BEDC0C70698E1D30578AE2A33D74863D4CF6E14EA1FD05FE9C0E7EBC73EF64368009EB6AC84B13E9FCFA93A4B233AD81BF3C006E4736FF03FD3DB44F974F1E0698EA3B36A7B2DC1D206AE2D722FE9FADC8F6E0140437DB4EA9824006B8E3D6592C5556FAEEBF5B007E841B9B0E78B1F74E0491C7AB52AA01E1D42542AC6C54B230B026F61FEB0FA11C73EDE2D55A9AD29D34172748151F6F521D5C15D26C403AC8370148E2C7FA13EDBAAD323A728719EBB6E4851E9373AAE093A45C9FA7209B71EF5819F975B20F97AF5C2CD71CFF64BFD7920B8B8BDAF7047FBCFB76B8A79F54AC95F87FE2BAFFFD237C8EA47F64822DC0FC0171C903DF41CA1E247587EA4A9AF975C82873EA3F4E0FD4723EBF9FE9EF471E5D581562C09A0EBA0197D3A6FCD85CF36B5C7F41EEC349E383D6BB93B07AF1EBAFF003DAB48B1B0BDCFD341B693C7E93F81EFC415CF974E060D5C807AE2A181170AB765205BEA3EA47FB1F7BE27B857AD2815152053F9F52490C0DC5AEDA508FEC8372381C5C1E3DD315E38E9D3C3AC4C34051EA2C431200249E7E9F4E2E7DEF24534F5A2694C67AE4F76B7051AC7FA7F4BFA6FFD4FBF0E3C2BD6980392687AE203705FD21B8BFD45CF02E4F1F8F7E3426838F55AF7124D3CBAE0449CFA942FD2F6FAFD7904FD2E7F1EEC34702A6BD6DB500483FEAF975C551748BEA12123EB73A8F37F4FD38F7B2C41C11D54255699AF4D1B877150EDBA1157590D5D63393E1A5A28FCB5550CA97B206648A30A7EA5D9545FEB723D8279DF9F3973DBFDAC6EDCC77BE1404E94551A9DD864855F3C79F0E87BC87EDEF32FB89BB1D9F972D55E64157776D31A03C0B36789E00027A047716FAD8BD97B7371EC1DCB455FB72A73589AA8A8E0DC70C105255D42219E90D0E4E19A6A45AD49E252B1B18E4247A437B01F2CFBD7EDB7B94971B3ED5BC787B9329021B81E133E3F01274B1FE8835F97521734FB13EE5FB7221DEAEB6D5BBDB63705A4B66327874E25D681C015CB5081EBD6B5F92C56436DF6CD4D364E8A4A1AE8B7B1A6ACA2785AF4822AB8522A7D561795B490E348E7FDB7BC70E6A8FE8EEF71B4634642E29E78AF52AF2CA35C47617063250E935A62A7EDEB6B2D9922C986C7C68469FB684054B9FA429A416B96039FAFBC50DE05257FB4D7F9F593F60A56388F9D07466F69BC71411C9A1C3848A28C82492597401CDCDD6F737E3F27DC7D74F4726A6BF2E8FE0426B919E9639534D0D3391109E5741FB522EA56F41675E2EA437E4AFE78F6818C409D5561E9EBD2F883791A0F51D2126C6E4F27531B7D9D1474B0C4B1C4B0C6448D23A0D7E8D3FA98585C9E7E961EDB96E67942A431246ABE9FE5E96451C60319656627C8F0E9EB17D675990AC89CC0B0BEA0E4BC114AD347ABD51387B0552DC9B1049F7B8BEA8BE8A51FFD59EAE5A35140FDBF6D3A1869FE3E6DAAEA213D4D352C72A690D28A589255D44B35AC35DE32C6C6E3D99ADB4C54B8974B7A8C1FE5D25FAB60E10D5A3F4391FCFA66ACE8EC04752CD2196A86950524540A152E353A08C2B03A579B6A3F927DD1E19259754B31269F657ED3D2E81D563A476EA07FAB87FB1D71A3E9DC6AB94868A98A878FC2F1C16684DCF92570E42C8C2C2C2DFD78F7E3B721D474D4FE7D297BC7D22B2103CF3D0938BD8D8DDBD325678A292B2181C53CCCAA9F6BFB7C5447192BA24201E7EBFD3DAB8F6C8613F51280580C7950FAF4417578F20686324231CFF9BA0C37FEE296548A804D24DE362FAF57EB257D618163A7951C01F5E7D965F5DC9211183551FCFADDA59AC7ADF4D18F4140AB9A7A88E9D9A4F2541497F569D017D053483C03F5FA7D3DD216661A9AA0D31D1BDADB28EE0074356D9C44B2E3CD5414CCD29962899847E2548E46F5387255240A45EDCDC73EDA3193AD950935FD9D086260AD1A17EDA63AEB7CEDA58E9A96B129C3A072864552D2096D72AE2CA634623EBFDAE3DD24899423918E9D8E40ED2212031E03E5D035554E1E178943C72C129959437FBA9CFA5B51FA6863CFF4E3DB177078D189507703D144F188E4A8A693D091D7F95ABA25812BE34FB669DE1A49E39627BC8D1E94926015A4A72E242AA48B31BD8FB51B55CC903AACD5116AC1E22A7CFF00C9D146EB6E1C5617ACDA6A450F0F979742649B0F175B2C95AB87A78E7A945F2562A3ACB2A02EE5D0EB11B012B31D445EFF00E1ECF9EC2C5AB2C7080E7CF3E7F2E1D25B4BB9BC258E49F03CBA78A5EB0A02D09FB584A090798B441C4AA1492BA9C0D2C47E45C13ED8FA48A9FD9641F3F3E961BC65AEA734F2A742061F61E02929FC23114923092EF50D034932924BEA466BA831B369B1BD80FA7D7DD7E8ADD435620581F9D4748E7B9B89083E290A7CBC8FDBD2277A75FD24A95088A862214D3AAC3E30233EA04B003548E587D6D6E6DECBAEED6A8E10807CBA7AD260A518F1F3FB7A2E95FD79053D74B2C6802BB2EBD46EA3C600088BCAA161F5FCDFD9235951A9C56BD1B1BBD499E23A8A98E7C6493494CC5408ECD137A55813C9541FABEA79FC7B511C65010ADC07486462C5430C1E98F70AACF149103657A7B9E4B8040E182927963FEF23D9AEDC34488C7D7F6745B779423CFAAB1F9F3B664CF74A657174F01A8966DC1B6248515C20F4E6A18E42DA99632C124B0D479361C1F7316C7726DE582E0790F2FB3A05EE7019E39A0600938CFDA3A321F19BE39ED8D85D55B032996A1032755B6B1D5F564A4A65965A9892A92E262EF10904CB7453A49FC5FDC43CD1BBEE7BF6ED3CBB8EE32496B1BB08D59CB055072141F86BF2EA49DA23B6DAF6A86CB6DB48E225175E950BA9A99662389CF13C074A5EC3DC592C6768F596D7A2C6C54BB73395F59FC51DE0D7354948CD3C7432AF1E0823566908FAB301F4B5897F826D6CFEA20C3C8707D07426DA36C8EFAD376B9B963E3C115540F5A71FB7A5AD442904D34297221668EE472425E352C01F492073FE3EFB85ED06E173BAFB5FC897D77297B87DB62D44F990BA6BF98515EB8D7EECD9DBD8FB91CE76B6D104885F48401E5A8EAA0FDBFE1EB03ADD45C800588504036FC7D0902DFD783EE47151423A8E94628C71E9D7154B695D7E8D5650A3EBC9BDC8E34D87BB93FD1ABD3AAD09C6AED3E9D67572AF1A9161A08163A801636BFF004BFD3FD8FBA691935CF5604F68C05EB04BA9B9B7D4F02FF8FA907F36F6E2E919A508EA8EB535AE4F0EB244AAAACC00FAA0E6F736B6A06DC0B8F74735A53ABA2815A75E0E0481492757D39B96FF000B0FE9F9F7ED3DA7CE9D6EBDDD76E0151A458AE937B5B9FC81CDFF00E47EFCAD424B70EB4E30001E7D71079BB29216F60090403F5BDFEA41FF0078F7B61415AF5A435254F975C06A546B7D5C9F5691F86274B717B71EF5866A1C28EAC01A1A9CD7AE50CAC7D2E54B5B9B0E38371620FD3DF8AF9D3B7AF03E55A9EB948CCD7FADDB49163621413FD3951EECA15727D7AF31AE01CF58352EAF1EAFF0D7737D77B5AD7FC7BB5315A62BFCBD7AA6AEEA5714FE7D7FFFD3382A174DBF17257D37E3E80023916FCFD07BE8390471EB10C91A48009EBB8F49E0D83104DBFB47D56BDFF0D6F7E24D280E3AAA85FC47BBAE32EB56B80587E39FD217F27FADCFBBAD29A781FF000F5E6049209CD387A75D6B280123496B9B6900906D63CFE47BF05A920647F83AF3574824FE5D76583FA75016171A97D5606D61FEC3DFA856B9EAC0EA00569F2E3D76B7D202B37AB9E45C822E6E45EF6E3F1EEA7891D5E8294F5EB30566501ADC12758FA7AAD7163CFD7F3EFD5CD57875E5351A47EDEB13A7A40623EA2C09E7FA003FADEFFD7DDB51A961D6BB58104F0EBC4A8E2E7EBC5BE801FEB7FCDAFEE9C6800CF5BC006B4A7D9D748A4AD883F5045AE3D3FE03E83EBEF6CC090699EA8011402B5AD7AE6C19BE86D63F53F5B0E0FF0089B8F7ACE927CBA70F0A039E82CED8CCD66D9C1E2F3343470E4EA2AB70637111D15402B1D4D2CBAA6C92ABAFAA3944454ABFD0328B8B7BE6DFDEDF99E7BDF70B6BE5A0E0D9DAD9AD56BC1E525C9F91A05FCBAE927DCF794AD9B94AFB759094B8BA9A47D638E988044FB5756AC74B03D53B4BB0F110FDED19A0A8A88564863AE8D1A19C02085074F8CC9038BDC73EF10E58A4B6BB616D7452646A820D0D7D411C0FD87AC987BFB8B2792396359233834CFF002F43E871D540FCBFF8C995D85BC3FBCAD4EB1E16832F89871553046EB057E6EAE549E554668F45549478E669E46D4238CD95897E04AFCB3CD77F3A259EE133497B421999B512A31524D4E7CB3D457CD1B1D84B29BFB38523809144550A0379D1450003CF033D5B075ECA5F158E92FC8A784E90C34C6AC140008E091FD7D91EFD15351D3C49E95D88051178B003FC1D19FDB554169E378E4D48E352B6AB2DC703E84D80FAFB8E64035B1519FF003747A868684529D0978F8A3AD2924AE2693E814DCAA023530502C3D4DFEC7DA1D152351AF953D3A520E95D2A0D0F420E27028C69CC70FAE4576760AA4A5BFB573C03A96DFE1EEEB15195BF11F970E9E594E92AC303A1A36A6D267447B12DF46722DA999ACA9FD4F04FD3DAEB789CB13F8BA66E2555029F0F4242600449FBC4C259C46626055C83C9F4B0BDEC07363ED5AC34EE2D827AA0B9A80156A7A6E930300954F88B32AB2B6BE495D5704A8363A87E7EBED4086206BC7ABADD385EEC13E5D704C3D3421A4D12C2D62180017EA4D8ADC12DC8FA71EF4F24718C71EAD2CACE340A1E831DEC95B02A3D15962D656A4486E1E121C102C6CADFD05EC3EA7F1ECB2EE6B89B488876573F6757B6861249988D74C53D7A2A3B8646F2CAF2053A9DBD2083ABD5C1420DCB5D473ECB4C601E1DBD1B08B094F4E9AF6EE20D66523AFC8ABA466409115664489029D25B49F5791D6D6FC5FDDE818A7155E956AFA784AC4A0B56BD1C6DAD86821DBF4C62582332CCF607C8649031D4ECE34942C2E2DC80003ECCBE9D56DEA1464F9939E92ADDC8F3D189E1FB3A7ADE583A41B6B82B2CE6D22FEDE955F1F8C36826E65588BDCFE922FF0091EE92C005B52BD692F5DAF143290BD140CEE0A75A99EB28D9ADADF542C004689D15648D58DDBEA351E3EBEC8CAC88EE14F69F2E8C166424472797513054ED37E9D7128214F8CBC66E8C0052A7481600F23FD87B4C109AAA6107562B186A1008A74723AFEABEE601452689E111C49FBA92194330D2429BB2D9945AE3FDB7B12DA4ECA8237355F5CF416BEB50AFE3202AD53C294E868FEEDE9860102AE8778CA82590A7ED9E7F370193D57FA5FD991008353F61E9024F4357F2EB2AE30F8CE91E2467789A361FAAC6CC004366D4791F4FAFB6DD8518026A78F4E17A9C9AE2BD30E4F14B326830A488CB7D1AC35D08B0120B6A16603917B7B42E808A11C7A711C825AB43D01BB9B6A4B4CD2B4502959E501892422A9B59D48B92CA96FAFE6DFE3ECA65B731EB0A950C7F6746493AC814EAC8E814CEE21A288CAB2333C002B82A14485B80C56F754B037FEC8B7E3DA531E907BB23A70105B860F0E817CCF929AA1D7EAA5A4500F20117B053763A4AFD3F07DADB1A8735E1D3172ABE1D7CC744EBBEF114BB8B04B89A9852A60A8CAE352582489A78DE33589C4D0A947929D18DE4D2CB22A5D91830044976CEF0EDCD22921821A1069C3D0F97C8F41A11892E9436413FB7F2F3FB3CFAB25E8DDA94F9CD8BB777265B405C2EDDC7623158E33B55F8AA31D8DA782B2BA492558DA751312903B00C34B3581F71F47B6FD578D77AC140EC16B4AF135240C7ECC74209277B50B6C128E684D30003C00AFF009FA2A7DACB4CFDAFD6CAB4CB269DE190B4ABCCB67A740C5748B04D4E0F1CDFDA19EA2DE089C8A2CB434EA40E5F0EFB6EFAFAC83F4BC0FDBFEA1D755DABEF6B755C33D54DAD7F01BCAE7E960793EFB73ECF5A9B2F6AF90ED89AD36E84D7E6CB5FCB8F5C63F762E3EABDC9E74997CEFE403FDA9A7F93AC0F1C674AA9FAA86FA0D26C3EA78B5EF7B7B92149075531D476CAA4D2943D71D255D4100717E0716B1B0207F5FF0088F76D4B4A819EABA06319EB9AFF009C55372C4103D26D6047E7F040F7AA0209071D6C004E4777AF58FF000FF937E7F047D7907EBC7BB06AE9AE053AAD285DBF153F2EBA0E5405E6D7E198D99AE3FA8FAFBA91A8D475B566A508207AF5C0468CE598D8836B2DEFAB9BF27F1CDBDDCBD00A0A75558F2D5634AF52D22B5D4B0F4FE5AFFD3807FDB5BEBEDB275701D3C05053AC525F80C0D95C5C69B926D7FF000E3DDD6953FC54E9A3863E9E9D6320B06756B137B017B00DC7FBC7BF7C2D4A79756A1238F9F58B4E82402A2EABEBB93707FB27E96FA7BB004D0B7AF4DB7670E1FCFA91AF480BA4720FAB81F4E2C47FBD7F4F7561524EBF3EAEAF85AAD2BD60BA6ABDC7E5AF7FED1B137E2D6E3DDFBA95A1AD294EB545AD3E7EBD7FFFD438CB622CA42B7D588201E0F000FC5C7BE83E704F5886A56945F8A9D616D2BF504726CD737FAFF53F81EF601638A75ED200EE06BEBD73373F4616620DCDC9E4FD2E07D39FC7BDA819247775B2D5D22B83D71D24964914104002C4FE902F6B9E413EFD5A0056B5EBDA883A58629D74EA56CAA4EA46B11F5239FF005BE83FAFBD81AABABCFCFAD12108A293D648C3026E40041BB5EF7249B9B59AD7F756A600AF564626A703AE4C545C06F528B0FC736FCF1637FF007BF7A1E9D58F02452BD712A426A660E7502473AC90011616E073EEC49D5A40A755C05EEA9EB8DEEE09160CB70391620DF9FE9F4F7AC69209C83D56A430C1D2475CB40E58EABDEE00371CD85B8FA8B7BF01C474E7CFCBA928156F6079200D40900006E0DCF1CFE7DD1816FB3AB2B0C538FF0083A0F3B430B5392A4EBF9C4624A183794A932C68CCC04A90234A5148D44061FEB29BFBE527DE6D45BFBD9BBCD3534B4309CFFCD25FF07D9D7543EEA57917FAD642AA69288A700FFCDE6E1F6F475E2DA14541D6F888AA2891AB32F69291949F2D269F4472456B18A45704823EA0D8F17F78FB71091078CEBFA923D47CBA92E2B97B9DC5D55E8883BBE7D136F963D6F96CEED68F6F6769A9A7C860CD382E1E4AAFF71F594E9998A48E18E5485AAA7921851F502C8048A7D21815B637971B75EC2B718714A1AE33C2A7F974C5CDB5BDE24CD135518F98CE38815F4E92FD7950B15263E0757266A5882322A841E38A2D2BE9051010DC58DAFF004F634DF0EA80350548E886D94863A48214F9F466B052ABBA42A3F6D55350E2D65B1FD22D72CDF8F71B5C2686CFEDE8EA30C4035C9E871DBF432BC68222C0C92C521636BAC6A6ECCA2C40606C3EA78F65EC8C5B4A8FF8AFF3F462294059780E8C3EDEC409E3512C1AACC11003A89046A7D5A780181B8E6FCFB5888AC4020F4949D0C087F3F4E8C16DBC7312D1FDB6887423075003062114960581B83FD1BFDE7D9AC2AD5D25283CA9D2194D46A0E091D2D27DBF1D40926319492258DD023962CC385040FADCA9D238B16E7F1EDC92DCC9A8F0A7F87A4F1CE23200383FEA3D340C7C00BF90224C7F5B38F52AD9B5583908D225AFC7E3DB2A8E0D0FC5FEACF4A1CB1229F0F5C5F6E17462C924FE444025778392CA7D6116E5263706FC2907923DBC2D4B549A9AF9FF00ABCFAB7D4468BA6A01AF0F5FCFA01B7FE02A29D6A9AAA494530D50D1D3BA040EC397A89A45E1DBC7C00B60A2F7BFB4F25B48A1D75760C014A57A5D6B2A31568C5643C4FA0FB3A25B99581AB4430B066469F4BB2EAD00937D4140018A9BFF00BD7B282801C64FF83A3F67214B3605074E98A7860F0A802C4A3463D560DFA86A06E41637E3F03DE885ED1AB1C7A46D23EA600F46636865604C27DA5A53389098D95A221908BB109FA981D5F9B5ADED7473AF8263CE0E3ADAC1234C92D46823E7FEA1D28F74D6C2D8058008E491516A1598C62452C1A393F4926C0B01FD7FAFBACACBF4E00F2E1D51559EE0B6AA2F0E8BBCC1262C9A83026E07FA9B0F50B9FA93ECAE8A5C10467A70B15918D33D27B1F0C70E4268D5188624AA90340200FD6E4589B027FC08F6CBAAA4AE00E95AB164425B3D192EB1BD34EECA75BCAF1A80E4D93515525DD58381A6DF4FA5FD9A580A06EED47CBFE2FA41B928744F202B5E8E36322855294B34507A3C2B4EF0C8448CE8D2B2A35C8250863666FCFB3F581415D24003CBD6BD04A673470149F3A820529FE7F974EA70F8C943304741301306B7A2432836D1206B322A8E1BFD87BA9B4424F71CFF00ABF67493EAAE0501D2D4C7CF1EA3D7E5D252B307104AAFB709249180150A00DA3582C6E01254727EBED135A95590835A7EDE8D92E35F861C69AFECE824DC989132CA800572E446C7D4AC0DAC751E029E79FF001F68655A8C79F46111D38FC393D179DCF8B479A6882C4E620DA914D9E3562C8246B8FD360C473CDADECA66059A8057E5FE5E9721A80698F5FF0027459378E3FC521D3FB2EA4A137BA1D1C009C716FA7E47B556234B80789E9BB9D5E0B1CB53A251DAF5F418958ABB2ABA6861C852CB52CA924932132E94929D222AEF3A484145079616F720C664FDC576549126934CFF00AB1D12411BDCEEB6F1451EA2C700533D58CF59CF42FB3B0953B73740CCD14F8CA524BC8A24975441A569634511ACC65258F17E79E7DC6682EE32E63B8531B9CA8C01EB4E84D70A11DAD2E6C9A396334FD9F3E8B4F666072549DCDD6F526345A2396CB3C4B002BFBF3502491C97B9B1D30B13603D43E97F748E3612A40DE7203FB7A146D5344DB46F2BA8EBFA7A67D011D33B95334AEC751670C7D572C492CDEAE6E031E7DF753902310722F27C28B451B6DBFF00D5A5E3D71579F65F179E39BE47E3FBC67FD82461FE4EBA2855DAE3523282B7E49FEBF4FA13EC5F5A8A533D04B83E4E08EB8370DC5C9D37BDC1B5EE0F23FC38F7BE23E5D68F1014F5CC7128BDC7D091C9D408361F8503DEC91A48A75623BC50F51D9D4B31B0009E40078B703E879FCFD3F1EDC084A803E5D33ABBC9231D785AC1BEA750D2188E1B917B9BDBDE8D0F6D323AB86A8D55FCBAF0655F53A5839FA81C922F7603FA5FFA7D7DFB4D68A1B23AD540657F2EB3B2E950C5AEADFA79B1FF001BFE6C0FF5F6D834E1D5E9C4FAF584DD8486E49B7166E78B05008FCF3F5F6E8A0A11C3FC3D363811AAADF6F5C3C7A45955759E0FD6DA6E0F24F3F5F743462492683AD80CA298D5D772AF0174EA5E4B32D87248D64DC736B7BB25684573D69AA490294EBCCBA96358ECC56E0801BFB5FDA17FA9FF005FDEF854B8A57AAE2A7467AE1E01A2FF009B7E9B0FF5AD7B5BE9EFDE2E7863AF7858AEA3C3AFFFD5386A0B35C7A503E96FC5F4DADF8FEA7DF42C80AAB8A9A57AC40542492694AF5DCCA58FE1828F535EC1C1BDF83C1FF7BE3DE9180C106BD5DC1E0A6829D718D54216B3311A4F1F416FC83F907FA7BF1AD73414AF5A50BA415071D73505AE1AE5403EAD37FCFF008F22C7DF98834A1CF5645AE0E475D8D3C5FF0057E9E45EF62482C7FD6F75C57B7853AF54515589EBA0AC490964BB58822DF826FCFE39E3DEC150093963D7A8CD851A475C5C302158DC82750038239BADFF0006FF00E3CFBD8FE2D383C3AD37925723F675CACC42DCD87D42936170B61FD791EFD804D6B5F5EB547238E3AC66C48B9D3707E8DFD78B0FF1E39F7AC034515FCBAB31D5A6A469EA4293A92D71A45D7FB44963CEA03FC3FAFBAD789273D6D6A08D381F3EB90219CB73AC11F4FD24063AAE3EBC7BAE694F2EACB96A95A303F974AFC6531C8516228453C13BD6E5ABA9A95A6176A59E7928A9D26563F47550C549B8079E47BE54FDE7944DEF06FA34D488E219F5F097FE2FAE967DDE0F81ED5ED52AB94A890FDA3C56C53ECC746ADF1392C90A6A4A164718A8A38E1A70E38681805F480C199D9782383EE0F9A298989634074701F6752FDADCC16C1E497024F3F974503E4E67F1BB4313535BBEB231D16437256C78483191346D56F4F3AB099E4313F968A9D101496416290BB10471ECA9E3BCB9BE13489A6524501E0028E3FE6E8E6D962BA8C43B747E224685988F5A827EDFB3A01362548FB7A7B78F42C51B2A43CC4154050215FF008E7602C7FA7B916F575EDF03B0FC02B5E3C3A09292975321353A8F97CFD3A32BB543CC61900D7AC02EA582D871A96C7F007B8EAFE80D298E8FED80A2B01C3A353B4A8BEE8528506FA1BC600B2B331042B1241FECFD7D94A2B3B2E914E9613A6AC471E8CEED5C4BD3450B2471A3CCCECE82F23392B7F2027D5F8E3FC3D9A436EE8ABD9927EDA74865995C9A9AD3CFA19B130B5353AD868D434EB66023163FDA16D3A811C5BEBECCA205471CF48E4219B1C3E5E7D2DE9EA234A49214963A896DEB5E635D7A0C89AC907E9C01F9F6A8121483427CFA2F78D9E647D3A5479F1E92D3D34A8165AC96032C0BA99802EC91D48211892CB612339624F0403ED115627535037464AF1F0841A7ECC8EA7082A6980D731AE778961A6A58842AB1058D885F285FDC4AA77BB924903FC3DAD8F52850C6A3D00E9356390B10A57CC935CFE5E54E8BE76FCD5224AF85A433F8BC704B4C82FE29A740E64492D6632206FEB60A781ED1EE3235245D5C07F87A33DB1232AA40A126A0FC87444F3F12D2CD3C88AAA507A45F4967B9201B0B37ABEA48FA7B0C873A881E5D1F78AC78F98FCBA65C7D5CDAB533AA933061A48BDFF4AD89E05803EF6A18A96387AF4D2D0C8A107EDE8C16D6C98FB48D55479DDCC4A85B4B28085DE4590D85F9B9009F7B56415AFC5D18246F8241D23FD5C3A5067AB4263A168DED2408DE48D8125924E580673AAE00FC9F750F48D73C3CB8F4DB459756183F97411499085AF222E97035E9E6E549FED0BFD41E3DB469210578F48DC10D466A8EA45014A9AA496345926215DEDC0D24136B1B02793EE9346C193CDBA571514007874613AF28754EB2955048F1346C0BAC85F52C4A402AC00D445C73FEDBDADB0255F5531C3A4D7AF44D20F1FE5D1BAC3CB24C91085CC6F1451079E60EDAE48CBDE3899D5095BBD8963ACB0FE9CFB1446FA8294FE7D052E11503165AA12703E7EBFEAA74FD264659D638DDCC3A91609E3841686596E74B3062C5125BD8589238E40E7DDE490B2852D40707D2BFE4E9147689113205D46B504F103F2E2474D28BE23E662E7D463999EE15618F53BDE3B050F6FF005EF6F691134E58D47F93A5EEDAC1514E151F6FDBD055B974C8954A2C8F346C620C3F4C522EA4E15AEAD6209E6E2FECBAE14E96A2D17CBA3284FC04826833D005B9205A713CE24442C047721753E904382792EA41E01FCF3ECA1D151B5330AD295E970606800E8AB6F92A6590161660BA51AC4AA00416371E9E6DEDFB1FF72413C29D526158C8F4E8B9E37AEFFD26EF39B6EC494F52F4985ACCACB4332B3C9570C12084B53A8BAB345AF55B93C5C0B8F632BC591F97A548C02646E15CE38D3A23B2BB5B3DE219B2150D6BC287CABF2F2AF4226C2597AFC54E29A9DA8929E591423AB22D958804464023E86FC0F71841118AE189A86FB4D3FD5FCFA91B707FDE1E14E5C3961F9FED1D091BE66C7E7B1DB377340E92D5E137663E92A99349229B250554492020865559179B73C5BF3ECED3448124046B4715FB3CBF9D7A2289E6B4B99ED8D4452C2DC7D450F45FAA51448DEA4BEA1A4936373C9B8FCDEFF9F7DBCF6D67377EDF725DC1CEADB2DFFEADAF5C82F722216FCF9CDF10A003719C7FD5463D62248208B01C01723E9F9BDED7E7D8DFC87AF40D2C2BD744853A48249D5C5EC4003FAD85EC4FFADEF629553E5D36C0160BE67AF206D4AC49BA1174FA8BFD6FCF26C07BD9A77002BD6D949D249C8EBCC39D407EA240B91F4E2E4AD85AD7FA7BF2305E3E9D36559B83638FCFAE2142B02DA74F2A3FDEC7AAFC5EDEF7A89A8A67AB0041D551A40FB3AE3146CE635622C18AA5C8D4386E6F7B0B93FD3DECB0EE001AF5A01BB6B4FB3AC9A42EA42D707EBCAEA0A2FC0E6DF5F74A8E3A73D382BDCA5B07AF698D6F65D24F17205C83CFD0FF005FE9EFD52C327AF502D4D001D799010587A96DA6FF0093F80011FD6FCFBDD581A1EB586E07AC645D818D880A34A86F49BDFF00DEAFF5F761FD21515E3D54000F6B51BAE763A6EDC4A4DEC0596C0DB923EBEEA684D1463ADE40EF19F975D696E395B7888FA9B6AB837B7FC17F1EED8D54F3AF56F2AE294EBFFFD638AA40629A78164372486BF279B800FBE85306235573D622AB51B4D303CFAEDC020A0247D7E841636BFF005FC5F8F7500E1A9D78812015C75C0E944D215806B817E0FF00811626FF005E7DDC2EA35AF55D5A0500FDBD63B9D5A45D7803D5F4B1FA9E2F73FEBFBB15016B5EA9501B4D2848EB3AE91C0376B8376B6A041205C1B8F746D440C63A7468CAD7F6F5D847097BB4963637B5C126E2C2C0D96DFEDBDE885A814A7AF54A3F104F5C7D449BF2A411A79D46E7927FD73EFC48A1A71EAFDC72D81D76E18952A030B91A7E9600106F726C7DE9402695EBCEA69451D74A2320704D8102F703FD66FEA45BDEC86A9EAB44ED39AF5C0165627E84580B120F17B100FF00B7FAFBB76E9507875AAD1AB4EE3C3A931B0173717653776F50BB7F5007E47B65A84500E9E43400B1CF9D7FD43CBA153635542B4B4AB502168F0F96AFCBCAF61E414F498D8A68D596CCC166AD9D543002FF004BDFDF33FEF4FB72D97B9F737ECA0473DAC3257D4852A7F9A81D7413EEE37925E7B796F648E4C915C491D3C802D81FB1ABD27F2FDC53D24F5AD4B3CD1191DC698D99748FF7590548360DC91FEDFDE2A1BD9A46668E42A87229C7ECEB2A63D8B54691CA14D3CFD7A03301D4953DFDD914D90DE95B5B3EDBA397CB909C9697C18C4759EB9610E0C68F2429A413F5622FEEFB709AE2E8896439396F4038F46F717D6FB06D4F1D942A2E6981C2A780FB7FE2FA66C3D1637179DCDE3314A69F1B8ECCE42931F4CEC2665A282ADD6950CC40F2810D803C5FEBC7B1E452ADD6D0BA18B692457CF071D4713EBFAF324CA048E031A70A919A7467367B47E584BAA806C745CA8E2C3822C2C0927D80370A09BB86074736ABFA6083D1A3DA75C68E4A26D65A22E51EC015569388DD881611DAE18FB411911B213F0FFABFD47A5C504A8C00EE03A35BB76B23103D417D4EB042A9A7D7A6277916D0A804991B57245ED7BFB3C8482B52723A26903121057FD5FE6E97D8A9EAAA18096149A894C3144A2E6A0CF29D2DE46BAAAC20152011A98837F6EA7C4411D95C7557408010F4978FCA9D2F5621140EB346C0E93278CC4AF18914DAEA005E6C6F7B9371C7B59A46961E5D23AEA9032362B4AD687A659A4AB8DF4B23BC521D0D2B22BB145666B692CB2148EF60D6F4DFF37F68E476406A2BF974B952161DAD471F3EB2ACD495534314D759FC4CF78DDBC2C3D2A1CB2116D4E6DC152BC71EEEA51881521A9E5D54C32C68ECB94AFE7FEAFDB5E811ECD829E1A6FBB1231910B4D1CC8482DA7CB1820B169193C6C45D98DF51B7B49751D503D496F51F2FF374F5AC875188280B4F3EAB2BB1F72A4D986A0A03791A41AFC66FA15182B3B7D38D42D7F644225D45EB8AFF003E8516884C7DC2BD73C349254C74CEC3532C80B29B90083CF0A0EA3A47B7D8C602B270EA91445272BE67FD5C7A353B3B09513411C8F4AC8C79A62C8E8B7651667003AC6748E01FC7B4A41958B14A7A797463AB480BA81F5E9FF72E16ACD1A0955CC652C9310BA35F3E836B1D5C7F4E47B69C4802875FB0F56D28C481C4797457F71413D03CDA19A352240CE3500A390A416200B1FF001B5BDEE2651414EEE92C96E0B645474D1B477254D165A18AB5A474A9D091337E90C80285BDEC4C97FF0063F8F7A7944B8A1D6BD3D35B985415A538F47E7AFA826ACA68A786A052CF24D4BC4C23944491BA11A021042B400804DFF5036E2FED6DA46ECA581D2D5183FEC74417773187A32EA5CF0E8CD45510191D20D11EB25246691B53E85B46EB169449636F503AB916BFB3FD616A157E5FECF44651C8466CD3231FE5CD3AE66BD03CE920485982A2BC24AFA41E080470DF43F5B7E3E9EDA3282C432D3AD8B562B1952580F5E9A729934115452348CCEEA15E4E2F1001642FC002E96209FC83EF6F2000A16EE3D3F15B1ED934D14701EBD047B8F330B126FA1D1B58D643971180B0A861752ACA4DC0E2C3FC3DA19E545D2492714CF461042C99A554FF002E8BC6E2AF99AA2A4A37F93068CA2FA8B35C057527E83FDE38F61FBC725C851D9C7A312B108D41C3FAF45DF7B16796A8F8BF4093D7AAE6D65626E0DADF8B71CFB5766BA665A29E91CE4088D5853A4974345547B32BB2F8F2C25A4A25A5768CBFED420999DE4FAA462462AA3FD586B7E3D9EEF37725BAED90C4483DCF4AF10700D38FCBA2BB248DFEB5A540633415FF0067F9FEDE841F943362B1157065A91D2396A29A335B1A328BCF390CE6C81428B9FA7E3D956E4227314DA46A2323A3BE5C13492C96A6B4D583F67413ECCCB53C9B1F3D57596107DF60E5A594DFF6AAA2CA41222A1BB11A2356E3FC7D945830692ED5B86907F61E8DF7F89E3B9B054A1935107E608FF2F48F9BD4ED3300C5F91FA49E4EA05871A7EBFD3DF6DBD9B91A4F6AF90588353B643FF1DA75C81F76E358FDCAE7555A691B84BFE1FF003F58022EAB1235151CEAE0050188BFF5F72654D295C751BE85A9AF5C46B73637D43E86E4029CDEC4F371EEC42D01AE3AD64B107F2EB9C674FEB5049616602D623E971FE17FAFBAE2B8AD3ABE4020AD7D3AEAC7510C6CE5AE00F50B03C0E6D70C3FC2DEEC48A0D2314CF4DF70626B9A8F4E1D737375D257861C9E08E2FCB587007BAD4835F3EAE6A6A2A29D618D79208171CF03E82C45C5FEA4FF00BC7B719AAA08E1D5554026B9AF52238CB13A88BB0B0FF0B1BFD7F3EDB27B401C3AB283A892695EB13025AECA1747005EE0827822C7EB6FF0F771A69404E7AA956D40B63FCBD78FA42803528E6E7817FA7E7F16FA7BD0E245707AF35540A7AF58CA307F206524736B91643C7F892413F5FF001F7704150A14853D698104B6A1A875DDB9B316E0D803EA041B5FFD6B1FF5BDD757A52BD6F4F6804D3F3EB969FC7E7FD71AAE7FC7FC00B7BD6A35AF9D3AF513469FC35EBFFFD739C82368CEA2198126C01FD2A6CA7EBC31B7BE83B541AD283AC4540A5483E47AC161200401C5C1523FB3CDC7D6E3EBEF62A86A787553566141D706BDA3B905AEC965F501F5B9BDF83EDD02BA811D68D7B0F9D7AC856DC800DBEBC0045AFF0053F9F6C83C0571D5F4E6AD427FC9D7000282CC0EA209B8048FF0BFF4FAFB70F71A568A3AA50006AB53EBD65F5AA2E8B92CBF5B691CD85EFF00EF1EF541AAA45003D786A2A4A1EE3D76081A548BB01CB0FEA41BFD3FA7BAB006AC302BC3AB8D428B5CD3AE3CAA9B70415BFF0068FD6DC7FB03EF4A2A401D699C2EAD22A7AF11642A05C9173F4FF89FADBF3EEDA8D413E5D682D406A0D5D7880C42D9B57EA2D6F51B0FA2FE2C40B8FCFBD7F4C9EBC400CAA38F5CC85219BF16042E9045BE845C7E49FAFBD64529D3B4049278F4A8DBF27DBE27774CAEFE496871F0085541611796AA4965B9E74B98914FFADEF9D5F7CEA2F3572F141F1EDC6BF2A48C3ACF1FBA7FEA72E6EB53D8BB8D47FCE35E8B8D25753556E1FB69DC78AA6A9942C8C18205B230B6AE01BDFF00C6FEF0DADA266457F23D66E5C33476E4A8EE515FF37561DB0B671A4D930D2E0E14497368EA3C04192A4A9D31C32484FA135F24F1ECD9E296DA0458948771D00AEAF04F7724B3B821070F4E88B65E28A837BD7502FA2AE329FC4694A849286AD1DA17A778858C771196D4799356AE011ECFB978D36ABA8E44E0C7FC191FB7A2EDC19E4B9492A6A40CF911E5FE6E878DBB2462089A3049BA9D4D7BDCDAFCFD000458FB066E29DEF202695F3E8EAC1B590AC714E8CA6DFAAF18A693492EA919658ECE9A9858AE9FA371CFB2A35AAB53871F4E97903BC03DA6B9E07EDE87BDAD924A69A9A9C79DE95563211AE638975D8C42436263E18D8F3F8F6BEDEE02E840E4AFFAB1F67492442C19F01BFC3D185C1E4A384A473BAC7155CB13B3C0645F16863E09E25653A5180D120FF636F67B19420020007A2A941620A2D48071F6F97420CB908275568CACE66D4E8D608407FC96256C5AFF008FA13F4F6F3B2FAD4F49228590D3229D409612A8DA24D68E6F2037F582A53446CDF4D26C7FC7FAFB4D2545720FAF4B91C33292BDC3A6693C54A968DB92154CAC2E78B3D9AC0065D4A393636BFB4F5028AAD5AF4A9D9E4A9381D15DEE6DC3531C7251453FF9D2230DC0059C681E30D7D24A83703E9F5F69E777773129A70EA902A821997AAF6A6C5CF90C864EB26556917275542920B49A23A77F49D5CEA17724FB2E9E311C854E287A13C12A784ADABC81FF0063A12B6F5153D0D5D1C1210565997CA781F53EAFADC2EAB01C7B4EAC748A1E27F9754D62491E4E0070EAC03677F7729B6A52C45E4FBB9A361649114AC972DA4CAC59DA30A6E3F3FEC3D9CC62D92DC6A93B8F48CB5D3DC1D2A340E8428E876765F05908EBE25124747A9A5986B78585BC288A0FA66794295600FF00B01ED42DB5A4B0B6BE34E3FEAF5E91DC5CEE505D40D090622D4A0FE64FC87A7440F7BE3690642A692455781FCAAC8595B5A963C03F437079F6187011E41F878742192E2812553FAA3FD5FF0015D0713EDB8D841F64591D2683C0A34DE360EA235B73A5813C7FADED3A2EA911456B5FF50EA92DEEA56321F2CF469B6BE5EBF0CB424EA68C68A77B6AF19D4817CA0837D4B637FC1E791ECE087B561507D3A0FA18EE198571C47F9BA32F88CA473D3C331653208BFCE72B64E087216E1BD4DC7F871ED719534AE73D5F40A1502BD39D4549D4155888954B9D4A19E53A4B000B69B02DCDFEA7DA779093A757683E9D582E9EE2BDDF2E92795AFF001BCD249287BC6C863361C94084B7D3C9C11F9B7BAB499AB1047CBA72954002E2BD04F9BA968D6CC75121853DC15288AD655D02FA069E45CFB2F9E46272303A7D086A9048F5E81BCCD51559DCE9059989D5F46D57242DB92091C7F4F687531AF98FF275794001057CBA01778D569A1999878C48926B25EE2CCB73EAE0F3ECE76C5ACA9A47123A2CBC202156614E828EB4ED8EDBC752E4F6AECBDA589C66DC9B3B5D5559BB862C5667F3C2331C0900A8A9D54B4F4548612ABA6332358FA80FAABE65DFADACAE0585ADA2497EB1A02EC09D35152A0569504F1E9EDAB95E3BCB41BB5F6F0E88C494854851C78B1A126BE9E5E7D63DDBB53B07B5370CCDBB773D161F6CD13A3D74894FE0A879340678F48D6A642780A8A6D63F4FC06A6BDBEB91E088150B0CBB600FB07F93A12ECF26D9B5299628A49AEC542AD707F3E9535586C5516D26C0E21DE4C4635FEEA4AAA81E29321240AE94CC91FEBB2CA435F9F7BB0B295A64B1B62D25C4CE141E1A8934000FB7879F4C6E1752999F75BFA47A10B538E8005493E5C3A45291A111AC24088AD63C06000362DCFD6FFD7DF76F92B686D8793F963676146B6B082323E6B1807F9D6BD71979C7774DEF9B399375420ACF7B3383EAACED4FE54A758DDD1654D5F592E07E79BFF51C7E3D8A40254D3A0B96A11D73E002A4EBB12069FECDEDC13F837FC7F8FBD790F23D683531923AE28199D8106E2C74F26D7E0FD79E6DFEB7BDB28D208EAA199B50A50F523C5C58901AE492BF8B73FEB7BAD49E193D7B4802B435EB05F528B7FABBB826C5B8000FF82FF4F7621BE223AAA842829C475C432F90717504971723481C0B5AD7E3DFB24509A75BD79AAAF592336FD2D71AAFF5BDB9E073602D7F7A231DC3AD924A120E6BFEA1D79D1598F37FF15FAAFE781C93F5FAFBD02474E1A569F2E3D622AC0037E08D2D7BE9163FF457BB0A31A5314C74D9D408C923E7D6274563A93EAA2E6F7008BFD3FD607DD855451C76F552548EDE3D645E021BA836637E4E8E79563C5CFB6C8F4EAF5A6804F775C752DB57AADF5B587EAD3C71FEB73EDCA3534F5EEDD3F2EBFFD039963A1596F65B0D26FAAE3E9F41F4F7D07C963F3EB1081ED4603875E56750DF867040FE84FE41FE848F7B3424D3875B05A858B75C148282C4065E2DF9B8B1B01CDFFD7F7760030FE1EAB4A8393A875DD983866E56DC836FCDEC45EE3DD314208EAEA8D5AB75C94D99956C0D8820B5FD479B7A6C0F1EF54AF9E7AD034074803F3EB1A872A55AD624D86A078BF3FEC79E3DDFB03020F5BCE5715EB9A4617EBAAE3E809B123FA1FAFF0087BD313C41C75402A402C68387AF5CA250AFCFE78D372C785FE9C73CFBF33034A797575D087071E9D717B796E058303F51C837E473F8B7F4F7A5D5434E1D50805F2683AECA912162E3428E0023EB6B02A6C3EBEF7A868D207774E69EF2C58014EBA27D3CA90090AC4DEDAADC693C5C5EDEF54C8CD4F5BC500A5003FE1E95BB4415A9CE4CE895318C6D22D4C0DF57A512CE1FC602920AB1373FE3EF9C9F7C88AEA2E71D82E25889DBE4DBE8A7E6243AC57D454759F9F75196CAE394377B447D37EBB854F97141A0FD86847DBD041BDFA413375C33FB0775D16332C2759A3C164AE8003EA23C84C4B22B9E3D2757F81F786B17D55992F6E565B73F849A30FB3ACC5B4DE1914D96ED62FA00A788A2A31D09FB4FB8BB97ADB170D04389DB99BADA175FB8C756D2D7D5524C620BABC15905453545289D78D4A09E49B1F666BCC8B168F176F0D003C092187AD19787E7D12CDCB9B7EED34822DCA584370202FF00C695B8FED1D055BC7B22B7B23B0A7CD64FAFE8BAFB2515050C75B45413C9514B9495B5DABA39A78A39D882841125DB9FAFB14ECF7BB75F5BDE4FB742D1A16EE566A90D4E3E583F60E83FB86CD75B30B7B7BADC96E9093A582E9A54F022A6847DB4E874DACC552093487B01A90FE9FA024A83C7E6DEC1DB9B7EA3A83D99E8C6D90800839E87AC188A18A22927368D96300FD38120B017E2D6F644750228C29E9D1B925C1D4BC0743BE0EA0B8497468857426956D32B206B090F1C30B9FF005BFA7B5B01C542F6F03FEC748250A28BA8D7FD58E85BC4E41A4480970C28CC88755C09221CAABF239557247B338A52554AE40FF0748D94AD54E3574225065607860652F2A326B6018055D46CAA0B58942B7FF1F6A83295C1C74C323026B82315F5E94F25642D1C51468C6326F13AB906488AF2A00BE850D702E3FA7BD3B80AA0F01D7A30CCE5CB0D54E1F3F5E93B98789A396CF2A864BBC0751B160027D092CE80004F2071ED1C840A80DDA7A56A080808048E07A275DC7492CB13D4C3795E121F4A2B33045E59F41205D6DF4E2FED1F8CB195673C0FF2E9F890B318E9427FD5FCFA23F4FBBE9B0D99AFA2AD56A582B2592AE95E6626213708D117755204C230406E4116F749E586EAAD13777A74682C6EA38C12B550298E8BFE57B87E42643B1A64D97D478ACFF59E0E6A6A7CD6E5ACDC3261F27AA67FDC6C5C0F1494B51E10785653ABE9A871EF56C2CDE265961B969C62A81740FB4364FE47A313B5471DBC72BEF904370F958995999BE5553DBFB3AB09DA9DDB4F418D869F354F518F9D628D845510B1D20AE9B2B47AA32C2D6363EF5D8ADA18D29D201E2A92556B9F238FB7343D2D63EF3C656C2CB4533D44A41458628E479246B5B40894162FF9FA7B7DDD02D166E3E9FE0E9B224EED71900F03E5D132EF6CEF64E5E2A8ACD99BF70DD7D91A3A879A48B3386832E320174C9F632CB51324540253C128ACFABF23E9ED0D02EA648A3763C4396A0FB294CFA74FD98B496E2317F1CEF01C7E930520FAE549207A62BEBD3FF58EF6DCB93A6C44D94A789EBA2317DE9443F67553A28FDC89D96EF19604ADB8B7B4705C7833895D00A7974AAFB6D88978A176F008E27E203E63D7A391B6AB864238E2915E355015821B800B5D42061E98909FEA79F66AD769386F23E9E9D123DAFD3105687A329B75969E8628A390901032BC87558FD40361FD7FAFE78F7556A51755474C773313A683E5D28EAAA8469A15AF269B966624806E0395B9E03B1B7F87BD97E38CF576C804E00A7485AA9CF96691EEEC12F662A54A5CDD79BFEA7E7F3F8F6D2BD455B87562F5017CABD047BAE659E29F5079098DD9911CA3922EDA15B52FD5C003E9FEDBDA0B970C1AB5A74AA0628C34D38F9F40CE6ABAF0216468DDD56F039B95014BB212094D6BC836E2FED90D1F8684547DBD5DD7BDC541A745FBB17205286A09245D582C60D882101038BEA66BFF00B1BF1EC4FB0C7AEE92A3B6BD11DFB288CD0F0FF553A1676ABE4B09D7784828D528A118D33BC4605595E59F5CEDA8BAEA506696E7FA5CFB2ABF9246BFBC9142D0C8D922A4D0D067ECE97DADA2B43123124E8141F97F97A0BB218BDC895DE35AB4A8898FDC4B50E45BCB2FA9E4D3CFAAE78B0FA7B28B896E4CC040A3579578742DDB63B1B6B60D221D63D38FEDE9932B920D1FF0EA69E49E04757AEA972CCD5355112BE18B9F443130B9B5816E3FAFBCD4FBADFB1D7BCC3BC5A73FF32414D86D240D02B0FEDE64F85803FE8719CD7833507913D6227DE53DE8B7D976DBBE47D8265FDF7729A66287FB185B88247FA238A8A56AA2BEA0749DB021805E7F00F02E3800D89FF8A7BE9A64D01E1D73A70C1B19FD9D7BD0C63263B3DAC41208FC9B83700703DECE2A0363AD1A1D3AC77758C9656B7AB937D22C473F8B002E79FCFB729A867E2E9B6D41B1F0D3A9708D3660A0DD3406FA806F716FF5CFB68D4E09F3E9C5A56A9C7AC32C851B49E4EA248B01FEC7FD4FD0F3EECAA58541EB4CFA481A6A0F5C348125C6A8EC09B58FD78E2DFDA16F7EEED2699A9EA84286D270B4EB2C6A0A02DC0FA8362B7D4C07A87E2C07D0FD7DE9A95C1C7568D74A9AF0EBA74440588E490554FF0085C92C7E9CFD47BD56B415EB45512A48C1F2EB83314D2D6B82B6B016F57D6DC73C0FF5FDE80EEA57AB05514615A7A75D11A9750E1355C02B63EAE2C2E2DF9FAFB7010A6A78F55D3AAA58F5E68C90842D90001B8B58926C2FF4E3FDBFBF29E23CFAA15F320E91D617000E03696074027D5E9FF557FA0B9F775A8F4AF5B7C11DB8F2EBBF1701B58D7A09B71A6E0036BFFAAE6DEFDAFCA869D6B48E15EEEBFFD13A517A7C8CA7F5002C41BB7D6F6FEB6F7D086268108E1D62244A002C3CC7584A706C4816F55EF724F20ADBE808FF007AF751C69E7D6CAFA758EDA5C102CF6D373CA9360749B5AE08B7B773A33EBD36D8614A8F2EB9D8EBD3FA89D40806DCB7039FADC5EFEEA051091C7AB12C2AB5069FB7AED6343CB35996C00B589FF55F4FE9FEF3EF40B006831D6A81C2D586BEBC632437A88D2BC587A8303FD39B83EFC298A81FE0EB74D2704FCFAE6E9EA5607FB2015D5F523824FF00404FBF13A4114F3EBCC061947ECEBCDE360BA790DCBFD574B06FD22C6F653F9F7ACA9FF075EED7A5307AEC5A365F21B8E79606E58FF437B727DDA858E173D6CF615068457AC06C6E00FC100B7D0DCFE0FE7EBF9FA7BD1A0A629D6FB486A0FF0057DBD66B91A75B031E90C07E17F1617B7D3DE850D69C7AB1185248D3D4EC7642AF1B5D1D7519412A6B8CA4A3F626A6908F252D42020490CABF91CA9171F4F718FBA9ED86CDEE872EBECFB90F0EF6325A0980A98DC8CD7CCA350061F9F97520FB73EE2EEBEDF6F89B9581D766F459A22681D01F2F20E38AB7979E0F4A233E372713CD1E3299A54755929AA05ABE859C9656A6AA8D94CB013FA1B9F7CA0E7AE48DFBDBFDDAE764DF76E2B321ED6CE97427B5D1BF1291FB0E0E71D75139079E768E78DA2DF74DA370D5137C42B528C38A48A7E13F3E0788EA143515F0D58ABC67A6A9552229269F558E9507CB64F2A29E6FFD3D80E1B90A0D630C6BE9FE7E86579660E9606808F2FF0063A47764267EA77862E6CDCD4D545F1B1FDBCB4B12C486049B95754501DC393724FF00B0F62FD959FC0BC76882E17879D41E8257F1411CD0AA96A93C0927FC3FE6E853DAB0058A0D4090CA801BD8DEFC90482791F4F61ADC4932D5474636D40A719E86AC4C461F4DC697D2636938D0472482A6E4ADFF00C2F61EC9455C91E5FB3A5E240DF0F90CF428636B67834049516363790C972CD1921974FD00E54DEFFD78F6B11FC3A6902878F49D9518D5B88E1D0998CAD606C436978C868C820FA80B58D80FAFF5FF0079F6F789F100280F4D326032E483D0878B944491472966D3A5ADA03ABA722DA56D620385BFB591B0D02BF17499F51634E96F4F5EF1AB492150E5046439E230096D234F0B7247D3F3EECBAA84B1E9AA28A2FCF8FAF49ACB65E3F0B38946A0AC51B820F06C09607E9FD78F68E66F30D9E97C401F2C740067AB69EA0D50724C8433396B6925B9670C45EC3E800F65AEDA73E7D2D44EE4E1A7A2C7BEF69EDBAE471534E85E652F13117D573EB5F20015BFD87F5F694B2A36A8DC86E8DD6EDD174D7B471E80CC76C5928EB80C655D57F0D98F96A29659CC9491B1703D2ADA800EBC8171F4F6FADE385A1AD0F4925BED6C691AEA1C0D33D1D4DB78ADB190C4D26372D474B551F8A28DDE4863B9744F55A4235596DFD79F660D7D6F3224532E4E2BE7FB7A2058AED247B889CEAAF99F2E949160B6461E0A95DBB8AA6A0A98D753B2A46F2EA90687D26C1F44DCDBF1FEBFBD9FA5B74F12DD4EB1C6BD5DEE2FAEDE349E5AA7FABFC1D14ADF9B6E97239996696A2383549AE3D48A6CD0B122FE45D08D20B8048FAFB0E7D79965968C0354E3A3736F3DA2A3A2B53E5E9D62C2D4458F8D0CA810205092428547A586A91BC7A829B7FB7FC7BD6A626AADDC3ABFD44B5A13553C7A1A76AE7F1F52C92525740FCAB12240EEA416536B11E90C6C47F873EDD8891DDAFF009F5B77429DC869FCBA337B6371FDBA470D5000CC004728444FC901D7EACA1881F9E09E7D9B46E0001C52BE7D17300FF03768E94191CE3471168CACA54E9F1061A985C3369716D76078BDBFD8FBD49284AD057AD2AEA6F8A83A61CD54B9A7578E4E00576097B80CB72A4FD034608B83CDFDB6EFD9DA2838F5B4552C41151D0539CAB00B191AED605B9372A4D8310491F5BFF81F6889048D7D290A4FC1D0479D9F82A5BD2AB291C02C0B0B595BFB20FE7FD7F6F22970B5E1D55885269D16BEC199645D05A421BC4AC02DCB334A39007EAB29BDB9FAFB1772FA8592A0F004D3A23BD25881A704F462731998297058EA792655A6188A5791D9FE84451348B7241085EE3F1C7B0DCAB713CED142A5999B0054E49E0315C93C003D0A6DD2DE183C591C294F33800015A93C283D7A08F39BB24AFBD3E3F5D3D332AA4933A849E6565E5223E931460FD188B9FC01F5F7997EC8FDD6771DFA6B2E66E7FB77B5D9C5192D8E2598F11AC7E18CF1CD091E43AC4FF78FEF23B7ECD0DC72E7235CADC6EF957B81431455C761E0EE0F98ED07D4F48AF115620B04018054B1BA8163C1278FF1FEBEFA3F61676BB759DA58EDF6C90D9C318544501555470000C0EB002EEEAEAFAEEE6F6FAE5A5BB958B3B3925998F1249C9EB2F9425A316666616279B28239B73C736F6AB493DD9A7498BE9A0F3EB148A1831BA964B7E93F4D4DA81161C5CFF5F7EA1143D68D2427BEA7AE009B9E01F4D89BDD85FEBC11FE1EFD42B434EAB5AB50531D7A362C1556E02FE9005C6BBD8D8FFAC7DD99699AF5E0D518EBCEAE656536D48C7E96B817E01B9E6E0FBF0C26A1C3FC3D5197B8A50D47F83AF2193D7A979FA1373C0B5C8FF5EDEF6C00000269D6D093AB191FE0EB9B3F3C58860188FA953F4B823FC7DD38E3AB3365429EBA08AD6258120FA85F904588D407E0FD3DFB80C0C75A5556A55AB4EB98370C34824836500F1F4175B11F4B73EF5E87AD866042D3FE2BAE045BD2A79E0D9AF7E2D6FF0001C9F7B04035A63AF1D2F807875DFA5859D98B31B9D209B8FA83C5FF0027DEEA4640F2EBC154EA1A893FCBAC5200ACA6E7D4429523817E7EA7E9FEDFDD92B5E1D50D6A3575CB4456FD5FB76FF90B5FFAABDFE96F7ED4D5AF9F5BC53E2C70FCFAFFD23A411942ADBEA0EA208F48FA0E7FA7F4F7D076EE35EB10D469017E7D47915C0B0FC9373704D81BD8FF0045E3F3EDC4D24E467AD3870A7D2BD780055802B75208B0E45AFF00461FD7DEAB424B2F5B26AB45391D7645C8F5025FE807EA4E2C0DC0BF36F7BF2200A01D7BB410479FF2EB9946254162C6E351FF0005173C8B7EA3F5F7AD62A68BD54212D83C0F5D16707920DC9002DC5FE96E39FC7F5F74F4C63ADE4138C1FE43ACAA2FAAEA1C32D870783FD2E07BF63AF0523B45093D702349D56E2F7B0E4ADAFF004B0F761C08A807AF692A4671D72727C46F72CF6E08B91FDAB0FC2F1EF54D47B7AB934054E4FF0083AC2AC58D80716B5895E2D6FC7E38FF000F7B65238915EA8ADC7B4E7AC9A08205F5000B58DEC49BDAD7BDF91EFC083C4E7AD91822B5233D7220001B4927F1604DFF0024FE0585FF00D8FBD01534A8EAF4E0C467AC87579239A191E9A68F88E74E19491CA30274CB139E0A9E3F22C79F71FF00B83EDBF2E7B8FB33ED5BEDA83228262956824898F9A9F4F553823A1D7227B81CC1EDFEEE9B9EC77242B50491B6639547E161EBE846474EB166DE47861AB8E3A79831415510FD9A8957EA4B1B98E4602E0117FE84FBE63FBB7EC5F367B672B5EC900B9E5E66212E50607A2CA3F037DB83EBD747FDAAF7AB963DC9516492FD36FE8BDF6F230A9E15311C6B5078D323CC74C7BCA592B72F8156A8330A6A49228DEC0368568C926DFEA9BFC3FD7F71BEC6EDF417D5152A40FF000F43CE618C417368E1685ABFC88E84EDAB200810E9F4E820B120AA826E07F4FEBEC3D7ADDC682BD396C4B286F9742F50CD14C1622C7D7765B9D1FA028B11FE05EE2DECA6435A8A74B00D3DCB9E96D4932045BAA90005E4EAB8523FD50E493F8E3DD830D254F0EB62B5AF4B8C764BF735492E8895586A1C8B055544B5EFC31B7F87BBA13553D69C051502A7A1128B20D68DDA4568D2CC18FD75700EA370C02DBFDB9F6A8390C14B557A4EEABF61EB2E4772B2A2C2B214572A382431E5B5124DAFCDAE40E6FEF6F305C0F3E9B4894F71E03A4965B38661F6CB51A42477704852AB21D3E91F92D6FC73EDA20311A4F019E9C5758F51A740B6EEDC74B8A56F2CDE90174BB4B1D8B3148D0108499252F20005FF0027FA7B473C4724E47EC1D3A2E17829CF40F665DAA60FBE3593191D18C51B31FB6466B870A8A070F6363C11FD7D94CD26800EAC0AE3CBA5F0C6D33014EE6F3CD7A4C6CFC46EBC8CD9AA3C753BD5C192C8495CB3AC0D0D3D1C5318D7EDE49A69183F88C7F55200FC2FD3DA5825BDBB2D15ADB966F50303ED3C3A376B1B280433DCCA1283209C93F203A30D47B3EA28288D2C9930F565580F1338A70C23BB7F94136D61C1FA0B5BF3ECCBF71DF69D4F2D26E34AFF0097CBABC7716D21D2907E95389E3FB3A4DD1EDDDE72640A475F0D42C6EBF770C72BF95D13F1E6B582A2B0B3103FC07B6458EF6D2B47A6A4D2B9F4E9535A6CA81666620796300FD9D38677608CA42B257D4DE7532792481D59529C582091B4E9966894726E3513FE1EEEDCB73B558B9129FF0007CFFCFD58EE36F1AE88E30529E7E7FE61F2E827936C54E36734FE9ACA7333289810A55175022CA5B5DC28FCF1ECB25B1BDB46F0C8273823E5D279A3B7994489456F4EA7E17116FBC6A3A8929EA2CC6120218828504C4FA8DDD5DDAC47F4F7E81A5EEEE25FCBECE8AAE155451C76FDBD09584DDD538F098FAE0C1163D74967690A48B7768E072431608B709CB01C0B8F67B6CEEF198D856831F2E886590472065715F3E97D43BDA9EA64470E6548B54522B02920B0252C4FE3D57BFE7DB4F2AEA06B5038F4BD2AE83C89E94949965ACA669A39CC8AF180A3FB3A92E3EAC7D5C7D7E84FBAC736B150F5535A7566428C030A1F5E91B9B999E3770E802AE92CC14916616E2F6B5D88FE9EFD5AF1156FF075BD4114F414E6E5469193F2A15ECB72A45B917E355C7FB0F6FC6B57C601F2E3D277274D7D7A2D9D973B4694E94E63FB8A8A98122BA2C89EA9908568CB2890301F4247F4BFB95FDB7D8CF30F33ED1B36AD2971284341900F13F68191D0239BF77FDC3B16EBBB69A9B7859C54E095C81F9E2BD4A96A6AAA5639B2355356BAC712C6AD68E96211AAAAE8A54B20D04705B59FF1F7D2EF6FBEEEDEDE721CF0EE305935E6EC99596E28DA0E285129A41F3048247AF5CFEE79F7E79F79CEDE4DAE7BD5B4DA981568E0AAEB1E8EF5D447CAA01F3EB9C7620B13CF3E827D4FC7D413716B5FDCF14E0298EA143435A8C75CD948FAF2AC2E16E2E9C1BEAFF61EFD5E229D68D71D75A486BD947A405BDB52A7D6E2F6FA9F7BC53CEBD557567141FCFAC4EAE3514234AFA0DC7D4DF8636FA824FF008F3EEE08002BF54627576F975C96C035D07D2C5BE9C37F8FF5BFFB1F756C1A571D383C89E34EB882A1F4DC1B0BAD8003D4458EA1FE1EFC6A724755514A8F3F4EB24834BC87D37362C7FDB0BDFF00A8FC7F87BD0A9A0EBCF80D4183E7D616516670D74F4F22C48BDC0F49B13FE3EEE4805415EA942175039A75C8440DC30200FCFD2C2DC69E401F5E3DD2A2BF9F5BFB1307AEECA0B5ADA81B107EBF4B1BD89B1BFF0087BDF71E3C3AF0619C00475D00D6045D0906E7EB6E0FD45EFC93EF64A823D3AB7C42A307875E37034DBF42A92FA886D5722C6C3D40FBD1C9A8F5EBC28015A600E3D6308CA4052D7BA9FC5BFC2E78BF27DFB503F87A6D410720F1EB9C8A0296B33FE18822C0DF96E6FC2FBF0A9C569D5FF8852BFECF51FD36B73A755AF65BE9E6FF00EC39FAFB7B3E9E5FCFA6A8B4F9D7AFFFD33AA1902904917B8247EAE391F804117F7D071EB4EB114955CD327D3A8E52C09D56D42D7E48E4FD4FFB0FF79F770FC2AA29D50A9F26EDEB801A5AC4DAE41D43558DB8FF005B9BF3EEF566A6A1DBD528AA4051E7C4759D540D4107D411E4E58FA790547171EDBD4D5CF974E693525299EB986507D297FA0BDCF3FD93F50357BD15EDA939EB631DAA33E7D63B067205C30B5AC01FA91F92473EFC3505A8F87AB0E3A49EEEA42AAEB652EC07ACDFE9EA02C0000FF5FF0061EEB8231C7AB2D3570F2E3D452DA0E8248D46C083C107E818588E0FE3DBA8808D5D344B02149C75CD945C0D405C8BF1C82A3D4393F9B7BA006B4A1EB7DAA70C2BFCFAE2A2E439365248D3F407FA11FD07F5FF001F7738A2B0CD3AF2F1A82695EB22022420DC290425B92A0725D6CD7B703DD5B4941A7E21D6C31D441E07AF5EF7524DD4F04F1AAC2DFEF7EF469C475E0401A5F88F3EB20B328372749FC5B4AF22C2D6FE87DFA8C388EAC195B81EB83A23A159111E291479174960DA8D86A04FD78FC723DA1BFB0B2DD2CEE36FDC6D127B29574BA380CAC3D0838FF2FA1E9758DFDE6DB7705ED85C345771306574255948E0411907A4DD453AD0E4A8E45A8A9951C3C691D4C9E5480594E9A7771E4D247E0B311EF04BDFEF68795F917674DF395ED1A08EE272B2475AA292090509CA8F2D35F4EB35FD95F7639A39E6FA4D939A6ED2792DE1D49269D3236403AE986C532454F13D0ADB7E549164526D6B2DCDEE07E39FC7D3DE095FAD26661506BFB3ACB4B4A945A907A1630E9245E30E5A5654240FD46C42956209B1FA58FF004F65A49C97191D2E34A1D2323A5BC724AD18E4EAE18682069662082481C0B13FEB5FDD8D4D0F5E8C039A74FF004127875066D418028B7FDC0C6FA8863C05371C727EBEFC03D1B5360F0EB6C75E9D1C6BD2A7F894A891AA48A9A632256362A095D23C97FF00016F76D6C00A1A7DBD519541EE1D24F35BAE38258DB52A2A85424B17000505C23922CBAC5FE9FEF1EDB9252CE8071E1D34CA111BC879FF00B3D06F95EC191A39129419AAFCD685B449668A1652C490B7319D417817666B7D6E3D9BC11D212DF8C91D1149292FA431D1FEACF498A3DA59DDC5116CCCA29665CAA544D34F3EAFB7A71AEA88F1ADD124D6C0F37B0B0BF1CA49E0698BA034EE15FB3D7F2E95DACCB1329395D24FCEBD3CD5647696DE0124D3999220E1686761E049FC9C48EC09D696B7A7E86C2FED94B0B0AEBB83AD01F87FCFD082D96FE620423C3523E2F97C87AF4C337714548D1C2C22A4151530C10A532A4515319068A77554083C0E0583E9B7363ECC0EE11DBA848600A9C050529F6F46D16C6D338D52B3902A6A78FAF596AFB3EB9E92234ADF73333B99157FDD6AA1965704B7AB953F41F4B7B4536EB26A0AAB524F47D63B426ACE23A79F4948BB1F7352D2D7C54EC51A7991B583AE4F112C481229521C002DF5B7BD26E7709AB4A549F3A7478FB158CAF0F887B071F215FB3A933F646431D42454D648AF1510AB9605D46D7859FEDD2FFDA3A42F3F96F754DCAEB857EDE925DECB6F213E146295A03FE5E83BC7F6B4937926A998BCA2595752291EB90C6FE3550A005579082DF95427F23DD8B3CBFA8C29D239B653191120A8FF0008FB7FC9D3E623B3A855DE03554F343532795A49502C91DEC921D570CD1B38E05ECBFEBDFD96CF03C659D501AF9F451B86DCC1158A905470F23D0950FDA6EEA3A36C3E4638F214E7C70CC932B23B461B419D1CE872636234DB56A00A9B923DACB191651A0504C314F5E809B840F0333C8A7C2FB323A4C6373799C4EE49F1791AB358B197591F4F8E58648D9BC90BA82124121B3ADADE96B8B8BDD15FC2E0D08CD7D3874FD8BA7860A7C3D0ED81CA4CE810C9FB7E950BFD509BEB53C1BD8D8D8DBDA282A0E803B41E8E64A32972334EB0E76B1D6231C562D24B7E5AF701AF6B58E94E781ED5AB147614E3D3282360E58F01D0659899E5F2AEA65D48A6EB6BEBE4F007E011FE1C7B5F0A8D440AEAE9133000EAF2F2E8B7EF7A8FBADC181C615D5FE54252349623ED079CB02AC2CC08B83F416F794FF764D8CEE9EE36D3315252D95A43FED571D40BEFC6ECBB77B7DBD80D469F4C63FDB367F974A8D2422872485D20106F7370096FA1B6AE6FC7BEA92D28020FCBAE6B396C9AF9D7ACA380C6E4B5EE09B3700F3CDC8BFF005F7518C11D6CD40A9E3D799B480DC9FF006963704B706E7F0C2FF9F7B0B534EB4C69A4E6BFEAE3D7275D454D9ACB602C0FD48FA5EFCDBDFAB4069E7D79E84EA66E1D789D28E34826D6F558737B93F53F5B7BD0A7CFAD2939C50F589CDC190332852B702E791F5B037FA1E39F7715C02A2A7AF16AD482683AEAEC08F40E78FA58DCFD18FF004BFF004FEBEFC40A1C9AFF002E9BAB03AA95EB94FADC921543B5934F37FD22E40BDAFC7BAA000F770E9C72C12A173D7131DD003607EAC4037361CDB4F37B9B7BB17C9F31D6CA0200A50F5E854AB3166240016CDC8B8B9009049E2DFEC7E9EF4CC18F0EA82B1D4B1AD7AEC8B0D5620B105BF24B7F4BF07DFAA09504F6F5B2680B68CF5D338D4435C10A2C2F7B1363F4FA58137F7BD2402E3875AD61B14EEEB1B35D1514925C1D7C0D442EA617FC1B9FAFF41EF6AB9248E1D52BD8540A9AF59087F1A83653620AF1C7D0FD40FAFF005F751A431F31D5C2C9E181D6360194696B35B491AB8627EA2D6FCFBB82558D476F55142A73DC3AF59347E2FF00423F1F4D205FFDBFBD55B552BD5BB34D7CFAFFD43A921F510401FEA491637001278E0F03FA7BE84000D066BD621B12CC549A01D74CC38D658B0B736D2BC81C5BE87DDA878A8EB7838626A3AC4EAC34E9D5FA6C2CB61CDFFADF83EF6A464375460C594A29A53AEC1D01486B301C91CDBD43FA8B0E4F3EF654B571D6CB05028BDDD736761A869E7F59E45985AC4A8E2DEE8147693C3CFAD3316CAE1BFD58EBA0058369239B8B83716E4027FDA6FF00D3DEFB86A15C757003104A67ACBA858303F9537B5893C96B1FE841F75A1CD3875BAE09A11D7168DAEAA8095FD5CD8900F3C5F9E2DEEDA810750FB3AA51C9EC3DB5EBDFA5EC4FE18DD6C430FC1BDB83CFBD6934A8EAED875C75E2A0B581B58596E2CA39FEBF427F1EFD534A0193D36477548C75EB286325D4304B16FC1BFA49D3C7E4FE3DEAA7E1A63A70AF16D5DDD78597C6185C01FABEA2DA85AF7FA96F7BF2200CF5462C029F31D76C406FDB06353A8D985CF24FD0FE4FF4F7EC9A93DC7AB545411551D6431B05528DC5812B700FF80D37FA927DB79A9078F4ED2831C3A49EEA94D32D2548562609620D2124AA2CB22C560838776671C9BD803EE11FBC26CFFBE3DB6DD0247AA581D65A7C94D0FF0023D4C9EC56EA76CF70F6C0CC02DC23C55F9B0A8FE63A1176CCF13AC2EADACB04BB7F4361FAAFC13ABFC3DF24B748B45C386AF5D2CB190347A460D3A19B199058A43A88466D0AAED720822C149E7D27EBFF001AF64801D46871D19682573C3CFA5B433AAAEB2C48B2F365D3C5AE39F571F8FF000F7E51DA7271D681A5053AC22A9A2A859759214373FD588361637B946FAFB61A46A860387ECE952692BE1E9193D709F3552D0FDBCAAC667729AE124A3AE9B866B80458DC7B65AE1C2F70A1F974E98141D4AD55F9F418EE4C854C8DF6A5403331820466FF003AEEA543BB28668A34BDDADC9B7BAABD4D48FDBD22B8526A0371E941B43134381C1BE4726AB555955346DE765D42186CE5D2863622EEB246097736D4E4DCFD09E43771C16CF3CCE0B0E1FEAF3CF44325AC934A9042A47AFF00B3E9D025DCFDE15DB76A3F855252CD150CA74CC69A1927A995B4E9B27895CEB76B5ECA2DED2DBBDCEEB34890E17CFC8D3FC1D0A36FDA61844724B20F12B804E09E804A3DE1B832D501F238DC9E3A9A733C05ABA2929DF5C7196D4AB25A51246A43071C736FF0F67B16C5300013415C9381F957A195AC70E822352F20A1A28AFF00ABD0F526B63DC5941108E81A5828013FC4A71359236717489955757AEC74F22FF4F7692D6C2D81334BAD87F0E7F9F428DBACC875924290AB793115AFD993D0B5B5766EEEAFA6A39A19450C460903472513EB7496C6F187975A0E3EA45EC7E9ECBBC4B22D44B5247A9E8462CB6F50CAF7219B1C380E9CA83A8F7A366A7C954E79A3A48832A53E90A0722CC2366D2DA6D704FD7DDE3B9400C6967FA7F334E954ADB445008A49C339F403FC3D4ACFF5F64A65A96FE3B3D44DA556546104240200650CB193C86FF1F7EF1CD18A5B467A297FDD20282AC141F23D02596EBCCF619668A832FE632ABCD7A876D6D0B5BC8524110B18C9D3F4B7B590DFC60086E2D158FCB07FD43A2BB91B5CAC1A39E48E9F20C2BFB6BD2169B62E432523D357E7AAF1D541847154C2B04B4B0951E84D0D1AF963E410350E7EBFD7DAD6FDD8F186D045479D0F44178F242A7C395245FB0D7A391D2DD5F9DC762E668731265B2741E0987859215A831EA2EA20691D56464F500A5AFF0043F5F610BFB456B87BBDBDCAB27E11FEAF3E81DB85CC6C160BA8D7C360734E941D8BB79F1DB8B1B9C8295D7CEA9065A30CCEE6395A0712F8C136FB594C96B1BA6B209B7B4B733EA90872DDC01A7A1A67A238202AA047A4D3FC1FF15D2BB113B414C8239090059189B92975D166B7A869FF006DED2D09604363A344ED5AB0EA757552B01A48BE9F49D40FAB8D44FF00B6F6B21421EB4AF48DDCE927F0D7A40E62AACB2153ADCDD839B6952C196D6E07D4FB33823632000745F2B808CE5A9F2E8B7E9932DBF27A90CEC989A5641A6E3D7545948702E0911FF4B71FEBFBE80FDD139798DD6F5BFB2911C682315E04B64D0FD9C7AC38FBCF6FEABB6ECFB12B02F2C864207A2F0247DBD2E809124B1F55C5C8E05947D07D0F36FF0063EF3C050A02070EB0ACD43E7811D74FFB650A13620DEE49BA83C0BDADC7BB8A3025875EC82BA7D3AEC8252C7EA4EA163F524F16FE86FEF470D51D6AA341AFAF5943B1FA1E40FD2C4ADC8200B937B7D3EBF5F75D34A02327AD126B4F2F9FF87AE4CC59155D554800726F7E41BDBE9F4F7AF3256BD5F245180EB1E955E410C756A6F55950DBE96FC0E7DDB53500A1EB4428D45727AE4E540BDC2B3589239E05BE86C6E6E3DE806385F2EB4D5A7C5DC475DBA1724DF400ABCF3ABF48B13C8FAFFADEFCA74827CFF975B22A54797589BC82DF41C91607F1CD9AFC10C7DEFB0F139EAA43000039EB22320F4EAB82431BFEAD5F4171606DEDB20FE5D5F4A8F89B1D7AF6B3960756B08A795240163A411FD78F760ACC081C3AAB035D55A1EB0024826D6776B5CAF2429B1172383FD3DB8C07C15A2D3AA8608BA8AE6BD72085082C0DC9FAF1C01FD9FA7D2E7FD8FBAAB6A04533D6D810010707AE44AF24B14F4DFD4DA83103922D6B7FADEFC69C00AFD83AF020D4B541EB8695D1C346A1B90D63F506E7F37FA1B7BD7120106B5EADC33514A7582E6F7E2DAFFD471F917FAFE0FB7A83874D6AC6AC57F975FFD53A4519D50B7E5CF2A4F041E3E9F9FF005FDF42C1D04E9153E7D62030D4439AD3AECDC790FA5AE40E0726C07A96F7FF005BDD4D0805719EAE0B71231E7D63325AC4024DC1E091F5E00FF69E7DEF403807BBAD16A36AA557FC1D6522356B6AB020123E83D46FFE3C73EF547614F21D5BB4134E34EB800AE580566907A9145CAB5CFD7FA5F8F7724A8535C7545D0C5853ECEBB3ABE8C1B52DADC7D45C03FD7E9FEF5EFD8152A469F3F975E24A9EEF2E1D78B3072C002ADC0E0EA5039BDBE82C4F3FE1EEB404691E5D5C93556AE3ACABA8A16B229257F4FD5B8FAFE38F7A2402299A75BA3508000F9F5C4F284B8504FA16F6B70DEA62DFEB7BB76B11A6B5EB4450777E5D74C2C8C6D650F717172CA7F3FE1F4B7BD8A6A06A3575A3AC06D5403FC3D63F17A759E79B5AE2E2C472001C8E7F3EEB52D8E1D6A80AEAA1AFA759802D616361C31205890415B5BF3C7F87BD1254D5B89EB409D2147C35E3E7D732AA4824DD8A8B026FC1371F8FAFBAD4D283874E1CB0EEEEA7F83ACA547A483C693AAF6FA803EBFD2DEFD9C9F9F4E1A71F2E93DB92335B8BAA875C68DE3326B7E123D37D321B70A430B8FC93EC8F98B6C8F77D9373DB244AA4F0BA1FF6CA47F87A38D8371936ADEB6DDCA36A3C12ABE3FA2413FCBAE5B232625A2840BEA5D01835D5CC88086E1B9049BF16E3DF19F9CF669B68DD771DBE68C89E295948F42A48EBABFCB9B8C3B9EDF63B8C4F58668D5C1F5D42BFB479F43B51CF1D65234175490C600656B12755D4AB7D4F208F71B48A4654D0D7A15C4CC8C1AB515E9494753232C5048753AC761EB07803506FF831FA5FDD03B970AC0D3AB62A5A9E7D4EA9AF094E413C83FA7EAC6C3E80AF3725ADEED21063AAF0AF57415702BC4F51E2AC59192F657019C34970AACDE9522EC468008B7F4F69C0A8E19E9E9318D551D39D160A0ADA885EA0C7195572D2D9A4D4E05940D5F405C5BF22FEF689E210A0F71E91CF22C6A5C9ED1D0B29B429F2D8A48962117810B22F8C0473E3B6A92F706CCA493F5BFF00ADED63593DC22A2E00F223A450DE085C49860DE75E8B7F62F5DE62A267A882868654445D129890D48585C2DC6950079073A8FD48B73EEAD25CDA18FC38E8ABE60E71F6747B61776ABFDAB9275569E5FCFA09F0FB43710A999DF068FA394AA291544B2485EE6EAF6D22002FF5E6D7F6631EF0F392250C4F47C770548C24538553E431D08BB6F602555607C8B9A98D6A4CFE29D8A468E5C332692CA9AC483E84DAFED47FB944B17047A569D3F1EF3E19514C81F6FF003E8C653D0E2E8A0A7584D353086192EE258E692592C010F72DA56E6FFEC3DBBA1174E851C3D7A75775998392C482718200E90D9147796466C9522E891754CDA4F9299C8548C2EB11ABA337F4BFB60AEB6CC8B5FD98E9D97726D228ADF67CFA9B263F6FC94524F3D6D2AD5448BAE69184B7254003C60FAB81616E2FEEAC96F18F11A71ABE671D241BADC9FD30A403E5D0579EC35165598510D6B4EF2812AFA21F18BB1550C0B3DEC2E7FC3D935C6E76FAB446751F975679E441AA5F31D2024EB889AB807A8964D4B0B82AACB77B96542CA01B681624FB40F7D70C28AC748E91C97F8ED4A7FAB8F43DF5BD0CBB6EAA50B2C9E2FD90D196E10A69B32E9377223BDB51FCD87BB59DC4D0C92EA6AD7A24DC3FC6952A387F3E955B9E9A9735562A55ECF0B193D079658CB7041E1B5817E7E87DA798F8D72AFABCFA6A25314614AF41ED72886A1120E1349BA8210A804D974FD0120FD07B528BA9AA871D3BA9916A78F4D191A84118507D3751A793AB528BD8FE393ECD228C501AD3A45233775067A0F7756522A1A391998A5E22AC41E109BA87E4E9E073ECFF006AB56966555075138F9FCBFD5C78744F7B3D226A9E00D7A0C76953C8292AB233AFF94E46A4D46B16F2784A158958D85974588FF13EFAEFEC77299E53E45DBA195297370BE2B8A79B70FD83F91EB99BEF3F33AF3273A6E1242C0DB407C25A7F478D3ED24F4A9652411704DFEAA7EA2DF936E4293EE63C8A791EA202D515D35EB95DC305B02A0017FA5978038FED0FF7AF7AC53FA5D5975D45694EB83DB402E4F16B693F4FF68B71C7BDAEAAD071EB6C069C9FD9D77E951A5F49D570818DCF26F63F5208BFF5FAFBB50B10781E9BAE9040C83D72E020D449B8365E0D8DBE83FC6DEEA324D31D7811A687FD5F9F97589620E848D44DC828DF55039B93FEBFB73C4A303C7AD787A854020D7AF292ADEA5BDC00140F4A824FF5B106DFD7DE89565FCFAF10D83A71FE4EB3B001831D6415BDBFB4750BA9205B817F74070509C57AB90ABDC3875C55D9D9830B28B1205AFE8FC0BFD791EECC1428A67AA26A0D4A9A1EB82A80D7206A37361FABF1F5FF000B1FF61EF4DF0823ADE3590C707ACCCCAAAEE05C81A8DC0B85FA1500FD2F6FAFD47BAD093A6BD39534A85FDBD4657258EABADF9FA7E7EA2DF5B13EDC23000C8AF4CE057C4F3CF5DB3315BFD38F516E4FD6E07E2DFE3EEAA006CFAF5B66214284FF002F5C4925151B490F750C2C4F20F0147E07F87E3DD852A70411D69B5322E9EB8B20550357E174A8FC8B916FA83CFBB6AAB500A9F5EB7A7B012DC3AC766D3A75F1C7E0DF51078FEB6B0FEBFE3EF7DB5E1DDD5298D3AFB78F5FFFD63A96B96500DFEA4F1E96FC1039FCFD7DF42476D6BC7AC4207537779F58EE642438F4AB00CA2E2FCFD6E7903DBA154696A64F5A2CCC18B6287AC8D1E9D04588FF0013F55BDEDF9FF5BDE8BD4B514D7AB50514D475D3207F5DAE1480CA3FA036BEA16373F9F7456030075B74AD18F01E5D725288A5A3FD5F5D2081A545CFFBD9B71EFCDA8D15B8755054062A284F0EB83CA18A491DF5020004DED7B6A1C03F8FCFBB04A541F87AD48430AD0D475C9E4E2460757A6DA6DFDA36D561C11F5FEBEF414D54018F5EADAEA18F9529D630EE8C3D574652473F4208E181B9FCFBB1552A481420F5A5AA9CB7691D4965160B7B06FC0B902FF8B9361CFB6C161903AB382D45F2EB0B3B70AB7FA91ABFC47FAA1F4B0FA01F9F6E041C48CF4D38D46858F59A3FF1436BD99BEB7F4D8903F039FF0078F75621871FCBA75415C1E1EBD7150A140B0517D4BEA36FE97BFF0053F5B7BD1D428D5CF5A1A381C31EB3C6015D6DCDAE013F41EAB820DEEC748E3DD1EA1A83AB466B5257AC46E4843AB48B86FE847D4104736BFE3DFAB42083D6EB5D408C7F87AEAAA38A4464281C585D402559B4DC071F904FD7DD0AEA5604F4F46DA594AF97486C6CAF8ACDCF48D64FBA71346B75075B10248D51199945FD5736FA9B0B0F7CEBFBD2F22B6D9CC11F335A474B1BD1DD41C255C107E4C335F5AF59DFF775E725DCF979F97AE24ADED9376573588D483FED4E0FDA3A1A311580EA5122A385460AD6010F048247241FC73F8F7853716E51D9699EB29209D5954926BD2A857AD8B230591AD76E393C022FA85B51FF0063ECB583C6D51C7D3A588430C0C75EA9A99256552C6C10722FA49B7AAE47F8FF004F7B70C405E15E9F434CFA75C71F5E62AC8D1DB5C65581536FA8FF006A6B95048F6C9D42B8A8EAE543C75E0F5EA4762ED8CB7656D0976AE077464B6654D6E431B2499DC2CCD164A8A9A86AA2AA9E1834324845645118CD996C0EA37B58AAB0BE976FBA8AF618919D0D4061553F6F9F4577B610DEC2F6D7418C2C28749A1FC8E40E8CC6D1AC38EC7D0E366ABA8AF1052C14D354544ACD34CF4F1AC3F7329246A9642753FD2E58FB7FEBDE69DE567CC8492060027D3E5D258F6F482DD228D68A8283CCFEDF3EA5E7C47511AC8A88D1B855773EBF4861A41F49D3A4B5C71C7BF4971A490E954E9F8E12080490DD23F4AD13D95010EA6EAA154116205C7D08247E7DA49250AD4451423A531C5AF8B647CFA4DD6BE3CC6E0A28D52E906206F13B1372E963EAD6458FB2D9D8150449A7EC3D1D5AA4A08A7A79F9FD9D06D9CC4656A8F871AD547CD68436BD0353106E0A9D5A01FCFB2A9249D5F42CCE7A3986E1D541651C7A668BADF723AB2D7E46B9A079233353C6EAD6950928CFC170E1AD66B7E7DBCB15F4A02B48428E3D5DF738D684440BFAF52E936864E96B4C65AA6B542AA3C32CA4FA0DF46B40410430E0FB6A43354C53331FB3A61AE3C450E0007D7A1060C5CEA8904F07861235C88818C9A8FD14329BE8D3C9E7EBEEE169A428A29F3F3E923397152F535E9C296869C4B78C5836A5B1040222B1D3A8FD2F7FAFE3DADB7514CE47495EBA8EBE03A776820A459268592EBEB2FF00A951A4565748C9F55914E9BF37FC7B79D09008231D26D6A18A531C3EDE92F5D9030309780D2583053F48C1235127FDEBDA6453AB52E0F577208A798E83DC964E7FBA47011D4BBFA94FF4248240BDEFECDAD92A549F8BA65E8149AF974D753910911694FD3512CFCF3700693CFD493ECEA18753001704FECE8B67928307CBA0577457367F2F1E1609098AA3C8B50C1F88E28D41956DFF003718051FD757BC8EF633DBC979B79A36E8E5889B18984921F2014D403E95F4EA0FF76F9E23E54E57BE962980BF9418E31E64B0A123ECE95B1431D3C31C10A9F1C4AA817800AC6AAA17FA7A40F7D54B7852189234A2A2A8000F200500EB9B13CCD33B4AD52EC493F324D49EBD6D3CAF0A4DD6E3903FDE413FD7DA819A7A91D2627C82909D71F237E9278E34B05BD9581208B7D6D6F772A003A78F550CC307E1F5EB88170C1985AE7EB7B1217836FA036FF79F75202E96EB60962C09AD3AE288C2DA94B5FF003C1B0FF1BDEC3DD99C3568D4EAAA0A7732D6BD6775171A5AC0D8B585FD400FA5C906DEDB53C49EAEC172178F5905C7ED9D2C4F36FA7D3E96E0736F75275669D398A904D4F5185F5BB1375BE91A6DC724696FEBC7BBD010001DDC7A69EB539AA0EB9D4FD0692752AA5803F8B0FC7F87BF203538E3D69E80051C7AC69EAE0B10413A41FA8BFD755BEB73EEE6ABF08CF554D46BA8E075E01B51015C6B6607EA6C7FC0927D3FEF43DFB02A588EB6C2B42A31D658C0B7D6E795163F8163A49E4F17E7DB6E4EAE9C55254AD73D6320B7A74A82A541BDED7E470748E6DFEF1EEF400D6BC7AA64811FE2078F5DB87B693FA8B15D438423E80F20716F7A5D209CFF009FAB1D42BC6B5E3D7101545F8205ECC003C9FA9D37BFD0727DF8EA614248EBC06939A1AFFAB87581D4961AB92A6F71C129F516BF16FEA7DDD694141D36D51400D475CB53DAFA96FF004B7F87D00BFD2D6F7BA0AD74FE7D6E874D35F5FFD73A618695B87B7166B7F68D8F3CDCF3EFA166362C73D61FEAAA821694EB9DD2CEF6B724F03F3CF3CF3F4F75D2C484E9C575F5C53AE2555910A8B71C83F826DC8FEA4F1FD3DDD756A2A49C754718D680758E3BC61AE0E96163CFD0FE7EA6E78F7B650720F775E05802070EB312A01550A0DBD3F40A4FD7F3FEABDD00241D5FECF5EAE86A29A9A758C5EEFEA53E926D636E3E8B7502C7FA7E3DB842F68229F3FF00571EAD4E249EBCA03162396001B01C0FF5C7D2F61EF4C4A8000C7555A1AB11C7AED632AFE91A9B8D45AC348E08B03F5FAFD6DEF45830EE523ABAE2A50FEDE3D7332137B7EAD60371C0E2E05BFC01F7AD3435AD569D7BC500678F5D2A9660CC005245C8FAD87D0FFB1FF6E3DF8B5142D73D6B8B173F0F5D0B7906A363AAD6FADC1E3FAF37F7BD240D20629D6C15A962735EB9BC635924B30B80635FC1E2E4F00DBDE83500031F3EAAD46614FF008AEB9A5C1653F8B8BF175BDDAE001CDED6F752B400D7AD96342ABC3875CFD20151FDA02E0FEA0DCEAE2DFF001BF7AA5050835EAD50AC549CF5C9816BAA908E07AB8F49B0B106E79603DEB18EAE457871E93398C5C950AB514CCCB594E4BC6E0D93D2087578F4FEE6A0781706FF0043EC0DEE1F25EDFCF5CB77DB25E00199498DA994703B5BD695E3EA31E7D0CF9179B6F39377FB3DDED9BB54D1D7F8D0F15F4CFF00239F2EA36133CD2378E67315544DA2A21720B8B0B6874BFA6FF51EF929CF7C95BB72A6F579B4EE56CC93C6C40C61879329F353D74D39439A36BE67D9ED775DB6E03C1201515CAB52A54FCC1C742351E52172A249015B69B372CC6DC1E3EAA01B7B8C678A547C8C743588B30055BA798B200290CA6E3F0A48FE85071CFF00C473ED36A5A9AAF4B9738F2EA2544ACB5093212B72AC847E951FA590803926DF5FF0F695CF7150D8E9C0CA54A9E97986AE10AB5E460D2216121B5C0616F41E41E48E7FAFB6483924D3D3AF052CA3181C7E7D2F76DE4678D04735649532A6A769CB58B5C58B68055507038FEBCFBA47AD454C953EBD7A40A5BB63A2FA7421439379606D21658ACA1959D55FE962CBFEAC926FCFE3DA8598D322AA7A6DE214C9A38E9B644F2D4A13289B82AA1BD4523D26C08B58953C7B6A47AB2EA229D28863511D34D1BFC3D4B5C4D3B5DC2248F22F3190B607FB2C548B01A7E9EDBF0035580C9FD9D3DE2E9D2BAF03CFD3A708F6DF01D3C711176F1AC7A886E08E6EA0DADEEAB66558BB114F4E9C174AC6878D7A90B8E952A6EF2C8B2943ADC462E58290CCC6DA4294007F5F6B154821B51A81E9D79802A7034F53576F51447EF1502CEC344D3B46433B7EA04916E79E3F3EDB7B546ACA2BAFCCF4CB5CB8AA50691D26332B4D4D1CADE430BAE9548D91D839FE8194122FFD3F07DA49A3D156D400F9F4F44C5C29D35FB3A0AB315598A7ABC54B8A1472D1B64B4E69EAE495668B17F6D50C5A8D225656AC358235F510BA355CFD3DB10CEABAC480914C50F9FAF4EC88B20A6A2A69E9C7D071E9EEA3251BD102CDA436BF49005954E9E083CEAB7B55A832815001E910422435191E7D20EAEAFCC250DA9403AD6E40BA2FD34DC5EFAADFEB8F7B8006AD3883FCBAA4C4A818C741F2CFE5AE9CC9AF42C97047D1507FAA37FAB9BF1FE1ECDED47979569D6A56021515153D20B736E1F0AC91AC97B9711229BEA935F8D00E47249BFB90F95F97EE379BFB4B0B542D348EAA07CC9E815CC1BBDBED765737970DA6289198FE42BD71DBB8A4A58456D41692B6ABF72466B1640FC8443F5F1A1FF6FEFAC5ED6FB7765C85B05BDA2206DC5D434AFE6588F87F2EB99FEE473E5E73BEF73DC3B11608DA624F20A381A7A9E3D29490A09BA0BFD34DF8FC136FA0FA7F5F7298068001D466CC01356A13D636FA0B7D34DF83E916E2FC8E6F7FA7BB2806A4F0EAA581D21863AC3768CEA02E82C16FC92A7820DF9BA93EDD0AA48069ACFECEA84B815D5D9D735B8B0255BFB40053A98F3FABEB73FD3DD0E4569F2F97565A712727AF160189D5A98B1E02DCD8FF0080F4DEC79F7BF2A05C7AFF0097AD1F88EA39F4EBB5472D750AA52E7D56BBA93F5241B5CDB8FF001F7A2C02E9A93D6C03A80A80DD7825CB337045D6EAD7BFFAC3FA7F5F7AD5450A075ED3DC7C8D3A8E017B0005E36E071C9BF27F078BFB70150071A1EA87564798FF00567AE475B10480DE95246AB91F4E3FD7001E3DEC605063AD509FF4D4EB9B71600DB8201BD8D880493FD483FEDAFEEAA6A483C7ABB000003D3AE210805F57F43F5E07241257EB637BFBF1229403BBAD79020D40EB301E82140FA6AE381602E0F36FA1F7461C6B5C63ABEA23853D7AC6C1882BA8AB7D7571737FF69078616FAFBF0EDEE39EBCB5D245457AEC92C48637214851622DC5AF7E47D7DEC8D3A5BE7D7ABA810D823AC64A2AF2A15F954B9B127E8CE6DC1FAFF4F76A1638355E9BA8404D33D7450D82D831FA9D4DFA85F9FAFBF541A9AD3E43AA804953E67875C3F6EE57D1A75036BFA7804FD6DF4B9F76A7E2A9E1D6EB8AE914AF5FFFD03A614A82482C81AFF83C13FD3E805BDF4375027FA54EB1074D33A6A3AEC8BA831ADD2FEAD57F4DBFD63CFE3FD81F7AC861AB0DEBD6C814AA8C7F83AE0C7EA14B2E95D4AA3E8485B91C707D47F3EEE466B8AF54F8AA031A7F97AECF8C3202199C85FAF0091F5B96B7007FADEE993521BB3AB11A748A9AF5DB2FD2DAC9B7D41F52827E96D5F8F76191E5FE7EB4D506A1BAE521361A7E9AB9D4405BFD0D8DFF00B40FBD00056B93D78EAE2A68BF6F5840757B0BD893C0FE805C737009F7625597BBCBAD5595A8A467ACC1942A85258FFA9B73FE05BF3C13EEB424B1618EAD855D20D49EBB6642D7FA3037366F49B0FF0063F9F7A40483FC3D564A5028CB63AC6351B9627920E9E430B137D5C8F48F7BD4A30295FF00570EBC108EE6C0EB93A8BC52467484B171A756B001FD26FC5AF7FCFF00BCFBAD5B569AF1EAE4290485E1FCFAC8AF72CE1B5717B03F436B0E3F27DF99402BE9D7854B86E38EB2AB1207D09BF3F826DFA4F1F4B11EF4CAA0919EBCAFF08F4C75C88FA962A2FC7D79FF001E3FA7BD71A5054F9F5EF0F89271D7634AFF00681E0ADAD7BEAB59AE7E87DD4934A1EAE340A11D612AB73A886626FF00ABEA2FF824003FDEFDEFB68A48EB630684F1E1D24F2F8588135D46FF006D5312BB0D2A2D211CE96FCB29B5EDF5BF37F7177B91ED8EC1CFFB5CB0EE102ADEAA9D12803529F215F35AF153D48FEDFF00B8BBE723EE0935849AAD1CD24889EC615F4F26A70233D3462F72349146D2ABC6ED625B8750780C4B228057FE35EF949CC1CBD0DBDFDFD9C128678657522943DAC4607E5F9F5D32DA371967B2B3BC9232B1CB123FA801941E3F9F4B6A2CBC32328494D85BD5A89FED00BF56FEA3E9EE38BBB496DD98383FEAF9742D8665914329C1E9F63AD795842C41058956B258B96F52FD40047B2920E00C9E952C649D75C74ACC4CC498CB1620332BA92143004AD96F6BFA87D7DB4FF6E3A70802A067A5EE30B125E25D2B752C08363A493C5AE1EFED9F5083B075BF4D67BBA58413542DD23934990D8DC7A12FF41FD55B816F7A07248E3D6C8C00734E943447C6B532B1D520881D67EAA380CAA79B33B0B7FC8FDBB1A3558B7C5EBD52A1A83E11D4FA2CA44D516D6AB34615882C2EE883D42C4296524116FA5FDA88482E286A475A656A004761E856C5494790A78A7364BC65FD254599946B4B0245D0DC5BD9C0B78D9030029D256731D6BE47A9A3174F50EB6D251DC2966B00800D3766525DB81FD3DA768038C61BFD5E9D3CB726841E273D61CC3E3F0C86259119550173116641248C6DA8B6A234E9E3DFA444B7501B811D328ED3B13435F9F406EEAC8DA4629230121E4A0FA85170C47D4020FF0085BD915DBD64ED3FE6E8C6DD6833D242422AA8C045D323290F756001FA8278B12C7E9ED1844A1232D5E9FCD4EA381FEAA74C13B315642752C2C43002C579B1BFE3F3C5BDA83C5428C0E3D3206093F97495C94C91A3A990945FDBB5881C8041B8FD205BD985AA8038FF00A8F4927AD463A09339B8062D1D8092696A67A7A58E0A75323B3CB2E8B8551731A0219D89F4A8F625DA6C9EE660A2817353F60FF0F482EE4F0E2D4467FC9D23EAA82792B28E7AE00096AA234F0B1362C09943CB7FEC00A469FEBC9F73B7B33770DD7BA1C97B3DAE634BD53211E7A2A4AFE5D443EE94660F6FB9BB729BE3364E14798AF6D47CFA11D3446A23045869B0B7E816FC1FE87FC2FEFAD6A2817D4F5CBF6929C5BCFAE803600D85B55C5AFF004B59893FABE9EEDE7C73D509A838E1D74ECCDC122E410AAA39D5F4BDEF6B7F87BBA804D4FAE73D558F957AE2A05BD60001AC75313C9FA7BB3558D14D4FCBAD500157141D7401B91FADBFB36FA2AAFD4F06C093EFC28403F87AA54B114CF5E55D5A872BAB5D87D3917FA103EB71EFC4768D593D5D74F7D0D3F3EB38D4141F4E9B00E7F3F51C5B9B81FD7EBEDB24124FCFADA02299FB7FD5F2EB1369B3091F8B8B816E0DB9B7E45C0F77A300B419EB469A8D6B4EB06AD2CA54358DAE08B71CD886FEB6FC1F77A020A939EABAA84311D7216212C847A6F6E4927F0C3F37E3FC7DEAA0126BE7FEA1D6871F2EB97A5823370AA749B8B96BDC96BF1C83EF4174D40F3EBD8A863C2BD728459C970591AE7EA7E9C81F91C5BEBF5F7A63538F887560BA4D42D57AEDF582E148F1DAC0DC1F48FA9FC5BDE8690002335EBC41D44AFC2075C0A2F25D956E05BFAF1C7A7F0493EF7522A101A0EBDA4546A6A1EBCF1B82107A5802C7FA1FE9FD393FD3DF83A82490483D5B4F05183E7D616F528666170FEA04FD2C6C42FE6F71EEFE7A40C53AA50F733538D3AC8142D8D8B372179E412391604F03FDBFBA0D46B5C0EAC02D15856BE43AEF4FEF69D4B6B1FF005EFC7FB0BFF87BDFE0D543FB7AD54EAE22BE9F3EBFFFD13ABEAB9214EAE174AFD0DC7D0F37240F7D0C214000B758855726B4C53AC823BEAFEC822F6BF3C727F2011FE1EF45C80286A69C7ADA2D4F70CFECEB14A001A92FA58DAEA6C0DC5FE96E3E9F51EEC84E14D6BD55CAE08F3EB85B503A58EA17D448E5C5C05B70081CFD7DFB351FC3D78D2868496EB901C85909B0402E0FD07E037D2E79F7B0D41551E7D5704E935E1D768A4B107806C4DFF5702D7FE97E3DE98E9C81D7828074791EBB1A545C8B1D40AA9FC736B5EE45C9FCFBDD3563CBAF6A515C0AFF0093AE4CC2D7B01F5BFD2E1BF1C585C1FF006F6F75008F327ADB90C3D0F589625D435DD895D4ADFD9BDC5BFA7BB33315217C8F5A4500D78FA75CED6BBF26D75D3A7E84FF006B51B5EC47BD0E201E3D5C5482CD5A75C565E59185C820863C104036E0F163F9F7629C1FD7AA075A9AD7875962B166360AA58036E45F48D44DFF001CFD7DD1B0BA789EACBA5C9231D48F1C762541D5C1054FF8FD47E39FF7AF74D4C304E3ABB05A542D4F5D32AD81B00D763CDCDEDFA885FF000FF0F7EC923D3FCFD7BE104EAE3E7D615756552C1496E41B9B0D3FEDC0FF005BDDB4024D01A0EAAAE7B6AC287AE6D21652AA52E0FA495BFD2C48361C8E7F3EE8400549E1D39A8B0603C8F4DD5C6F4D282961A1CB90E52C15431F5282C01B1F6C5E3AA413313DBA09FD80F4AACD647B8856A32EA3F69E935B5608AB7190A4C88D1CB0AEAD43C8E8AE0717055CB0FEA7FD8FBE2073B5DCA399B779E172ADF5321A8A8E2E48FCFE7D75EB618047B46DD11F282314FB140A7F3EA4556DFAAC531A9A057A98092F2C28AC154B00418896BAF1F822DFEC7D95C5BB43B8A2C3B980B3F00FC2A7CB57CFE7FB7A35681EDEA6DCF67F0FF9BA958EC817310048B3A89032971AAF66D4A7D696B73F8F65F7FB5B44C19531EA387F2E955A5EA90431A37A57A1430D531F94F915DC0D2A24D2A174B150A05AE4DC9BFD38F6412C5425581A8E8C3500A190E4F42F60E6899554889805E393E8079008FA7207D3FAFB6E800D23875520350D687A5646815BF6AD67E43581E6FC466E3D5661F9FA0F7E58C0AD057AB550D2BE5D3823FA4AA87522ECD18B591400AEAA7F51E79E4737F7B1AB8A8FCBAF314007A9E9395CDE299E686E0B0377E010BFEA1882181E391F9F6C4A4C4C1D4E4F4EC45BE16FD9D36536ECAFA091E1FB8958062F4E6205562B305B596CCBE5239BDC827DD7F785C44A351ED3C3A5621865185151C7A5E63BB0AA040C2577598443D409688B35C0566014EB0DC7D7DED3776352CB46EAADB7C648D391D47A8DCF53901046C2C640C675040D56766491C5FD285AC38E2DF5FAFBBBDF492E95D34078F5436F1A54B7970E925B86A58D9A5B06378F4292CA2DEBD497B165B1E47B2F9E4D4406EAE8A28C13ED3D778D24D2C9AC9617D3726C05893E9FEB6BFF00B01EECA4A8D2457E63A699735F3E99F2B045E39194DED7E558FACD89B91C936FC5FDAC0834129F174DF8ACA68D40BD03B9FC8A4314BEA0F2B82A185CDC28E45890085536BFB37DBAD64958291563D20B99C29049ED07A4561B16D929866320BA28A9A4FF0025570435410595A4D21AFA6365E3FC4FB38DD7748F66B6FDDF6AC3EBDC559853B01F21FD23E67C87CFA4505B1BE94CF203E029ED1EA7E7F2F2EBBCEA5F3188897510D501C809C2DA9E53A5BE96E3EB7F72EFDD5E3373EEEF2E33B55C195BEDA46C7FC3FB7A8A7DFC945BFB5FCC8DC01455A7FA691474FAEA86D7B0602E2E6EA0EAFA7D7E847BEC2A9200A574F5CB972B405854F5C0967BDCD981FC01A58581E4000585BFD7F773A7CB87F3E9BAB1352699FC8F588F91DAE0EA2010485D36E2C4FE05B8F6E0D2A385075A604B13C69D7071CB10A4036001B95200F59FE82FEF6B51E7D3745A36A5EB92BA2A050D60FE9E086BDEDC5EDE9B0E3DD5958B540EAE19171C091D75AECB720FEA2A029FA0BF1F9FA1F77C9A50F552A006FE2F2FF570EB306B21B11AAD7B5EC2FC923E9F41F9E3DB6D4275531D6C301DA3E23C7AC760A0D94173A5AE45C1B9E08FAFE9F76D55203540EAECA55702A7AE1FE7036AB8D06E403604DB8038B5B8FF005FDEE810864C83D570C0EB1C3AED8E821B95FDB00D8EA3637E47F8DFEBEF428C3E55EABEA428E1D71B791390C2C0FF008DFE9626D7E493FEF1EF7C0F1EB74A8D4C3CBAE6D66E1CB1B21207D00FA85B7D0B1247BD6A152AB4D5D78A9281D89FF375DC64088A0FED0FA02493CF0A01E39FE9EFCE18B86AF545C9D34A0A75CE325948652C13F1F4E47FAC38FA71EF440A835A57A71096420E69F3EB99525757AB500A7926EA1B9FA924FD3DD351D5C6BFE5E9D2A1947A0EA348791C3369B7A4581258FAB9B01703E9EEE196840C1EAB4635F303AE69A6352C0692A4951C3373FABE9CEAFEBEF66BE79AF1EABC0015008F2EB86AFF00765C5AE0DADF8E47D7FD7F7BD02BA3AAD3F1D7AFFFD23AE090C493CE92107D02FF005B9E6C6FFEC7DF432B55F90E3D62064119E3D655B90490B703FADC907EB616FE87DB78AD07C3D5893804827F6F588065E2C0A8621AE7EA0F2B61F4F4FBBF6922B5AF5AD39D408A0EBCC58DA407D2782A54824120116FAD82FBDE2AC878F566D54D6BD6271762141536E2C2E2D6FEB6B6A2BEDC04000B107A69AA49ED207EDEBB8EE9AC7D5ADE963C30FC1B03736BFBF35180C76F5B53407F8BAC8001A41172400791C69E0DC7F89B73EDBC9AF7768EBCAABDB5153E7D79503160011C11EA373C721ADF5B7BD962141F2AF5E005582FC34FD9D73034860D66D00723E8011616BFD08BFBD31D5A6831D790E85624E7AC019CAB282A348B8B9B9FADFEBF5F7734A860B9A7550493A49C67AE423BBEBB707E97B1E6DC9FC7E7DD59A80AF98EAEAA051811D6458CF909E012081C0D3F8FADBFC07FAFEEA641418EBD86761E4787591432D85F4FD09B13F4E40001E48E2FEF44A9A9CD7AB80C010C3B075C5497B12470585C83AB51FC7F403FAFBD9A0AD0671D5118B0A8FF00075CC471E8D0E03117BE9B10483FD79FA7F4F74A924B2F1EAEA001A282BD75C7007E47D02904FE38B0FF007BFE9EF47CBD7A717863874D59BBAD24EE83D3E198BFA357A5626B822C49FA7FAFECB37A97C0D9F73987C496F21FD884F467B2C465DE36D8CE51E78D7F6BA8E92DB5488A9E350CAA74E9172751B5FF00513C055B1FA7BE1DF3248CFB8DD39F88C84FED27AEC0EDCBA2D6D9545555147EC03F6F425D3461C99048A6E3469E4C6495D2DA97900DBEA79FA5F8F61376C91EBEBD1A1355A531D27F2785679BCE8562934A9BC6B640480C4337218301707F17FA7B34DBF76921A5B4ABAEDFD0F97D9D219AD93FB48DA927F87EDEA5506427A7FD999824B755405AF1B8502C548B5C907E9ECCE5DBE1BC432DB35450E3CC74CA5EF84C2394114F3F2E851C0E6C43A4168F4965D409049623EB604D8FB0DCB6AF1D7B71D1B47323824367CBA142833704EAA7584017FB4402D229BAAB5F81FE27FD6F6D140A01268DD6C135F9758F706EEC7E0B1B599BC8CCF1D352C579A548DEA5A3D4EAB2224512995C9D42D60483FE3EE82ACF4A815A64F0A9F5EAE88D2158E35D527901C4FEDEB14150B91821A91230A6AA812A55B4B46FA2A231245E48E4B32B043720FD3F3ED3B8049072BEA33D3A1DAA750A38C50F4CB55868D97EE60A868C976660AFE975167258DEDA9CFD7FD87B42F0B31521FA5C9385C141D70A79A6A78223246F20D4D6D4BAECEC0D9985FF00B1F8BFB64515C6BA91D2A535F848EBD45586A8BBC91CB06AF344647021D5171EB8C82C57515BAF3703DBAA189A82687E54EA972C14E9A82B4F5AF59AAAB7CCA1AA90BA46AC1640090D7E16EA0FA240C3F500411FD3DDB0FA18E08E927C20806B51D488F2D4D1D2694701ACABE327F0540371C93A0AFE7DBA2320EA27B4FF00ABEDE9A2D9A713D22333B83433217296F2163717B302A030B81C707D9ADBDB1969A464FF00ABF6F4826900524B0AF41951E3AA374E58C2C254A08B592EA3534850A9611B1B0284358FE08F625B89E3D8ACD24E37A7E11E631863F67A74571837D269A7E9799E1F974B8CA51C741490C2A154C71222C71A9D5A45BF5126C6ED6B0FA7B8E9E792E2E1A694D5D89249F3AF1F3E8FE10A89E1C6BD83F6741555389370E3D09D7A1EADC93215B114EE02851F522FF9E3DE5B7DD12012FBADB53B2D6904E467FA14FF002F5007DE425317B63BD956A067841FCE41D29ECAEDCB7AB81F80491F8FE84FE3FD7F7D6ECA9F51D7328FC4453CBAEA404063A0581040D5604F038BDFFAFF00ADEF608EC5C8EA8C1C8350283AC4555780C49B13656B29BFE2E3E839E7DDF268699AF4DB0038357AE28DC35F481A0A8B93CE9E0FE9FCDBE9EEC54119E3D555B4D15722943D7B4A3A840BC0E1481600F1CFD07E3FAFB6F53A124B67A709570069FB3AE46354D3E9BB11A750B692403636FC1FF0F7E04B139A28CF5ACD01A0AF5D18DADA41B9FA96E081EABE91FE3EEE1B04B60755A54F6E7FC9D646574556BA842D652E01B900F2547D56FEE80AB57B6A7A75B500A755075DAB060140F5D8B3358853FD6E0FD45BDF8A95F3AAF5E0C0920AE7AC52C88CA8A56CCBA41717B5EEDCB5AE45BDB88B424D71D50B0650318F3EB08BA1D5725751FA0FC0B9078BEBB8F773F9540E9904D0D41A57ACD212C142EA2B7F496E01D42FC1FC7B615543548CF4F303DA6B5EB8E9B8001FF8303C9BFF0041F4B5BDBB56AF014EAA554D3886AF5D2B3EB3A49F5F361C3691F826D6E0FF004F75340B42320F5E5C92A3875995DADEAE2C6D706FE9BF171F9007BA8143DA734EAE006415C53FD5F9F588A306B0019C9E3FA103F1FD01E7DD295C9F87AD2E3B50D5BAE845A34AF208D46C0DFE82F61F9FAFB7158FCFAF150720770E3D73BC3A6DA1F47F4D5F9FAFD7FA5FDEA8DABE215EB7AC69AD31EBFEC75FFFD33B360CF7B11F5E79FC83604DC0B7D39F7D093DBF8AB5EB0FD06A6F971EB9293E904051C926C2FF004E05CF37E7DF980071FB3A796BA4F9751D989D4A2C2DC03C726E38FF006E7EBF5F6F5010A7A6B51A30639EB986202BA6A24208F496018DFF00DBDFFAFF0080F742A2A411C781EBC3280D694EBB049E0293C5CEAB801AF6B123F57BF529C0F9F975E1A8E0B63AEDA420AB682C14817616E3E80F2357D38F7AD233DD4EAD523254903E5D725B330653F5FD5C5EC79BF245FF00AFBF654529FECF5E1920AE0F5D953CD8DC851CF3FEBDFD47FA1F7BA8202914AF5565FC4B9EBA249B391C807803960085F57F43EF5A402145687ADF761EB4EB9706C6CA180375FADC82578B8E3EBEEDC3B48C75AAD68C14569D6265656529C5AC07AAE08FA9B03C03FF0013EF78A104F9755A6AA10283ACD25C5B55D6FA5ADA7F4FE4F03E971EDA4C9AF4EB80A9A075D005B925543580FA7E9B724DFE8491F4F7B614C283F6F5A15A06200FB7CFAE481A38F91CAB392181E40FA816FC916FC7BF351980AE29FCFAD825636A0A75CC156FA585D558DC70B73C916B7AB8F7A2A47D9D6C156AD09AD3AEED75790104D80522E2FF00E363C0FA7BD1A02015A7565A9048C8E99F3D7FE115BC85294750EC3578EE162918E96FA8247FB13EC879A881CB3CC2DE42CA63F9E83D1FF2B55F98F6000F1BC87FEAE2F9799E9970546AB146235526545B336A05C37D783F55607DF0E77B60F732B1E35CF5D78B27FD30A4D00E03A1068A9CAB471A8D0574AB907D054107D2F66D26C45FF37F61D75D346AE4F4BC16A67874EB2402685EFAA26BEB2EC6EEA490B6208D3203FE3CDBDD32A54D4E4F55340723A476469018C9D4A410C54DCB32B29FD2431B13C5C5AC7D99D9DDC903B18DA87F91E92CF02C82AC31D33D255D651BEBFDC95439D32709FA6E101D565BA83CF1ECF85CD9DFAAADC76CDFC89E8BF45C5A9AC6494E96149B89F48904A18A8E40F4B6AB824851CF3F8E2FED05DED0C06B50197D7A5F6BB8827431A1F9F4E74F9F33D424931152B0C84CB0BDB444152EAA757A1E40E6E40E0587E6DEC3F25A383A5C123A378E51A7502037AF4AFC7EE5D714B254F1C3AA1B117045C22A83C69436E79BFF0087B64AD2B514A75A5069506A49EB3C598964BC550E02B6A912367F55AE05D9179163622FC5C8F69BBB550034E9482B4C91D4B6C927DBA26AB12C7CADE4245F4DBD36FE9FD3DD960765A9AF56F1956B5614E92793CFD351996284B9BEA7624DD64D45563403E9AF5916B7B7A1B12CC413D524B8AA0269F2EA2556EA022A6889669269046469D3E998DC97BFF66EBC5B9FAFB54BB7333500E1D237BC014B2B507DBD307F78228E40269016226865704A18E58D1083A47075C7720FF88F66D67B1C92FC6941C7ECE904FBA468010D93D70A2C5E4373CEF2A3BAD18603580C1A450BA8245F9F4F009E3EBED75CDD58ECA0468CAF774C019A7CCF48634BABE25994AC438F43B51EDB83158E8E3A58D53C519663A7D46E0029A801C6B624F3F8F608BAB89EEA779A672D213FCBA3D80451A08C2D07FAB3D22F3F4BA51A42BACD8976B923C43D40DC11C8B587D0FB40B1B19457E0AF4A55C696EEE80CBB7F7A68574AB694AD6BE9B9FF003614906E3F486239BFFADEF31BEE84807BAD634181693FFC731FCBAC78FBCA37FCC30DCEAD46FA883FE3FD2BE40A1F5464DC7E0D85CDF9008FC8FA7BEAF2F000F0EB9A2E0D49527AEEE0F8C922CF7FA03F900B03F8B8FE9F4F76009D54F2EB7901038A93D63234FD34FD46850B737E4DB9BDFDEEB5A62B4E9B20038E3E9D744282156F7D2C0002F7E0F373C8F7E3AB3E63D7AF134AAA8A31EB06860150920A950541E6E7D5726FF520FE7DDF50241A63D7AA302A1431F3F2EB3B477B03750A4006FC806C0137B7249FC7BA06209C57A702628D815EB22A2A6B5421CD85C5C137FCFF0085EE3DF9AAC012283AF2D003A4D4F58C27D75154F5D94104DC1163626E2C2FF5F7BD58C0240EB441E2707AE1A47AAC78B7239B003EB602C6FEF75273D7A9E469C2BD702ABA401EA256EACA4041EA22DC58DFDD816D5438F9754216BA40AE3AE448D254860081EA26C0716D24F014102DEF432C1BF975AD4421500F1EB8DEE34004723493CA902E7501F4BDBDD8D46A25853AB020D0F975C0EAE1802C109B73604827FADEFC71EFD807D09EAB4A8342283AC82FA8DD56C116D6E48536BA93F823FE23DD4283F888CFEDEAC0804E91E5C7AE564D04EA07F26E48E6C05F9E09B8F756241341D58041415C9EA3348C594AB01636B107EA47D56DF46B7F5F774C29AF5524B53391C7A9C554A8D20EA001F51FD570BABEB6BFB6B87FA53D5EA00028453AEBFB7FE6C5B4916B1D1ACD8DED7BFE3EBEF7F87E2EABA4EAE3D9FEAFCBAFFFD43B4C058804B70C00009BDCF373FE03DF42957CDB8758801482C070F975E31B691ABFD4DD01E6C45CD9BFD7F7ED4BAAA387570874B54F975D117441A2EC45D8E900F1736FAD985BDDB500C6AC7AA05A85A0AB573D710BF563A7EB7D23EA2DC022DC8FA0F7B2DA40D39F9F5E2819B3814EBBE6C42DBD76B0F55C1FF693F5FA9FF0F7EAF99F887F3EB46B40A3CFAE6818B36A0CFA6EA45F841C70A458F247D7DE9A85411C3AB8D5AA95AD3AE2357A87A8727D5F41F5279B5BEA0FBB1A769C7CBAA5586A1C31D73B5C804FEB3F522C4900F1F8B01EE8DDA453CBADD35291AB8FEDEB927D04606951FAC37241FF005FEA093FE3EF6460B7C47AB29C2A9341E7D70914C7C0206BE435FF003C5D7EBC01F8F7E5EFAD4F5521A3AE90287AC9A4FE923D23D4A7FC783C01FEF3C7BF103256B51D6C0C9573DBE5D752A0FA9663C8165E5803F8FA8B8E6DEFC8E011DA3AA94AD0926BE9D720ABA55400AA493EA3722C3D5F5BDC8F75A64926BF674E6A042F97DBD64009208600283CD8F20ADBD3F5E7DD6A4541F3EACCA2BA830A0EB190A34F0C34F2585FD56E0016B7D07BBAD4D4E3ECEA8D41A0D0D7D7AE6852DA42D94104937BD81B803F049F7420FDBD5C354F1C0F5E99F7230FE0993655B114338B1008B32300BCFD355FD8579D6411727F33B9A53E866FF8E37429E4A4F1B9BF96634E3F5F0FFC7D7FCDD70DAE825820E4A881230ACBC904002C41FC81FEC3DF1137B004F21AE2BD75AAD403A813E7D0AB4344AF1A90BEA624861E9B9B025EC792030FF5BD91E91A35D6BF2E969978AE7A96B8F721A3211965D64AB068DF8FAB2FFC18F1C707DB742EA699A7FAB1D6FC45AE7CBA4765A99A38E586317955C32FA1514017176FD497B9F7E8C9E14EACE352EA04E9E93B470923F716C2E6EAC01566BFA8724D85AFFEF5ED6842D4AE31D242D939EA54FB7E2AB1E5A597C1316D5C1201702DA18827D26E6FF4FA7B7A2DD6F6C99D524D510C51B23AB9B6826A6A8E87D475165DB3BAA33AA9290642354326BA7942E98E3E0E951CB3DC7E2F7F6B86E965704F8F68CA7E59FDBD322D668EBE1DC8A57811D26EBF736630D7865A0A88C80D7514F21D257FB3FA6E138373FDAB7D4FB688D9E52D49A95F2CD7A7E14BE268149A7D94E99A5ED4862475AA8EA7CA545D8432B33D83593850502F3C7D6E79F7E167B661C5DA53EDFE5D3E63DC8D34424807A6893B80CDFB11D256B0248B2C0E029007EABE924B9361FEB7B551AECC8B4172A47AF5A6B1DDC1AE9C7DBD4BA7DD39CCE3C3F6F8B9C2B4AA0BCEBA1BD3A9B82C48D4C6D7FADBDD9AFB6384292E49AF90E929B0DC0D4190034F5E9534B86DCB54F1CD33FDBD8920B464B13A5934A8BFA4598F3C000DFF00A5D86E61B25A7D3DAD5BE7D37FBB2561A659CE93C69FE1E9DA876C2B562495B3CF56EA8612BCF89A47555690E93C95416FF007D94EE1CC17F2C4E81B446DFC3FE7E95DBEDD0230214171E67A331B27191D3D169104711B2AC6AC359F5056D4800FD445B83EC38ACCE4B30AB9F5E97C8BA740AE3E5D2F2A691529F46AD2343312410E6E4100EA242816FE9FEB7B5457B31C69D272F47E1F67FB1D053B921A75A79FD5291A1C7274C60803852786E4FD7DA448A92771A37ED18E9CD46BD16A8258D7754715C5853D713C5EC74C76B11CDC7F5BDEE7DE667DCFA10DEE75BC8A302CE7FF008ED3AC78FBCD353DB3BB2C680DD423F30D5E96C3438FED328BF20D8DF8E7FC0DEFC7BEA7D38FAF5CE0A838A63AC72467D36B826C14126C003CDFE83E9F93EF618D08F2E9B714208A8F9F5CED722EA00FC1E7936FC01FD47FB1F7EF98E3D78355880053D7AC173AF95606FF00403E807D00FA5FDBA2BA38803A6883AC9607E5D738A4666523920B0371FEB7D4FF0051F8F7BD2A0691934EACACC482462B4FF8BEB9CFA8856B5AF617BDCFEA254F22C4FBAC7F171CF5E91AA28063AE993E84F0E09B917BD8F2471F9F75150C403DBD568415F5EBC56DE9D2A4953A79B13AAC793C722DEF7A8924D683A75D5540A8EB801A4306235046FEB63FD47D4F3C7BBB02C569C3A649A50573D70FA44AF6FA9B11CD82DCFD3FE47EEA6BA8853E5D6D28518B0C57AE0A2E5881A9585D83DEC1AFFD483FD3E9EECD5013F8ABE5D78951A8A9C75E6D3E96BE8B2716234DB91F4FE9EF40927D7D6BD548040A023AE71B929A82F0BC055173FE2C41FAF3EFCCA03815EAC8C7431F3AF5C6CDA1AC42F9196FFE3F5B86B7D3FE23DF85037A91FB3AB824464FAF5DF84120D974310B62D602C7EA07E589FCFBF06A6A238F54652006F2AF5C4464B58D80F5597E84016E7FC6F6FEBEFCDA4AD5454F9F5BD2C5C063DBD648D8E8BB00D6B2A83C69B7D093F93F9F7A70050571D59492189E03AF6AE74FA6E3D3FA4E9D47FDE6DC7BD69C569DBD7B52D29F2F4C75FFD53B719D27517D77FA93C7FAD65BF0393FEDBDF42DAAC002B4EB1080A7E3C1EBB123486DFD50FD7EA011FD47E78F7A64550339EB41DEA54FFB3D7AEC01506ED7000E4923F22FF9007BF535678756A95AAA65BAE2750622DA43006DC93CFD6E48BF1EEEAAB4C67AAB163F2EB8913A97D44907FB42C78FA0BFD0DFDF8946FC34EB403AAD09EDEB34602682549D60EA247A8900589B9E41B7FAFEE94AD56B81D58045A1CD7AE56F53691C5FD62E005E2E2C78049F7E6A85A371F2EBD8663A450533D711A58837FA737FEBF5E48FC9BFBF7EA0A9E3D50B29F8067AEFD2C6D7E7F3CE9079FA0FF5FF00E27DEE8C16A4D3F2EBC486A8A67D3E7D701A893706C4FE96176000200537B1E47BDF9541A1EBDA58E4F1F4EB95C9D2384175FAF2C01BDF83F5E3EBEF741924D4D3AD540201E3D746CED6047D7D234FD6C3860C6C2DFE1EF54551AA983FCBAB6A20D3CBAE826A651722C0F1CAD8FE4F3C96E3DDB56357975AA02401C7A94A18036BDB9E40B124907F3CF16E3DB2CDAB875708789E3D700482349653AAC6E2E01B5FF3A796B9F7635FC401FB3AF006AD4A815EBAB9FF0052A751B358DBE9FA4DBF373EEA69EA7AB824900815E9A37248176F65859416A5D00B0E199DD23005C594D9B8F604F732616FC83CDB293DA2C25FE6847F84F438F6DE233F3E72A408B9FAE8CFEC607FC1D60DAE8C6287412A6E094058D8803492BC1371F5FEBEF8A7BB1FD461434AFF00AB3D757EDFB454E47AF439630BAC7196D0C0BC6A1BF50B816280FF0064822C548F649520AD47FC574E3A8A0A71E966D49098F5C5E365F49903FF006030D44A82599575FD2FF41ED53C4A7515F31C3A4CA594E97C741EEE2C7C6923CA80EA917414FA94B80C030BFA94117FEB63ED22021896FCBFD9E9787D51855E90F140242CAC8559759D4A458DB823E80AB0FA7B56818A03E9D26344E27CFA7FC5C25648249142A96B249CD88371FA85F9B0E6F71EE9A4B0AE9A0AF4E2C800238F4316DBA48CCA63962445015E291111E56046A7051B48751FED376E7DDA28C2330D247CFF00D8EAB2B165535A9F4E9CB706C8A3CB032B24643A1F5321BB214245878810B7E7EBFEC7DA0BC84B3314201E94DAB32000D69FE0E8377E93A3AB9241052C04737691535806E4940EA355BFD8FB2B104FAA8C2ABEBD1CADD055A9620FA7507FD0B6368D89FB289A6E5C88E38DC040096242EB02E7FAD88F6E08A44C13507CBE5D51EE5DC5564EDF9FAF4E34FB3E8A8019453C51B800448F612DEE0DC46142A4771FE1F5B5BDF8C356D64D47957A4AD23376571FEAF3E9BB234803394500A840E003F5B0560CD7B0FF006DF9B0F6F040B463C7A68631E5D34D0E39E6A80B1A11EB0E8390A74B8D6DC7055BE9CF36FC7BA4A4903D3ABC6555AA7A31BB5287463D4BF88031B3EA24AB009650C5CFD2C7E87DEED61D4033D35749AE66D3815A8EB3662AA2A7493D362415125C4AD238F4C6345F4AC7773FEC6DEDD98801957E1F3FF374CC4ACC549F23C3A01B75D431478BCAD740CCE8BE351C9009E09FAD8FD3EB7F68158935FC20FECE8C82528C4745EE91436F3852E45E92B89165B80A9191A585EEC4727E83DE697DCE6A7DCA249FF88329E19E0BD638FDE7CAB7B672A83426F61FCC54FF003E97DE1296B6A07FD7E0B7EAB923FA1F7D4A0452B5EB9C0C8380E3D7B9F5B5896650145CDD483C920F2435FDEF008A70EB54F8BD7AF26A6601CD8004580B0FD37FF5C7F87BF1A0F849A754505490C69D79AFC691EBE073F40BCFE3F0403EFC0F1AF0EB4C1B34C91D71B28B0B9D4D725403F53FEB1BDEE3F3EEC350A91C3AD648A3F9F5DB10AEC09F22AAADEFC303F80383F43F5FF5FDED002A0F06AF5B7A0252B54A75C0906505030D3623824836BFFAC49B7BAD281B3D36284820507CBACB2BBF8F55BD5716E3F1C7047BD2004807874F3921751CB751C1F4912210E4024806E4DCDC58F00587B7194D6AA71D33A8807B723AE6D668D574AA90A5881AAF61F8E40E7DD0554920E3A73B740078F1EB1855BF8C702F76BB5C9FA1B0FCDB9E6DEDC2C69A89AFA63A6C00485518EB1B27A82FE16F6FD56B820E9079FA7FB6F7B068BA8F1A75E03511E9D498EE2FA8917039516E08FC93C5CFF87B698D78571D6C1C60E0F1EB83956919446552C158FD7FC38BF0757BB2E14316F3EAC5AA400683AC6CAE5C2ADD93F17E38FEB61C8FF88F760CB435343D69812450923AF48BFA6C59B937B11F40381716B0B9FF0078F7E56AEA07029D698014A5491C7AE5FA400DA8DC5C5B817007EA1F507DE80A9217E1EBC0A80BE67F975D6BE2F617FE9617B7D7FAFF00AAFCFBDE91FED7AF7899E39EBFFFD63AE1549D7E9D23F02DEA6B900136F55BDF42A846919A7588ABA585682BD735D6AAF7050963A6D602F6048FA8E0FE781EECC412B4CF4D52A1AA6953C7FC9D66202E9BFF00697D4002496FAFFC8209FF001F74A5755387F2EAFDA94CE4F590460B0608071A4937B95E7826E3D20FFBCFBAD48140715EB6535152FC7AF305B1B1038BAB1BDAD602C05FFA7BBA96FF0063AA1D24B67B7E7D61563A893A42804037FAFF0043F93EFC476F683D789D640C0F4EBBB316162000483C1FA7F53C81C1BDBDFAA09E156EA8430AD569D610633F82AC3529005F8373706D6E41FF00607DD8EB0A7D0F5EA805401DD4EB2217F185B1FDBB8B020DF8E0936BEABFBF30566F91FF00571EAC09A0046475CD44814B5C16209B9B9161A87FAE08F75252BA48C0EB7DF439AD7AE8DDACB625CA8B92A2DA941E08FADEDF9F770B425ABD9D68D6A9925C63AE215987D2C4300BC5BFA5D8DF9163FEC7DF8B2F9114F3EB41188EEAEA07AC86EA7F4DDF591ACDF93C31FF005ACBEE806A04D71E9D5DCE922B8A79F5CEE45D9988BDC817B82058DAD716E7DD4F01418EB658A1FB7AE4CEEA012036AB0B7E749E2C4FF86ABFBD62B4E1D6EA749AF5C6CFA954588FEC902E4053AB9616FC1F765034934C8EB6355570294C74C3BA837F77EBC2C6E559A85246009D024C8532FAD94590331B5CFE78E7DC47EF95EAD8FB59CD8EEF43241E18FB58A8C752B7B2D666FBDCDE57554348E63213E9A158FD9934A57A9DB618111E907D480B2AA836650A2E2DCF278B7BE396E74F1183703C7AEA0DA46CEA0D703D7D3A1A310AC240092AA05C3116555B5CEA02FCA9FCFD78F6548002C2A29D3B254A8AF1E840A63192165D0D0E85BB690436A1CF8C81A9E126C48FA836F6F84414A8EDE987466155346FF374C99DC502892AADE34BE890F03D4A6F0B73F52A414278038FEBEDB788A9503E1FF57FA875B8DEA5AA0D7A0BE7C7859656590DB533160BF90058103904827FDB7B7101A0C8A7F83E5D5AA0541E9E71B4E922C491A78DE25665D4C4A90E185C861A7FDE09F76919540041AF551505ABC3A5BE35A5A5F17EE7AA1378D0A06528410749FA6B37FF000FC7BA7894014F107F974FA0D4C283071D0D985AFA7ADA78A27312C840D4245905C7D7D48C5ADC7F4245FDD2431C8280027A7A38CA331CD3A530A2A1508CE689985C1114AF1DDF9B13AFEAC40FC5FDA265F9003EDE948918AB71FD9FEAAF48DCCE8919F4A9F1156558A063ABFB09AA43201746D17E0103F16E7DB4D8C0AD3AD21E00D2BF3E9333E3E33A9FC0524556533390557EA57496E138FF006DF5F7EA28000AF5524E479741FE5280AB2450A9923258B368010BDC93249AB96B1171F5F7A0B42031A93D361EA09C01D45C653AC7526EAC58B21D110FD24DC0B96042FD4707EBEDB70A29A87D9D6E36D55F5E85FA19248E24139624211E228582156D2B7551A6C09FA3704FE3DB88E4267CFA64C618B7A74C79A63246C3D6A2EC4EA55218FA8E93A05FEABC71F4F69676C9A9A63A590A70E813DC1133DB4C6A351258DAFE9E4D81E2E41FEBF9F689288C148C74A4A92AC4B64740C627195B5FBD929E929A5AB9E3C6666B248E052EEB4B494EB2CD31083514821176B026C2FEF317EE8FB85AEDDEE4C125E4E2389AD65404FF001305A0AFCF14EB1E3EF1F633EE1EDBDE476F11775B989A83E4493D2B9832728E2C0102FF004506D623EBA85BDF56948207A1EB9AEC284E68DD602598A9F2302188B106EC2C0D883C8FF6FEDC0400411D32589E04EAAF5CEE025D832B5C58FF0051A4F241BDBDEA84D69D6DF4D0EAF2EBB06FEA51C701411CDFF26D722DFE3EF64015078F5EAEA5A8EB11507D40B0B8B9005FFDB717047BD862001E55EA852BDC4D3D7AEBEAB7FA00DA589B017045AF7249FAFD7DDA80B64F5535D231D73BDAC0693F4F55C8B824FE08FC8FCFD3DD715CE075AD5435C1607AED9349B063A196ED7BEB0C3E975E7861F4B5BDEAB5FB47ECEAF400F0ED23875DA91624026DF527F20FD41FC823FD6E7DECF9A93D6813A091C3F9F5E750614BFEA67240E2F6FC71F537FADBDEC13AC91814EB615420F304F51D55ACCA6E0FF5516F483CF37BFD7FC7DD8D010D5A8EAAA28C5694AF5CC691A988BE9B0B023F4116FAFD073F9F74E34507AD06D20D388EBA1A47A816B5EC56E09007F69ADC5BDD9AA35034A11D5803D80701C7FCFD64626CBA01625AFA7EA5893F407E838FC7BA0F3AF01D58D0514263AC3720B8086F661EA3FD07001FF0FF0079F766031914FF00275556EFE1427AF5F53722F761C588B71FD01B7D7DFA83343E5D570C4B019AD29D627662C5D85AEC574B1B5C8BD8DED6E00F6E8F840AF0EB4C31A9B875D71E3B73AB5E9FD3CDB96B5BEB6FF1B7BDE35FCA9D374EDAD3AFFFD73AEB1B29F53016254037B0B73F8FC5CFBE876A14C0AF587FA695AD29D48B162093F502C2DFAAD63727F1FE1EE87810AB9F3EAF5A77379F5CC0BBAAB5C5CB1B917506E6D6E7F3F9F7EE2B51E5D57895F36FF07521871FAEC459BE96D573CADF9FA7B6EA01A81D3CD815AFFB3D61711F20DECA2E4AF1723FB36201B9F7646607B7A69C2924629D744FE08274588BD81E7E9A871EEDF0F75467AF0A53238758D8314B805C82355C69FE9FD91C5C7BF6158D707E5D6A86B8CFDBD7095178636B9171F816B81F4E46B1EEEADAB1D79D74B7CBAF27A7F47EA6FE801FED1FAFD05CFBF115AD7875A0DA694FF3FEDEA4DD54DC06D1C022DCEA3C0BDFE9CFB682D71E7D6E8477642F5CD0AFD2E016E413FE1FD01FA1F7AA352BE9D594A5400727CFAE9ECAEAA18916BB69054373722FF5B1BFE7DD940A31E269D798B2B69AE075DB1121D566B06F57FAC2C01078241F7A008F3CF5B62AD43A6B4EB8004926EA00E13571C5C9E47D4D8FBDB50E902B5EB4AA7B89C0EB2D94A02D7625B9D2783F903E971EDB35A9C757500824835EBA47242AAAE900FD6D763FD05FFD71FD3DEC0A9AD7FCC3AF254A690299EA1777645B6149D7FD5ED46926477FE267DEB9AAFB9D54B16DFAAA234D8A16F52A092BE373FD92C0DEE48F7829F781E7C97791B9ECF0B30DBA172A943C4A9CB37DA71F97599BEC472847B75CDA6ED253EAD52AFEBDC2800F4001AF53B68D3C7A20B285257573F8B8B02A6FCDAFF5F7801B807691C9F5EB32216654AF953A1C7134F194841BE9B81AC7160C47208E58061CFF00AFED0E8A5598767CBFD59EB7AEA680E7A59D3D1085559832A82150AF2B6BF3A91B9BB7D2C7E9EECA414D4703AB50B1A0156EB8D5C4C6391591C426C8AD1A825CFE754275582DB8B1B1F75959A9A55FB7AD22104B91DDD05398A511D46A4042067121FD31C9A482A4A7E180BFFB13EF51C814E9340BFE5EAE54B296E27F9F4E5818D262922100DCEA2B601AD6E003C11F823FAFB5A00601A98F5E91356AC2A7A5A5362199D9E362230DA882A55C122E0D8121821FF6FED0CAADA9B23483D2D89C0D24A918E943493494A15343ADEE5A461E86BDC7E96D20136E6C7DA4660069191D18440B1F95303A5145593C88A1247D3A8378A3BAA5C828242A1C993E96E7DB59A95AE3E43A50CA28491D49869A4964D488CF230BC92B955000B92814DDB937FA7BDAA824024D6BD2726B8E0A3AE7558D8D90BCB2242557501C9D4C4837D2069D479FF6FEDC10EAF8573D30EE547CFA0D738B153195D18B35C81AC9019DD49B2E9FC9B7D3E807BB1434EEE23F9749C3F604D3C7A65C1D137DC33485E4F237A94EA097B82A005E5B49FEB73FEB7B2D790B48501EDE97A280AB800F4306368495FDD8E56BAAD986A0A8AABFA486E5B4DF93F4F7B89980D3ABBBAAC94F2A53A6ACED24314760165BB5D4210BABD3CA863EA53CDBE96B7B6E752546AEAF131352074076E28432C8238CA95BB9E470483E9E4F0C09E4FE4FB622521B39E9F26AB93D172ABDFF0037516EDC6760901D30B3C91D61BFEAA3C9C7FC3EA4C814E868C455172A7D26DEE66F6AF711B7EFD6D2B0346AA9A1A7963FCFD47FCF9B6B6EFCBDB8590F88E9618F3535FF0063F3E8C6EFAC2E0F258CC3F646CAA9A5A8DA5BB8CA7C74C6F062B36A826ADA05009029A62C5E21FD9E57E807BEAA7B51CF077FDBFF00755F49AF70810156E3E2475A027FA4BC0FA8A75CDFF71394CED178F7F0C7A2277A3AD2815FC88F937F87A0A82F0C841BDEDA80B581B5ED7FA9FF001F73266A083D45D46AE40EBA326A363C15164000BDB9FF0063C93EEDA69423879F54D5A9BE54A75C492500BB3B5883A6C40E6C4F1C11EF429A891C3E7D57E1048A93D78DD4E802D65E2D7373F40403F8B8BFBF015CF57AD40078FA75DA3155FD22FA96C0806FF5B703827FDEBDF881C2B8EACA4F02BD75604EA5175BFAC3804FA813C8B8B8FE9EEDA69DB4CF55D2A482067CFAF3315D22F70791FDAB585FD56B7D07BF2A93A8119EBCF5A28AE4FA75C431D2117FB475927F239B937FA5EDC0F76A646A3E5D68534D141A75DF014F2A486B8E071C0BF079E2FEF54A69C71EB4180D42B5A70EBA08C4A9FECB722E4FABEB70071C7FC47BF0D209C5475EA30A36B22BEBE7D75AAC57D0A0862B603513C836600DADEFDA6A2B9A755EE2541A0CF5D8D6CC1D54916218E9165B7FB49F7AA0D243375B2199B501938EBDAD9458172DA8DC5C031837E2DF4BDBDFB48C134E1FB7AF0D41748AEAEB186B02ECBEAB7A058DF936E6F7049B73EEC41F86B8EB4A0805987FC5F5D16656565175FEA09B6AFA58DAC3FE29EFC1572A4E7AF1D428C33EBD74E0A83ACA9E38FCADED70091F93EF6284F670EAC4D54EB350787DBD63B9FD573AF95D163AAE2C41B5FEBCFBB545694C754A6695FCBAFFD03BE02B9F4DC5C0D639B8BB01FEC3DF42CD5451B22BD61F12091419F3EB3152CC1B4A9000016E01E05805B7D411EE80815A93D3858E052BF2F4EB9A5AFA8060589B5EC6C54722C38B1FA7BF127E11F0F5B0CA2B5F3EBB03500A4136E350B5AD7BF03FAD8FBAD69D6D7B81D5F0D71D613A1998B10000C2C39B8B9B7040E6DF9FAFB7AACB4D20E7A6AAA3506381D7AEACBA85896014DEFC05E74DFE838F75A51886F878F565A152C286BD7405D4482FC12197FD6E2F6E6E40FF006FEF6CD43A4FE5D570CC280D3AF0D2EC090748FDBBB002EC470DA472A2DEF79A115EEE3D5BB853155E1D7065D049F49E781737B2F16FC0040FAFBD7C605703AA000602D0F5CC6AF15AED72D72A45CD85AD7B726E3E9FD2FEF7405B80A757CD0D49A0FD9D7001C321018FD7F1C006FF00D6E4FF00BDFBD92B91D500666EDA53AC86E509B1FC72C0D85CADC69FF0BF1FE03DE8D10850D8EAE189D55F8BE7D650CB182A05C583037FC7FB4FFB6F7420B3671D6F0A3B38F9F58F86D4406B11C5CDFF003F41F436E7DD8E081518EBDA469248A75911B81FD92B72A1B9173607F1F5F7571926B51D590D100273D2A764E0A7DCBBC307848632FF007993A55722FC53232CB54E40B000431B1B7B27DF7708F6AD9B70DC1C8023858FE74A28FDBD1A6CB64F7DBAD9DA05A86901F5C0C9E99FE69ED1CBE2FE4FF58D555415298BC87566E69B1153A5DB1EF34797DB5055532C9FA56B29E1452CBF94607F1EF973EE7EE0C924B1C84EA735CFF489A9AFDB5AF5D0FF006B2DA336172EBA7526953EA3D3F68EA4EDB87C3153DD0B94016EADA74F17205FF04FFBD7BC75B824CA401407A9AE23A90D0E7A1A30ABE486EAC8C06978C54593C6D6B3AF039E4F3FD3DA20194508AE7D7FC3D3AA2B4AF1F3E94FB56B32D95C3C1579AC53616B9DAA51E8DA45A931A41532C10CA658B52BFDC4318905AC42B0BF3EF61A391010A57ED1D3B2218250AB307141C3E62B4FCBA573E3E19E375365711C9C21B6961CC32C4473A24D3CDEF607DB4F182A59B80E14EB7AD81F507FD543D0499EC795799595D509D5A582BA48C09BAA3AFE74FE78F69C0EDD46BF9F4E9201AAD294EB06D7817578828263F5855517018DAE08B5D8FD7FC47B55049DA50E69D269A362E1BCCF9F42FD2D1F8D500217D3AD5ACDA1AF600EA6164363F4BFB7652856A0D0D3AAC4AFAC8E3D4EFB49422811ACCA00B2FA4B5ECDAAC1AE00E7F1ED048000052A3A31858827BB3D38D3D17DBAC6CD0C719001D37FEC13C1D1C0205FDA6A371D27A74C8CD5D4D51D3A24656EB1451C838666368C2DCDDAEE4F2C3F03FC7DB82314AF99EA8589E3803A8F5D465A22CF332AF048550C2D6008E0006C07FADEDF451AC8D43E7D2691EBF86A7F6741167E159A758E20EEA875B310BE462DC00A390149FF006C3DA5B96A1211BB7AB5B267530CD7A74DBB4616449079D5402C34C6CF1B1B5C6A61622DFD6FF5F65B1AEB975D735F3E973E0701D09D044CEA14092CAAE17F5332821B51725B98F5B717161FD3DAE64A2800D4749FC8D4749FDC3144B1956D4C482C1846BA48001D4CF624C82FFEB5BDB12280284F1EAD19273E5D01D9F87534E2328142E91E552A5D2DC94FEB73F5F6D84EFC1EDA71E9E661A7E7D106F947475A7ABBB0DB19A53254FB473F5D42405512D663A866AFA653AAE8C92494C139B7D4FE7D8D3952EC5AEE56B29144120AFD9E7FCBA2ADC2DFEA6DA786A6A54E7D3A399FCB2768673B9BF975D164F3348D4151BAF7066371ED0A69CC8EF4856526927324AC6555C84F0C834DFD31483DE6DFB6DBFCBCBDBEC3B846DAADE1928DFD24340C3ECA1C7CC7587BEE56DB1EEB1BDA4AB4B878857D5585749FF57AF485ABA6AAA3A8A8A4AE89E1AAA5925A79A9E5564920A881DA396375E0831C8A473F5F79FF006B736F776F05D5B3EA82450CA7D41C8FCFD7CFAC34BBB79AD679AD6E5693464A91F67FAB1D62002A5CF3C7247E4DAF7B73C8F6FE7853A4EB403AE08A9101A06A5FD5A6FC2963A88173F4BFF4FA7BD05C75A2758C0F3CF975D337AC1E0F37F49BD8F1C29FC81F8F76A791E3D6AA3F11E3C3AE1A5CDBF27EA0A9E2DF55E3F4FD7EBEEE34D38E3D3AD57CC8CFAF5E48DC337363FA9988B1E6FE9E6D700DFF00DBFBD310457F2EBC01C8E078D7AECAF25805201FADFD5A6FE902C7E9EFD534A791EB613CEBDDD71B9321163C585C7F8FEAB5EFF4B71EF74EC15C0E9A6235D075D8B5890092EEEA7E96E5482C49FA703DEB3EBC38756518AD323D3AE2AC4A329D4348B024DC82001C5BF03DEE84153E5D546938038758C358965249517B69B6A722DC5C7363F9FC7BB9390BA680FCEBD68E0860D91D484B32E9E43705AED6FC5DAC01E7EA7DB44053F2E9CA96141C6BC3AE2E014FA8525B826D760070A411F9FEBEF6A4823CFAF1D2C0AD29D6328CC7528D3A4056370791C5C9E7FDE3DEEAB904573D5486385C0A75C11406BFD51C1E5AFA6F7E4F3F537BFBB355870151E9D5402993915EB23A816B8E41B943616FF102E7E847BA0346C0ED3D58D147CEBD75A79FA7AEDFEC6FF5BFFC174FBBEAF3AE2BD7B35D58FF002F5FFFD13C0A1C1F4F3722F7BFD0DCEABFE47BE8576BFC5C7AC3C002F59A3B303C7FAE79E08FC10381EDAAFCBABE1A94E3D72B170082348242AB7D5BF279BDAFC7BF75BCB5416E1D710DABEBC1B5ADF4B1BFEAFC0F77200507CFAD6AA0A1E1D6391483A82EAF4937B01AAC38E7F36FA7BB03504134E1D7B89C8EBB1658C59753B024FD411C8FA0FEA7DFBE2739C01D5EAA11485A9EBCA08E42E83A4961704FD7FA580249F7BA827B8D475E005430C1A7FAA9D703E427D5C0D3F406C6E78BFF00AFF9F7750B9A71E9B2CDA86AE03875D8523510756936E41B58DF83F9FAFE7DD70680F1EAD4A3310C6B4EB95E55FAD801F536FADEDFD0FF00BC5BDF8046C03D5B5482869D79032E8FA83F565BFD757D08FF006F7F7E241AE400381EA895525867D7AC859DC329056C5751B7E9FC5EDCDFFD63EE9A40A356A3A70B56BA87E7D70035B155B051A92EF6FADEE2C3FA0F7B3DAA2A33C7AD71A69C0F9F595539551F4005B4F200BF24FD7F23FA7E7DD4B5788E9CA0A53C875DE822FC12CB6FC5811C9E3F3C0F740E1B8375ED0540056A3A3A5F13F63415B36577854FEF3C137F08C68B06111F1AC95932B5AEAE7C8883FA0BFB84FDDEDF25863B4D922ED471E23FA915A28FF09EA55F6F36D8CADC6E4F432574AFCA9C7A1BBE5EF4CD7761F536377760B133E4B73F50E51371C54F434F2D4E42B7695685A0DDF4F053C0AF2D4B418C6154A8AA497A516F7849EE7EDA6EF6B6BD4525E16EE23F80F127E438FE5D6517B6FBB0DBB76167248160B85D19A535F14CFDB8FCFAAEFDBD1C12C00C444F13AAD4C33C6DA84B095D68D11E43078C82B6FAFBC659C2EB22A4D3F3A8F97CBECEB23E324508141C3F3F9F42CE2008C4234A48AF754D5FAFF0416E47D1073ED23678E53ECE9720AAB54D187ECE84BC5C4A6C4066018B98AF62CA16CC14FE411FE1C8F75F0B81AF68EAC4F9506AA74A0582111AC91CE5A3616BE9B4B110032A48A2C49FC30E0FBD91445A1FCFAAD416CAF0E917B8F1F4D3D34AA9178A7552EFE36FD9947EBD297174723E87E84FB4B202C2A1687EDC7575054F1A8E93186A374A9122451C70C6500F55A420A82007B0BBA37E3FA7E7DBCA06914029D51892D963ABA1C30D0B4A88648D522641FB9AFCD1EB6537261D44D8DBD46DC136F760CC4D34903F68EAB40A6BAAADF2C1FDBD2AE0C4D1CF1E878A9E468C0B128C9C91A496200F45FF0036F69644D4DA68350F4E952315CAD457AE7261682302D0D333C4492409261C582B01C91F4FC7E7DB2D18C02991F3E9D12BD0D09A7D9D63F13217F1D842CABA961A68D74391FDA91FC938171FE07DEB530345A69FB3ADE08EE06BF6F49BCB0967A79174346149B12A51BD3CEA2C5AEDFD2DCFBDEAA6AA0CFCBA69866B51F9F41456C12CD51E3118B6A5BEABD948234E954B3172C6FED349429523FD9E9D8E808A1C74B8C1E2D488C3C550CDA6DA9CBC71936FD3E35F4A836361EEA8AAA2838F576C9AD053A5DC142D0C02E3C64A9E1EE3F4DC84D66FF402F6E6E3DB82A695E9A62B915CFCBA42E7C36991174825490AB72741E189E2C09FAFF80F74650C3875E0402087C740D65A02CAFA9D2ECA6ED2036318FD3A47F658DBFA7D7DD638B4F68C0EACCE0648C0F4E8A6766F5C6F0ED8A9A5EA7EBBC6BE6779F664F36D0C0D1B46CD4F4B266236A4AECCE49957FC9F1182A2692AEAE42405862207A8ADCF3688A77BFB586088B4A5C055192CDE43FD5C067CBA4977796D6B6B717B77308EDA342598F9002B8F527801C49E1D6C07D4FF001AF6CFC56E88EAFE88DAD51264E8FAE76A61B0F579A9D02D4E6B274B4F1AE4727346BE94FBBAAD6EA83845217F1EF3239736F9B6EB28A3BB70D76C2AF4E1539A0F92F0FE7D61F7316E8379DCEE6F228B45B96A22F985F2A9F327891F3EAB97E57F58B6DCDE4BBB6828E4189DCDADAB3C2A7C54F978117CC1F4FA516BA1B483E80B2B7BCB8F6839A05CED926C375381736E6B1D4FC487881FE94FF87AC7EF70761613C7BADBC2595C51E83F1793507AFF0093A287A4C5706DC9FD2472D7E0936BD881F5F738020FFAB875161511E381AF5D3A2B9E4F1A8FE916E2C3823904103DEC120D474D95D543E5D620A43FD46841A45BE818836FF627F3F9F7E2D519E35EAA402BA860014EB95B82A5AE40B5B9E2C6FCDAC38FAFE7DEEBE83A708500216EB20D77B3D8A9B0BDEC41E483F81A49F7539E1D7B35A13553D63D2AA5FF00DAF963C9B7D6D7FE82E4723DDAAC683AF60548F4CFFB3D62208018120720B7E58AD86A039FA7FADEFD804D78F4CD01404AD2A7AE474E95F59617D0748E0B15056FC71EEE2A093A73D6F403A496C70EBB50A03282A5B491A7907FC4EABFF87BA935CD0E9AF5A02AC40353D627255402385FAFF40482786FEA47BB0EE24F91EB6E45154647F97AE48C64238B9B0BE9BE9603E8357D2C2DF8F7A2AAA0FAF5E52599314EB9EA36501458102FCF1C13A4DF8B9FEB7F741C38E7A72ACC482A0A75896E0300D6009BA9FA3022FC5FF3EEE749153C4FF2EAAA482C01E1D71E090A4D8F2D624E9E2DC58DB8F7BCAD08E14E9B2431151424F5E7655652149D5F5045F48B8FCF36B93F4F7A55247C6001D68D09A9F8ABD75AF9BF1C368D5CFE7D405AD7FA0B7BB69ED029DD4EB7A73C7B6BD7FFD23C9EA00D9752310C0D88D3FD47F8007FDBFBE8360D2B86EB0F8509150294EBBBADB4DB412752920FD6D720FF0043EF6168307EDEBC450815AF5E365B13665FECB6AFA716B103FD6FF6DEFC323E7D7B206AA76D7AE446A201254303F53F506DF4FAF26FC7BD70C8EB7DCDDB4C75D0BA922DC71C6AB1B151CFD2DEAF77C364D41EBCAA41A81C3AE6A0E920A9D6DCA9B8B2D8F1AB8E38F7A3A7560F6FF87A745749053B8F588AB5DCFAB51E030FA580B9B1B7BB542AA8031D574B0A851D78904016B9001BF37FF604DC5CFF00BC7BF0041A83DA7AF1D2548E247E5D712CD1EA2534828341BEA2493F9FF1BFD7DECE96D23567AD257B9B48F4EB31B32AF2092BF420E936E4DADF9E2F6F75E04F967F975B353A541CD3AE3AB530041E05D40161C9E2DF43CDBE87DDB4D1495615AFF2F9F55140C4329A53AE166F558BF1A8822C75123E8D6B9E071FE1EF7E44E34FA75E1500D3857AE6630645B01F82CC2D63AAC4AB7E7EBC7BA07A57AB690429A9CF1FF67A7FC06DCCE6E4A9FB2C2E2EAF2129D1A852C4CEAB7B732CA6D1422E792C40F659BA6EFB76D109B8DC6F5228E9F88815FB0713F90E8D36DDAB71DD1F4D95A33D7CC0C0FB4F003A309B6BE3DD4D478E4DDD9A38FF00DAD4D8FC4C5F7756CBC712D648452C2CA4D8E9592DFD7DC43BD7BC1696E648762B2F14FF001C9555FC9464FE6475246D9EDD3B2AC9BB5DB70F813FCAC7FC9D1F0EA3D8F89DA1B7A1C6E1609A1A392A1AABFCA6532CEF2CF6D734ACCABEA7D00D8016FA0F70D6F9BF6E5CC177F5FB9CA1A72BA45050051C00FB2BE79EA43DBF6DB3DAE016D65168887E649F327A36BB69A5C654D1BC046BD00302352C88CBEA47537D51BA1B11F437F614B845903295054820D7CEBD1D465974D18D7AAEBF953F182A3AFF002B5FDB1D7D8529D679CAB353B96831D147A3AFF3B573299EA929221AE3DAD96A997C9AD478E8A72C1B4C6EBA71979F7935B63B87DC6C6DC9DA246AD40C42C7C9BFA0DF84F05350698EB21390B9BC6ED0A6D5B84E3F7A4628A58FF6AA3D3D5D4711C48A52A6BD157C5E88E578D810F07243B0F54841D5A0FF00A86BEAFF000F71995A545323883D4AA84945CF69E1FECF428E12A11A383CAAF101C096C5B4BA7019B8B06553FEC47B6880C568287A7343D5A8FABE5D2B8E800B2A6B92CAE48621645BDFCB1B150750BFD0F3EDB3ABF3F4EBCA2A00F9F494CC408E5AECDE3726CCB757001F5452A8FC01F43FD7DB650D4D715C57FC9D395D3438C7497C73182778F48952291C296D5A424B7169145AC03DF9F7E0E5494C69F9FF0083ADE82FDC389E85BC27DAA2A89213E4D28C1039B12002CD095B0B31FA8FC7F8FBB787E75229E5C3F674D92E4815FF0057CFA5C53CAC8CA9A24248FD0DEA7407F0859BD519E38BDFFC7DD187752A7ECF3EAEBF096F2F5F2E9E122B80BE1952E8753AC447A5AFA4023D3F9FA5FDA66D553DB43F674FA606A2411E95EA33B0B781660B1D8DF572C34AF07422B5BFC6FF00D7DF9012314EAAD4275119E909B81A229A135B68E018DB42AB7FA94049249FCFBDB808052B53FCFAA0059B34A748AA4C723567ABC8B2C8DAD8C7C95B0054C9230D2ACD6FF5FDA2719AE474F8634012869F974BCA28C51468DAA560EF79141D49AAE18053F936FF00603DF850713D5CFD8357596AEADB8589E44D5269058937BA6B3E5B8B00A2E07B7031C28E1D2790006AC3CBA44652FAE47753238E24D5651624300A7E9EBB1B7F87BD78746CD09F41D6B502B40283CBA07F714BE18EA195B84F35ECC0BA70CE4DCFE163B8B7B7238D9F09C6BD6AA0105B03AB41F80BF1A5367E3E6EEFDE58B78375EE6C71A7DAF4D5F085A8C0ED79D967320471AE0AECE944966E01112C69F50D7C8FF6C793D6C93F7EDE47FAECA4257C879B67CCF01F2FB7AC7FF7339B4DECC762B1947D246D5908FC4C380FB17FC3D1B2DF311AFA9967B5FCA4F0B6F4A83651FEB05E4FE4FB9835112151C3A88BC89AF45D379EDBA5C852FDBD653ACF091ABC724314E1F4EAFF00754AAE8C596E3E9ED62BBA90F1B9571C082411F98A1E9BA024D4769C7450F7A7C77D87B96296AF1EA988AB7BB0ABC74290FA8B10C25A75B406F6E46907FC7D8E362F7279AB61648C5E1B8B5141A253AB1F26F887ED3D10EE7CA7B26ECAE66B40931FC48286BEA7D7F3E8A6EEEF8E3BE76F89AA31B141B829103C8A68898AB846395FF2495BD46DF8526FFD3DCDBB07BC7CBBB8E8837447B4B93824F7475FF4C380FB47E7D465BAFB6DB95B6B976E9D278FC97E17A7E783D00D534553472C904F04F4B508F6921A889A1951D7D2C1A275574D247E47B966DEEADAEE259ED6749606150CA4106BC323A8F6E6D2E6D25686E6068E41C430A1EA300801FC9636B01C1E093CFD7EA07B7F381D26D2841F53D78A0D00971F41EA20F02F7165BDC91EFD53914F3EBC554D33D7027535B502355F4DAD73C2820FE7FAFBDD071F3EABDAC78D57D3AE32235CE900E9662DCF1A4FF5B7D3DD968050F03D69D011A80CF58425E25D0D6064245FE84116E493CFBD962492C3BA94E9BD154A0278D6BD710CA84DD481A81245EC6E6E00B9B9BDADFE1EEC06A03F880EBDDB5C0E1D74CD7BD96EBAAE011EA5B8E2E7E82D7F7E00281DC3AA8D59EDC7F83AC818694D42EAB6FCD88E4DEE78B8FF005B8F75A1A1E9C0438034E07CF3D657361E956D245CD8FD7F3FE3F5FEBEE8071AF566ED1DA0D3AC414BAEA06EDF51FD16DFD4FD45FF003EEC683B41C755A6AA1A56BD64E1831081B8E4F22C41E48FA1D22FEE806707AF10429A815EB0496360A580176361F5B29BDD4FE38F6E00724A8EB545A5286BD71D0B6BDDBF5062DF8FA1B35FFA117F76D475531A7AD5052BE55EBFFFD33CC97F486BDB8054736BF008B1FA83EFA0CD9CD33D61E2D715E3D662AA56E2FF00EAADFEBD81BF24F16E7DD7E47A7005278D3AC654B16B1D2015FD36B371F4E7E9EEF5000C67AD1EE66EECFF0087AC84851AB4AF1C1BFE2C0720DBEBEF54AFDBD78D6858E3AE29A6E06AD245BD5C1D63FA1BF3CFBD9A8FB7D3A715948C1CFF00869D66FF006954B93A8B1B0214FD4B2D8FE2FF00EDFDEB14C9CF5757A9A6935EB985527C81892A34953C6B161CFF0053C8F7EA918F2EAC4540E3D6274D5EA5D218F0001F4B9BFD3F22FEF75A71E1D50AB160C08E1D7044009321BDB55FEA06ABF3F8E2F7F7E249EB4142B649AF5D329D4ABC281C0B0209B9FC0239B1FA5FDD81519396EBC6325B8D17ACE2036616B0E0076E413F523F001E3DD0BE707F674E08E80D49E9EF6EED4DC1BB727061B6CE22B72D929D94252D140D348109086596C34451ADBD4EC428FEBECB774DE36ED9AD9AF374BB48ADC79B1A54FA0F53F215E8C36EDA6FF769BE9B6EB72F279E3007A93C00E8F2759FC2BAEAA78EBF7F54F9340577C0E2242511DB911D7648581736E522E2FF00DA3EE0CE64F79647125B72DDB15AE04B20C9F9AA790F9B7ECEA54D9BDBAB78744DBC4BE2483FD0D4F6FE67CFEC141D183C96C08B66D151D2EDDDB90D262E2A95A42949E045465B6A69D221AE422D7D4C589F70DDF6ED7BB95C35CEE77724B70C6B5635FD9E407D83A91ADED20B58962B5851235F20283F203A5152EDBDBD240AD26529E7AD9E9A568A9E0900975A34626846A21B54771A8017B73ED018A62E1891A7A7F5A508A57A1136C6310C71A05F487BAADF802327EA7EB6007B52CC40AF9F4C280C4FA743562E1559E9D7EA1740E79B29B5AC78E01BFB42E6A18F4A0711D0F5B7E8A96B71B598EAFA6A7ADA0AF824A5AEA3AA8527A5AAA69A268DE19E0955E29619E176574604106C45BDA19E186E62920B8895E175A32915041E208E94452CB0C91CB1395954D41068411C0823D3AAA3F94BF13A6EB0AD9B7F75CE3EAEB3AEAAB5C998C253472554FB226D418C8AD79279B6C546A215CEA6A323431F19565C73E79E467D85E4DC76ED4DB3371C16309FE16393A0FE163F0FC24F0AE43F2273CC7BCC6BB56ECEA9BC01DAF8026FCB8090798186E2056A3A2B9B79B45A2B79A3601C686255A1706C411CC82C483F91EE3068C8203F52607AAEA0D423FC3D2E9423C4888DE20A5951CADD795B693C8757B8BFBAB03DA15B81EB609249602A4669D273274CCB0C8E74CD2EAB06B9417500120026CFC9BFF51EE8CEA50EA156EAC1496A2E100E929198DA5629A62601410CDA5AE09BA9FC154FC037FAFB6C90C068A1E9C00A8F3A74B6C6574347E90EAEDA17896C61FA5C78D85F44879E7DEE98D44E7F974D9A935F2FE7D2BA933A19529D98AAF041621C321E7D0F604D8FF5FA5FDD5D805200AB74E2A024374A03988A9E248DDEC4B22DE3672966171AFEAAA00FF1F6D29D434B36935F9F4E052E7031D37C99681E56F19A73A91AEC2EA09007F4FAFF00AFCDBDEC28F1196A3F2EA9239D3524E3A48D5D62D4393A91CA96558D1468D23E8DC924FF0089F7E640A38F558CEACE7AC34B0CDE55D51394D5A4B936D7623945BDCAAFD2FF004E3DA076D75A0C74AD1682A47774BA82944481D9B5A917F1BB00ACE1B961A4727F007161EE81702A2A3AA33D4E9068074DD53E18CB584619816626FA43037B05D572C547BF16E202F5420F1AE3A0CB375E59DF53A229B83636B88C91C2FF005B9FAFB714B3B002809EBDA29506951E5D0E1F147E3CD5774EF25DDDB9295A3EB6DA1928DEAB5A130EEBCE5232CB161A95D85A4C7514AAAF5AC2E0B69881BEBB4B3EDEF2636F57AB75728458C4DDC4F991C147CCFF0021F9751AF3F73826C9646CED1EBB8CA3B40FC0A7058FF807CFECEAEB2BDD28E8043022C482311451A2DA38E3450AA8A1400A145801EF278224312451A0545000038003AC6A2CCECCCC4962727E7D037571FDC4ACB2D9914B233589176561F4078D27E9ED3043527CEBD685457A0DF72E3C353B18D7D74ACB202458A15B358FB58A411407AAB027CFA2D5B831D3E333B572C51938FAB58EAC4282EB0B4DC4A74AF3E2F2A9238E3DF986A07D7AB02411D4148BEF24B69FDA0B77907EA66278B8B723FD6F69449E1B6922A7A7F4165AD31D33EEEE83DB3D8943FEE471F08AB0A562C8D320A7AE818292089147AC6A37D2C181FE9EC51CBFCDDBE72E4EB3ED778CA98AA13546A791538FCC7451B9EC9B6EEF118AFEDD5FD0FE21F63711D10AECEF8D5BD76034F5B454B3E7B08AC6D514B031ADA787D459A7A68C386096E5A3B81F903DE45F2AFBB9B46F662B3DD69677FF0033FA4C7E4DC457D0E3E7D443BF7B7B7F6224B8DA499EDABF0FFA228FF037E59F9745E1E98EB50EBE365F4306014EA516D2CAC059C116E47D7DCB292ABA86460C0E453CFECEA3B92168DF44A85597D450FECC7511A24047D15D8FA41FAA8BF3FEDFDB8188E9A28A32295EB1E99558298EE4DC0E40047D0FD6FC7BB021B35C75A3507867AE2B18311BA944B81CD88B5ACD603F3FE3EEC480CA41CF55A165208A0EB89400F3CA923EA39B8FD245FE808FAFBDD4106833D5342A1EE38EBCD137A8AB292482073F9E6C6C47E3DEAA095047570841721AB5EBA68C9F491A7569636B1B1B7F88FCF3EF40D0D7AAF861B5547ECEB3A32A7A7511A0589FAFD7FD6FAD8FBD1EEA9A63AD2E699C8C7585545EF601893A997F49BF039FC587BD93E5E5D794B2F6E9CF5C3EAA633EAE19B863F823916E47BDFF004AB43D6FE20CA457EDEB890C0BEA0482B6BDC7A41E3E96078BFBDEA0403F8ABD52AC4B822BC3AC1CDBC7737D5FD39B7E3FC385F77C535F9FF2EA9FB7AFFFD43D6ACBA74692185AEDFEA8FF0053C1FA136E3DF4169435EB0FEA05174F70F4EB932FA58B2906E6EA1B916FC0B58FD4F3EF750723874EAF060CBF3EB9A461E37737D5C1500F247FAC79363EF449A8F4EB623520B1353E5D630A48B38258F2458F1C8520DCDFFD8FBDFA1EBCA32751EE3D73114654126C3F208E7EB65D26DEFD535AF9F5A0808EC6C0F97526387C4A0D9ADA19AFF507F03FA923DD090453ABAA69A379F5C59495421EC05C9D2BEA1722FF008F52B7BDFCBAD952578903FC1D7055BC76537724F2380147D47D3EBFE1EED9A8EBDA6A987F3EBC91022CC3D5AAE45C723EB6BDC7D47BD1C1F975E5402B935FF0F59E9A0964A858D239249642238D2346925691F8548D143348CCDC00073EE92CB1C51BC923858D4549240000E249381D3904134D2848A26694F901524FCBA3B7D1FF0009BB0BB365A5C9EEA4A8D9DB6E5F1CCC2A630333514ED672E94EE592822318E1A51AF9E17DC3BCD7EEE6D7B5B4967B0AADDDF0246BFF00425FCFF191E831F3EA4CD8BDBDB9B90971BD318A1E3A07C67EDF25FF000F5657B6BABB62F54619B6EEC7C2C58EA648CB64F3B2C224CB65E58D3F72492AE61E690395B8B90A2F6007BC7FDD37ADD7986F1AF778BC696527009A2AFC954600FE7EBD4AD676369B6C0B6D636EB1C03C8713F363E67A5960B155D90821A387C910A942DF6B0AE8728EDA8BD4C8A755CA9B1BDB8F659249A2A1053E7D2A552C416E9B37D6D4A1C3E3AAA79AF24BA4BCB4EA74C7E444211BC678240FC8E4DBDA4A93C4F4F81903A2ABB0F073E4F70D766252CB051BB434A87E8D24EE565900FA0FDA16FF0063EEE8EDE22807B074E38511B00327A33D83C72D2C6ECC756922304AF2757EA22C2DED5C8D514E91AAE93507A5CE3232F5510040505031BFD7D408E3E8381CFE3DB07811F2EAFD0F9B5645304CA7D2D0B01A7FDA4DEDFF002401ED374E29A8A9E9592C71CF14914A892C52A347247222BC7246E0ABC722382AE8EA482082083EE8E892234722068D850822A08382083C41F3EACACCA43292181A8A633D55F7C8FF008BADB2E4ADEC1EB1C739DB2D24B5B9EDB347134AFB76467325464B130A032B60E4D4CD3422E694FA9078AE1202E79E44FDD424DD7698C9DB2B56402A61AF1A79F85FF1CE1F0F09D39279ED6FFC3DA77A93FC7F82484D3C4F456AE3C4F43F8FCFBB893DA6952688FDABB17996390239D68DAAE754320BA30FCDC1FA7B88645A12A0D7CFFD5EBD4B68DC031ECAFF00AABD47AE2FE197C9700023448A0F91EC6DE265B0607FAFD47E7DA5D4B907874AD16BA74FEDE91CF4D1BBEA1AA2D5C5DD74E93604EA6FECDD8DB9FAFB6E8B5ED6C0F2A74EB0641919E9D692858BC6AE9A82B58486C15D4581BA35C15BFD3FA8F7E60C411AB1F97550E2841C57A72928EC495708FAB4F8C6846D36B83192C1096FE87E9EE8436862CBC3CBA7226A35070F5EB32AD7951144D22291EA201646B2DBD4A6E2E48E6C7DA312B7C2C3A50554824807F9753568E4581E49C49665024B13A4A916B2C6006B0B73FF0014F6FC4C48676A85E90CB40EAAAD535FF557AEA0A4A7D2CC9EA68F80A15B80DF8D2BF93EE93C85A9E83CBA7A1538057A7FA0A66564692352E232C0EB28A897B7E9B9B116F69B393D3A480A486F3F4E9DE59C2AF1121D361A95839207A829279B9B736FA0F7E24939C75501981EEE91596ACD0CCA862D4C433483D213EA6DF46E34F1F4E7DD351D4140C9EADA2ABA989C7583ABFAB373F7C76047B2B6DFF93E1E8E4A7A8DF1B9F45E1DB786918BB430B9BAD46732291B25342395D5E57B2280C36E50E57BAE60DC618224AC6724F92A83424FF93D7A09F357315A72E6DB2DD4CD59882117CDD88E03E5EA7CBABE7D9DB4703B136D61F696D9A18B1D84C1D14343434B128168E25B34B2B5B54B513BDDE476BB3B9249B9F797BB5EDB6DB4D94161689489053E64F993F33D628EE3B85CEE97B717D772169E46A9F97A01F21E5D66CCC835244C3D2509041B1FA9BFFAFF008F6A9C9AD3A48BE5D2167A38D89017872748536B9FE8401FD08E7DD29D6F8F967A4EE6310B24324C16DAD446D702CC2CCB7FF5C7D3FD87BDAD57CCF5AA633D169CC8AC877951E2A1A382A524C5BCCC2AA9D248D9054C91B2EAB2C88430BF047BF4B2AAB20E3D5D52A8CD5A50F5CEBF6DC68CF95C752AC429747F14C502CCF09BE935B4AC7D5252B822E0DCA37F873ED9900650CA31D5E37035578F974266D9C65356534134254965B9287D7EAE02B0FD2CC6DCDBE83DE9350A798EB4C751A9F3E9575DB528EAE23056431346CA4B318EF182C00D25194F8EC3F3F43ED403C4E29E9D51AA3A279DC3F0FB6C6EE8E5C9E2E1FE0D937595D2B28228FC523B7AB555538D2926A3CDC59BFC7D8EB9639FF7EE5A758A097C6B2FF7D48491FED4F15E83BBCF2CED5BE256EA00B3F93A8A37E6381FCFAACDEC5F8FFD83D733CF3E43133E4F190BB1193C5C52D4421147124D100D2D3B107FA11FE3EF22396BDCDE5EDFC4704928B5BF341A242054FF0045B811F6D0F511EF5C87BA6DA5E7B6FD7B515CAF103E6BC6BF674073C6E00B86D5ABD46FFA41BDC11FD781C7B91D1948A8614FF0F4079A264AAE921BF61FCFAE0B70AC45825C12C7F3F502DF85E7DD8D3F3EA8BC0D3853EDEB0497162C75291CA936D36FD2D7FC8FF7AF765E069D36C3CE95AF5D6B25D50820FD3FDE05ADF9B903DFA9DA483C3AD06234EA38AF5C8B686B7035293A4863C5FF00C7E9CFD3DF8645698E9C245683D3AE8C808B104DFF003A45EDC03F8E6FEF431D37F0E380EB8875D0C071EAE5B83A547E38E0904FBDD0D7875A14A39D2349F3EBCA554EA1C12A003F5BDFFA0BDC03EFD9C2D3AD1A8A69E3D79822DD8B136BEBB92396FCDB8040F7EF3A756000A96AEAA7587C62F7B9B7FAABFA40BFD3EBF91F9F7BA9A53FD55E9BA7F4853AFFD53DA4922EA2E491622E6E40E6C6DF4E793EFA0B5031D6229AD54A1E3D7308C56C48D40FAEE78B7D45AE79FA7BF70C8E1D6C0383C0F9F5E6D3A6F66047D3FA05BFD3E818827DFBFC1D6800BA811E75EBA40D7246A0486B927F3F4B6ABFD08F7B26A05694EB435D2ABC7E7D73162A42FEAB8D371C02BFD78BB7D3DF871CF0EAE2BA47F1759A232B586AE23246A03817FECDB92BF5B7BAB69506A3ADA06C83D7821B84FF005C2F00DC5FFA907FD7F7A2C299E1D58035A79F59A280BD942B690F6BDBD57B5813CFBABC9A575160074E221760AB5AF467FA73E28F6476CCB0D6C14326DFDBB332FF00B9BCBC1220A88891CE3E859526A9E2F673A50FF53EE35E6BF73765E5FD56D030BADC07E04385FF004EE2A07D82A7A1D6C7C87B86E452E2EFFC5ED4F027E261F25F2FB4F56EBD2DF0DBAE7AC61A6AB831CB9BDC82251367F2D1AD4D52C83966A6565FB6A08C93C2C6A18FF53EF1DF9939E398399DDD6F6E8A5993889095403C81A65BFDB13D4B9B472FED5B2A52C6D809A9973963F9F90F90C7469F32711B4B092226A491D42E9814192563C7E9B80AB7FEBEC2B126A71E9D1C39A291E7D00C0D7EE2C8A429134924B208E1A645D5A210C4A07B581E796278E07F4F6AA56555C0C74CA026A2B53D0DF89C1C5B7E0868E3092E4AA0ABD54A39D24FF62FFD157E807D7DA1662C6A7A7C8228178F485ED5DBCB3622796CDE47461AC124F2A48047F8FBD56993C3A71788E89DF598759F294322825324D1B1F5037598926C4FA78F6E2B0EC606A3ADC991F2E8C5C7078D6340BFE71D63000FED1207D7FA0F6A08AD6A73D2506BE5D29F1B4C2298EA364817F749B0F51BE817B73726DED97AE0791EAE056B5E1D08FB632015AA24039D370BF8B93AADC5AF7B5BDB278F5B5056B518E84C43A915B9F5286E7FDA85FF00E27DFBABF5E650C08201041041008208B1041E0823DE880C0A9008229D78120820E4755D1F24BE394D837C8762F5AE25A6C548D256EECDA58CA70F363988692A3716DEA34466920246AAAA38802BCCB129F52FB8179FB90C59F8BBD6CD09FA2E3246A2BE17ABA2FF00BEFCD947C3C40D35A4D9C8BCF3E398767DEEE3F58623918E1FD11CF930E0AE7E2F85B34248F9A5A3CA51A4D132CD0CD1ACB14A24023652A3568643A558137FC13EE149632B806BE9D4D514B424F02307A639B192537A8CC1BC9706E4322A0FA2C80DEC4FFAA1F5F69434A09D4467857A53556028B8EB2A53089FF72117E1A222C12F6BD8E93E8D57B836FF005FDECB51A9A33D6968461FCF3D3E434B4D571AB4DA18282EADA87F9C06C50120AAB2D8DCFBAE2424F023AB894C4683CFA7658695E1021AAD010DBC417569E2CA752817BFF85C7BD152543A115F43D7B5024EA5353D79E9E2B155324D6F4B1756BF8F9E108363723FD7B71EF418A2669ABF9F54A032568057A8889E37630B693A98B6A511A461BE9A99994126DC9FC7B4CC59EB5E23A7C000D1C711D4C5A66D1A9ACEDFA8B6BF430B86B01CDC15BFE3E9EDBD5426ABFB3ABA95F840A751AA67D17550100075F00C65ED71AA4E4836E3F1EDBA90C42F9F4E50006BD30EDDDABB87B3F77D36C6DA14C67CBE4D565ACAD75D74780C5348637CBD72A95B22B7A6242434D27A4701883CE5FD8AEF7DDC22B3B68CB3B1CFC87AFD9D126FBBCDB6C9B7CD79712D11463D49F41D5D4F4C74F6D7E95D9743B4F6E53DE45BD5E672B3056C866F2F3AA9ACC8D7CE1434D2CAE2CA0FA523554501540F7987CB1CB969CB9B7C76B028331CBB5324FF009BCBAC4DE62E60BBE61DC25BBB86223AD157C957FD593D0B2EDA549FE9C9FF00003EA7FD80F6236341F3E883A4B57482A4B906FA0FD40E4007FD6E6D7F6CF561F3E9A7C226365162CDC1FE9602FF00E3F5F7AEB67D7A9957876A8A014E8ADA9A2D407048706E2E491723DEE878D3AD7400E4F134EBDA1050B8D354BB425ACF1320D4A172FE0661FD7531F6DB2EA751D3A310B1AE2BD3567E29B159486B21161A4C4E840649636E248A5162AD1B8B8E7DDA817CBB7A6C50D7A59ECBC663EAE4926C44DA1DA4691E81994C94A243AAC919244D18FA6A51F8E40F6EA50E57875A3E878F4324383A828A5D23E3EB76BB30FC5EF6FF005C83F9E3DDCA29CD3AD54FAF58AAB0A0210298AB15D2740D68D7BDF5A81F426DEF5A3850F5EAF488CBEC1C466A2960ABA2504AD99D50346E08B10C86E2E7F1C7BD20619F2EBC4F445FB97E0EEDFDC6F5192C045FC26BE52F22D46352328EC7F1574378D26563FDA5B38FF1F72072DFB8FCC1CB852169BEA2C47E090934FF004ADC453CAA08E833BC72A6D3BC2B3490F8773E4EB835F98E07AAD0EC8F8EFD91D64D592E5307357E22200A65A82392482488B15264874B4B4EC845D830FCF04FB9FB977DCDE5DDF9ADED9A6FA6BF634D0FC2B8E0DC0D7CB87D9D455BC721EEDB5ACD3DB289ED57355F8BE7DB93F98FD9D17F31387D2C34B58A9078163F901B90401FD7DC960861A94D4740365659195D0865F5EB9000DB4DC31E4DC58903E879FE9CF3EF45B88C75AD2AEB5E15EB9384959403709AAE4DB5313EAD36E09B5BF3EF591E5D58F711F675189009520F3716B0B907F48BDF9F7719A74CB56A453B7FC3D62B590A690A349D405CFA47D2E0D873EEC4E7049EB4080AA08C1EB872A9E8D0750B0BDC0E49E5472081FEBFBF713DE4E3AD370257875D97654B32DC5FD4C3F26D7B5AC6FEF740DC0D0FA75E248000E1EBD63BAF8F5736B6AFAFF8FF004B7D083F4FA7BF7E2A507A754F223E7D7FFFD63DD1B38074F29FD9FA2E96B73FEB71FD3DF414D0F588DDC4F969A75DB3074D4AA549E34B1160DC9E6DFD7DEBE1C7975BC30074F5DA4C2CA0A82481A81BDF936B036F7B20D2BE5D7BC55141A7AF161ACB117E43037362401AB806C7FDEFDEFCBAF54EA18C75DF90F25491A8820F1E907EA2D6FF001F7AA7E7D7AA4B02B5FF0037526352CB717B861CA73A8DBEA40FC71EEA5A9C4F4EAAD4F9E3A197AC7A3BB07B5B210C1B6B0552690CAA93E62A9248319021B7EE09DD6D33589B2C7A8FB05F32F3CEC3CB5130BCBA0F774C4494673F68E0BF69FD9D0AB65E50DD378759121F0EDFF8DC103F2F327AB65E96F82DB17AE968F71EFC55DD3B8D5D26A5A7AC85DA8E19EE0A8A2C30622A5E23C879781F5247BC7AE66F7337FE62F12DED9FE936D382A87B987F49F8FDA1680F52F6CDCA3B3ECFA24F084B7A3F1B0AD0FF0045780FF0FCFA3CF80C64D2068F15414D8AA181FC31D54D1A4D3058FD2C94D047A6923D3F4160C17FA9F71D1F0D283E26FD9FEC9E84FDED9AD3F99FF63A56D7E422C3C0D6692A270BEA92570483A782D70140E3E8A001EE83B9803D589031E7D001B8B315399AD019CCCCD20448A3F5167274A2228B5C93603DA940168698E9AA126AC6A7A15F696DC876AD08A9AA45973B91035462CCD087FD14C8792123FEDB0E09BFB61DCC86BE5D3C0505071E94CD13C75619C835131D45BF2BC0BD80E3483603FC3DB7D7857AEF716293278AA8A7214B98CF2DCDCE9FEA7E849F7A6150475BEAB5B1D38C0F6D6E8DAF3318E48CD3E42043FDB4A92C75016BFA4C4471EF7090C9F30DD3B28ED56F51D1B5C75009C43272CB1813B13FA6D259B4DF8E7FE2BED53316A7493A7CA8A658A39CAF22A16312737D2357A4FF00AE34DFFAFBA1C9A118F2EB75EA76DA0ED54123074A0B4C4FE2CDFE3F8636B7F4F6C7E5D38287A17296A158B2023406D31DAFC003E9CF36E3FDE7DFBADF53FDFBAF75D100FBD100820F0EBDD566FC9BF8FB55B32AB2BDA1D738E92A76F563CB5FBC765D053094D2D448FE4ADCFEDDA75B08F50265A9A54167B33C6355D5B1DFDC3E473B635C6F3B5C25B6C63A9E35153113C5E303F0F9B2F9711D4E5C87CE9F58B06CDBACFA6ED68B14A4FC43C96427CC700DE983D12593334D5D4B1D451CD04B4932078781CAD83157F4F31B03F5FA8F70C48AB5528EA548C1F51E5FCBA99E20CC28C0EB183D37BD4A046B3280412967D51160A48D21886560DC5B8F7591853857FC1D3CB92318FE7D4EC7E464D09AC3A9BDD4A22342F61A4874E7D5F9B9E3DED002285683FC3D5256EE014D4FF3E9E23AD3E02CB78D646D256388A4BA99405D0E0940A40E6D71EF4642834AD34FF307ABAFC55C93FEAE3D4992BC2C29172A590A2F01992E6C74A821AE7FA9FF0061ED3BB106B9E1E7D59416627F0D7AC5472AC92BA0B1F19BDE7BDEF6B5EC7F50045EDED378A2424EAAF4AB410A0914FB3A50A90211215BB20D56D360D71A6C16E6C82DC9B8FE9EEE326B4E9B182413D25A6FE2DB833189D97B4B1BFC6F776E19DE3A2C7C66D14280AAD5E5B272A0614588C6AC81A590FE2CABA9D94131DBB6EB8DC6EA2B6B7859A69180503893F2F2FB4F003271D20DC77082C2196E6E2609046B524FEC03E649E0064F56EDF1EFA230DD2BB5129559327BAF2DA2B3736E196255AAC8D732D991392D4F414AA7C70420DA38C7E58B13969C91C9F6DCB360A5D55B7071566A70C7C23E43F9F1EB1679C39AEE7992F98862B608688B5FF8D1F527A30BEC77D037A89552AAA3A1FD440D3FED5736217EBCA8E7DB6CDC4533D6FA4E08589B589B937B0B7A78FAD85EE0FB6FADF974E3478F6491643CAAB6AB301EAFAD801F837FF78F7655A9F975AAF4F8058016038FA0E07FB0F6F75AE8B26611EB7E43D5CCA8569F13D73438E2FC012D5D7E5E7C8325FEAC16155BFF004F69490D73A40FC07A5791680D705FFC03FD9EB8EF3A12CB210A9A91EDE8B824F045EDF5E7F3FD7DEDEBC09C57A4C0E7A0B7193D451572CB4F3CB4F2C321B3C6E63653FD350E2FED9D4CAC4A1A74E52A3231D18DDB9BE322D4F1AD5915D6082EFA44E1470C4BA05D6D6FEA3DA9496A3BB8F4D95CD074B03BC608AFF71433A053EA31C88FE9B81A94368D5F5F6E0753E7D688A74F98ECAE2F2C0BD1CD148E07AE26016651FD1E33CD85FEBC8F76EB5D49A8A082A01BAE8622C4A81622D6E54FA4F1EFDD7BA44E736453E521657A7A5A8275A3C72C692453C127D6378A5056E3FE27DEB870EB752381E887F71FC11D8DBCDEAB2DB7A97FB979E959E4925C722B62EAE5737BD4E3DBF690BB7D5A32BEC7DCBDEE473272EAA402E3EA2C57FD0E424903CF4BF11F61A8FB3A0CEF1CA7B36F5AA49E0F0EE7F8D307F31C0FF87AABFED3F8C7DADD592559CD6065AFC5C4C7466710AF5548F12F2B2BAC61A6A552A05C38B027EBEE7BE5CF73F9737E3044F37D2DF37149302BF27E07A8B378E42DDB6F4926829716C3355AEAA7FA5E3D1739A3785EED130D26C548B37A945C9E3D371FD7DC951C8920051C1AFA740592292370248CAD3C8F1FF629D61918155E0E9075802D707900127F1C73EDC1EBD304B791C57FD59EB85F592CC14D90AAF3C6AFA8E09B35FDF862B43D540AD750C57AC4CA0101145C01763CF361C016B7E7DEF8F13D78D412117AE2CC02B1FC00030E01E3D360187D47BF69C81D78134634F2EB85974DF49B6A22F63E4D1A80B5ADFD79F7BD26BA750EB545A6AA9A75FFD73D0CD6B01725958FD78161F937FC03EFA0C0039AF0EB10B410402307AE4A0AB5ACDC81F8FC116078B700FBF547AE7AB00D50003A7ACD6543EA4D4CB7FA0041245C70BF8FF7AF75C9E071D39A456B4C8EB24519D3A8AB3380D702E09BD85CFD79B7FBC0F7A634E2683AB20256B4EEAF4246C4EA9DEBD8990828B6E612B2A626942CD5BE268A8A2620726A9C0476B91E952C7FC3D8637EE6FD9397A0796FAF57C6F2406AC7FDA8E1F9D3A116D1CB1BA6EF247E05B95B7AE5CE00FF003FE40F56A1D1DFCBF7118F5A4DC5D9738AC31149FEC24634B8F52B67D750BA90CCA0D8598D8FF4F78FDCC9EEBEF5BB6BB6DA17E9AD89E233211F6F97DA0752EECDC8FB56D6166BA026B81E6DF083F67AFCCD7AB0CDB788C26229E1C36C3C451F8A98089B2BF6AB062A8550D81A440AA2A654B716B8245C93EE2D724BB4B75217958D4E6A4FFA66E8622A40588513D69FE01D2C6AF1A28690450C925566322E298E4273AEA0093FCFC897F4C514718360A00171ED86766E3C3D3CBAB500F2C9F3EA54CCD414B4B8DA01A02208B55AF600E927FE0CED73EEB8F4EB671451D24775462831CD254CACD34A0D8496FA91C9FCFD0FD2FEECB5661D688033D25364E1E0A347DD79642FFBCC984A3E3C9555172A6745B0D414F087E805CFB71893D80F68EBC319F3E862C6C13047C9E479AB997568172B4F17D5218C7F87FBC9F6D13E4387560286BE7D79448D3BD44834B39F40636291D801F4FF000F7AEB79F3E9C56433D348CB7E56455636F5D811A87F813EFDD7BAADFEE0C24981EEFC5EE960561AEA05A170AB65731B965D4DF436D6DEDB8CD2694530474A38C03CF3D1A3DA55516470F4862BB16430C973F468D9954061F4E2C6FED65288A7CBA447048E94A891C8BA1FF0583FF5654F4F1F8B9B11EFC7E7E7D6BA9D83A7784D7358C68ED1A2391C80A0B46C4FD3437B60E09EAD90BD2B31535DE18F50666677E6F7D363CFF5B81F8F7AEACAD5C53A54FBF756EBDEFDD7BAC351043530CB4F3C6B2C32A32491B0B86522C45BFAFB6E58A39E378A550518508EAC8ED1B2BA351C1A83D537FCB7F8F19AEA8CA64BB436052C959B12BA5FBDDD9B6E9E20E7073D44A126CDE2A9E388E9C7CB2C80D6462C2173E50343305C5EF70F9226E5FBA6DD36E8836C8E6AEA07F644F98FE8127FDA9F91C646FB7BCE90EEF045B46E5205DD568B1B1FF44C7C2C7F880F87D46388C94CC464A933F4B14F4B3282DC49103A987ABE929661A6CBF4E3DC5C34BA1F0C923A94AA55BF538FECAF4A330BC261E6330731959010E7D3E9FDC5B282801E181F7AE144A02BF3A8EB4023176CEBE9D4338B0572142901994AAA9B1B7A87D1483F8E7FA7BD31A8D3514FB3AD696AD69D46A770EE5E5D3AD59950C6CE0FD7E8D7F5B9FF0001ED3486AD50294F9F4B5410295CF4B1C6C65B4B7F9B01469F2DACC6C7F214904FF427E9EDB500139E3D79DB429D5FCBA67DD79E970C9498DC65354E777166AAA3C661307424CD5D5F93AA223A7A58638C72A58DC93C2ADCB1001F6BADEDDD8A1D058B1A003893E400F3AFEDE90CD71180E43850AA4B31E000E249F2C7565FF127E378EA8C1CFBC37878329D99BB61827CDD791E48B13462D3526DCC5162DA31B8C66376163513EA95BFB01728BDBAE4A1B2DAAEE7B8C60EE928AD3FDF6A7F00F9FF0011F33F6758DBCFFCE6DBE5C7EEEB06A6D711FF007B6E05CFC8FE11E43E64F474BDCABD467D7166D2A4F27FD617F7A2682BD7BA61A8769672437E8E501E7D6469FC0B58FE7DB19353D6FA70A340F12BC8804809D42DF9FCFF004B827FD7F77550735EBDD4F000161C01EDDEB5D77EFDD7BA2FF4D02D46EECBEE42AA16BA66A549013730D1178E316FC5C7F43ED347DD3B9F2E1D3AC4F84AB5C71EA36E69A2927F19E52417BFE6FA7EB6039FA7BAC9F1353FE2BAA50815F2E8304A3515D2215FF38032D87F42793FEB0FF7AF6C924E7CFABD4D2B4E9D292B27C3D480E4F89CE9D77B05E4004DBFA816F6F210DDAC33D549AF0E84EA3AD86B29F5D8CAECBA41B7EAE39B1FA016F773C0F5AAD33D35CCF5389AD8B234BE811B7EE2212494BF37BFD38FF1FCFBD062A71C3AB52A38E7A1DF1192832B43055C0EADAD17C8A3831C961A9194F239FA7F87B7D5830041E9BE9C1CB2A928BAC804E9BD8B5BF00F2013EEDD7BAC30CB0D644240A194EA5657504A30F4BA3037B10458FBF03518EBDD33E5F6EE332B0343538FA6AA46428D14A8A432916D20B02B6B7E0F1EF54EBDD11AEE1F847D69BF96AABB118EFEECE7DCB4A042A69296A64504FA65854C2AEE05B9054FF87B176C3CF1CCBCBAC82CF7067B61FE872772D3D05787E5D136E7CBFB46EEADF5966BE29FC430D5F5C71FCFAABEEC2F885BDB6CD6D553625E2AF929F51FE1F58050E45C83C0858DE8EA5587D1832837F733EC7EF2EDF72122DEACDA193CD93B97ED23E21FCFA8DF75F6D64156DBAE8329FC2F83F930C7ED03A2BB9ADAD9DDB558F459DC5D6E2A75B91156C0D187083F52391E39391FD9278F72DED9BE6D7BCC027DB6F63953FA2787DA388FCC751FEE3B26E3B54812F2D9D0791A60FE7C3F9F4C0C54693A0122FA6C48B904716FA5B9F66C01A56BD15118A30AF58DD0127525CB5C906D65B8BDC7F8FBD827C8E7AA145392083FE4EBAD4BA34D869D77FF0078B5BFD6F7EF3EB5E5A7CBECEBFFD03D085EEA6DAB47D39040E386B7E7FE23DF416A387588C07E353523875318B3480A695BA5C93C0D42C40041FCFB6C1A03A874E900D3CB1D08DB2BAAB7B6FD9E35DBD83A9A8818A092BAA1453D146ACDA59854496F215373640C7FC3D85F7DE70D8760422FAF944D4C22F739FC870FCE9D08B6AE58DDB772AD6F6D487F89B03F2AE4FE5D587751FC1BC6522D2E677FE43C91A149E635A0D16291C90C23A686C2BB2CE0FD140B1FCAFB833983DD8DEB75692DB6480416C4535717A7A93C16BF2FDBD4A5B4F236D3B6AA4D7CDE35C71CFC35F92F9D3CABD58BEC5C16D3DA90418DD89B4A5CBD5D346B1475B341151D15381C6BF1052B028FAD890C7FA7B89EE1DA699A6BDBB2F3939A558D7ED3C3A1C4755409045A5070AE3F9742DC3B5B239978EA776D7FDD2237921C351930E3E137BA89B4D9AA996C396E3DA732D0698974AFF33F9FF93A70479AB9D47F974B9820869A24869E28E18900091C6A11140E3802C3DB3D39D62F1AF9DAAA4B5A38FC7193FD95BEA95FFA7A8D87FAC3DFBAF74C34153FC53255134607D9517A031FA49311C7F81D205CFF00B0F77202A8FE23FCBAA8EE35F2E90BB8B46E3CACBE6984380C390723560FEA0A45A9A0FF005751506E001722F7F7B4340428EE3D54E6A6981D29F018F932334797AC805351C11F830F8F3C25251A001094FA7964500B1FF61F8F7A6200D0BC3CCF560093A8FE5D2D645F2AA01FA0B066E48BA81716B7D45EDEE9D5BA8391631C0638906B94A46ADFD0B1082DFD4D8FBF75EEA7C3108618E25FA468A9FEBE90013FEC4FBF75EE8AC7C91DA3256E162CD534779B1D319C385BD92E19C71C82A05FDB0C744B1BF957A7E2AB2B274DDD1B968B218B9E975F9645559E2FC1BB1F1B9B0E405D23DAFC08CFA03D257F888A74349A0965AD9AEA9144BA5BFD4DF57EA4E2FC937E2FED90E42914C9EBDA40C93D3C2C48D1FDB53FABC8C81DD7EA115859EF700D8922DFE3EEA411823AD820E298E9E71F4C219C1517B6AD2C49BDC7A48616B5B49F7EEADD28C7FBEFF5FF003EFDD7BAF7BF75EEBDEFDD7BA69CDE2A97358DA9C7D5C714915445244C268D258F4C88D1BACB1B8649219118ABA9E194907DA3BEB382F6D65B79D15A3604508A8A1C1047983C0FCBA7EDEE24B695268988706B8343F97CC711F3EA813E56742E53A0B779DCFB5692487AF370D568A48E369E65DBD9821E5A8C2D671A5688A8D7452B1F5C3E83EA4E711F9E394E7E56DCBC4B78CFEE998F61249D2DC4C67ECFC27F12D3CC1EB29B9179B22E66B0FA7BA907EF684777FC31700483E7FC407039E07A41ED6DD9499CA65859D639D55755887476074E9366F47D2E0FE7E9EC24C63929A70C7F3E8614689C96C83C3A5CD4231891E376240018132C854FD35002C2C47E7F1F8F6966D4807F83A531156635FB470E9A2053192653A02B6AD6DEB76426E493A83285E7FD87B4CA8CC4F4A9A4550013D3A3E7E77A8A5C3E0295F2999C9BC7478DA2A3549A7ACAB9894821885EFADCF07F1F9F6676968D338411D58F01E64F953E67C8745D7370B1C4F248DA625049270001EBD58CFC5DF8B72ED19A1EC4ECA8E9F29BF6A92434D0318EA68F6952CC0AB6331928D493642A13FE05D4AFFCB28CE90C5B213903DBF6B630EF1BD443EAB8C687FD0C70A91E6EDEA7E11F3AD31FB9EF9F3EBCC9B46CB215DBC7C6E2A0CA7F91080F01F8B89A0A0E8FE80000000000000058003E800FC01EE6C00000018EA21FF0F5DFBDF5EEB8B91A48FEB703F1CD8FE7F1EEADF09EBDD32C10DE655623925BE9F85B800DF9BF1EDA02A69D6FA7A440834AFD3FDF7FC4FB780005075AEB97BDF5EE99372578C5E072F5F7B1A6A0A87437B7EEB46522B7F8995C5BFC7DE89A027AD8E3D0398A8A738CA484F2C2259182DF534A42BB313F5D4C58DC7B48B2691819AF4E52A7E5D66CFE38BD3D0D504B0497C4E6DCF22C7FA5C5FE87FAFBAB50D1BCBCFAB748FC9626587EDEB224D463601D4137D3F520F02E34DBF3EFC1A9818EAA457A912E2A3C9530D51853A45C8038207049E791FE1CFBBB3D00C75E029D27E9E7C9ED8AA0250F25097B292A5963E6D7B736FF0058FBD248B5A375E284E40E97F4F345948CCA93F911C2FA47A42822CC9A47000238F7B62C09534A75A03191D3EE0E7AAC0D4AF8C9929E5B79203C5D4FF695ADA6E3F1EF4AC6339183D55A9534E85DA7A88EAA149E237471717E194FE5587E181F6AC1A8A8EABD37AFF9264A407D30D62AB0FAE9F30241FEA0163FEB7D7DD6BA5B860F5EE9DFDDFAF75D1008208041FA822E0FFAE0FBF75EE907BD3AF301BD28DA2ADA7486B5158D2D744AAB2C2FF501AC3D7193F51EFD9AD41A75BF2A1E1D135DE9D2C74CF87DC982A1DC18DF5848AB28E3AB8DE3FA7929E475F2C6DA7FE39B2B0F6BAD370BBB1996E2D2E648A706BA918A9FE5FE5E934D6D1CCAC9222BC6788600823D287A25BBFF00E1AEDDCB475157B2EBEA76DD77AE45A0AF1257E27591FE68BD97218F4BF02E1D47B95360F7777BDBCC51EEB1ADDDA8E27E193EDAF027EDE3EBD02775E43DA6F83B5AA9B79BD572BFEF2780FB08E88FEFBEA0DF7D733E8DC586916908022CC51FF96E2272A6C0A57420AC6CD7FD32046FF0F738F2FF003CF2F731AE9B3BBD3735CC6FDAFF0090E0DF68AF518EF1CA5BB6CE4B3C7E2C1FC6B91F9F98FF00567A0C7C6FFA349D7F5D5FDB3FD4DBFC3FDE8FB17EA5A56BDBD05B4BFF000F7FA75FFFD1B2FD89D5FBD7B0F20B4BB670B555508602A6B9A231E328D412AEF3D6481625D20DF4DCB7BCDDDFF9AF65E5D81A4DC6F144BE4832E7D0051FE13D6356D1CB7BA6F0EBF4D6E44278B9C281F6F9F5643D25F02E19DE3CB6EC719B68F4C8EB286A7C15330E6E3CBA25AF61A7EA74C63FC7DC0BCCBEEE6EBB8AB5A6CCA6DA0F36E321FCF82FE59EA58D979136DDBCACF79FAF71F3F807E478FE7D1F8C06D3DBDB4EA69B6DECAC45166B3622F1254353AC786C646B60D2F8D540952137373652781ABDC59233CC5AE6FA66676F2AE49F99C9E866A0AD23B650B181C69C3EC1D2C28F69FDCD73D66E0AE9F31531CFE0F248C61818AE9BD3D2431E98E9A9A3B91A56D7FCFB4D25C48E3428D310F21C3F3F53F33D5C222D580D4DE64F1FF63FC1D0CB86A5828A010C11454F08002C71A08D7F3CD87D5BFA9FCFB63A7C1A807A7BF7EEBDD746E471C7F8FF0087E7FD8FBF75EE93DB8EB5A9E8CD3C2489AA0685B1B1D07D247FB13C7BBA0A9A9E03AD31A0F9F50C52C94B8E8F0B42E219E48BC992AEE02514520BCD2124D8D43A82A8B7FA726C3DEAB5624E7AF5314E98A8B1B4F939620B13D2EDCC53034EAF70D92AAB90F57331E6662E38BFF5BFBF5682838F9F5EE39F2E8428D59D5414114200D318FAB281E90DC0D200038F75EB7D481FF22FF5AC3FE27DFBAF758E58FC862BFD124121FF005D55B4FF00C9C7DFBAF7597DFBAF74D59AC4536731B558DAA5062A989E3B901B4965201B10411CF3FE1EE9220752BD5958A904744DB6FD1567516FF48EB54A60EA2B2484CCC3F669E1AB3A46A61FD88E421D4FD2C3DFADE52C1A0930E3F9F4ECD1D55654C8A746B2A29DEB1B553B092276495A4BFA595AF76D5C8D201FA8FEBEDC208343C7A4C4061D3AD25144A1A300B1D21C4878B93608001CFA39BFBD75B029D39984A5B4FD48F5B5BFA0005BFC011F4FE9EFDD6FA9086EA38B5AE3FDB1FAFF00B1FAFBF75EEB97BF75EEBDEFDD7BAF7BD1150475EE811EDED9B83DF7B6B27B677463E2A9C4E5691E96B91D97518D6ED4D5B4AC4178EB68262248D872A45BE84FB0A7326D16DBD584F6379156275A7CC1E2187A107F97479B26E575B4DEC17B672D278DAA3E7FC4A7D430C1EB5DBED9D8B9AE86DFD92DBF9299A5A282515785C9C4592972D879667FB5A88A4BF8CCC960B2A5CE96FF005C7BC4ADE364BBD8F729AC27AD572A780653C187F97ACAFD837DB5DFF6C86F62F88E1D7CD587107E5E60F98EA6EDEEDFC5644AC2D58AD50A80309E4536E401FA4F376FF0FA7B612369AB58C961EBD1831F0B3C149C53A193686DCDC3D9B99A3C1ED8A1FE2992C8905D95C251D2C26C1EAAB6A412B494D086B967B5EF6E7E9ED4D96CD7579711DADB5B97B973851FEAC01E64E3A437DBC59EDB6B25D5E5C7876E9924F1FC8799F403AB5BE84F8B3B77AC8A677252A67B763C5E19F34F4FE2A5A285C0F2D06DFA77D4628CF2925613E5994955D2A4DF213933DBA836868EFF00712B2EE006283B23AFF0D78BF917F2FC3D63EF37FB8177BEAB5959EA876DAF0AF7BD386B2382F984F5C927A38691A468A91AAA22285555002AA8FA0007D00F72D2A8550AA28A3A8D4924924E7AE7EF7D6BAF7BF75EEB8B5B8BFE481F4BFF005B7FADEF445695EBDD638E08E3259473CFD493F562DFEF04FBD2AE924F5EEB37BB75EEBDEFDD7BA44EF885EBE8A870E8C57F8857C724F617D54940A6AA6523FA3CAB18FF0063ED99DA919A1C9E9C8FE2AD303A4FAE26681159237D2C89FA741E483F4FE9F4FCFB40C6A878F4A0035C81D39D46226A9C2D8E9F2ACC1ECC753680D737FE878FC7BD8A98722A41EB5812803811D33CF81A8752AC8A51A3561606C08E39B722EDF5F7E24D38756D001AFCFA8F0EDDA98D43A80A4DC68F58BF361F5FEA3DE83BD32B5EB6634A9F5E9D176D257D3F86A204D4CA5493C8B6AB5BF2391FEF5EFD467F2EB6485AD48A749B7D9D5585AB534E1FECE57B7A06BF0FA8F06DF8B7BD80E868D91D344A302471E97793C7C620A6D3CB048C793F20851F5FF11ED5D3857A4DD2830885294820A9D5CAFE035B923FE0DEDD8EB9F4EBC7A9D574C2A630B7B3A36A43FD0FE47FB1F7661514EB5D73A77668C0704489E87047D48E2E0FE411EFCA4919E3D7BACFEEDD7BAF7BF75EE9BF238DA5C9C3E1A94B806E8E00D719FEAAC471EFDD7BA0873BB4292F243574A92A13AA1A95431CA39B286742190FFAC6DEFD9F23D68F11E9D04BBA3ABA82B31F52B0245531C91B254D155C71544153190432CD04AAD14A1AFCDC5C7F5F6EC73CB0BABC6E4480D411C47D8474DB468F50C33D1286F8A7B0FF00BF7167171120A6104EB2ED72D21C5B649AA299A0AE420F9D608D5640F4E4952CCB62141047C3DC8E66FDC6DB49BE6AEA044BFE89A686B1D7D0923BB88008AE7A0D9E56D9FF00792EE3F48BE2D08D3F8355451A9EA3229C33D7FFD2DD5F07D5DB47AE30F434271F8E3530AC694380C646B0E3D2550A145514505E34E0BBB96763F4B7D7DAE9EE2EB71B87BABB999E46356663527EC3E5F20303A61238ADD0450A28503000A01F9742154C796CC883118F74B88C1AB100116331CAF6F4111F0CCA3F4ADD9CDB9F69B56924AAD3AB00CD86351E7D2D309B771DB531F50D4E3CB59247AEAEBA45066A89557D0A2DFA21563E941C0F6DB3163527A700005070E99A7A734629449FA9019E41F4264A990B3FD6F73EA1FEC3DED78903CFAAB01D2F69D4082216FAA235BFA1201FF78F75EAE380EB3FBF75EEBDEFDD7BA4A55C5F7F98852EA52260491CD9231A9AF7E3F57BBA90149F3EAA7E219EB2D495CA4CF410291428E1EB5E2B0354C3E9006FF53703513F81EEA0D3ADF1E9E62A34558D5C2E888A98A15168A3D238E38D447FB6F7AEB7D4DF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD26B72ED6C4EE7A29693234B14DAE3640ECBEB00A902CC390549B83F83EDA9230E2BC1FD7A712468F870F4E9BB6825563687FBB59163257626311C352DFF29F8D2C451CF7206A91221E397FA3AFF88F7752481A8F7D33D55E95254769E95B1C414D87E9B13F4B5F9FA8FC8BFBB755EA4FBF75EEB03B18B4E95256FCF37B0BFF00AD7BF3EFDD7BACC083C837F7EEBDD77EFDD7BAF7BF75EEAB33F996FF0030BE9DF81FD614D97DDD047BC7B3773C5529D79D638CAF82973D9D961B473E52B277597F836D9C748E0D455C88C09FDB8D5E4217DAAB7DA93704927BA94C5B7C5F1C94A9A9E0A82A3533796401C4903A4B35FCB6B24705A207BC7E009A281FC4E40345FE64E075A6A7757F38EF969DD51CB4793D95D2B8DDBEB94A8C86331B26D2CBE5321858E689E0FB38770CBB829721253B47202D658D5DEC748000F643CC1CABC91BF40B04DB14A6546EC98CEC250294A7600B9E3E7D1DEC9CC7CCDB24CD3DB6F854B2F7208D7C33E6090D538E1C7EDE8B26D0F9B5DD5B7F75D26732982D959EC7D3D7475753B7AA20CFE3B1D591A39268855E3F2D1E46969E60797590BD85AF7F60F1ED6F293305905D082A2BA6501CA839018A100D38120D3A1C37BADCD4D03AF896E65D2406310C7CE808AFD9D599527F3C8EFEC5ECEA8DA7D57D19D13D4B256240B3677091EE8CF56CF345242C64A88B39541AA95E242A5669A420B5C5881EE43DA396FDB5E5C577D97976F0DCB7169EE15EBF22CB1A353ECD3F9F51CEE5BDF38EFB2A36F3CC4B2C4BC1522D007D9DC40FD84FCFAD99FF00964FF324EBBF99BB12976AE5EA71DB47BE76BE268E6DDFD78F552BFDCD392F4EBB976B4B556972980C84B116E0B4B4AEDE296C7496319F6A486D4EE3B6167DA4B8521882F0B1FC2F4FC24D423706E1C71D16C57CC6E3E8EEF1719D2D4A2B81E9FD21E63F318EAD83D97F4BFAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BA4B4B2C757BA0D211A8D0E23C9CFD15EAE73A8702E098A35F68A560F70B154E16BFCFA508A560793FA54E9EC41188C2150578B03FD40FF00616F74D269F2E9BD6DA81AE7AE5128313205500865000E3F36F774C82B4C75E63461D63555318F4ADF458DADF5BFD3F16B9F6D9EAE490C684D09EB2D959412A08E78205FFD7FF63EEE3E12DE7D364904E7AF471A23DD4691C0B0FA7E4DFF00DB9F7B8C0D6057AD962540273D4BB7B5941E9D37D36E4A9C4B00207F9B37B002D6FF005BFD8FB6DD40151D6C75D62DBF60A9FD4A6C4F1C81C026DEFD1F13D78F4E7EDDEB5D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD41AEA386AE2D32B18D948D132DB5213FEB820A9FC83C7BF75EE91F5782A95F2A2530A824131D4218D23704FE968EE1A371F4B723FA1F7E39E1D5483434E82F3B5EAFFBC2B3FF000AABD7A1D7C7A78FD51FF6FE9A00FCFF004F7BC70D5DBD5341F4C75FFFD3DE172B4EAF92828D354B20324D248E4960D235CB3B726FEDF46241EECF4C79D69D0BB84A7829B1D047022280B772A002F21E59DADF524FB60F13D3CBC3A97511FDC3C511FF0036AE2493FC7458AAFF00AC4FBF75BE9199C7697246224E82D1A902DC282A3F1CDAE3DEC6335CF5561907A5DC6004400DC055008FCD801EF5D5BAE7EFDD7BAC7348B146EEC780A7FD89FC0FF627DFBAF748A324B1A7EDDC4F35A35D3C9BCB202C14FF008DC0F7BAE29D6A9F3E95B43489454F1C2B62C05E47FCBC8796627EBF5FA7F41EF5D6FA99EFDD7BAE87D49FF603FD87D7FDE7DFBAF75DFBF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EE929BA564A4829F3B05FCB8790C95017EB2E3A5D2B5886DC91180241FF0005F753821BCBAB2E6A3A52D3CD1D4410D442EB2453C51CB1BA9BABA4881D581FC82A7DDBAAF59BFD87FBEE3DFBAF75E201FAFBF75EEB82AAA5C0FC92DF9FF7D6F7EEBDD7224282C7E805CFFAC3EBEFDD7BA047BFBBFF00AEBE37F4E76177676765D70DB3BAEF03579BCACA4C7F775B2449A683118982474FBDCCE66B1929E96053AA59A4503DBD6D03DD4E9047F11F3F203CD8FC80C9E99B89D6DE2791AA698007124F003ED3D7CDCFE5B7CA4DEDF323BFB7D778EFE9EA9AB37464E5876FE1AA64578367ECBA1678F6D6D2A148ED4F1418BA36BCCC96F3D5492CAC4B313ED65E3A1F0EDA07ADBC585231ABD5E9FC4C7F3A50749A05D3A9DC7F8CB9AB66B4F45AFA01E98E8BDC71011A0B2AB11724AF0E18DD4003D7C0FAFE6DECB9850D2BD3E71E7D648E2461A9D53F734DFD0742696FF5441D40923FD7F7AA79F975557FCBA6DCBE723C5992288358AEB2EA74940B6B9565E3D3F81FE1EF6A01615E1D5C6450F58BAF3BF3B23A87B1F6676D75AEE6CB6D7DE7B23271E471195C555CD4D3BC4B244F538CAC30383558BAF4884751038292C64823E87D9BEDDB8CBB74E658285194ABA9A15743C5581C11E63CC1C8CF4C4D6515CC7E1482B9AA9F3561C08F98F2EBE841FCAB3F99B60FE77750E39F7BE221D81DCF83797119AC2BC92261779FF0F86132EE4D973D5057AAA49048054535DE5A4983212C00634DC62DBA490DCECEEDF4C477C6C6AF1379A93F890F156E34C30A8E9DB78F708115370506A7B240281C0E38F261E7E47CBAB72F655D29EBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BA0B301586AB7AEE1A8BB3A5A3862209D3A14E8503E9FD95BFB270F5BF998F0029D193AD2C6214E26BD0900B10B651CF26E7E80AFE2D7FCFB504F1C60F48481C49EB3A2D97FA737FC7FC47B508A420E1D509A9AF50F5050FCAEA0C0103E96FA8FF001B95F6C1006AAFAF4E8A92A070EB2A1F4ADB9B83FEC01FF0FAF3EF5C469F9F5A201241F2EA4AADBFD7F6B1128013C7A6BAE5EDCEBDD74402083F42083FEB1F7EEBDD41A5884335428FA12A40FE9F5F6D2821A9D6FA9FEDDEB5D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD744060410083F507907DFBAF758A15F1A98EF70A4E8E3FB24DEDFEB827DFBAF75CF47EE0935B70A57471A7920EAFA5C1E3FADBDFBAF75FFD4DEC3274221A9ABA95007DBA2F9A403FE498C1FAEA6BFBBA10A4D7A688A13D2BF06DAA897FC2DC737E41209BFF507DE9FE234EAEBC3A79F75EADD21323097CA11CB1696353FE1775B017FCDBDEC5335EB46BE5D2E94050147D00007FAC0587BD75BEBBF7EEBDD46AC43253C8A05EF6FF61C8B9FF603DFBAF74C1411F9F21ACFE8A7064034D85FF44763FEBDCFFB0F7EEBDD2A3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD629E18EA209A9E550F1CD13C522B0B864914A3023FA107DE88A820F5EE90FB3649B1DF71B7AA19D9692495B1E5AE74D2EB62D0163C911B13A7FA0E3FA7BAC64E9A1F2C7579284EA1E7D2F7DDFAA75D0FF001FAF3FD381FEC3DFBAF75DFBF75EE9BF20B2494D2A44FA591439B7EA651C95B0FC3007DFBAF75A627FC2923E65E4B37BE7AEBE1F6D69AA69F6F6D0FB2EC9ED268E51F679BDCF5314F06D1C14A51B4C8BB72859AB258CDC09EAA13C320F6BAD258E38A5D2DFE312629E883E7FD2F3F9749A68257911D97F45320FAB1FF30EB5A9DBD929EB57C4890BC9A8991B4143A54DD05C8249527E97E3DB4C8A09C63AA02DA89271F674AF86366FA8176FD7A405D4012CC3D42C0B69E0F1EDB3C0629D50004E4E3A738E14686A1AC2F1A1914100C64100D800BF802FF5FC7BAB607983D5D4558D7CBA0773D53356D64B4DF6ECE54A8BAAA82BA750BB7045B8E78F7B50940DD5E8D4D55CD7A329F19FE21EF8EF79EBF70A63EA31DD77B6AB63A5DC3B9258CAD3D457491ACABB7B0DE95FBECB4B1387934FA29A321A420945628DC7754B690DA44755E115A0FC2BEAC7CBE4389E841B66D7F5012E676D16B5C578BD38803D0799E1F9F5B307C0AE8D9F1B9CC3D7E16967C0D26CC929693071D134B4B534A694853289616468C9F512AA7F70B12C4927DA4B379B5EB426A4F71F5E8FF759ED96DC5B945D00607A0F97CFAD8DFAAFBBE2CEE4B33B3F763AD166B6F663F845364E47D306654D1D256530A9D4A8B0574B1550FAFA64B5C1B9B7B3D0E8C1749A3F98FF003740D9236435E319E07A321E78CB88C30D6575D8823D1F920DAC7FDEBDEFCE9E7D37D66F7EEBDD7BDFBAF75EF7EEBDD36E62AFEC7175F557B18A9A5287F3E42A563B7F8EB23DD25711C6EE4F01D5E352EEA83CCF40D6CD944591A9998906A4C04B03FAAE595811CDAE7D87EDDC995D8F13D1D5C2522450303A18E02851029BB7E9362458853F90391ECC8533D1490471EA7062780B7D20DB9FA9D22DF8FCDFDA804F0F21D35F327A835292A4D4D2C6BA95D8473270782A42B0B91CADEDEDB9108D2C060E3A715869653F6F4E2A805BFDF0FF00603F1ED4246005278F4D12493D73F6EF5AEBDEFDD7BAF7BF75EEB814F5871F5B153FE23EA3FDB1F7A23208EBDD73F7BEBDD743F3FE1EE8A72DD7BAEFDDFAF75EF7EEBDD7BDFBAF75EF7EEBDD756B5FFC7DFBAF75DFBF75EEBFFFD5DF43329E5A6645012395CC8E07EA91CFE92E7FDA6FC0F7B0699F3EAAD807A72C2AE9A18D6D6D3E9E7926C00FAFBF13535A75E5141D3B7BD756E929410FDD57BCEC0D927792FF00D741217EBF8D4C3DFBAF74ABF7EEBDD7BDFBAF7586A1B4C678B83C37D7F4FE6D6E41B7BF75EE9BF1515A39A720DE795B4DC004451DD52D6E003C9F7EEBDD3B7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EE90F9077C766454AAF05BC9FD03238B4838FF5573FEC7DFBADD7CBA5AA38911245375755753FD558061FEF07DFBAD75CFDFBAF75EF7EEBDD02BDE9DB583E88EB3EC0ED4DCCE0E176BED8ADCBF8CCAB1B54D7D2C0F1D0E3217636F2E46ADE38900E4BBDADEFDD7A8490145493D7CECBE59D4EEAF90FB937D762EF0D73EF1DC59CCE6F16A80048D4F575CD2540C64448B7D943471C74EAA2DC46A4723D951B8D378268CE381FB3A198DBD06D7F4AEB5703557E7D57FEC5950A5402AC5B49D4BF463F50CA189FEC6ABDCFE38F67EECA63561C0F51F15935C80F91A7426C6469360CCB61AF9BBB2A8B95D560C3D37D3FEC7DD7CF03AD5294AF597233A51E22A26767123690A1072548D2AAAC7E9A5793C7B6DA85C7A75643438E8E17C05F81BBBFE5BE5F2398A96AEC0F58E0327469BD779474EB2D4450B83510ED9DB91D42F82A77266633E82E0C7490933497F423946E9B8CB148B6764A3F7838C123B635F376A71A7E151F1799A57A3AB3B688C6D7574DFE2CA69A41A339FE11E83F88F90E19EB6EBEADF867B5711D7BB63606D8DBF4FB5F67ED7A7D184DAF8E20B4AADEA9EBB2D58CBF7191CBE466FDDA9A89497965624D800010470F8286384B348C6AF2365DDBCD8F901E80600C0E8CDAE8C8E1E4A500A2A0C2A28E0A3E43F9F139E8D975F7C6A1B03150BE2E8CC329733CDA582BFA9AE753DBD440E2E7F1CFB3CB25789381A57A45752A4C7B8E7A08372C35389DD3D8A92978CCFBBE9F4396E74C5B7F057657166D41AE2E3F23DA8323069194E6BD6D52B1C2295A83D186EA3EEEC8637C381DD467C863E33A2832F632D7D32200AB4F53ADBFCA69ECC2C41D600FCFB511CC8F86C3FF002E9A9EC9D06B4155E8E2637354B90A58AAA29E1A8826E63A8A76D5158DACB28E5A1905F9047B7874848A1A74F2AE8E2E8C187F51F4FF008DFBF75AEB97BF75EE91FBD27D18A107D454C9A5B937D0AA6F6039372C3DA3BD60B0153E78E94DA2933291E59E836C230A6AAB08D4E92AA0B1BB00BCDF4F1720FB258281E94E1D1A4E4B004B50742EE3260F133596C19C961C8B2AFF00BC58FB368B4F98CF4533035CF4ED0B0752E2D663F81FD05BDAA88EAA9A63A69850D3ACC403F517FCFB7480788EABD7BDEFAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7405AFFE26FEF405075EEBBF7BEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD75717D3717FADAFCDBFD6F7EEBDD7FFFD6DFB2A28D2A102B13C5ADF4B0B1B9240B13FEB5FDFBAF752228D618D235FA20B7E2E7FA936FEBEFDD7BAC9EFDD7BA66C4C4633524DEFE6704B7D49D66FCD873C7BF75EE9E7DFBAF75EF7EEBDD3664E52238E9A3BF9AA9FC69A7EA16DEB73FED2ABC9F7EEBDD4F8A358A38E25FD31A2A0BFD48516B9FF13EFDD7BAC9EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BA4BEE8A379A9054C5CBD3DC3A8172D137D6DFEB7BF75EEB0ED1CAAD6D2CB48CC0CB44C02DCDCB40E4E83F417D0C08FF6DEFDD6CE4F4AEF7EEB5D7BDFBAF754C3FCDBB259DDCBD6983EB0C354CDF62F9983776E6820B32D4D0E3BC8989A29D87F64D7379CAFD2F0A9B7B49772B46941C4F465B5468F768CE2AABFE1EB59F83A9EBF76EE84C1D1D3B1A7D7A6B25546D022FD2EA58FE48163CFD7D94B135D28A0B9FE5D0BE499638CBBB76FA7CBAA84DF7B565EAAEE5ECCD8020FBAA3DA3BC7726DE5C8CAE94B04D050574DF6C55A42AAA1602A0DBFB4A7D88ECE4592D23D6DFA83040F9751E6E202DCC8635A44C6A2BFEACF5DA65F100A7DCE431D19056590255C4501B1BB0218202A0FD6F7E7FC3DBB4E3A703A48CBA6941D40DD195A5ABA6A4A7C6D553D5C6F6F2BD35445295D3703508D8D9557EA2DF4F75F0DC7715C75B8DD4E056BD6F69FCBBBE3D617ABBE2C74BE0E868E6A08323B3B6E6FCCF233296CAEE8DDB82C6E672791AC68D57C853CC90C37B88E085507D390DEA6F1AE29254B3E4D380E007D83D3A3B9596917601A56807DB9AF56DBD658EA7D2F388574C68027A410A00017D5FD4FB5B6F0A6BA919A74999885A57A194816B102DFD2DC5BFD6F66541E9D33D12AEECD830CB9ACC6529A9AE6AAB22AB9349B2BC925053476D007E3C7ECA6E596291B0734E8DED18B2463570E81EC3EDFABA44A46969F4C84CD70C09E2EA54B702C481ED912D48A0C74BC90752F42FE073D95C2D34DFC2AA9E0ACA55597C563F6D53006BC94F3C4DFB72ADAFF00E36F6B52768C64D47A74864B6477A1042D38FA7463B636F48B3F434CF594EB8EAE992CD0C649A099C13EB8198168598FF609FF005AFED4C73A494A1A1E905C5B3C0DC6ABEBD0853CFE050CC8CC0FD4AF2ABF4BEA36E010783EDEE93748BDD49F78D068D4C91C525EDFA751B37363F5D36FF0F6597E0BD154F0E3D2EB4A2876FC5E5D23A9A9024C8DE204B1B9E385F4FF00520736F658AA430C1A74ACBB1C1E1D0958686D4A53C5E30D24A2E4DC904F27F040207B33B75A8A01C4F48272350CE3A51280A028E00161ECC5574A85E929CE7AEFDDBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75C3C6B6B7E7FD571ABFDBDBDFBAF75FFD7DFE3DFBAF75EF7EEBDD7BDFBAF75169A3F1B547FB5CECF6FC00C0371FD2E49F7EEBDD49240207E4DEDFE36173EFDD7BAEFDFBAF7587C09E7350DEA934684BFD235FED05FF173F5F7EEBDD66F7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75D32ABA9560195815607E8411620FF00AE3DFBAF741D56E29B6D66A97378ED431F50ED06469EE4AC6B2F3A97FA2EA171FD185BF3EFC31524F57F8AA7CFA1111D644591183A3A86565370CAC2E083FD08F7EEA9D61AAA98A929E6A9998245046D23B1FE83F03FA963C0FF0013EFDD7BAABEF927B61F789CDD756421E4C84728B15B88A1F1E98A151F5548E3E073F5E7D93DCB788E4F9F01D1A5A9D0A07956BD577ECAF8FD478A8CD5454C0554EB2C858A316F5B9D22EDFE07FAFBF5B4056A493D3F7B76CE02FE1FE5D6B59FCC5F1AF89F9CFDB787962813F84E17AEE9D9129E28C166D8B86AC9449A5019A7925AF2CEEDA9D98F27D9C5B451A44FA102966A9A744375216752D5240A0AF90E8A82C54C498E58E33091A193C69A08617B7A81241B5BFE37EECC32DDD9E932B357A5274D6DDDBF90F923D0B4392DAF8FDC78CAFEDEEB7C7E536C57D2AB62F70E2725BBB0F4591C3646185E36ABA2C8D0D44913A5FD418F3EEB24493413432B30899483A58A9A114C11907E6323A7619268E55923A075350480723860E0F5F477A84C6EDCA66C3E3A82931543471D3E1B098BC74029E8E87178DA68E871D43490A009153D25242B120034E9516F64D0DBC5022C5082235000A9A9A0C649C93EA4E4F4BA49A595DA491F54CC6A4F0C9F90E1F60C7462760639E8303034A0096A6D2116E4281602FF00E06FECC2DD480588E3D36E72057A5BFB53D53A426E1C2C79392B4B26A65928CDCA06F4F874902E0FE179F65F7516A627ECE96412680B9F5E90796D8ECCD1489095593F20717D000F481F5FF0F69DE1D2A005A1E9524E0B1AB57A443ECDAB86AC2470905C18D9FD5A7D41C1E00E2E3F1EDB22527867A53E3211DC6A3A19B69ED7FB2A581658D5562551FA4727EADFEDC9F6BA188802BD16DC4FAC9A1E3D080D1C88CBE2D2632343C4E7D2058D9A3E0D8FE083C11ED69A81DA33D23C79F5C0D246D0085D54FA4DC803F51FA91C7F5F6CF82ACB9F8BAB072A6A0F4D6D84A6570E141B9BB5C7078240B5FDA56B5D3E551D3C2E1FF8BA7986311AF02DFD38B7E6FED5429A4548CF4C3357ACDEDFEABD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EFEBFE3F5FF7AFF7A1EFDD7BAC12862F0106D6939FF1051B8E0FBF75EEB3FBF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEB1CB1473C6D14C8B246E2CE8E2EAC3FC47F81F7EEBDD3063647A3AF9716CCCD4E351A6D64928000E2304FF6741F7EEAC4546AEA3E7647AE22869EEE8AE048145C493DC694BDEC562FA9FF006A3FE1ED999A8BA4713D5945327A03FB6368C34F80AD9E44479E48D880A01FAAF200FE9FEF5ED3781460C467A744A48A0E8B66076851C74D1C9222DA38C32FA6FC125B90393FEC3DAB440B9A67A65DCB71EB499FE657958731FCC3FE51D64128F163B75E0F6E83A4045381D99B6B1AEB66B00D1CD4CC0DB9F6A5570BE95E924DE5D13C86F2B14274CA5D0284BAAB80070174B0058D80E7EBF5F7E7200C1C74C2827871EB0E0F7DE6BAC3B3367F64EDCB2E7FAFB3F80DE5845995248865F6EE5E8B238F82547055E3A8A88551AE2DA58FF87B7ECFC2F190CA9AA3046A1EA3CFF975E903F86CAA482471F43E5D7D13FA7FB2F6EFC89DB3D6DDC3B5EABEE3697626D0DA9BBB0E91BAB881B358CA7A9ACA198A7E9A9C5579969655E0AC90B03CFB2CBF81ACEEA6B6FC20E0FA839047DA08E9659C827856427BC0A1FB460F560F4D1AC54F04682CA9146A07F8051FEF27DBA8005500629D38789EB3FBB75AEB188D433BDAE64D21AFF4F40207FBDFBD50126BD7BAE4554DAEA0DB91700DBF1C7BD1453C475EA9F5EB19A780B0730C65C7D18A0B8B7D3F1F5F7AF0D38E9EB7A9A94AE3ACA0002C00007D00E07BBD29C3AD75DFBF75EEBDEFDD7BAF7BF501E3D7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD619559BC5A7FB332337FC145C37FBC1F7EEBDD66F7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF750A5C7D24D2BCF2464C8E810B0765200160CA54A957B71706FEEACA1B8D7AD862381EB3454D040008A2540A2CB61F41F5B0BDEDEFC1141AD33D78B13C4F41CF6B4024DAD5725B948E504FF8682793FD2FEF4C32BF6F5E04E69D165C3C0D5980A695545C2C70B369FAE92435ED6E483EEFD6BAF9ECFC91DDC37DFCACF931BB52A3EE20CEF787625642C4862F4506E7C8D05238FCF8C5251215FF0001ED414EC4EDE92C8D9F9F41A530BCA801B1B9D57B9242DC056B000126D6FE9EDA7A0229C3AD531F1741AEEEA8515B9104DD6438FA626DFA48A8F249723F48053FDE3FD8FB7A1C2962075438602A74FF0087ADC43FE13B5DD706F8F8FF00BB3A572F5CF519DE9ADF42A7094B239246C4DFCF5195A034E1CDC438FDCD4F91888FA279507E47BAEE024B88ADAE59AA01F0FE6282A3F68FF07CBABDB308A59610BC7BBFC87ADA440B0007D00007FB0E3DA7180074AFAEFDEFAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF741C769BE9DA390005CB47201FD6FE36B5BDE8F97DBD7BAAF2EDFEF5DBBF1FBE32F65F6CEE9AE4A6C76C7DB796ABA50AC9E7C867EA216A3DB987A342479ABF259CA98208D01BFA893C027DAAB4B67BA9D225C0E24F90502A49FB3A4D77388212C05589000F527875F3AEC7E4AA7239AC964EBEA75D664721555F5F35CB33D6564D2D55648D7B990CD3CC79E49E7DBD2F9851DBEBD36428D21CF77424D34848468D832AFAB4A1BBB5C12A411CAF3C7E2C3DA4635A823AD1A0A153D033B8AA4D464DE36043CB5F016B956BBA9622C092A741B5C7F5FF6DEDF8FB6327CBAF005980AE3ABBEFE45BDC12F52FCF1D89B6AAAA4D3E17BAF019CEB7C8465ED4D2E723817756D391EE42B4C3278368138BFF94903EBEDAD45E096353DB50D4F9FAFECC7570343C6E572315FB7AFA012B075575E559430FF00588B8FF783ED81900F4AFAE5EF7D7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFFD3DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7414F6FB94DA9596D4408A4621413FD93C903FD6F7A2694EBDD6957FCEB3E5ECBB873384F8B1B4F257DB9D7BFEFF5ECB34B20F157EFDCA63FC1B676FD4F8CDE41B5B095AF5722F3A6AAB52FEA8B83FB65FA5DB9D947EBDC7ED080F0FF006E47EC1D154A44F7818B7E8C58F9173E7FED463E44F5AF4E0758A80CC8E543DCB7D35B1505512DEA25947D4F1FEF3ECB4B06F8B07D3A780D2D56E1D0C54C2DA74108A6372549BA02DEA5B3717B13FE1CFB65C60D5B3D5850B57009E811CF7FC7C34EABA935642261C71756E580D208637E0127FAFB76223C3D2BE9D6EBA5CF91E8D1F4A760D6F53F6C755F6863267A7AFEBEEC5D99BC219909074E037150642B2347B1B09A86296363F428D6FA1F6D4555708781E3FB3AF549563E7E9D7D42B6BE529B3581C5E568E559E9321434B5D473210C92D1D6C11D5D1CAAC3865929A7420FB4C9C0AFA1A7ECE95A9D4AA7E5D3FF00BBF5BEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF758E47283569240049B7FC8B8F7EEBDD34C9948E2AA8D1994453051EA61756FEA05EC3EBCFBF75EE8B1FCDDEE1C07C7FF8DFD9FDC7B88ABD16C8DAF91C9D3D1B3229CA654A0A7C2E261D446A9F29969E18140E7D7EDDB783EA278A326884E7ECE27FC1D317329861771F1D31F69E1FEAFB7AF994769EF3CF6F8DD3BB778EEAAD7C96E5DE5B8323B8B375AC416AACAE5AB66AFAE746D5FE645454158C7D151428E00B1A4EE26918C66918C2F951470FE5D218D0C51AAB8ABF127D49E3D26709090F4EFE46318B32A06B800359548FD4D60C6DCFB44E57CCE474F02466B9E856C644D3CA4A96005F480A038F25C22D98DAEC4FE4707DA79303481D59054D4F40E6E9A3F1EE5A610FA8AD4A3346E6C3D1269009B7A580BF3F4BDBDBB0B698E9E7FEAC75A7A163EB4E84470168D03920C8BE3E07A00916C5A46FC900816047B6ABDF838AF56403CF8D3AFA4BFF002DCEC8A9ED7F84BF1A77B55CE6AAAF29D3DB2E93213B36B67CA6DEC70DB393D6DFF1D3EEF0EC587D41F6D1204B22FE7D2988108013C0F4797DEFABF5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD5DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75D300C0A91704588F7EEBDD06FBCE096921FB980F0BEA009D2A07FAE2EC2C7DFBD3AF75AC9FFC2823E51645BAD3A7BE3863EA9E19B75E5321D8DBC2086452F26036938C7EDC82A7D57F056EE1A879941166343FE1ECC6DC24704D30F898691FE13D17DCD5E5890FC2BDC7AD39339512D5E424B5C042CC14DF5239606E181F4E9BDFDD81145D3D5C1D6406E1D2D705492011A150C74C6DA9AFA2C7F5D89B160A3FD85FDA57604B00B91D69942D00E846A1725B5AAA065F51662510B15D454E91CFA88FF8D7BA151434E3D7831E15A0E9159FC6F932F155C91DC3358B955D32396B0BD8937D4BC5CFB6D4D2A2B4EAC722833D39BC12AC706B0BA57D258106C01D5EA5B96B003EA45C1F7EA8341E7D6D54D727ADF9BF918EE79B2FFCBABA2A81CB6AC4E77B5706DAF96FB6C6EFCCF4D4E0FF00ACB562DF8B0F6CBD04CA14E29D298F2A6A294EAE47DB9D5BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFFD6DFD226D5146DFD517E86E3E9FD7DFBAF7593DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7415764E5638A9E3C72906470AECA3F55892A07F8137F7EE19EBDD7CFCBF9ABF710EE1F9A9DD393A6A969F03B13254BD51B79A394BD38A0D8503D0E52482D755FBBDD53D7C86DC3120DFD9837E9C3042388153F9F45C6ACEF2138271F975536F1092BA570E5564752CCFA5C04B81CDFE80FE2DCFBF19174E07775BC7E5D0918B1E3A6815C3BDB57DBC6ECC5503B8772A4F081D947FAFED3D003AABD5C1504D45474A9A7B8590322A805F4F20951625F57D40D3FF001AF6C93535EB55A0F974DF950CC116E346A4750D6023B137762AA58AA87BFF005FC7BAE3CC57A731C6BFCFAEC279D514B2107EB2021579E1D752824DFE97FC027E9EF5FE0EB7C3B88CF5BC67F2069E39BE0AECE896A0B4945D9FDC34EF0B03FB21F3B1D4AA46E4B0746594B7D6E0DFDA5624DD2F0A74A93FB33519EAF63DABEB5D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD7DFBE8DB5D2C2D7BDD7EBFEB123FE23DFBAF7527DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EB81F536B9B0FF005FFA7FAFEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAE2EC111DD8D822B313FD000493CF1EFDD7BA24DF22BB1A83ACFAE3B57B5B2F38141D7DB1F756F093CA42C6C76F612B7234B0EA2C07F9455C11C607E5980FE9EEF1A877553C3AA48DA119BE5D7CDEB7665F239C96BF339399E4CBE6F235F9CCA4CCC5E59F2D98AD97235F2EB079696B2A5EF726F7F6FC8C7C52C3238749501F0E9C07F9FA0D68B1A67952EE18073290012817D434B73C3AB3DF91C900FBB3F118C9EB5E18AD01A9E96F4A4269D61422280814231651F5019AF6504DEFF008F6CD40E2BD6C8A31A0E9FA9DC3C577D6CE182B01625813AAF7160582FE4FE79F75703C8F5E141E59EB1E4E1531BC9C9B94905CFA94B12154DADC30B5C1E3FD6F6DE683AD8A6A2081D40A52CCC8A5D625121589A5378D4692CCBCDC10E17E9CF27DFBCFAB93A69D6F2DFC80428F823B7C7F0D557FF0049BDA958D90433833797713D2C7A8316818A47115B2D88B7D3F24A4CF1FEF268162669401535C01C3870FF002F4B823F801C91A3F9F57A5FEFBFDB71ECDBA6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFD0DFA719FF000069FF00C1481FEB6A6E7FD8FBF75EEA7FBF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEB83DEDC7D6E08E2F720F23FA0B8F7EEBDD7317B0BFD7F3FEBFBF75EEBA63A413626C2F651727FC001F53EFDD7BAEC1B8BF3FEC783FEDBDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD30EE49EA20C5D41A78A591D94A9F146F2155E2E48456B0E7DFBAF75473FCE5371EE7C37C0BEDAA2DBD85CF651F75576D5DB7B8EA7118BC856C1B7B674B9FA5CAEE8CEE7E7A2A79A2C4E0E3A0C57DB4D5352D1C01EA5119817505E83E326BC074C5C7C001E15EB46BCDB4CDE3B0653A6D72082A00241450AC09FF0061F5F6E0A062699E92E4800820758314B0A46DA8C4D35E4F26965690AB03AD49BE950B7F513F4F7A6A96AF5BAF0E9CB4C45D42B580B8620AF25480FF004B90AC4FFBC5FDB6C3233DDD7BA7AA554B90CD16AB004B7D05C7A6C7D24D81B8363C5FF1EEAE3CFABA938F4C75CEBC298888CFD0ADCFE5D81016C47E943FE1F8FEBEDBCF4E76E7D7A6BA5446906A215742682ED60A480085123067B211CDEF61EED43406BD69748345E3D6F93FC8831CF4BFCBDFAD6A61C8D254415BBA3B3A59E929E649DE96AC6FFCE46C2AB422F82A5A18D4942C4E920FD0FB288525FDE77722B2842141151AB1C0D3881C695E8C352982352A750F3F2FF67AB9A16FC5BFD87F5F66DD33D77EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAC72C8224690AC8E145F4C51BCAE7FC15103313EFC33D7BA83F7D3780D47D95469F2051178E4FB82BCDDFC3A35D871F8F76D39A6A1C3ADD3AFFD9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
INSERT INTO `person_info` VALUES ('f4a4a86d-3689-4cb1-90d4-b37e7e0af9c4', '张三', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '0', '2015-12-09', '2015-12-09', '440101', '440101', '123', '123', '', '未婚', '身份证', '', '0', '群众', 0xFFD8FFE000104A46494600010101000000000000FFDB00430001010101010101010101010101020203020202020204030302030504050505040404050607060505070604040609060708080808080506090A09080A07080808FFDB00430101010103030303030305030605050406050304040F0F0C04020E0D0C04070F0F0E0F0A0F0F0F0F0F0F0F0F0F070F070F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFFC000110800C800C803012200021101031101FFC4001F000100010402030100000000000000000000090607080A030501040B02FFC4004E10000102050203050307080705080300000203040005060712010809132211143242522123620A15243133728216344143517192A21744616381B2C2182553749326455464738391A3B1C1D2FFC4001C0100010501010100000000000000000000000203040506010708FFC4003D11000103020402070505060700000000000100020304110512213141510607132232426114527181C1236291A1D108153372F0F1244382A2B2E1E2FFDA000C03010002110311003F00DFA210844752121084084842102123888B4D73D32ED38EB26D38954925CFE71367CD6592C6C993972E9CAA29A2DD211C89450CFA440474F69FF6441B6E6B7EB56DE1B6F3DABAC12D5C521B6027DF30B5AD250D8BF28AE9CC08B9432EA51B90FBA6E47E29910F840B95EB814AA0A47CCF6C6C1724D82951AD37274752B53AB6FA976938BA773474F79239088ACA31FAFA9F2DF64D43D9A78CB2F6F8758E89EDD0DC3B04759A1D8CA6670CC444B497B2A94357C1F069CC00488BF14473D96AC6A0D846CE2A5B8D7FE9F9251D514C1F9AD23A1A58AF7855A91FD9A0E1F7DABD725E255C2A4518C56638CBD68F6E0B5617BA82A519DBA78EB95DFA53A9F3A50911622A9E5E201F3446ED9A43731209E0382F50E8D75515B5B4F2D4D3C799AC36766D0C9C7452E49F10DB0F259CB7A72EE23732C0542B1F2C42B2A75C336CA1FA41F089B7FE68CB1A52E6DB8AE590BAA4AE0D1955A05E697CCD071FE428A79AB893D5B236AEB4EE33E903D40174B45039A8B948BA87C5164EA5DA66DC2A97FACD6616668309A97F5A60D3B8AA7F78DBE1944E34EEB5C11F35E7CFC285EDDE1AF7BEE2CCCD34C8743D35E88FCE63FB635FDDE16CCB7B7454DF5B93C39B71970E8A7787D3E867D3B272C1CAA3FAC6FA3BCC47D9E4F0462D59ADEDFCA19B4931599DFDD83D0DB97A353CBB1DCAE64DE4739E9F800CD157F8461800DEC42B29FA232085B331F0B81F283F691FC96D5308873B5BC642D04C146723DD3D85DCCEC7EB423C5546B8A5D55E51F826CD0556F87C65844A0DB5BC56B2F448C6A8B4770E8BB9320D35C3575249924EC04BD25816B897DE833702B33242E6E843BE6AE5C23805702E8FD6473C29364242108171210840848421021210840848421021210840848F4DD3C419A0BB874B20D9B26246A28A1602023E2222F2C73AA58E9A766BD9FB621F38844EEB7DD44CAA3D83D9DB82FAD7C90E4C138BC15AB34F3569E922BF61276FFF009B7D81E5E86E265E7814AA4A4323DAC1C481FCAA21B7C5C4AE55BD6BEED6CD51B55AB4FF000EAA21E1CEABF9AB7CF9B76459ABEF5A863FF73F3704847FADABD3E08920D9FD41566E16AC1BAF5BD30CE9C7ACD30674ED38D00465F414B71F70C1210E8EFDCAC0D5C7C1963109773369CCEBFDC46DBF875ED3114E59464A754ABEBB9570009AAC1921EEA5A81F900C8F3341BFE28DB8EC859BA4ECB50722A269596EB2F93B26E090730F354FD46A9F9D52F1114391B4D81277FF006AF61C519494A0474E3C02DDA1F15413624FD2CB0FF88D6D1AB2DCFD989031A0A7A52EAE69D70B4C9AB750F14A600418A897DEF4C418D8BE1F7B90BB5514A997F4753CA5698EF41DFE6D50244D10C048799D1E33F3F446DE3DE5AE8B837E63605BC5811FBCD3F047ACD66B2F9BA6B1CBE68CE6A09AA682C6DD71544151F101E1E71F4446A8C39AF7024DADE2B7993149D62E270530A38267323373DD1DE37D570C9A5A848A4F28923004D062D1049BA7A263880008888F4C437EE6B8BDC86D3571555B7B656D96AC2772A786C1D4D262EF92CD3703E21001EA389A7D434D7B475E9D2212F7C7C2D9EDD7AEA697B6C63D612DAB9F69CD9B53EE54E5A13257CCA24AF90CBE289158D7868C9C15BF55CDC31D599715B9638771CEF034E9BD963853FC6AAED339A76D5F6868A9BCA0BAB5498385515FC5E433F144C0EDA77A767374AB3B93D02BCDE5F56336693F7B2C7ED79448016B89605E12C4A35C19470DFDE8BB9F9C996B32AB45F453942F557A88B400CBD51365C3C36395AED5275712A6B9131A72733E99366D2D60A4BCCD4E5B71EA533F4F59E915B473CC5CD04388275BF956E7AF2C2707863A6761669FB473CF6A223716B293E772A62F1B2AD9E326EEDA29D068A802407F84A351AE2836699D93DEE3EB836695AAB6D750CC24EC9EB09D5BE785273786390A8A2C923EE962CBC598C6DF5D7DB9E3F0C62B6E4B6A362F72AC248778A4246E652666CE68DDCF7659B65E21E6FA0BD2516955092DB34D8AF33EAF71EA5A5AB0FAD8DB244E6163DA45F2EDAA828D99F176DE8DBDD6692FDCADAD9F6F1AC5C8DA83A9C5C3A124DCBA968F6B9681CD9B4A43A5EA41A69991B5EBD34EAC4A3666B357AAD65FEB714CDDAB315F53972EDC4E10EF32E9BCA9D0AC82A3E9F84C7CC05D425EC2D348B4B646C7DA0DB952FAD1B6AA4129A4E57A973572157259D9FA9554BACA2346E4D9698EDAEE6CD7773C34EA7A4BE7FA8260ECEE1D96EF5A254DDD1550FCE176386984AA7C1817BE1C52705D2A8F5E70DB22B005C47D163BA6905349552C9431BD9113DC63B7E1FDECA78FD9AE9FB748F3163EC1DF4A3F70D6B292BA947B4A82552E9A3415CA5B38684D2612B57EA241C247D40A89643D9FFE62F7890176FB75D7F7421AEBECB105A7885E61084290908420424210810908420424211F93F0EB021588DCADF6A436C9622E9DFDADD6D0299A5A4EE268E03B7B09C908FBB403E2515C03F146BC373374B4BED07876D69B959F54924AFEE15500E2BBABDF335F99F3DD50FBA5BCA40FD08668B411F28251931C5D6437F77AB25A13691B52B7D53D6ECE5F5504EAE14C9C69F36CA9B22CC336ED7BDADA60B99AF81E0197834FF0D77ACBEC177A7BC8BF34F6C32E848A5F6A6CC5989DFE5BDC733722B8399ABFEB648661F9C2BCACD611F2C468E425C2C2E085E99D0CC1E20CF69926A76F7B2F66EFE247B6B6528BF26F2CEDE699D2BB8BDDFDEB9E4C273515C99C24EDDACB0F4B874976E85CAF4A29098A23F7226BF7D5BC4916D12D7A736D09B4C6E0CD889AC8192C788EAB799757E018CA0B536CA93B416F693B6D42CADBCA2949433066CDB80E3D823E62F88BC451189C47B87FDD1DD5D674857B6F6A3A616D25B2EF9B54944DD424D202E6E62E122D3CF12E70E6B0E51DE5AEC02AA86AB1488D596329DA74CDE17DB417F8EE56BD9525EFBBB51D74FABDA82E5568FAAD705CD5668334550C0BC429000174FC2031331C1BEB2BAEEEA1B974C1B19ACDAD42C24FDE4D5C6858B69C67D581FAD51F10FC3142DB3E0AF709FF0071D2EF5D0A5E44C13540CD19437EF0BE797FC53E912F8E268ECCD0D6476DF4B32B336D4DB30D19A5DF9CB413E73D72445893871E72222F3C54D2513F307BCDADAFF32F4FEBD3A4D8456410454591D244FBC6F8877211622D759239683A896A4211D4389DCA51988CB1C4D25E84C30E6F21454454C3EEC51335A5EB3B8AACA1B8399A511480ABA2EE8C0F09839C7C2963E5028AAA5B622D9CB979CBCD69CD2633298242DDDBA78B1AAAAC03E11CCB5E9FC316B25613E117F5E0BE5F96BA369B1373C8795538B5D1A2D398B994B39B233A99A606469311E7E063E4320F09FC31D7530FAF54F7537B30A1A99A4A5EA3B34924D77E46E12434F0A862218FC5F8A2F2D27415194223324691A62534FA6EDC77A75DD52C7572AF8732F8A2B070E906E8F356513447D45D030D099FC6C3E1C5419B15E0D1F32AC64FED0CEEA477257CEEE554D27D592FCD1425842822E43CC92E1E718E8AA1DB752D57A22C2A3AAABB9BC9B559251764ABF2E53CE538E6A627F0898FF0C46C6E83E50570CFDAADD0A92CBD6D78DDD4F72A5AC09E2ADA42C0DF35D15CB51EE64E87A01C74174144516E2FE56F594A767332966D4B6F95ADEF60528326B319C02B2C1099F30711543C5DDF959F58F564308653B9C4101E4FE4A1BB167DB57596DA1FD17D10A38172E6489B95C44C3B09432E92F2C76F4F50B46D28C9697D374BC8644C9670B3A245B351013555D7250FD9E73F314680F52FCAC8DF430BB1F940C36B36A185A976A20A214D4C9C2EABC4C043DE083A4BCE459F963242CD7CAD5B94D25B5CB5DC0ED0F57550A893D7B4A9D3EE881233CBE8CC5D01F971E92703FC30F8C39E2E72288FC40BB7738FC56E975DD20330165524B5D3D975432AD4DD3551B7EB83CC910784B21E9FF18AA28FA9A555A4858D452555C1B05C7A74592249412F3098175090C6A21B78F9532DF70BB85B7962A65B2FAE68767552C94925AF067CDD55D19D98FBB0302C0392458078A36C0B254FD634ADB3A564B5F4CDB4E2B54D035662B27EC1D553222C7F0E42197C310191BDB2105A5A08BEBC529CE0597BDEC55DB842113D3290842042FC28588E879E1F16B08A7EABF9EFE617FF009349327139E8E4A6BE5816998E5963D5DBD994223BE5B1D9391B2E2EAA384211213691D0547CFD69F9F03270E983CEE8BF2966E192A896258900798BF4C77F1E31EAEDF6F6C25CDBA162BD89A9253496DA24553CF1CCC9AB29349977D36398BCE7BB4C92C955CDD1F9562C75321F2E7115FC39AEFDA3B39601ADF2DC157922A1AF06E0EAA9C5DA79DFB53E69B274E09297819795149A22DC072E9EA8C83E2894030B47B1ADF5DD2A42B19D508132A1A662ED835314DA2CF9D62828E8B4F5A827A07E8FAFFC2356C9857170EEB4CADED1EDE5B525C4AB65F21654E4A25329644AAA8B76AD44536ED1B8F97A73CA2BC54BE3601617D85F6E6BD63AB9EADE4C57DA1EC9A18C44D05CE97C3AADEC1ACE658EA5A84E1B4C19AF285110708B9157DDA899784B2F4C502EAB9793D9C4AE496DD096555A7395D264F055CD06003E5CC3F5DE918C2BD8759ADD6CF6CCD9B73BB476D2844246D922975252B2EC555110D797F399EBF01F523FB625364B4F49E9F69DCE4B2A612869965C96E908044E350F70D34BEE78AC86273B217BE305AE2D246667F0DDC15AB7169D3A90CC2B69D3E9EB40720BA0DD0326C8F60F87311F1179A2BC915034AD34E3BFCAE4ACD09A93706E6F883272B243E5357C451590E03D7E7FDF14D54555D3D4BB27134A826F2C90CAD10E62CF1EB814106E1EA354FA0611216B6C5DF895452D648FD2E6DC86CAA13C03B0C741D74FD9146D5970290A16959E57359D4D25A428F96B7377319A4D1D0366CC511F128AAA7AE2231ACBF133F94BFB77DB735AD6CA6D2DABBDC25FE5581B7964D65A492B21943BD4F1CDC2BDBEF487DA780F8A34EDDCA6EF37C9BF89C399D6EC6FC546EE95740090515255499CA114BD26DC3A4B2C32EACA24D3D1C921059A3799F328924CD6DC1DD6E13BC9F9547B44B3950D3348ED22919C6F5264E45E8CCDF491D7726528552E94C755560F7B99F57474E11AA76E277C7C4AB7C15E4FABBBC9B85A9ADC4866CC0256AD2748BC518CB9B321579A988A405F6DE0F7DE28C63A3E9B90D3A28B393CA99CB598063EED2C3F9E321E40A304D103C13D7AFCC7E38BF870A632C4EA7D54412923D3D15A8A66C6C9E542E56425BA3C9938579EE9F3AF7AE9E2BE62332F345D197DA747C60C1BA265E2C471CE2E4379E4A914FC69C7B3AD6CC912CC0C0C3C3E389EC6F04650A944ED4A2A12266CD3331F310651DE6965B5511CD16BA286239658C7768DCA662419EA97645C7905C8942E99A2B1A6678784A38EB84E7661618DC1B57DD533EC170C1C2660AB770DCB05DB2A2590AA91F94C4FAC4E37F0E06DC445DEFB36A4948EE64D1373B93B76695355AE865894D430FA24CF0F4AE90F57F7A0AC69457226D2A9A375B447961D9E9D22F07070DD82FB44E28164DCBC9AF73B6F728BFA37AA1322C52CD72CA5EB9FFE92F8065E954E2162100736FC42E5AC745F4AD1D72D3B7EA8F300D351D0D3FABAA119D4FA4210810BF3A9683929A874F6FB7B7F4FB3B35D3FF9D348479D4B1F6FB6102179842102123C16B8FD7F5C798408582BBEBB20FB76B62EAFDAAC92A969484CAA6064E9D3F78C3578D516483D49555234B31CB9A28EA97E3CA2B8DB9ECE2C66D8DBCD4ED951F2F97CF5FAA6BBB992C9F35C9E5FAB054BC288F9423DDB9B36A56DF5E9B655F5573E95CA8A68D96A4E5C2E342C8DDAA62AE821E41CB0F3464A20F0141EDE67618F887D115F1CA0BDC1DC0E97F92B58AB66644E8E373831F62F6B76977DD7B829E247D3D71F951604F3CCF4D3D916DAE75DEB7766A83AB6E8DCDAAA574650323646FE6D347A5820C1B8F88CF58D3F78A27CA66913E97CBECEF0B79D53D73EA59D3034E695ABB97ABA3590A45D3F4713C335BC7F73C51298F2F20462E7FE0ABCE9E3D14CD713CE391B4EE1AAF0ADB560AD4972B70EF65A6F25147489BEAA9FD78077B5BB716E1975757886344DDDCF148E24FC48A8B4ADAEE2EE9CAE85B3DABA555754ED2EC3E6F426BD59A69BBC4F35B95D18C61F48E899C2D3E795B5C5AB6A0B8B5FBAD39AF66D387AABC5CCCBA8BDEAB99C554BA80DBACFEC7CC51A3A5C2C3402ED4FE4AB26A827C3A054C52B6D292A4516DF34CB13EFE21D6E0BED4CE2B9F32C627D1F14742CA680F416244FA3F53D91DAD3732F9EBBE3330CDCA65CA3F8E2E9A9860B95D93453DDE861D61FBA39CA78B372C3DE076FD4314452F3A45F2D3E91A2B266B3370696BF7C6292A36AF5EA096AC6F14EC7E8AAA8188F9F12C60701B8294E711600ABD253E72B0872799DBF0C75BF3FB9223E4AFD03E30D628695D50DD69E3C92779D0D64CC0151CFC19475AD5F771ABAA1953C3C1112CC4BB7D43082DB714A6837B955CA9512C3E75003D51EFCBEB85DBAA9E0E73F575C5ABA91F1B56FDF115B530CFAB58EA85F648A2E40F0028E5AE745D5902A5706E830EF9CCCBFC62CCDCEA91FD3F27615ACA965119D48DFB79BB3587A0C1541515532CFF047542FB9C3802DAE63E08A7AAE98A33AA2E70C755BAF946910C25ED4972FB046DC2E836BD9606C9DE16AB26E91AA292954FB31D3CEBB54952FE6338BD7112BC09EB52B81C2336273E58C96709D108CB9532FAFB5B2AAA1FE8D225AA31EE1AAB06948478C832C3DBF54798E25597E142D444F3FDB08E92A1A9A9DA525AE271534F257209401801B87CB8249645E1D3533E9D35D7F642385F6E2B975DF42108EAEA47E4872ECF6F647EA10215B9B916F69DB974CAD4F542C9AB9EA070C9C2890A84C1D8FD92E97C625D51ACCF120E36157F093DC8CD6C35C4A2AA0DC2C9E754AB4A829578DCC1A1C907412409BB83FEB192A02AF37E2C636ABD472F647CD97E56ABF557E2434DB323D392D6D94B711D7C993857B6111E1B1C8F6E641AA731A6CB01AF5711BE221C48A5AF290DC3DE67A85A9EFAEDD1C964AD425ED966AB967DC96E4FE70886018E5E18A16476DA9BA358F26452A6EC84BA32F3FE38E9EC24A425F4BCB7347503512054FE38BA3574E9B352465A1AA60E4B5C718D6414CD60CAD0D03D1437B89D5C55AB99BA45AAD81F46BF7BC714E548A72E52B2889E07AFAA29A9C4EC2695849E4EC164D6F7BEF71EBFBD1DDB77C13C9A542C4FB3BA3140152CBD65135A069A68A3865F50BD34C9B4865282CB689982639AA23D3847436CE6130635456673641460837237402A063F4721E6897E28EFB6EB6F667BA6BD96BAC54BD678075254C6C9F92224AAADA58875395701F87A7F1467ADF3B2F32DC7715CBA1B61DB3D91B91534A919A4AA5B3296B56C2CD767259735485D9182BF65D2180E5EA8A8ABC6032431F28CBC9F755C536185F1092F6FB46B00F7B9AC5EBB5661E58F9B5849DBC60A4B4EB6A0D1AA9E65D226A92EAF57FD2C228BAE36FF3BB1125DBAD7930073F30DCAA71DD40D72F022B0BA2121FE0C0A25738D4C8AEC563BABD9E6D8694DAF57743DC298524A49A4725199347CE5FB455C08A64972BC382489F8A322F8CB51F49523B26DA5365ADBDD0B613DA36A1652160DEA493723E844CB94AFD212CD22EA0CE3334FD217FF840EDDE4E71EEEF65A9ABC0A23EDAF616D98D6F647DFF000DD6B2B3EA6E7CDC6B0BB72A45C7CC32D9A4BE4D32507C1CD5C4890FF21C5433859B3E984E6A1CF041694B4EAFEF624B285B12B29C11777BB819D4B5CA2138B892A564CAA9D3CE6ECD5E47343E1CCCA23C6DDD18B5C47567EDA4B5B28FEA5AAA6ECA4C82621D67CD54443F9634743898789C9D98E22FF82CBD76165869C37532343ADEEDC90A83753437143CCD673D866DC0C63A9954DB9D2B6C67A2782678639C5C373676AE985DE9DEDBE48D9C39AC17AC1C51A8262191737BC72B2FE0EA8B308CB5CD22DAAD914D43FDE52774E25ABE85FF0015054922FF0024584550D2406F100AAF7D3BDBABB8123D3FAF4555A73C414519BC6CB698096278C5193099037995432D33ECCBAB2EC8A02533ED1195B958CF00E6863FC51C3389A7FDA29DAC06969F470FC1D30F66D6E5442F5F545F9388B129C1C767DAA838632F9980FEEF9C5789C48870E0034ABBA3F83F6C665CF5036EE1C528531D44BEBC5774B2A3FC87A44C7C63DFBFFA8FD15AB5B60171F2FAF3FD1FFEE3921084A512A86AF285A36E452F34A32BEA764556D2CEC93D5DB099239B75B50534503531FD1D86027A6BFB6115CC2049B242108175210840848F9B17CAD893386FC4824F3258F06CFADA4A892FC0E95128FA4EC7CFB3E58C50C72CDC7ED62E2A6929A369C510F6506A61FAD41F897F916899879FB46FCFE899A8F0A82FA266C12B4E989681E79209663F06116C668554DCADC15136869172DD84FA7AA9B341D2DD69300F128E8C3CDCA48152C6147CC9452B996B633FB16A03D5F7228BA36E20DB7DDE5B1B96F39672F95CD394445D2000AE48197FF6C5FD41218E2DDEC72A659625A0ED719948EEE6363D6CF6A76F36E15B4BA654A36B9954B57136712D5276ABEA87E6724336CF66C97D93725FED45201E81211EA8C0AB52473079750F3CF26EDF0FE68929DDBCBE86A436B3B3FA618548DEA4BC0D5ED41F974B4C0709E04CF95F64EC0FDEF2452E50A5E5C31C622FAC2CC80A7171C0CFDC8B5687FE68AAC02A5CF88925D7CC46AAE3A41462295AD6E5B6469D3D403FF4A7CBE4B35A596D61BF5BCF50CEA4AA13FA6E8F55FC99524BA0D274F4525150FE1C236E2D82F0EB936D4EEBEEEF72B709ECA2A4DC65E0ADDECE5E4C016157E68920ABAF74973732D32F0F5ABEA2FB9A4443F000D9AD9ADCA70DB9055D5AA35C5355814E6A3A68E754CCF17944C569677FE6F20DC37EBC33EA8C4EE2C7C03B7494857D28BB5C3FAAFDCCDCAB56ACABBACD29E46E33F5E7D289C0917D343BC2BF4A6CA8EA00402598E3197A96092695C4D89394DF6D148EDCB191B06A00056CEC8F0EEB6F30DFC557C40EB978F6B4B9654AB4A369297ACD87BA51EC0342D5CAADF1F1B95C8F5C952F08748C60F71D3D95DECDF658CDBFEDB2C734EE6A4CAE332753D9C2DF9B537274105798F15F8873C443CE5109DC3EF84AF171AF6ABA726B53EE4F79DC3DA8A92494C26D369BD7073B7D574E3B7DD9B495AA78376FEACCBEE46EB96FA9BA8697A028CA56B0ADE6371AAC97CADBB398D40E9B8A0ACE9C08624E8D20E81232EBC462AAA2972398E6B8122D63EEA7E92B49B8234E216AB3C736CDDAED94F05D93EDC6DEB3D58538D5D539494A5223C557262AF35454FD4B1981AA5F7A208780B6C326BBDBDD905D7AAA4D3C3B136C5B8093C6EE09049D4F551F70902A3E7487254B1F8636BEE377C37B70DC4D16DA5D84B513E925BCB4B2DA85DD475E55AF8F3F9A9214852405A37FEB0E0B35B1F28788A31734DCFDD9E0E36AA95DB3D01C1DAEF4CB6F0DEA20A2E9F9F486BA60F26F5E4C1CE43DF01A2206A9385F033EAF0FC3842E9247B299F0B0B8BDEF25E7DDD94B9AAC19D933B50C03B31EBAA845E1D7C39196E638906EDEFEC9C2BB93ED9ED9D753B42513C6B3155270FE7A4E0924D36EE3CC480E465F8328D79B774D82DCDEBDC5512CE70EE70D9BD653541270E8F35D6FA417519FACA3E97F4057957D99DA1152D6C785C6E6ACA522C65EE1FA54E332973E9803B5725543349271CD596254F2222EA8D04257B4C98D4562388B6F0B769279CD0D75655396F4C5156F670D0D0A81FD51367B90BA3645EF49141033112112CC8BE08B5C06A64ED9EE7F872B58C0A3E2D3466998C6DB3194BDC78A8967046DE532696A3DB9ACA8196BF76399C3399386F3873DD54CDE0F2997F7DFAA1C3F19C4B5EF1785F573B29DA36D02E3DE696D412ADD8DDD9F3DF9BA89543AA9E91249242D92703FF8E5D5592221F265844825F7E1D8C245C51783EF0E4955369B79EB3A068F755F90065DE5D77A5663325560F8400C6362FAB1616D7758DEC79AFA126C76D9859DD9C6D6AD7688F24E474048982A9E18E0A8324B2FE6CE329A38D24D14520452004911D30011F204724678BAFAAB368B242108E2EAF05A6438EBF5423CC2042421081090842042469E3F2C3ACABFA9369BB6FBF52D64AAC8D2157AB299890E9F62DDFA62225FF55208DC3A22B78D7D9DA6AF670B4DE852354340748B7A35CCED91169D4D9EB3F7E92A1F1641FCD0EC0F21CD3EA9B91B7042F967D333C592B912D473ED4C90CC87F0C584AE2788BE527CA3D5B9CB13A709625A78C08A2B096BC06B7299AD9E3CB95E7E2F84231EAA078A28A4D5333CFE947897DE28D517800DD402792926A8B8865C5DC258DDBC6DEEF551D47D5957D12F346521B95A2229CF1CC949B92432C9818753A04B5C7154BAE2CD59B99771A86E423E7295A5D3F74E310A42F9693BE60FFEA36EB81FD7E928CA5A54FBADC6AB754493E4BC9373D2F8FAB288F4B186821A2DC53924EE71D75B0017D1CFE4C1CB7B8709CB62B902A0B3CAA2A374797FCE90FF00A2361714B5D3B7F47EF8D7F3E4D02E8A5C296CD30E67D2139ACEC8C73EAEA7A71B018A8043D9FA23CFE478324846F98AD13D8465BF21F45C2A0E5D67D71F88F68B0C75FAFF00C63D586DE14884E8B856D030D7310ECFD910E1C4DE6D77EDC5CDDADDD9A266522A72DD397CB5073BAB5EAE297F4605315522567C19F4E6483755A0979095898F353A75ECD3DB16D6E7DB7A06F2501585AFBA34AC9EB5B7F3E66B4BA6D2B7E88AA83C6E638907FF00C979620BDC01B9D92F2EA34BF354A6DB2F2A57D2DB4AEE5B191CCA9AA5664E1C7E4C69315F27D3595247CA49FAA1E4E7E3CD11F4107AA2D3EEEF63768376AC698A96732A93527B83A49D8CE6DF5C2465C92F32A4A6A96BEE95EAE9708E5E26EAE406245F517544036E937913DE0877834996E0AAE9FDFCB62BDB23A36C5A8C19824E242E1A912BF374E1013F7A663DDC7BE88F812EA8BD1B1AE385B9CDD2EDCE457075E1F9746ABB80FB5559B75A967E82B2559DFEAF9A6A9F39BA5D419643EB87A3A8735B9C836BDB3707273F756670634B6F6BE53BD95FBB5BB6293F101DEF5B1DC6EF49749BDFADB730D298756AD3681F352552AAAF3D3AA9154FF3864E52D0156E3E42C84BA928ABF6BBB2AA96BEE2FDBCAE26F75E969B48656C58B4B5F6ADBCC47DE3C6882400FE6C01E544CFDD25EA0D0CA2E76E45ED7B602E76D23881CDA592EA49DA82C6DBDED96335B9ADBE659898F7775969E3262F883132FAD25CE26312D00B53D40B4587CBAC5F53CC5C01BACFC90E5241E0782E44BC1A4724210FA4A4210810908420424210810908420424610F12A684FF0087E6F3D98066A9DB4A834D07F6FD08E337A2C5EE7A980ACB6DFB80A4CD1EF2132A2676CB97EB3364A88C298750B8E0BE2DAF1F1A35A4B4CF44C3992900FE518B4536EA5A621AFD44A81C5C2AB13525F3BA679C6A7385BF753FBE3D3FE88A2674D7249673D9F0146A9E2EDD0AAB8CEAB9904C0B43D0CF410F01945FEA15F395A71403C78D94051464E252AE491073B1EB4CBABC5D11263C1C2C870EC9B545536E43896DC297C8AD0D37376F2BA669778442855535C79A64EF0EB36C90E1D3E7CBAA27B78C66CD6C9EF12C2C9F7C3B039C5B6AB54A165693D76C699D52109AC9D0F108025E134873E8C44B08826B835E1A76E6B4B47D1B96485F30D80BB471728A3E117C53F77FC30A979C5435FDA1AAEEB6C0DE540A82EE90200734FBB23F78ACBB33F7BFA324A37D7D9BF14ED90EFB29C613EB037DA8D9DCDD448097913C702D26AC0FD0B3457AF2FBB1F3D1DB3EDCE8CDC5597AE19B0793CAFEBFA6E7C152FE488CD0809E53EE9BFBF297B4CF1CC4BDEF48E4669631B2934E0B5B21DEC58BB51786DE31FC9FAD9091B464D6BFA11E149A6132550485222700974778130C084BAB218C2748E78A17870CE2E4E623C2B63877479D2C2C717476CA0B736FC56DCBA2E9A9868249A9AFED128B5B4EDEDB435954734A368FBA76E6A8AC59118BC94CBE7683878DB1E93CDB89E5D25F0C6A48C761BC5FB6B6F1061B67E293711ED3A8F42127B9129F9D5200FF0098EBE98C1F9A6F078DC5ACDC84EEDACBA97D8A3FBDCC1BBF19755ECE81498AB35E5009B8492742019662A878BA62B28EA04C72C6E613BDB63F9A4D5746A58F2DC3EC4D811A877E0B7FB51C6A39F6F64608EF37885ED83633414CABABF975299A4453488DAB051C093C7E7E549BB71EA54A34A7916FFB8BA6E2A60FA4FB83DFF6BB62A0256F5595D7674CD1A01309238FD5CB9963D6FA62BF4F29BA19749E458C4456E5B872F117A8EE454376AA7DBF6EF2EBD1EE1D1BD95541567FBCE66B4BFC4993B048CF92B10759243E0F0C5947D1A91E4091E1A3CD6DD43738C633766F711C3835527C52F891D75C4C372EE2F0CD656EE97B57256EE25D49CA153CD545A1789CB8FEF95FE5F0C6EA3F261AA8921D9EB8F6F5839CDFCBA43494C9FA243D9C970BB22CBF94023488D956D35CEE1D0DF1D1D3A914E5A57547D9E9AD5B2B64E87BB2EDE6683D4121D160570C7A0CBC51B4FF00C9FF00B9746ED6B7857FAC4CEAB79454122A929F9535613C45C02CCDFCCE5890A4E5A35547A55E50AB16B8C42C8A00C6ECCB1F8ECA9F096CD3CD23ED7241DBCBB2DCEEFA5A5A6AFC59AB95676B04B5569CA924EE252E0BCC8E63D2A8FC407818FDD88C9E0DDBDCB81B84A1AEF6D9371FDD1B6EC2CA4F4E8EA8D54FA42A697A4449339B0079495001157E31F8A2549ED7D4A4B6987150389EB13958A5CC0315C7AE350EB2B7267D6CBE522BDACE800517B395F4A12A5EAF4D1E8169337CDC976DCEF8B9AD00BF1455D0620D3206037BB49F86CA4BF0295D148F0D7598EEF7E6B74AD35EDD34D75D23CC71A7FA63922F566D21084084842102121084084842102123D199B24262C1E4B5C8E683848D031F80871FF5C7BD1E3D83AE7FA60285F13FDE251876DEF75D7A38D1E4AD21ACA772B211F2729FAA384590A6691AAAE55554DDBDA264330A9EB39E3F4A512896B34B25DFBB54B14D200F5111C4CD7CA03B04B58EE25BBB3A73B82ACA5D36A806B29774E20AB498B7157A7FF741508929F925DB116D776FDDC1DF5DC0906AFE93B740121A409C06491D44BA5EFDC07A890435FC24AC68FB60181DCC050A080BDF9782F569CF93E577B6BF4C52E9DDEB5734BCD5CB86C93C7AF64BA93B964AD5547A9AA488F85548BA496F3C6406D6B8586F9286BAC9DC1DA848EA3B20FB35519F4BAA44092A6A772F312151ABD685F9C0AA3D3908E619C6F5644927A0645A241FDB1FA503B48D32D15D3B7F6F6698C671F4577E7BB8AFA4A97ACC6C787B28052D2E82DDA798FAFC7D6EBE7ADB1DD9D561426F5AFDED8EE2C855D9EEEBDAA4554593984F1C65289C2A2E3273236EF7FAEB0544FA47ED43EF044D358FA9B7016DAE2D6355D83A664F6FAF9B65F99766C94FD6EED2AA85C0F493B6E7E06AE15F124F52F74AF4737AA27A7735B3FDBFEEEA8A3A16F85072DAA588968AB37805C87D2A703E15DA391F7ADD61F5094440DD2E1C3BF2B3DDCEA4DB8EECE97BEF4F53E812B23945DE9692F3794B511C89AA53E6BF48551FEE97C821FA9A56C82CE1FA72583C3EA5997B23AB4EAD6F99BF059DBB50DE25AFDE9D437228895D0D712DC5CFA4B00A8E9BAA9AA4D9F4B4CFE0CBDEA3E95C3DD1FAA225B8805DA676DEF46EDEEF4AA957E733A2E9E93D9BA165E8B5127350D51333EF4BF714BF5CB606907C38E45E088DFA878BBD529D7B41D7D7376335C5A6DC1D30E4DBCA6BFA126C2F176E02AE2BB470D0B0EFB2E5F03C9B9787C4389449070C561A6F937935FEE3EB3992756D2343BF7151CBD1364AB6416AAE6C03CF7A0DD5EB1E4350068965E0EB8CD61D83C71CD9DBAE96B71E0B515D805753DDF23266C6D1705C2D9765E36AFC3FA9BD9959E916EBF7C8FA58A5CC6A97364D4FA67DE52A5155FA89AB202FCE266A9752EF4BACBC2388847653DE2B95B4A1E0256BAD1D23244925C394B4D1C9BC2721E9C03A44FE3895DE24DB58B85B95B6947696B5C337153D3CFCDEA72B705884C008712C4CBA44C7CB946BD3AEC0B78FAA8B4818590AE59B851C872972451C11C4BABAF28B2C42597377735BD17B775418660F3513E4AC74064CCEBC529B08BF5E775776EF55361F8990EE3EEB4FB6F34CD195DD98A05DBF7EE259920EABE9AB96862D99BB591C3BC4B9054C0FBB9E592B87A2316382270C309848AF2513BD3A16A7B6EB2632AA8E82249C94BE6B2476B8754D1998F8084FB0312ED0F544FAED2386CE9686C6D7523AC9F330B9D5968D109F24D95E620C5924B82A4865E622C3A8E245EABB234F4F2A3A56A761A252C7F2F6672B5C407F3C9798FD91FDD21CC625451B9CD68905CF22BE7B8A48E0755C3DC3795C23959E4173651FB2AE1DDBA041C2F4A4DF7F1389BDB4D03144B4A39A84E407D46E32E5117C78C59DDE9EDE6CBEC7B6E36FAA6B2F2B09557C3796879FCDA7B3479AAF36A9DC0CD5249555554BA8CC8152E81E9C7CB130F514DA7F6E2D8D5738C1CD573793CADD3A66021EFDFF00292224C0BE28F9ED5D3BDB7EF7E5C4036A962DFD735C56D3298DD09538195A8E8B952AC5D0AEE4C12F28249247D5E4C62088E285E03180177888E099A46CF55DB3647CB9190B9EF71F0E96B7E274B2FA617B4563D74FD051C91C43F687FBA3962785E55C921084750908420424210810908420424782FAB5FDD1E6102168FDF2C0B691357949D88DF25372427525958950D592C887536455579AC9C2BAFA79BCD4B2F8C2252BE4DC53943D19C2CECFD2B4C335D95582F1ECD6A7154044CE60E4F9BA1767A795C9FE18CC5E3953CA6A49C2AF78CC6A394CAA7A84D69C4A40D5BBB4F24CDDBC74920810FC626798FC4211865C0865933A7EDEDE3A5B451C1C9E58ACA1AA190623924D444FFC90F0AA232C7EABD13A27D146CB4588561FF2BB30CE46E6CB31B8BC5FDB8FB62D83DEBBC56A27CC69CAD6580D746EF160C8C0095013E57F7D8EBD31AA3D99E231B99AF6F65A067ADE8B99359BA6CA5EFD93651F9124E48DC081A461E6CBD051B55718EB2955EE138746E6EDAD0CC529955AA48CE60C9BE7813936DEF4843E3C5328D437E4DED97A26FD6EF02AAB97A3C9A852346A2F65CC88B14D67E2EF11257D5CAC3C3EB8AEAB85C646D8D97A575771D1411C95D3B4BDECB80CF2D8D86CBE84D295D75D8335DE0729C288264A076F80F1EA8F7154B3D14D003D9D901D047B0B42ECD74D3B238D378DD435124D7496593FB41131221FBDE98B8635791C86E4968FFCA81DDD1F0819957773E675D5909F52128944D5D77B7B299A81689CB9C11644AB7C3C4397561125BB38DA4517B43B61AD114EADACE6A07CBF7E9ECDC9214C9F3AF843CA03E518CBAC4BF6463FEE4771F43ED86DBB9B915CB69C3C686B03366D99A59AAF1D9E58A5F0F83C4511FB28E3CCFB5BDEFBAB61D20EB2EBAA68E3A5A892F1305FD5F6E7CD641190009FB3B631C7733721F5A8B4D38B84C87459394BC97AAE8742C3E8E4EC1253F94E2346DDF19BA19CCC99CA2E9DB39BD2E2B3F24957B2C5FBCA0C1A97809502EB231F36319BFB9842537F767B7D5B5BD9DCBE7F2D9ED113275277AD15E6A4B2C2DC954883F1A411D82AD920BB4E8AAFF70D4430C1532C72B63906689EE1A4BFD725E8D39BA9A2D9FF00B57DC49E4C41AD15413A55BBC588BA08506E26787DE33C6209A81E3757215BED23A9EE054F2B9459574FCC5FC934642232C604AE227CDF192C1D04510E330DDB5D09B70D179493379309AD4952005C1BA0E11EA36CDD5744920C8FD39125917C031855B4CD93F105E29F52212DDBEDB856596945D004CEB79EF358D392DF5102BE374587EA92CA2BB109240F0D62F65E874584D3D1D455623D911200C881F1B74E1EBEAB79FDDDF127B5D69A914DFCAE64EE6A3322499C85ACAD2EF530A9DDAA3EEDACADB8F5B872598787C1E68B09C16B83DBBDAED595DEF9773D260FF6A7AC8DCAB24A78D415FF00A39943A579A4D095D3A4E60AE5A734C7D83A740FE98CC3D80F089B4FB3E5E99BA3746AF9E6E83746CA5A94B9BD6951A0028536DC431EEF2563A743247EBD33D3B553F31C4BF023CB233D35F6943E1A0904EA57CFD8DF4A8B98FA7A62E6C24DC83BCF6E7FA2FD26388FC51C908438B1A90842042421081090842042421081090842042862E3536EAA0BF964AC06D6A9299B3954FAE0DD792B0CDCE85CA36ECC557AA09E1E5FA3845FDD8AED6DE6D4ED0BDA52A1994BE715A4CE62ACCE6CE1A69D88667D22987C0231D16E205D56FC45F6334684AE6AB4A297A76ADAEDD3A16EA1360589249820067E1CBDF2DD3E2F6C644DF0BEF6FF006FB4A0555700EA0D5054B94D5A4B256E1DBC76B7A5249213FE2876389BA3CEE16FFA3D8BD4BA99D87C3AB649039CD6F8E522F6558D53A3676CDFB0990E8AB158490547B3C6043897F9E34E2E0CF26676CF7B37EE9B93B0652AD28DAA95B7CE85BA5CA073CF9B2EBA647F1F28C3F8625A6BBE31AC19273D35B6937FD466910FCDD8CB5C64F12CBA895F75EEBEE446F70C19C33B81BDCDE04FE9EA56B4A78EA4BC327AC9AB59B491D345CE5FDD7A953C9200E93E886E1A961276D02D45461CFA67FB34C32BC3733D9E96F45B50EE4EE98590B1D73AE96808778944AD555B0A9E1371E14C7F8F08D496C76F16F2DA2BB2178A5B56D4B521BC98039A81ABB588919D24AF892C0BD3D62243E1C63674E2254ACEAB6D9DDEA9253CC5DCC26BDC81CA4822912AAADCA544CB001F117B2350D4E95B98F8830B755E30C56E507324CE8C70F2AA1EEA2BF1795CD734B76DD7D03FB3D613452D0D6FB408C97BB23C3B88B0FEEB77CB4B74297BCD6EA93B9945BC4DE53B356C0E9BF6F8912F3267F10974460BF147B2AF6E3EDE2755CCAA6953AF38A51337EDE54D4C89B3CC8832515447ED4843C31E87091A22BBA2F6A52E0ACD0993217F38753262D5C375522410F0F80FAC722D33FF001893F59924B82A8AC868B2263892663D2631665A2566A370BE70C72920A2C4A460CB24714FDD0769C020DBE8B41D2501E35C3572A0332D73E627D7DE407ABF0C4B7F08BDC0CE53B8556ED4EA079A4C699A865CE9E49D2D74C8583AE5E2BA5F7484E25BAEF70C4DAADD99A9CFD5A31F5093B2FB53A795EE69B9FBE97823DCDB5EC1EC3ED2EA77555DBC924EE67542FA821F39CD95E7ACCDBE5D4925E9D0A2B2970D7B1E083A7A2FA43A63D74E15886192D37672890B3ECA323488FC56BCDC12F82D529796D856B7877655ACCAB9B46771EA142596C58EA4830991B198AA826ACF960D79AEC03503E534E94803B32CBB63735A5691A6E8AA724F4A51F2092D294B4BDB837632E973606CD9A243E114920E80188BCE10B239D52569B74944CDE5B39952127BFF005EA4C41E3734B536AA3FE781865E24BDF7490C4B5C58C8E249257C3D533B89B137B68DFBABF2238F6FB7B63F508425474842102121084084842102121084084842102121084085C649016BA17D4A7AA3F2A2291EB92BA24A17E8ED084205D0535411EDE96CD47F043BAA61AF305BA29EBEB101CA1082C92E76CB975D342D3B35D34D74FED8E3D5AA1A7B756C8FFD2084204A69236BAE4D0447B3411D34D3FB348F3D9A7EC842045D21AE9A6BF5E9A6B0840B975E047402EDF6E9D91E610810908420424210810908420424210810BFFFD9);
INSERT INTO `person_info` VALUES ('f97a44a5-b9cc-4858-806c-43aa9a01df9e', '刘文俊', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', '1994-10-29', '2016-07-01', '440222', '440101', '15521082248', 'me@liuwenjun.info', '1173453219', '未婚', '身份证', '440222199410290357', '0', '团员', 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC0001108024F019D03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00BD477A5A4AFA03C90A28A5A003BD252F5A2801314B4B46280128A5A281894B4628A401494A68A00293BD2D277A620A29693148614B477A2800A4A5A280128A28EF4C41452D14861451477A0028EF4514000A3BD1DE945002514B49CD002514B462800EF477A3DCD1D7A0A0028A4A5A002929714B400DA4A775A31400DA29D8A4A004A70C75A4A3A1A003BD252D25001452D1400B452D250212968A298052D1477A4313AD14B47E14009452D140051D28EF45001477A28A004A0F5A5A4EF40051452D002514B45002514B8A4EF40828A28A0614514B8A004A29714500252F7A5A075A004C52D1498A00283C538002908C520128E9D2971C52F6A004A0D2D263340C6E297B529A4C5310514B498F7A402514EEB498A601DA93B528A3BD2013B50452D25003696971494C038A28A5A005A4A5A281098A28A2980514B452185141A2800A28EF4B40052629692800A5A28A004A314B4948028CD1462980514A28A004A4A3A5206C8247AE05002F4A5A6E432B60F6E69A64D8738E01C37B7BD004947D29865550493C019269C0F39CF1D28014F033402319F5A370E3914C38423D3AFE1401252519191E8680724FB1C5002E79FA5252738CF6EB431E091D866900FA5EF494BCE680131452D14009494B9F5A3B50028236F4E68006334DA5A0625253A93B502018A0F3451400945068A60274A2968A004ED452D25020A31476A2818B452D14009452F7A31CF1400514518A0028C51DE8CD00145029690098E297BD251DA800A5ED49DCD07A5001412075A4CF6E948DCA1F6A005EF41E0F34B9F4C546CF86C3038C751CD00498E29320F7155E4B95552C1C363A806A94DA8A44BE7020A06C3ED39C7F85006996553D7F0F4AAFE628DEAADC8E08F4359936B3146A246C1DAE15F9F5E9F98E87DAA85DEB1124C7CA954EE079F51FE20FF3A5743B3365EF1430C9C360E39A85B5548E72B2720A0E7D4F22B91BDD6C185DD6E033636B4678CFD3FA8AC6FEDC91D9448C494CE0E70718E9F5CD672AD18B348D36CF44FB723E9D2BABE18FCABCE7DB353ADEA31D8929FBA49C761903F31CD79F695ADE2DE4B59490A32C4F739E08FEB56478842DCC377B796CEF5EC7A03FA8A1568B57074DDCF4049B73BA839D8012187AF7AAD797AA8D10CED2B20CA93D54F07F9D73569ADA7DAD409186E528C7B1F97AD55D6F595F2A2657DC5B28C3A70060FF009F6AA73495C4A0EF63B387504223F9C303900FEA3FA8AB5049E644CC3920F63EB5E6163AD08D1ADF7B857F98127DEBAAB2D58AB7945806C10D93D4E463F538FC688D452D825068EAB70C6D27AF4F7A40E32C7F80B5650D4D2557F9F0A72CA40FBA4007FAFE953D8DF24B08CBA9756248CFBFFF00AAA88B1A4BF2C60F53819A7641390722AAC13A98902E769FBA49A97704661FC20F3ED4C09738EB4DF997A723FBBDE91338DC7EF1EDE9520E2800EA320E45277A4FBADECDFCE8A042F5A2933D297DA800A2928A0028A5A4ED4009D6971C66929680130697AD14500277A00A3BD06980514BF5A2900514BC514C04A51D292945001EF494B8F5A314804340EB4B477A0028A281D6800349B87AFE54BD6931DC75A0043200390C3FE026937AB746073EF4ECE7E53C55799500C92BF8FAD004ACEA07FF005E9827421BE61B947358D7D773053E46E2C3AAEEE7E95CDDFF0088366526B629229E1892180F6F5A994D2DCA506F63B0B8D46380619D03038EBD6B2EF355B7F2D992E9BA7251F3C7638F4AE2AEF5C9AE461F6B28181F28CD647DB6442B82415391584B1315B1B468337F52D71DC282599C0077E70D8FF3DEA8C7AFC8243E69CFC846E0705B3EBF8563CB3349C9001A809CF5E6B9658895F43754A36D4D2975498C6D1798C63718653DC751F91AA82F650BB777CBD87E155CE71ED4704F3593AB27D4B5048964B8693393D7A81516E3CE68E9D4669421E0ED3F4A86DBDCA492103B2B654907D4539A7660013C0CFEB41C7700537200C63F2A2EC2C8B02E5D57838CF4CD23DC3C91807E6C1279355B3CF5FCE8247A53E67B0AC89927292071D474CD5C3A8B3DC07525541CE07BD661C7AD20241A23371D81C533A88F5C2B672C08E7767827E98AD5B1D503496BF3058D17CB248EA3193FCB8FAD70AA4E0E0D594BA91576EE38DB835D10C43BEA64E92E87A9C3AB462DC3A11B400C077E0F007AF5AD3B7B91387676019C82ABF5EE6BC9E0D6678A3D808C11B41EE0672715B9A6EBF29BB5FDE10003938EBE95D70AF19184A9347A4ACC0E5C72B8C2FE5CD4CAD966F41C5739A7EA682C048CE1989CE474CE4FF4ADA8A521369C6E1C727D3FCE6B7BDCC5AB165B9463F80A6A924827B0A8566126DCE0460839CF5A9636DE49C7BFD280251EB475A518CE29334080D14525002D29E94947340094B47E14500045277A5A3B5002628C77A39A5C0A004C518A5ED498A00751DA8A31DA8013A528A4A5A0039CD14519CD0037B9A519C528145002527E14EA4A00298CE14FAFB0EB4B8F5E6A27658FEE8E6802396F215F9581183D5BE5ACABFD491159430E9C0E9FD2A5BABAB55DDE6B329C61CB2F23F2AE6F549ECE360CB1AE0AFDE07703FE15329591718DCC9D4B539964F381DB838CC6FCFE18E958B737D25D3EF9647723BB9DC714B7855A42475EDB6A91217BEE27AFA579D56ABBD8ECA705B8C39F5A427DE9C39E462838070064FAD731A8C1196FFEBD2940A300E4FF002A0F5E47E39A693D863EB400DFA669769C6314A0313D714FC2A8FBD93ED40C6631D464FD68207F934134DE7AD00298C633BB8A67D29D8268DA680194A012334ED9EB9A5E3A638A0068DB823069B819F6A71F6E94D39A00503041A5E99FD290123A521C93400E562AC181E47AD4F0CE501C1E5BD3B555FA5381A6A4D3D04D5CEDF49D404768AD215E136228E4AFBFD4D749637CD701E6994AC6CDB5B71FBD8E71F89AF2F82F5A11C1357E2D5A67444773B464051DC9AEEA78856B339A745B67A426A0B71302A432EE3B003C606327FCFF00856C5A4A2542CBCA93C7BD79EE9527EF0079719C6791B547A7F2AED74DF9E15CBB328E9CF5AEA84B98C251B1B008E40A285E807F5A5EFCD599887AD14BDA8A004C514B41A602514B8F7A38A40276A5FAD14500266814A718A4A0039A5A4A33400B47514668A0031476A28CD00145145002D250296818868A5A4C71400C2077247E3595A884DBC6F19380431FE47835A73EDF2CE5B6F1C9AE4352D415653B8485390581EBF8039FCEA64EC5455CA5A8DD98B7232A81D83463FA572D777129666126DDDF7B07AFE55A1A9EA5131DB095E472761C8FCEB01FE66C9E0570D6A9D2E755387506701719E48E71DEA027272734E396352471824161C0AE337B08AA718C64E3A0A5384EABCFA76A9C96518C7960F249EA6A0DAA5B0A09348630A92338EBF85376773C7A55D8620B26E6E71D3BD4EB1AB9E232EC4FDE3D695C763376B6071F4A78B67EA0647A5691B028A1F707DDD02F38A923DAB184DDD4F3C73F9D2E61F299A14A0C1E3DB151306DD8C7E15B8D688EA3040C725B3C542D64B9040639E8451CC87CACC96DCD80474E94850E31D6B64E992617723053D38E686D348E8A57038CF14B9D0F91989E51EF48616C72315B49625D4FCBD3BE29AF6A4A901781DF1D4FA51CE2E466214349B0D6AC965ED8151BDA6C4DEC719E45573136667EC2319E9400082003F5A9CC671939A6884B7B1F7A77158ADB70690D4EF130FBD5130A0068CF5AB16A859CB12155464B1355FE94A188A69D9899D7E8D716F1CA1016623B6073F5F415D6D9EB36B1421A42ABE85BE62DF857954373328D8AD852412077AD5D2E39DAE55DDC8E320907BD77D2AFD1239AA52EAD9EB3677AD751EE8D18063F798607E1EB57F031D6B0B48722306695D98F4427FA66B781503A015D88E562E31466838A05310668A5ED45001C6692968A004A296931CD001DA929D8A28012929714BC1A004E94A28A39A004ED47E14B47E140C28A28A401477A28A6014945213819C5004174A5E32373283C654E0FD2B91D534C0CED24AF3A0F42D927FC6BA6D49DC5B1E502FE39FD2B82D66E5A325437CDCE597E607DAB2A8D25A9A534EFA19976905A216574624F28CBCFE20D62B9DEC30A013E952CD33CADC9249E3914B1C04372791D6BCDAB34DE876C22D6E3150270393DCD4B1B1DC7CB058FA91D2A616E5B6A8E33D7357E0D3DBE55456E7BE396AE79492368C5B3336B336362E4F72335712D4BAED553BBBF1C1AE82CF435DDC80D8FBC48E056DDAE97B9B3D3D38E82B095648E88506F738E83449E670047D4F45AD5834431B05DC5C9FE04E83EA6BB7B7D2E250339DA06001C67EB52882366D9147CF6038FF22B09576CDD5089C5CBA2908488C2F382CE7F451490F86EE1C60021074C2E3F1AEF62D2E312091C6F900C0F45FA55E4B603AA8A875D97ECA279CB785A503B13DC1ED5245E189150901C67AE4FF857A20B74270146053BC98547DDCF60297B6907B28F638587C32400CCACA147AD59FF008474364BAEE0395CF51EF5D98887F7471D322A26830D963C03DE93AACA54D1C69F0B893E6906D51D17392DFE155EE7C3E082B1C7C0E840AECE44924E14617BD40F0B38C0CAFF003A15560E923CF6EB47923521918280727158CF645F66FCA8DBD5ABD3AEAC44898239638CF7ACAB9D1A1317CA8DD400B8FBC735AC6B98CA87638A3696F19DAE7241C93B6AB496B084C8724FB8E95D64BA13A488A177103048F5AA4FA33A5AAE172CE5B9E30473D7F4AD555464E8B38E9D0A9DBB063B5526420F35DABF87BCD8981043211D3DFF00C9AC1B9D2658A66568FD7A7F9F7AD635533295268C63BBCB2B93B739C7BD42783572588A1208E2AB3AE3AF6AD6E62D0D562A7E95A16DA83C722908A4E7F8B918FC6B3A9CA707AD6919B8EC4B8A67A7F87B5682E2358982293C00B927F9576512FC8B86181E95E59E16BB62FE56F755CEE040F4AF49B62D80C1D883EBC8FCEBD5A52E68DCE0A91E5668628A68DDF5A756866251C52D14C4263D68C51F5A3BD001EF452D274A003BD14A290FB5218514B45002514B4500252F6A4A29805145148028CD2F7A2801290F4A5A3B50073FE209047072A4F3C2EDCE7F5AF3CD427DF211B981CE586315DE788C9F2982827F1E7F5AF3EBC40B21CE013CE3767F5AE4C4C9AD8E9A08AF10037487AE76A0F7F5A9EDEDCB91E99E292080CB3F94BDB8E9D0D6888425B7CA483236C4FF0074579CD9D8913DAD9ABCBC1CA8EFFE15D258D8E70CCBF41E82A8E976AAA0023A57596F00D80F415C556676D18751B05AAAC78D9D7B55E82CF68C01C9EA6A58231D6AEA2806B91B3A96846F0ED880033EDDA960816252C7966EA71C9A98E491E9FCE9CA0BF0D9A8B9690D8B05B3D6A6C64838FC3D2A48E350C477FA5580A3A63F4A2C0402218C537CB546C9E6AD3E028E2A0756382C3E940D22166C9C807F1A4D81C024E4E7F2A931938C7152A201D3B52DC656920729F4EC2AA056E95A4C8E4120E2A12A558E4649A00CE9101739200518CFA66A329965C7F08E3DAAEF92D925864939C8A1A0CB7DDC628B8AC509600B01D9804724FB9AA86D448A0951B50617D2B56E1730B274E303DC9A74D1AAC5C0E074A6993630EDECD77C871F74E7EA718FF1AC0BCD384B7D390BC052FD7A12401FA0AEC9632A84B0DA48DCDFE159F2C382CDB705FF0041E95719B44B8DCF36D734931B091170197238EA475FE95CB4B1100E46083CD7AD6A368ADB15947DC200C75391FE15E73AB59B413BA91D0F0457751A97D0E2AD4EDA986460D02A42B9041ED4C391CD751C86D683773DBDD2981F6127190B935EADA5BBBC2BBE40EC47271CD78FE94F20B95D8C80FF00B448FD457ACF878096CD5BCDDE4F550490BF4CF35E96165EE9C75D6A6E8C761834B48A36FCA493E84D2D751CE028A39A29883F0A3BD068FA5001DE8A2931400BD28A38A4A005CF345277A5A06145145200A28F7A280128C52D14005145140051C514D232280398F155C24501DF9208C00400B9FAD79F08DEE2E318F941CF35D978D3E40A761C938DCC3AFD2B8D8E6CC6C771DDD0FB579F8A96B63B282D2E5DB5F9017521DCB1CB0E99F415710092E221FC28B8FA555B42A228F8FEF1FA7F9E2AF69A85DC647DE381EF5C12D8EB82BB3A4D2A0E3711EE057470A6005359F6108451815AB1291CD79B525767A50564598D462AC220CE6A1887503BD5A51C051F9D64CD10AA84F26ADC3085237375ED50AA9C81532A92FD7A53486590AA0120727BD2AC64B66A458F2AB9E0FF002A404E4FE954D02630A76233F4A8C80CC5072454FBB1C9C669005DDBBA13D8D4D877205858F55341428400335655867A034E5C139039ED4590EE4020E7E561CF6C521B501C64824F3D2AC679C139F606ABF98E0B658F5E80D3D057642F08C673C7B55729B57D483569DDB6E31C556DF9EB8CD4CAC08AD2C61F1D0F3D2976657A74ED528E58003DE9D8F979A8029326E620FDDAA93460B715A4CBC93EB55645E738A00C7BA83326EF45C0AE17C4D6841DE178FE2C72335E933C7B8127AD72DAF5AA489938CE3048EB5BD295998D48DD1E5122957E6A161C920568DF43E5C8C3F51545BA647E35EA45DD1E6C959D86C01BCC1B4E0D7AA7849EE1AD963999587F7A3C1C81DF20E73F515E588DB5D597A83EB5DF7862FEF5D11E484CA84E0C8304A81FAFE75DD846948E4AEAE8F443D8FA1A5EF51C7CC41B7B118E86A5EF5E81C61477A4A5A04149EF4BCD18A004FEB498A71A4A60273476A53E9462801296929474A0028A53494861D68A5ED499A0028A5ED45001494BE9450027D6909E3A53B9A46C9181401E75E318A69AEC3659900EBC9C572B83B847FA5767E309E524468E8064E7CB1FA7B9AE3A340304E4F5C7B9AF37136E73BA8FC25DB68FF849C2B2E2B6F472B2DE293D14E0015808085CE72CDC7B7D2B7B451B2507F8BA13EB5C35363AA9EE7756A001D2B4221C73546D798C55E8FA57992DCF4D16621CE6ADC6071ED54E33CE055E8B001C54144A0007DCD283B7EEF734C18E453D31BD410302A90D169598AF0491E94723A1CFE140031D3F4A5CE3E5C50004A93D01A9005C8DDC9ED5100A0FF4EF46E2AC4E05032475E6A4F342A019C6699E70DA7207B55699CB1E3233D7346C166CB0EC0F2001F854254BE493D3BE053312302771DB472303A5016091484C672477C5559133CD5ADAEDC93C531937707B54B435A10AAE3E63C76A76415E053D94FD052631E98A91159D403C74A81C0EB8AB4C7BD412282B8A405465241CD739AE009092471EB9E95D33F27158BACDB892DCF381570DC89EC7936AE99959D4E327A563AB7E7DC5747AC46824F7E98AE7A58F073EF5EAD37A1E6545A909501B8E87A5765E1579B2B1795907EEBAF078E715C80219707AF6AEEFC18CD26C5910BC6BC291DBE9EF5DD85F8CE5ADF09E816F968B9CF4EFDEA6A6C5D0A9CF1DEA4AF4CE012826971C518A6210514B4521898A296929880D20A5A4A0051462929474A004A2969290C052D18E292810A296928A062D2514500148D8C1C9C0EF4EA691B8608A04717E2D5CA8DA1543606327711FD05713C090607FB239AF47F1442AD165A32C00EB9EFD87B0AE01917CE6271B17A60753ED5E7E297BC76D07EE92467CC20F381C7B9FA5745A1C21A6048E01E056120F2D46E03207E55D5786E1DD1973DFF4AF36B3B44EEA0AF23A88570BE9C74AB2A768E7A9A8531D0734F638EB5E733D245B8DBF2AB0B260119E7D2B1E5BE4B74DCE70A07E7F4AA6353677F30A9507A034D41B25C923A947C6093D6AD42558E45735677C66CB1E31D4E6B5ECE62DCE0951EF57ECD93ED523742EE518ED4BB4E31819EF55D2FA2C001D4B1EA0559126F5C8183EF49C4A53B8C319231C0CD2F960F041247AD4BC771834EED53CA5F3159A325FA0F714C78B073FA62AC91934E400F6E052B0F98AFE56474201F7A88A0662179C55B972A8DD8E2A8995539C53B0B98908DA391492301C1C71CF34A6E2358B7311CF4E6B22F756B549082EAA7DDB1FA1AB50B912A8916E6B8084038154E4BF546C6320FBD645C6BF6F20D9BC11D8A9EFE9598D70D3484213CF2093C1A1D22155B9D2FDB51DBE5604F714A640DDFAD726D2C914877E5081F80FC6AFD9EADB8EC931E99ACE54DF4358CCDC603AF7AA379099A265E3A55B439048CFD0D46E01ACD14F53CB3C45667CC61B7904E0FA8AE5644254863C8E86BD2BC4D6FE521971F75B3F8570D7D6CA844911F95864715E9509DD1E7578D998CA84BD767E09F3E2B8E0E5491BA33FC43DBDC5729B4EEDCBC60F23D2BBDF08C6B3C6098B6C919C15C6323D7FA1AF4B0ABDF382BFC2775DC103AF14EC520E94B5E99C01452F6A4A061476F7A28A0418A3DE9692801093452D27E14C028A514948028ED46296818DED4BDA8A514C4252D14521894B4739A28105252D2503313C44AF25B04562149E428E4FD2B8516CAB22EEFBABCF27AD7A4EA113CB6ACB1850C78E7DEBCEEF17CB9A58D771FF00688AE1C5AEA7561DF429CC732120FCBDABB6F0D85FECC07B93CD70CD82E13A77AEEBC323FE258807AD7955FE13D2C3FC6740B802ABDD4E2342C5B000AB3E954AEAD0DC361BE58C7EA7D6B892573BDB312598CCFBF93E809E69E8187CD28639EC38ADCB6D3A1C0E0951D076AD7B5B18948C2A9FA8AD1CD233E4B9C734974C76A4331E720A8E2A392E35A58F6089E34EE7D6BD42081046308BEB8C53DAD637FBD1A9CFA8CE28F6AD0BD8A6797C5AE5FDABAF99138C0E588E2BA6D2FC4F13AA890FCDF5AE89F45B79436635E4E48C5644FE16B6561244BB187F7693A89EE86A9DB666C41A94736D6475E7B66AFA4E19B1ED581696060F94F39EF8AD5854A01C1E2A1B2D22F823239C52F2ADD73ED517B914F53C1C7A75A5D0A20BA9F68F5AE6B51D51EDF71589DB1CF1D0D6FCEA64C856FD2AA9D31266CC8377BFA51CC90B94E265D5358BE0CB6D687613FC47F4A62F87357BBFF5EE173CED19E2BD12DEC218861500FC2AC9851571C557B47D08F671B9C1C1E06C0DCF72F93D4E00FD2A76F0B496A3F75765B1CE0A8AEDE2452F822A2BA441C2A814B9DB1F22B9C43699315225DADFED6715993E94CA372332B0E718AED2541BCA9039E791C0AA925B2303DBE952A6CA704656972CA62F2E5E645E33EA2B40FA540B6DB25DE091560A91CD43DCA4607896D84DA64C71C85CD79A405A5B6688E094E467B8EFFCEBD67584DF613A8EE87F95791AFC936E20E15BE620FE15D786D9A38F13D0AA23D932B6323A31EB815E8BE168618D55E33B7CC19D9D81F63E95C4A465AE3E51F306CE319C9AF46D02D05AD94613FD5B8C83FDD3E9FF00D6AF6706B5B9E5621E86DEDE73494A0FAF51457A27185253A9281076A4A5A281851DA8C77A28109D68A31474A0031452D250312969294531062909A53494000A5EF48296900514BDA8A062514B498A04453AEE42A3EF11C67A579CEB6BE56A32217DDD0B363827DABD29BA67AF15C86B3A3388E5B93B7218B31FF678E9EF935CF898B943437A12B4B53902BC938F998E05775E1501B4E5C7DD0C4570F2BA8701783D2BB7F08A03A505CFF19FD0D78B5BE13D6C3FC674BB010050D182DD062A551526CC2FBD70B677091AFB915696E6284619B9FEE8E4D67CD70B0A9C9E6B1AE2EEF66668AC6211B303BA463CE2A37762ECD2B9D449E24B7B21FBDDAA07F7D80AA137C45D2620AEE1CC64ED0E8095245508FC2C6F346BA8F7799752212AE7924F5FC2BCF6F21BD36E34F9256486194BF90DFC0E7826BA234E3F68E594E4FE13DA74FF00166957D22C493F973119F2E5051883EC6B5667538C0EBDFB579AF853499F5FD41B52D667F362B78442B2BE0038180A3D715D669F74BA7CE2D26B8F3AD59B6AB1CE53D39F4ACE74D2D8D29CDB7AAD4D6233CD3E24DCD8CE7144A9E50033D4F1444E236C1E7E9591B6E595233D2A5541B33EBCD57F30EDA963936C79CFE14EE16642E154E075F7A62B601393C76A47977C8D8E86A48F6ECC7BD4751F42ADDEA3158C0649491E8A3A9AE2759F186A56BA9430CE8D6365272D32279926DF6078ADEB8B7BABBBC17442041C221048C7BD43AE69A35CB1486E6158E688FEEE54EDEA08EE2B5838AD599CE327B1E7F67E32BF960D40DDEAD77F6A500D9AAA0DAE73CEEF4E2B7F49D7F587D2FEDD72A65877104A120E3A647AF351C3E03727F7B72AABBB27645CE3DB26BB2FB3DB5BE9F0D8DBDBB2C112ED1919CD6AE7092DAC64A9CA2F7B99F67ADC778BBA29964F547E1855D66F30646549158773A38497745085C9C96C60FE157AD05C4642B3165FF6BAD72C9D9E87525A17369CFAD2EDE3156420D9B8542F8CF5A6990646A83FD1261FEC9AF2152AC5C119E4F1ED5ECB7E03C2C3D462BC5CE52F1B6F6720D75E1F76736256899A5A5C2D2CA0A6370E092383E82BD234C8C4569E5F381C80C391EC7E95C2F86D18EA214301EC7A37B57A2850391D0F3EE2BDEC1AF76E78B887EF587119FC2907A1EB4BDE8AEC3945A28A28010D1DA8EF4B40C4A4EF4EA4E9400507AD14500146696928013BD2FD68F7A280138A2968A04028A4A5A0028A28A0028A28A003B5666B911974C9460E000703BD6A543700340E0F4C54C95D345474699E49264DF9257A1C015DDF83B8D2C7FD7435C8EA96E96FA86C462CC4B12318C1E2BB0F0AAF9363E591C07E2BE7AB34E3A1EED08B52D4EA17939F4AB31AE50F3CD5642319F5AB1136E031F9D7048EDBE8569ED15DB3DF3D6A3874FD926E8D8AE6B555371AB51C20F6A949957651860B952BE54A54F7C0ED52368BF682D25C471C8CDF79990126B66081770047E956590723157AD89B2BDCC28F4C48D42A8014761D2A46B18FCA2B8E0D69141938A867F900A56D0772BCA4FC8A4E428151973BBBD35DC96E3F1A6124739A82D2B17237C8C63F1A9598ECC5525900E33D6A5C91415600C739C62A7840DC79C86AAED8614F889078A42689DA151C638A12119CE335613E7383D29DB4AF38EBD2B4DC8D86A5B2B8C328229B35A28E800AB719CE3B734F954100F7A2C4B7A98535A8DD8355BC90BD056CCB167B552923C03D6A1A28A7F757818CD5372492474356A6CA8E95559BBD24054B8E617AF1C9E371A9CB181C890903F1AF62B861B48EC4579ADD58B4BAFC436B624902E71D2BA68BE5663563CCAC6BF87F499015B823E5EAA71C83EBFE7DEBB31D067AE2A2F0FA36D92CA455F947CA71DEA665DAE47A1AF672EAEAA45C7AA3CBCC70CE94935B087DE9297EB495EA1E601E98A5ED47BD2E68109494B45030E94628A3AF5A0031494BF4A4A0038A5A4345020A31451DB340077A29296800A5A4239A5A002929693A50014BDE8A4A0029400DF2B1C027934948FF007491D7B54CD7345A2E0F96499C56B1649378A1485C44CDC9F6079FF3ED5D0E9F12C0420E8467FC2A3D56CE20D14E3198D5118E39EA3F9E735A73C5E5340FC02CBC815F3126D3E57D0FA68DADCCBA96233C9AB51E7B74AA70824F4EF5A1100393584F72E25B8132318EBCE6B46187201A82D40C0CF5AD2894640CD4A436C788F62E7DAA363BBA74F5AB0EC4A8C74E86ABF009C5531219803AF5F4AAB7043444D5A61907DEAB5DE162C7AD4948CD07E7C5452B9191D7D2A396E02122A113067073D2A4B49972127764F3564B1C0C115040063793C9E82A66556195EA291620739E4715247200F8CD579094C039E951F998EB489B1D045CA0E9532E71C8E954AC24691073C55DDADB78E48F7AB466C704EE3D6A50063D6A3463D3A54A8A33C1E47AD344B15A1CA8E339EF59D7110504569EECAEDCFCD59F759C907A50C23731EE57E538ACC6079AD6B820A91DEB31C633F5A945B285C7086B296C80D42063136F6746DC0FA1E33F86456BDE7099F51CD59B2B3171B66072C8BB803DB0455EC84836FD935B2B8EADC517802DE48074273560AFDA7584909CEC41F9D54B86DF72EDEE6BBF2A4FDB36B6B1C79AC97B18AEA47494515F447CF077A3A5145020A2834500145028A0033477A4A2800A5C5252E680128A294D0021F6A4A5C5029807B52D1494805A28A38A003A0A4F7A5A4A005A4E83A52F6A4EA40A0641343E75B4D16017650C33EB9149712068E16F4E0D58E92A37A1C554BA014321EC72B5F3D8FA7C95AFDCF7F01539E8DBB17EDF1D6AFC38EBEB5996BCC42AEC2F86AE1A9B9D71D8D781B18F6ABE92663C01919ACA89C6EABD14802F1C54229A2CB3E0EDDC6917A0CF1FD6852A4023AD3939E7B50038E3AF4ACCD41C2C649AD176181EF597A82E4119ED40D1CDB334B23771DAAE4110040DB938A92DEDB760019C55B0823C30EDD691A5C9A1B5723214F1CF4A952D2493EE0247B0A7C17922C3B54F1E95326A12411614E01A7641795B432AE11972A73906A94A1BAD6ACAE2E64E076E6A19ACCECC8FAD43432CE9372A2354E338AD624F61C573B66A45C8519C915D1460845CF5A68CDE8C7ED3B41CF34F19049E3FC297F3A61F979CD51249E6719EB59F75267A54D2C80023BF6C55095B9E6936348A972DC71DAB35D8E3755D9D864D5294800524328DFB809ED5A9A34AA12527BA0AC6BBCCCEA83AB1AD8821582DD12324BB281552764851248888639E61FC5C0ACD3C9ABB78E2344814F419354C57BB9551E4A4E6FA9E2E655B9EA282E8252529A4AF54F2C06683D68EF41A0028A051400671475A3E949CD0014BC5275A314C03AD18A39A5A401DE8EF49F4A33CD300A4EFC529A2800A28A5A005ED49477A3148028A5E94940051477A05300A86E5774649EA0707D2AC01524B079B6E36E324D7939A5B962EDD4F572BBF3495CA562F850A7F5AD25C71FCEB2914C73ED23041AD38BEED78D535D4F5A3A17216C9CD5B4932C013F4ACD89B69FAD5A47CC8056459A91718EE2AEAFDCE71F51596926DC01CFF004AB91484E06339F5A603E53C640ACABD6C673F956C11907E95937D18E4F7C5032AD9C8AAA5AB9ED5FC553C7A87D8AC74C96E0FF1396DAA3E95A8A260C7C9C30EA509FE55342D9700C011BB9239A4B72ACBA91D8DF12A3CE431BE32549CE3F1AB725DC6232724E2AC36950CB1EE0087EB490E9308E5C96C1E050EE2BAEE72F75AE6AD65761A3D20C96C4F2C24F988FA62BA1B3D512F2DC36C78C91CA38E45589F2A36463A71835512CA495B32328EF851431E8CB36DCCE241D3DAB6D4FC809358AB1B44CA072A2B5E1398C66844BDCB01976F27BD46EE00E47E7484803E5155E4989E0F6A056193CC076AA33487B1A9247CE4135101B89CD4B28ACC32A6A94C3DAB41C0CE2A84E4FF0085080A90A6FBF8C11915AC192DE32E7922A9E9D1992FB247DD1577514454CE7AF415BD3829D48C1F5319C9C21292E8663B1790B93C934521A057D6C22A29456C8F97949C9B6F70A4A53494C90A3AF514B49EF40051C5068ED400719A0D141A0028ED476A2800C1EF451DA97140C4228FC29690531075A282681400514B4500274A297B518E69009D0514629698071476A4A5A402FD2812B46091CE3B525046462A2A538D48F2C968694EA4A9CB9A2F52AF9824B866F51DEAE44C42FB0AA4576CFE957A21C64D7CDE2A97B29F2A3E830D57DA439993839C55885F27E95046871C54D1A62B919D28B91B0DF575243C565AB10D9F4A9D26C1E691469BCE14633CD67CC4CDBB151C971CF278F5A3CC21338033DCD342B902466339C73491307986477A6C92169108EFDBD29F6C9BA404E783D7D6815EE6C20F90B671ED5147969082C79ED4F9770878041A82057F3727249A571A8BDC5BB46CE41E9E955964DAD8279ED576E95B1C75ACE922DD229E4639A0117848ACBC8A95662BB40E41E2B38314DCA473DE9CB232B649E0500A5DCD1331079AAF23E4E7B520904840038C7269AC4722A594376E724D31B03A75A702734D032FD78A0084A9E49AA770A3357E42A0E05675CB7CC71D29A4264105CB4323EC0371EF43C8F2316762C7DEA18C7CEC6A435F4D82A1085353B6ACF9DC65794AA38DF441DA8CD18A2BB8E20EB451462800A28A4A005A3D693E940EB40051D68EF45300A0519A2900B451D68A004FC293A529A3B5300A3DE8E828A00297A8A41EB4B400BDA93A9A3B5148028A28A6019A5A4A5CD2013B52D275A51C5004138C61BD2AC21CA64546E370C510B90307B578F99D2D54D1EBE5B534702F46DB702A75719071CD561865CD48AE376315E2B47AC8B380734C91F62124628078A64AACE3A7D05494426463B0375CE40ABC57726339FAD568621BF2FD7D7D2A791B629618C014EE4A5718630063348D7214145AC9BAD57EF796AEF8FEE8CD5559EF2E07C91EDFAD3B1AC60CE8A1BE78FA377E7353C9A831C15C0E39C560436BA8AFCC4A303D0106A611EA44E0A418FC691B7B334FED726E5DB26003923D6A4176AEDF3706B09E0D4A2527F76C7F1155DEE6EA26D9342E73DD39A7A112A6CE9DBE6E9DE98E8C4123B0CE2B3ED6F9A422331C8A7DD4D68962DC74352DD8C5C48AD66D9B831E3B1AB44E79E2A01105E30339A9718C0152D821ACC73C501BE5E2931CF1F9D34D343631FA1CD67CCC304F4ABB3676D66CE721547535A538B9494519CE4A317263621FBBCFAD3CD27418A057D7C23CB148F959CB9A4D851DA96933544852D252F7A002928A3BD00149DE968A00290D2FE141A004A28A5A60277A5FC6928A402D18E28E73475A004A51450298094B4B8A2900941A39A3BD30022929D4DE6900BFD28CD145002D1451400544C0AB67D6A5A6B8DEA41CD635E92AB4DC4DA85574E6A44E9D01153AF241AA70C98014F515654F15F313838BE567D1C26A4B991650D3FD877A80353D49DDF4AC5A344CB11AE1703F3A9432842194608F4A8C38DBD2A30E4E4E78CD4DCA467CC8776D50BB73E9D2A7B7894E3239272702A49A1575C838C52C6FB00C1AB4CD14958BBE49DB85CF4E29EB6CE46429AA53EA3247C0C9A81753B92C3000C75C31A2E87CDA1A13C1B53E6E1AB34C5B998770715A1F6A9265C3374F7A61419CF1CF5A4D873212DB1180DCB374A949DC32464D301001EFED4A30326A1BB902E3009C52337B52EECF7A63352421ABDE909E697AD44C719CD5A44B64334C01C76AA0A4BC858F6E2A5BA61FC279278A8D0617D4F7AF5B2CA1CD3F68F6479B98575187B35BB1C68E78A5A4AF78F0C28A28EF40051451400638A4E694D1D050018F7A3BFE3494B4001A4A534940076A414B462800A314514005028A2980B49C52D26280168A28A402514B49D298052D25140052D21A5A0028ED45148028A5A3BF5A06432FC87CC03A5588A41B063A5432FF00AB34D8CEC3ED5E266518F3A6B767B197CA5C8EFB17549E952E7BFA540ADF2FAD3F774AF2A48F493270FF002E09EB4ECE00DB55B7669E9267E959334458ED4DD99E29CBCF22A748CB0A457429B5BEE19A70B600E40AB8BC0E40A23186E79A61D0AAA9B5FAFE1531538ABA6156E40E48F4A864521707F3A1A608AB8E720D29CF4C75A94AF04F4C547DAA01B10139A434E380B9A858E7A55A44362B3107DAAB4D2ED4A95DF0BC9AA8417C9238ED5A256D590DF62B025E5DCDDBEE8A97A530AE251E98C53EBE9B02D3A1168F9FC6A6AB3B876EB473DA8EFC515D6720B498A5C514009DA96928CF3400BDE8C64E292973DE8007007F5A4A5CE7AD250014714B4DA005E68EF45140094BC7A518A28013EB41A3BD1DA980BDB9A4EB4BC9A4C5001CD2E68C1A2800ED49D697B525002D21A3AD2D0002969314B480293AD14639A0028A3BD38024E00C93DA8191CBF77F1A555E296E4C6922DB86CCC3E66C74029E8B9AF9ECC6AA9D5F77A1EE6029B8D2D7A8919D876E69E3873FCE9ACB9E829579183D45712699D96B0FC739F6A7A7CA3140F7A5C63A544A1D8B8CFA3278DC0AB6AE36E41AA1FC381D69C8ED8DBDBA66B3EA5DCB808DDC1CE79A5DC038FA66AA06C2E7DB8A77CCCF9EE2A82E5C13151D735199C9E1AA066E3239E714C52C72C7F0A4EE1744FE664546EC76D38B0C631DAABC8D8E3B9ED428DC4E49033E0739E7A527D69003F788C9A7ED2E7007D4D5D922372123CC703B548C9818AB0B105A6B2E4D4390D2335DE18A4DD3E447D091DBDE9F2C062DAC18346C32AE3A11516A5079D04B17F7948150F82E7FED4D16F6090969633F283FC256BD4CBF14E1EE3D8F3F1D87535CEB726A052D257D01E18A28A28A00293F0A5A31C500028A4A5A0028A28340076A6E697B525002E38A28A2800A3F0A28A006D14B494C02945145002D18A28A0028C51D051DA90094B9A28A0028A297A5001DB3451DA8A002AD5B29582E2E761610A6703F9D55AE874480359C85BA4848FC2B0C4C9C69BB1B5049CD5CE0344BB6BFBCBDB963901C229F5C727F9D7451F4ACA8B4C3A26B57D62576C7249E7C271C153DBF035AF10AF95AB26E47D1C12E5561C4734C2B8248A9F148C2A2E58C439E29C4953C52018E6A400639E95AC644344224C13486520F3D714F68949E41F6A81E16CE4134DD857639AE812074A4377F37DEC7355DA26079196A54B762FB9F03D00A9BA2B527F3FA7CDC66A4F3083C511DA8E09ED5652DD01CE327DE8D00621765E9803BD3D62E771E78E054DB7D0714F0BF9D0D89116CCD4A8800C0A911053F181D2B36CB48888E698477A94D31B8152C666DE00A0927000C93567C01E1E9EC2CEFB50B88CC7F6D999E34618213B1FC7AD6B68DA4A5F5C0B8B85DD021CAA9E8C7D4FB5757301B40F4AEBC35277E6672622AAB7223CE350B636B7B2447A03907D8D54AE9BC4B66488EE114923E56C0ED5CD107BF15F4B42A73C133C2AB1E5931297149D69715B1909451DE8CD001451450014628FAD1400878A4FA538D27140051452500069693EB45300E3AD14A692800C5145140052D1477A000D1C5068A401452D14007D28E68A92289E77091A92C686ECAEC695D8C5058800124F402AC8B4283F7BD7D056DD8E91E4AEF61F31EAC7B7D29F71A7C3F798FE20D70D5C56B681D54E82DE46447668CB9519FAD74563088A045000C0E9593040E97462E700E739E0D6F435CB2A9296ECDD45476417BA45AEAB6E1274F9D7949178643EC6B98B9D2EE34D9364C3721FBB2A8E0FD7D0D76D0F18A9E4B749E22922AB2918208AE3AB454F5EA74D2ACE1A743CFB18149B726B5B55D21EC4992205ADFAE7BA7FF005AB3075AE0945C5D99DF09292BA19E57614A13153AA8EB4BB38A451105C8A698EA7DBCD3B6555C5628B440F045224783574C6285880A4D8C8917DAA65538A956300548105171588421A784F6A9447CD3C2526C646178A08E315315C0A858E3348085CE39AB5A5E9726AD30661B6CD4FCCDFDF3E83DBDEA6B0D166D48ACB3662B53F8349F4F41EF5D7C30476F0AC5128445180076AE8A341C9DE5B1CF5ABA8AE58EE352DE386211C681428C002A1956ADB703EB5038E2BBAD6386E64DEC2258594E7F0AC136F1B2E0A1CFD335D44A9CD73125D6FD7EE6C8001A3556FA83DEA936B6158A72696AD9214A9FA567CF692C1D4657D6BB142E06582B28EC40A73DBDB5C290D1943EA3915D34F1338BD75319D18C8E0E8ADEBED1369262C027A0EC6B16586485B6C8854D77D3AD0A9B1C93A5286E47CF7A28A2B5330A3AD145001494B45002514507AD002514B8A4C53017EB477A4A3E9400A690514B400519A28EB40051EF4628EA680168A55524800124F615B7A5787E5BB70D28DAA3A83DBEB59CEA460AF22E10727A142C34EB8D42711C4871DDBB0AEB2DB4EB6D353CB45F326FE235A6B0C3A6DA88A0001C609C55655C267F88D79B56BCAA7A1D94E9287A91B2B3919E702AA496AB264E3E51D056811950077A475C10B5CE6A6218BCBD46DF2DB549200F5E0D6B44B59BAF46F0C16D791FDDB7B84793FDDE87F9D6AC782548E879155D00B318F5AB71B7155D57B8A954D48CB0625950A900835CC6A5E1B963769AC9415EA62FF0AEA227A9AB39D38CD6A5C2A4A0EE8F388FFD632329575386561820D4DB2BAED474782FFE723CB9C0C2C8A3F43EA2B9E9ECEE2C9F64E9C7671D0D70D4A5281DF4EB467EA52D831C52ECF6A9CAF714B8C8AC4D4AC53DA809568A7B526066802154ED52AAD48107534F016818C0B4BB71CD3F23B53D2292E1C47129663E9D07D69A5713696E56918019CD68E9DA134ECB35EAE231CAC27F8BFDEFF0AD3B1D1E2B722597124A3A1C70BF4AD3AECA543AC8E3AB88BE9110000000600E94EA28AEB3906B0EB50B722AC544EBCD202B94CE6B87B64371E3ED4255FBAB0843FA576DA8DCAD958C933750381EB58DA06926D2296EE71FE9572DBDF3FC23B0A00B5E576C53B1818C54EE39CD262988ACC14A98A54F949E08EC6B3EEF4E5C6C9577230E1856C6031C11C54B026D3B1FE68CF4CD34EDB01C15EE932404B47F3A7EB59BD2BD32F34E8DD498C0CF5C573579A2C33EE2BF249F4FE75DB4B17D267354A1D62731C51534F6D2DBC9B245C7BF6350E2BB934D5D1CAD35A3128A53494C41494B4500251451400869297BD14C038A51D292968003473452E33D2900559B4B19AEDF11AE17BB1E82B474ED09E65135D6523EA17B9FF0ADF482348955408E11D001C9FA572D5C4A8E91DCE8A741BD6450B0D2E389805196CFCCE473F857536F0793001B718E82A3D3ED303CD75C7F717D2AE48711B1FCABCE9C9C9DD9D6A292D0CDB86DCFF8D300CBE3B54CEA00CF7C5449F7A90C76DC900714D23E6A9464824526DC1CD201AD6E9730490C8328EA548F6354B484716C6DE53992D9CC47DC0E87F2AD387EF5124421BBFB4A0F9640165FE86801CA38C520E0D4CD1ED39A8FB9A064919E6ACA1C8FA55441DFB54F131C134013D31D16442AEA194F5045381CD2D007377DA53404CB002F0F564EA57E9EA2A82AABA82A7F1AECBAD63DFE92246335B111CBDC7F0B7FF5EB8EB61FAC4EBA588E92311F2BEF4808268F330ED1C80ABA9C10682147391F9D721DA3B2076A38C75A62EF91C470A195FD1456C59E85B8892F1F77711AF4FC4F7AB85394DE8673AB182D4A967672DEB6506C8475908EBF4F5AE86DAD62B68F646A07A9EE7EB5285555C28C01D00A70C57752A2A0BCCE0A95653F4168A28AD8C828A28A0028A2ABDDC862B762BF7DBE55FA9A00CEB843A8EA6A879B7B6396FF0069FD3F0AB8462961845BC21476EA7D4F73431F5A0442C3E6A6E3A8A98AE4D319706802B13B5AA78DB71E6A171CD3E1FBDF4A009D89CE08CAD40C8AE7E6E0F67FF1AB43A60D439C6E5F7C8A00AB77A724B1149E10EA7F8D4572DA8F8766B7066B63E743EDD45778B29D8323200E4534DB82DBE2C61BA8AD69D59537A133829AD4F2A23D69B5DBEB3E1A5B8067817CB93B81D0D71F716B2DB4852552A47EB5E952AF1A9EA7154A5289074A0D29F4A4E7B56C64149F8E2969280128A28A00314A01A2AFE9BA5CFA8CDB6352107DE723814A525157638C5B7645586092E2558E242EE7A015D6E97A0C76604D700493761D96B5F4CD1A0B18B11A7CDFC4E7A9AB3712C502B051B9FF009579B5B12E7A4763B69D151D5EE519B11E0C9CB764FF001A7D95B19E6DF273DFE9559774B2E4F249ADEB58443081FC47935CC6C899400A00AAD72DCED1F8D59E8B9AA529CC849A40CAF29E2988BCF34F3DCD3075A6048DC0C51D45371B893526DE2900B1706AD04F322643D1862ABA01BC7A5598C81D28022B690CD0147189633B5C7BFF00F5E91930D52B20593CE1C1030D8EE3FF00AD52B20639A06560084A7C646314F912A2DBCE680260715203919AAA1CE79A951F9A009AB93F1DF8A93C2DA279A8AB25ECE76411B74CF763EC2BABCD7CE9F1035FFEDEF15DC323936D6E7C88476C2F53F89CFE94008FF10BC4172CACEF6BB87F108393FAD4F078EF5757569D6DA741D50A15CFE46B930A054839A9708B77686AA492B267AAE8DF152149A38AEB4B8EDA13C33C2D9C7BE0D7AA452ACD12CA84323A86523B835F29BCDB4ED53C77AF78F85FAE7F6AF85D2D64706E2CCF964679D9FC27FA7E157656D113777D4EE68A28A430A28A2800A28A2800AABB4CD3895BEE27DC1EFEB4F9D9B608D3EF39C67D07734F200C01D050046FD3F1A89F3903DEA661D29857E619A04314F34807F2A50BC74A76DF9722802A3F2691061F9A9245A677CD005A4E838A867521B3D2A58882319A6CDC8E6801D130D831DF834F8999646553C13C03505B9DB201EB533A959370E9D6802C8391C8C550D4348B6BF88ABA00C7BE2AE06CA83D680F9C8391EF4276D80F3BD5741B8D3D8B052D1FAD639EB5EAD700BA14750E9F4E4572BABF8715D0DCD9F7EABDABBA8E2BA4CE6A942FAC4E4A92A4962789CA3A9561D4114CAEF4D3D51CAD586D28524E3F4A96DEDA5B99562850B31AEDB46F0D4368A27BAC349EFDBE958D5AD1A6B5DCD29D27331747F0D4D78565B80522ECBDCD7651456BA744B1A28181C2A8A91E5223DB0AEDCF43555A33B7731CB1AF36A559547791D918282D091EE9A43C02ABE82B3AE1C9FC4D5AC8086A93E64970056651774C837C9BC8F956B605436B1086055EF8E6A61C522864AD85C55099B9C7AD5899FA9354F3939A6261EB9A58C7CA4F734982C6AC040AA00F4A008D53039F5A7B74E94A139FA9A7B05C6052022507F5AB110C1E6A21D71E9522FB5004E3A9F7A645952626EDF74FA8A504E68954B2E54FCCA72281921E95132D488E1D030EF41EB40154AF34038E6A5643503707D850061F8E35C6D03C1FA8DEA362664F2A13FEDB703F2EBF857CDEA4E14139F7AF4FF8D5A8348B63A5C4C76C5FE9128CF73C0FEBF9D794A31639A684CD05524649A7AF4A8E3276D4A3A1CD0229CCCB9E9CD767F0BB5B6D33C5B1C72362DEE90C5267A0EE0FE7FCEB91B7B49B50BD105BC6D24AE70AAA3926BA2B4B03A4CED17DEB91C33761EC28BD8A51B9F495158BE1AD45B52D120798FF00A4228497DCFAFE35B548028A28A00290900127A0A5AAF236F7DA0FCAA79FAD000BB99F79EFD3D854871C1A55C6051B7208A008C8E9F4A3BF4ED4AC29546681118E98A0A8DB529519FA0A4D995CD032AB2F5A8BA1E6AD953B8D57917E63C5021631F37069F283B2A28CE1B07B54ECC4A1C8A00AE876BA9F4ABCB878C715480C8FC6AE5BFF00ABFC68023C957C548AF907A512264E7D2A2ED400924B8622AABEF8DBCC88F07AAFAD2BB7CF4A391CD311997D616BA8210F188E43D18572F75A25E5ACC502798A7A102BB49460E6963B92AB8201F4C9CD6B4EB4E1B113A7196E36CECECF4A8825BA0798F57C55E56DC773659BDEAA22803815663048AC9B6DDD9690E63CE3A0155E56C83EC2A6653BAAACCDB4633DA80222F84C558B1B7DCFE691C0E955618CCF281DAB7638C468140E31431A1C07148E4E303BD3A9ADD690CA732E582FAD47B4293915393B9C9F4E2A2938A04228DCC7D29E07228418427D69C809231400F0BC66908EF5284F534920F973DA802B6793522D47FC7C548B8A009948E38A713CD313A8A908E7340CAD1B986ECC67FD5C9CAFD6AE554BA8CBC476FDE1CA9F43525ACE27815FF8BA30F43401230245579000B9278EA4FB5586CE3DAB37549316CD0A9F9A41CFB0A00F0CF1A3BEA3E22BCB9901DB236101FEE0E07E95C432182668C8C60D7AF6B9A0B5D5D46CA3001F98E3B5711E38D2934DBFB578C604B0E0803BA9FF00EB8A516396C6140D91539FBADF4AA50B1C8E0D5A6911636C9C7A66A883D1FE17E9D18D32FEFD917CE9641146C472AA064E3EA48FCAB76FFC2C97172B28619EBC77AD3F026962CBC1D60934252575691D5860E4927F962BAFB7823C6FF2D738C74A82D3B1CE6987FB225B7407F77212AE3F0EB5D6839191DEB2B57B70F1C522A8CABF381D88A974CB9DE9E439F993EE9F515423468A28A008E5729192065BA01EF51C516C8F6F73C927D699E7096E8AAF2B1F53EF539CFAD0020CE7A74A9072299BB1F7BF3A78A0088E7A7BD3C7148C3E7A776A000F5FC28E8A0507BD228E7E940098CD40E38AB3DFF1A6B2E57340141B2AD9153EE0F1E69922531780466810A0726A680B29E3A5429D79A9E16033EC2801CD37B544CC76F4A198EDFA9A6C87E4FC2981549F9A9E0F15193CD4880E281032EF53C73554F0706AE85208A4655272DC1A402A80074A9E2CEDE82A33C3763C5491375E28191CD26D359B212C4FBD5EBC383D6ABDA42679867EE8E4D3422FD85B7971066EA6AE1A3A0C0A4EB48A10B81C7BD231CA9C54630589F7A98018CD005651C7D4D473F5FAD4AD8438EA45472824D0203C228F5A7A0E454679751E953E3099FCA801F8FC69C57E4C1A55185F7A1BEE9A06523C3629C29AFF00789A5079A044CA7A62A5C1C039EF51C7D053C938FC6818C7E01C9ACCB4B830DCC91AF463FAD6A3217523D6AB269CAB31726802C4D28821DCE727B0F5358E44973313D49EB5AF2DB2CA801E48F5A20B74849E39A4062DF58A456D9239C578C7C42D4C4B7F069E9822DC6F7FF79BA7E9FCEBDA3C4B78B6F6123123815F376A172D7DA95CDD39C99642DF876AA42632162D5348A1E360466A18460D583F71B3E94091EF1E06D49353F0A58C826F3258A3114DEA194639FC315D8C23110AF9F3E1DF880E89E218E295F1677A445264F0ADD15BFA7E35F4245FEAC50D751AEC24CA19304719AC0B90F6773BD78E722BA17E83EB552FACFED31F6C8A4324B4B95BAB7120EBD187A1A75D49E542C41F988C0AA3A65B49013C9C771EB566EE2691D48E98C50C02CA009003DCF26ADE2988BB1547A0A716C76A00187148BEF4D2F920629C0E05000E70697B0A6B73EF4FE82802304FCD4E53ED47054E3B9A7000500213C8A4FE1C6694FDEA523E5A00AD20FE5501F94FB1AB4C3AFD2ABB0A04083E6A51C06E688C609A0120E3DE800C1E2924FBB8C5580B51CDC0A6052239A9E242D8A880DEF579176A8A1800840E734D68813561795A420D2195190823068446CD3DB8E3F2348AD83408A7783E6C1ABB611048376396AA52E64B9DA3BD6AA0DA8147614C10EEB51C8DB4607535277A84E1A53EDC5218A062A4C669BF853D7A50057907CC4534F6C0A926FBDF5A87248A042272E4FBD4E8379DE7EE8E07F8D57404B796BD5BA9F41575400B81DA801474A6C9F769F51C878A06547FBDEF40EB48DF7A9CBD68113A7DC14FED4C5FBBC53D0679A063874A75262834009BB9A899F19FA538B75A8255263620F6A00F3BF88BA9ECD327556C71B723D4F1FE35E2CECAF27CA3007415E99F13A5F2EDE0B707E69652E7E8A31FCCD79703B5E9A259722E2A6C7CA462A287D6A6ED40159382C9D30722BE8CF026BBFDBDE16B699DB3730FEE66FF007877FC460D7CE527CB26E15E87F09B5BFB17889F4F91B115EA6141ECEBC8FCC669EE80F6F90E141F71417F4C50FF00C3F5CD461B24FD2A4A2407E5E98E2949C8A606F93F0A524500293C8C529A6823F4A71009A0060EBF851838FC685FBDF414E278A0045E452B7DD34E5E948DD28023FE1001A9092169A0720D3DB18A008F92C2A46E94D18DD8F6A561C50034F53503821AAC81CD452038E6802118CD397971F5A60EB4A01CD022D8E7354EE5B9DB5606421AA4DCBD3403E04391569B8229B0AE00A74BC1A403A3395A7D5685BE722AD5032A628DBD7E952B0F9A98C0F38A04416E81AE371ED5749F9F151C11EC8F3EBCD2E374B40C919B0A6A08CE49FAD4927DE029B18C7D33400EE7DA9E3BF3498E0D3850045280306AB170A84FA1A9AE5C6DE2ABC0A65939FBA0D022C5B47B57711F33735669052D030A824EA6A6350C87AE6802B3F0D4A9CD31F96A913DA8113A74A9874A8E35E01A97B50310D21614D26908C9C500349E69970EB1DAB9EF8A94479EBDEAB6A18116DCF04F3401E11F116EFED1E246801CADBC6A9FF023F31FE62B89643D6B6B5CBA37BACDEDD75F367761F4CF1FA566115448B0D58ED5120C01527F052020907353E9B79269DA85BDDC44892191645FC0E6A26EB4C1C1A101F54DB5C477D650DD44731CB18753EC453C20F5ED5C97C34D4BEDBE0DB48DDB2F6E5E13F81E3F422BB018CD27B8D08884AF5A431F1F7AA5070B4C23E43F5A063820F534BB40A338CD19E2801AA07A6292A41D29BDFE9400AA7E5A09E2947DD14119A004E33DA871914601FC287E82800039A473DA957A9A6B8E4500283CFE14487E53428EB4ACB918A00A671BA9EA70DED51CC0A3E453958300695F5B058B391B0FBD54543B89356D71B6A16C063EF4C44AB8C70291F934B1F4FC29B21033F4A064111FF48C55EACE8DBF7E2AF6EA0008CA83ED4CDB96C53E3FB83DB8A7D0035B84A647F789A5973B288C6149A0069399695688F966340E2801E738348785C934EED50CEE2388926802B5CB64845E49356A18C46A1476EBF5AAF6CA5DBCC6FC2AE01CD021D4514940C46AAF27049AB27A5539DB9FC2802BE72F566215547DEABD0A92B4089D7A52D20E94374A06444D48BED516326A60302800AE7FC4D7DF63D1EFAE73FEAA1723EB8E3F5ADF7FBA6B83F88F71E4F852E941E65648FF00361FE14099E22FC8E6A303269EDD69169885C71D29CBD3149F4A51EB401148B834CA99C66A202803D4BE115F6C4D4AD58F08C9328FAFCA7F90AF5C18233EB5E07F0DAE4C1E267873813DBBAFE2086FE86BDCEDA5DF021F6A4C68B5D1690FDD18F5A09C80290F6A063B9C13470681F74D1E9400E5FBB4833CD2AF4A45CF7A0051D051476A41D4D003874A43D452D27714000EB4D6C13D7A53B14D23AF14002E31D697AD3369EB42934011CCBCFE1554128D8ED579F9AA730C1CD6735D50D762D46C0C679A81C92D81CD244FF2D4C319A7195C1AB12C4A428CD4573C0AB0BD2AA5FB6D41CD588AF09FDEE735A2A0ED1835976E774B5AABC0A48048FA1A7D4719E4D494C063F4C52F44A6C991CFA50FFEAC7D2801B1FDEA7F4A230368A71E9400567CA4DC5C7963EEA9E6AE4D2797167B9E0543047E52F3F78F268027450A71DAA4A6F00D216E9400FA4CF3467BD37396181400E3D0D5194806AF372A47B565DC1C1C67BD0211396E2B4A1184C55181724568A8C0A005A6B1E29698D40C5414FA6A8E29D4011CA70B5E63F14E62BA2C1167EFDC8FD149AF4C9ABC9FE2B49FE8F609EB339FC97FFAF408F31239E294018A319E69698843D68A0D039A005ED51B2F71528A4233480D5F08CFF67F15E9D267832EC3FF0002047F5AFA0B4EC1B65AF9B2C24FB3EA56B2E71B2646FF00C7857D23A4B86B7FA12281A34B0314D2391F4A7F514639140C00E0D2639A776349FC740003D690118A776A00E280169809C669FDA931914006681EB4B49DA80169BD8D3A9A474A005FE1A8633F373529E95587125005AC7155265C55A19EB4C917229302885E38A96353D69DB706A541CF4ED59A86A53912274C66A86A8408B9EE78AD05159BA9FCD2C0BEAFFD2B42434C8C81F3727DEB52A959AE09ABB4202969D702E2DD589F980C355DAC0D0A5C5DDC407A819ADFAA6035F95C54729CB0514F3CB54607CD93D69012AF414A681D29B236C8D98F619A00A72666BC55FE18C64FD6ACA264926A2B442632EDD5CE6ACF43400B4D038E7D69C7EED341CE6801D9EDED49DE803B9A502801B23154AC99092F5AD27DCAC97E65207AD022E5B2E4D5DA82D970B9A9E818D2690AE78A69C938A931400B484E2969A4D0046FDCD790FC563FBFD3D7FDA90FE8B5EBCD93BABC77E2A737F6009ED27FECB408F3E0290E334E3C7BD37AD3109D68A51D28C5002E297049CD27734B4011BFC9F30EDCD7D17E1A94496673DF0DF98AF9DE4198CFD2BDE7C1B3799A6DBB75DF0467FF001D14868EB4900D28EB511396A912818EA2929475A0069240A70A0D2D00213C52022958645300C3D00494521E945002D14869075FC28014F43558F120AB2DD2AACA30D401654E5697AD411313C54E0E6802274DA3342704D4AC32B8A62A61BDA801E3A5665F91F6B857D735A95957A376A10FB03498172D970B566991AED4029F42030AD6030F88E4238568CFF315BB545D36EAB1B8EEA41ABD4C043D2A15396A9246C0FAD3225EF40128E9556ED8B32420FDFEBF4AB75540DD72EE7F87E514013A0C2E074ED4EEF48BD2973C5002D463EF114E078351AE7793EF40128E94B48BD296802B5CBED43CD67C59797F1AB376D824536D101933E9408BE8BB569C7814B51B938C50315077A7D350714EA00298DD69C4E0546793400A00C9AF19F8A4FBB55B303B2C9FCD6BD9F04026BC33E234DE66B508FEE87FE6281338EEC4D308A5CF341A621B8A3BD252FD68016945201C7147F1D003F1C7F4AF6EF0036ED0AC0E7ADBA8FCB8AF100735EC7F0EE6CF87EC4775575FC98D203BE5E4D4F55A23EB5668284FC28C739A4CF34EA0069EB4EA43F78528E940086907DE34A69A9DFEB400FA414B49400B452739A050029E950C8A326A534C73F7A80228BEF9AB03A55346FDE11577B50007A51451400567DC266F41F415A1559C66E0FD29302C0E82B36EEF489B6C47EEF071EB4BA9DFFD92D58AF2D8C0FAD51B0B0FB6C1E64AE460E063F5A2E07FFFD9);

-- ----------------------------
-- Table structure for professional_skill
-- ----------------------------
DROP TABLE IF EXISTS `professional_skill`;
CREATE TABLE `professional_skill` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `skill_type_id` varchar(255) collate utf8_unicode_ci default NULL,
  `skill_name` varchar(255) collate utf8_unicode_ci default NULL,
  `use_time` int(5) default NULL,
  `familiarity` varchar(255) collate utf8_unicode_ci default NULL,
  `skill_order` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of professional_skill
-- ----------------------------
INSERT INTO `professional_skill` VALUES ('3c4dcd67-a0a0-4149-82d4-ad9cfec7c24c', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'JavaWeb', '24', '熟练', '1');
INSERT INTO `professional_skill` VALUES ('a96a5d73-30c5-4891-9969-40d5716d5d25', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'C♯ WinForm应用开发，Win32 API应用开发', '24', '熟练', '7');
INSERT INTO `professional_skill` VALUES ('b3e83183-cca9-4c4b-bd24-804e399eac7a', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'FastReport', '12', '熟练', '9');
INSERT INTO `professional_skill` VALUES ('b6174027-d043-4d83-a15e-8b886998f7d6', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'Struts, Hibernate, Spring', '24', '熟练', '2');
INSERT INTO `professional_skill` VALUES ('b83d43a3-9219-4cf3-9367-8d9f1d653065', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'Windows, Linux常用命令', '24', '熟练', '5');
INSERT INTO `professional_skill` VALUES ('c8c2a50a-bb66-45cc-84fd-421afb09a6c3', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'Oracle, MySQL, SqlServer, SQLite, Access', '24', '熟练', '4');
INSERT INTO `professional_skill` VALUES ('df235a7f-af10-433c-892d-98930b48ade0', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'Android', '24', '熟练', '8');
INSERT INTO `professional_skill` VALUES ('ea7b898f-3d57-4d7a-8abb-f684c8aac326', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '6', '番茄炒蛋', '36', '精通', '2');
INSERT INTO `professional_skill` VALUES ('eec8d4f3-416e-476b-bdb5-8c29a6eef62c', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '1', 'JavaWeb', '12', '熟练', '1');
INSERT INTO `professional_skill` VALUES ('f2b4d1cf-e352-461c-9d1d-f8eb96c1dc56', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'Bootstrap', '12', '良好', '3');
INSERT INTO `professional_skill` VALUES ('fb9aa396-b79f-4862-876f-467b4e7e45b7', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '1', 'CVS, SVN, Git', '24', '熟练', '6');

-- ----------------------------
-- Table structure for professional_skill_dict
-- ----------------------------
DROP TABLE IF EXISTS `professional_skill_dict`;
CREATE TABLE `professional_skill_dict` (
  `id` int(11) NOT NULL auto_increment,
  `skill_type_name` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of professional_skill_dict
-- ----------------------------
INSERT INTO `professional_skill_dict` VALUES ('1', '计算机／IT');
INSERT INTO `professional_skill_dict` VALUES ('2', '机械维修');
INSERT INTO `professional_skill_dict` VALUES ('3', '生产技工');
INSERT INTO `professional_skill_dict` VALUES ('4', '园林艺术');
INSERT INTO `professional_skill_dict` VALUES ('5', '手工艺');
INSERT INTO `professional_skill_dict` VALUES ('6', '烹饪／餐饮');
INSERT INTO `professional_skill_dict` VALUES ('7', '服装／服饰');
INSERT INTO `professional_skill_dict` VALUES ('8', '驾驶');
INSERT INTO `professional_skill_dict` VALUES ('9', '安全保护');
INSERT INTO `professional_skill_dict` VALUES ('10', '语言翻译');
INSERT INTO `professional_skill_dict` VALUES ('11', '建筑／装修');
INSERT INTO `professional_skill_dict` VALUES ('12', '医护／美容');
INSERT INTO `professional_skill_dict` VALUES ('13', '其他');

-- ----------------------------
-- Table structure for project_experience
-- ----------------------------
DROP TABLE IF EXISTS `project_experience`;
CREATE TABLE `project_experience` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `project_exp_name` varchar(255) collate utf8_unicode_ci default NULL,
  `project_exp_start_date` date default NULL,
  `project_exp_end_date` date default NULL,
  `project_name` varchar(255) collate utf8_unicode_ci default NULL,
  `project_duty` varchar(2047) collate utf8_unicode_ci default NULL,
  `project_desc` text collate utf8_unicode_ci,
  `project_is_it` int(1) default NULL,
  `project_software_env` varchar(255) collate utf8_unicode_ci default NULL,
  `project_hardware_env` varchar(255) collate utf8_unicode_ci default NULL,
  `project_develop_env` varchar(255) collate utf8_unicode_ci default NULL,
  `project_order` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of project_experience
-- ----------------------------
INSERT INTO `project_experience` VALUES ('53627907-e46d-47b8-9057-bdf957b016a6', '2d8eb7b1-3d2b-428a-8826-0815175d557c', null, '2015-10-01', '2015-12-01', '简历报表', '编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑编辑', '简历报表建立报表', '1', 'vs2010', 'none', 'windows', '0');
INSERT INTO `project_experience` VALUES ('67b0ae06-b986-4103-8ddc-734c1b54abf0', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', null, '2014-06-16', '2014-07-16', '科学计算器', '使用纯C语言Win32 API编写的桌面小程序\r\n利用宏的特性设计并实现了“泛型”的栈，在一定程度上弥补了C语言不支持泛型的缺点\r\n设计并实现了表达式的解析算法，支持运算符优先级，括号优先级的解析，并支持乘幂，开方等复杂的科学计算', '课程设计项目，桌面版科学计算实用小工具，支持复杂表达式的解析与计算，并具有批量计算的功能，支持批量数据处理。', '1', 'Win32 API', 'PC', 'Visual Studio', '0');
INSERT INTO `project_experience` VALUES ('97d7f37d-4580-4eed-aa29-53b686996d1c', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', null, '2014-11-16', '2015-09-16', '宜诚体检信息系统', '负责数据库访问层的设计与编码。设计并实现了数据库访问框架，该框架具有防止SQL注入，参数化查询，事务处理，线程并发的功能\r\n负责系统中的报表设计与编码，包括导检单，检验单，体检报告，数据统计报表等\r\n负责部分核心功能模块的设计与实现\r\n参与本系统与医院其他信息系统（如HIS, LIS, PACS）的接口设计与编码工作\r\n参与疾病识别，自动生成建议的算法设计\r\n参与系统中的Office编程（如从Excel中导入病人数据，把数据导出为Excel等）\r\n参与编写业务逻辑代码\r\n参与用户界面设计', '本系统现已在广州军区机关医院上线运行，旨在帮助医院管理体检病人信息，包括体检登记，导检单打印，结果录入，报告打印，数据统计，成本核算，字典设置等功能模块，并具有疾病识别，自动生成体检建议等功能，大大减轻了医生的工作量。', '1', '.Net Framework, Oracle', 'PC', 'Visual Studio', '0');
INSERT INTO `project_experience` VALUES ('a198b043-32c3-43a4-ad27-02b7dce78a9f', '2d8eb7b1-3d2b-428a-8826-0815175d557c', null, '2011-06-01', '2015-10-01', 'test', '编码编码调试调试', '一、\r\n二、', '1', 'keil', 'ARM', 'windows', '0');
INSERT INTO `project_experience` VALUES ('a7c79722-8c98-4d61-8c2e-88eeef0f8602', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', null, '2014-10-16', '2014-12-16', '高校辅导员管理系统', '参与需求分析，数据库设计，编码实现等完整的开发过程\r\n在Linux下部署Tomcat服务器以及MySql数据库\r\n在Linux部署CVS服务器帮助团队实现协同开发\r\n参与编写业务逻辑代码\r\n参与用户界面设计\r\n参与文档撰写', '课程设计项目，帮助高校辅导员管理学生信息，包括学生信息管理，课程管理，成绩统计，奖助学金申请等功能模块。', '1', 'Tomcat, MySQL', 'PC', 'Eclipse', '0');
INSERT INTO `project_experience` VALUES ('b0add3a6-198d-48ca-abac-319c1d10e975', '2d8eb7b1-3d2b-428a-8826-0815175d557c', null, '2015-12-01', '2015-10-01', '嵌入式', '编码编码调试调试', '一、\r\n二、\r\n三、\r\n四、', '1', 'keil', 'ARM', 'windows', '0');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `template_id` varchar(255) collate utf8_unicode_ci default NULL,
  `resume_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_share` int(1) NOT NULL,
  `resume_create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `e` (`user_id`),
  KEY `b` (`template_id`),
  CONSTRAINT `b` FOREIGN KEY (`template_id`) REFERENCES `resume_template` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `e` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('2d8eb7b1-3d2b-428a-8826-0815175d557c', 'fcff2ce4-543e-431c-96f1-8fbc43ccee09', '3', '张三', '1', '2015-12-05 20:33:12');
INSERT INTO `resume` VALUES ('dbcbcf64-94a8-47f4-bd27-d19ebdbabb79', 'fcff2ce4-543e-431c-96f1-8fbc43ccee09', '2', '程慧涛', '1', '2015-12-20 23:19:39');
INSERT INTO `resume` VALUES ('fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', 'fcff2ce4-543e-431c-96f1-8fbc43ccee09', '2', '刘文俊 - 实习简历', '1', '2015-12-06 01:13:11');

-- ----------------------------
-- Table structure for resume_scores
-- ----------------------------
DROP TABLE IF EXISTS `resume_scores`;
CREATE TABLE `resume_scores` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `score` int(1) default NULL,
  `user_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `score_date` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `resume_scores_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of resume_scores
-- ----------------------------
INSERT INTO `resume_scores` VALUES ('1', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '3', '1', '2015-12-14 23:21:06');
INSERT INTO `resume_scores` VALUES ('2', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '4', '2', '2015-12-14 23:21:22');

-- ----------------------------
-- Table structure for resume_template
-- ----------------------------
DROP TABLE IF EXISTS `resume_template`;
CREATE TABLE `resume_template` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `template_name` varchar(255) collate utf8_unicode_ci default NULL,
  `template_generator_class` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of resume_template
-- ----------------------------
INSERT INTO `resume_template` VALUES ('1', '关于ResumeFactory', 'ResumeFactory.Service.ReportGenerator.AboutReportGenerator');
INSERT INTO `resume_template` VALUES ('2', '极致简约', 'ResumeFactory.Service.ReportGenerator.ConciseReportGenerator');
INSERT INTO `resume_template` VALUES ('3', '大众通用', 'ResumeFactory.Service.ReportGenerator.CommonTemplate');

-- ----------------------------
-- Table structure for scholarship
-- ----------------------------
DROP TABLE IF EXISTS `scholarship`;
CREATE TABLE `scholarship` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `scholarship_type` varchar(255) collate utf8_unicode_ci default NULL,
  `scholarship_level` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of scholarship
-- ----------------------------
INSERT INTO `scholarship` VALUES ('555f4b34-0319-43de-9758-85a258f54c79', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '国家级', '一等奖');
INSERT INTO `scholarship` VALUES ('82941f05-1985-4871-8ba2-b2a5a1015baa', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '国家级', '一等奖');
INSERT INTO `scholarship` VALUES ('bf786606-2121-4424-9ed2-ac583f370135', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '国家级', '一等奖');

-- ----------------------------
-- Table structure for school_activity
-- ----------------------------
DROP TABLE IF EXISTS `school_activity`;
CREATE TABLE `school_activity` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `school_activity` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of school_activity
-- ----------------------------
INSERT INTO `school_activity` VALUES ('c747d61d-0d14-461e-9f0a-6f6cccf66e11', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '哈哈哈哈哈');

-- ----------------------------
-- Table structure for self_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `self_evaluation`;
CREATE TABLE `self_evaluation` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `self_evaluation_title` varchar(255) collate utf8_unicode_ci default NULL,
  `self_evaluation_content` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of self_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for social_practice
-- ----------------------------
DROP TABLE IF EXISTS `social_practice`;
CREATE TABLE `social_practice` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `practice_name` varchar(255) collate utf8_unicode_ci default NULL,
  `practice_start_date` date default NULL,
  `practice_end_date` date default NULL,
  `practice_desc` text collate utf8_unicode_ci,
  `practice_order` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of social_practice
-- ----------------------------
INSERT INTO `social_practice` VALUES ('a34b1841-529a-4e3b-af83-014b834d9cd7', '2d8eb7b1-3d2b-428a-8826-0815175d557c', 'aaa', '2015-11-12', '2015-12-12', 'aaa\nsdf\nsdf', '1');

-- ----------------------------
-- Table structure for stu_course
-- ----------------------------
DROP TABLE IF EXISTS `stu_course`;
CREATE TABLE `stu_course` (
  `stu_id` int(11) default NULL,
  `course_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_course
-- ----------------------------
INSERT INTO `stu_course` VALUES ('1', '1');
INSERT INTO `stu_course` VALUES ('1', '2');
INSERT INTO `stu_course` VALUES ('1', '3');
INSERT INTO `stu_course` VALUES ('1', '4');
INSERT INTO `stu_course` VALUES ('1', '5');
INSERT INTO `stu_course` VALUES ('1', '6');
INSERT INTO `stu_course` VALUES ('2', '1');
INSERT INTO `stu_course` VALUES ('2', '2');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `stu_name` varchar(255) default NULL,
  `stu_age` int(255) default NULL,
  `stu_class` int(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张珊', '21', '1');
INSERT INTO `student` VALUES ('2', '李师', '10', '2');
INSERT INTO `student` VALUES ('3', '王武', '18', '1');
INSERT INTO `student` VALUES ('4', '赵遛', '19', '2');
INSERT INTO `student` VALUES ('5', '哈哈君', '31', '1');
INSERT INTO `student` VALUES ('6', null, null, '2');
INSERT INTO `student` VALUES ('7', '哈哈君', '9', '1');

-- ----------------------------
-- Table structure for train_experience
-- ----------------------------
DROP TABLE IF EXISTS `train_experience`;
CREATE TABLE `train_experience` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `resume_id` varchar(255) collate utf8_unicode_ci default NULL,
  `train_start_date` date default NULL,
  `train_end_date` date default NULL,
  `train_school` varchar(255) collate utf8_unicode_ci default NULL,
  `train_course` varchar(255) collate utf8_unicode_ci default NULL,
  `train_address` varchar(255) collate utf8_unicode_ci default NULL,
  `train_certificate` varchar(255) collate utf8_unicode_ci default NULL,
  `train_desc` text collate utf8_unicode_ci,
  `train_order` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of train_experience
-- ----------------------------
INSERT INTO `train_experience` VALUES ('144255e0-c719-4d5e-aa4d-efd83c730919', '2d8eb7b1-3d2b-428a-8826-0815175d557c', '2015-07-09', '2015-12-12', 'tth', 'jytj', '', '', '', '0');
INSERT INTO `train_experience` VALUES ('9ed70962-a6cc-472a-9def-f445a74c8d21', 'fc4e74f4-b2aa-4a0b-82d2-0eba01c5d106', '2013-02-01', '2015-10-01', '广州腾科网络技术有限公司', 'JavaWeb/Android', '广州', '', '', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `user_pwd` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2f752fd0-c06a-4fdb-9273-38f4c2704efa', '123', '123');
INSERT INTO `user` VALUES ('3732d32f-9794-4e1f-b9af-0d642b19c8d5', 'coder1', 'a');
INSERT INTO `user` VALUES ('584c9e33-4c8a-43bb-a56b-669f034447ef', 'liyutao', 'liyutao');
INSERT INTO `user` VALUES ('747a1d00-9d61-46be-90fa-5a335e370144', 'xiali', 'xiali');
INSERT INTO `user` VALUES ('aea0a723-5e50-42c9-977e-8c24e71e98c6', 'wangruisong', 'wangruisong');
INSERT INTO `user` VALUES ('c2080be2-35b2-4beb-9276-92534136dd6f', 'liuwenjun', 'liuwenjun');
INSERT INTO `user` VALUES ('c4e5f4ae-03b2-4139-8cb5-8e79a2649353', 'chenghuitao', 'chenghuitao');
INSERT INTO `user` VALUES ('fcff2ce4-543e-431c-96f1-8fbc43ccee09', 'coder', 'coder');
