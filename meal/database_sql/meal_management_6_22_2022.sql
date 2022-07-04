/*
Navicat MySQL Data Transfer

Source Server         : Conn
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : meal_management

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-06-22 11:44:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity_log`
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `erp_id` varchar(20) NOT NULL,
  `deposit` float NOT NULL,
  `final_pay` float NOT NULL,
  `activity_occured_table_row_id` int(11) NOT NULL,
  `activity_type` varchar(50) NOT NULL,
  `activity_sql` text NOT NULL,
  `recording_person_id` varchar(100) NOT NULL,
  `recording_person_name` varchar(100) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `recording_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
INSERT INTO `activity_log` VALUES ('1', '9448', '1200', '0', '198', 'Insertion Successful', '', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 11:20:02');
INSERT INTO `activity_log` VALUES ('2', '9452', '1400', '0', '219', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-12\',\'12\',\'7\',\'2022\',\'9452\',\'Md. Saiful Islam\',\'1400\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '12', '7', '2022', '2022-06-21 13:02:25');
INSERT INTO `activity_log` VALUES ('3', '9451', '1300', '400', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'400\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9451\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 13:14:46');
INSERT INTO `activity_log` VALUES ('4', '9452', '1400', '300', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'300\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9452\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 13:22:56');
INSERT INTO `activity_log` VALUES ('5', '9453', '1200', '0', '220', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-7\',\'7\',\'7\',\'2022\',\'9453\',\'qc\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '7', '7', '2022', '2022-06-21 13:23:36');
INSERT INTO `activity_log` VALUES ('6', '9453', '1200', '400', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'400\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9453\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 13:24:35');
INSERT INTO `activity_log` VALUES ('7', '9454', '1300', '0', '221', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9454\',\'abc\',\'1300\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('8', '9456', '1400', '0', '222', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9456\',\'dto\',\'1400\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('9', '9457', '1500', '0', '223', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9457\',\'dto\',\'1500\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('10', '9458', '1600', '0', '224', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9458\',\'Data Entry OP\',\'1600\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('11', '9459', '1700', '0', '225', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9459\',\'adsadasd\',\'1700\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('12', '9460', '1800', '0', '226', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9460\',\'qc\',\'1800\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('13', '9461', '1900', '0', '227', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9461\',\'Muzammel\',\'1900\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('14', '9462', '2000', '0', '228', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-13\',\'13\',\'7\',\'2022\',\'9462\',\'Anower\',\'2000\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '13', '7', '2022', '2022-06-21 14:07:19');
INSERT INTO `activity_log` VALUES ('15', '9454', '1300', '500', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'500\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9454\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:11:55');
INSERT INTO `activity_log` VALUES ('16', '9456', '1400', '600', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'600\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9456\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:12:00');
INSERT INTO `activity_log` VALUES ('17', '9457', '1500', '700', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'700\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9457\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:12:08');
INSERT INTO `activity_log` VALUES ('18', '9458', '1600', '800', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'800\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9458\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:12:13');
INSERT INTO `activity_log` VALUES ('19', '9448', '1200', '30', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'30\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9448\' AND `month` = \'6\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:17:55');
INSERT INTO `activity_log` VALUES ('20', '9448', '1200', '300', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'300\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9448\' AND `month` = \'6\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:27:46');
INSERT INTO `activity_log` VALUES ('21', '9449', '1200', '701', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'701\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9449\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:28:08');
INSERT INTO `activity_log` VALUES ('22', '9449', '1200', '703', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'703\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9449\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:29:05');
INSERT INTO `activity_log` VALUES ('23', '9449', '1200', '704', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'704\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9449\' AND `month` = \'7\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 14:32:01');
INSERT INTO `activity_log` VALUES ('24', '9463', '1212', '0', '229', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-7-14\',\'14\',\'7\',\'2022\',\'9463\',\'Rifat\',\'1212\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '14', '7', '2022', '2022-06-21 15:11:08');
INSERT INTO `activity_log` VALUES ('25', '9449', '1200', '0', '230', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9449\',\'iftekhar\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('26', '9450', '1200', '0', '231', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9450\',\'Md. Jiash Hasnat\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('27', '9451', '1200', '0', '232', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9451\',\'Md. Saiful Islam\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('28', '9452', '1200', '0', '233', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9452\',\'Md. Saiful Islam\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('29', '9453', '1200', '0', '234', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9453\',\'qc\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('30', '9454', '1200', '0', '235', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9454\',\'abc\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('31', '9456', '1200', '0', '236', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9456\',\'dto\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('32', '9457', '1200', '0', '237', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9457\',\'dto\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('33', '9458', '1200', '0', '238', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9458\',\'Data Entry OP\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:10');
INSERT INTO `activity_log` VALUES ('34', '9459', '1200', '0', '239', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9459\',\'adsadasd\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('35', '9460', '1200', '0', '240', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9460\',\'qc\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('36', '9461', '1200', '0', '241', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9461\',\'Muzammel\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('37', '9462', '1200', '0', '242', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9462\',\'Anower\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('38', '9463', '1200', '0', '243', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9463\',\'Rifat\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('39', '9467', '1200', '0', '244', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9467\',\'Mamun\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('40', '9468', '1200', '0', '245', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9468\',\'Mamun\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('41', '9469', '1200', '0', '246', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9469\',\'Zahir Uddin\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('42', '9470', '1200', '0', '247', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9470\',\'Masum Mia\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('43', '9471', '1200', '0', '248', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9471\',\'Rony\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('44', '9472', '1200', '0', '249', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9472\',\'Hridoy\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('45', '9473', '1200', '0', '250', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9473\',\'Md. Khorshed\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('46', '9474', '1200', '0', '251', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9474\',\'Shamim\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('47', '9475', '1200', '0', '252', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9475\',\'Shahin\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('48', '9476', '1200', '0', '253', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9476\',\'kausar\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('49', '9477', '1200', '0', '254', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9477\',\'Testing\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('50', '9448', '1200', '0', '255', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2023-1-2\',\'2\',\'1\',\'2023\',\'9448\',\'Hasan Imam\',\'1200\',\'Hasan Imam\',\'9448\',NOW())', '9448', 'Hasan Imam', '2', '1', '2023', '2022-06-21 16:48:11');
INSERT INTO `activity_log` VALUES ('51', '9449', '120', '380', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `final_pay`=\'380\',`final_pay_recording_person`=\'Hasan Imam\',`final_pay_recording_time`= NOW() WHERE `erp_id`= \'9449\' AND `month` = \'6\' AND `year` = \'2022\'', '9448', 'Hasan Imam', '21', '6', '2022', '2022-06-21 17:20:57');
INSERT INTO `activity_log` VALUES ('52', '8042', '1000', '0', '256', 'Insertion Successful', 'INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values (\'2022-06-22\',\'22\',\'06\',\'2022\',\'8042\',\'hriday\',\'1000\',\'iftekhar\',\'iftekhar\',NOW())', 'iftekhar', 'iftekhar', '22', '6', '2022', '2022-06-22 11:26:12');
INSERT INTO `activity_log` VALUES ('53', '8042', '1200', '0', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `deposit`=\'1200\',`recording_person_name`=\'iftekhar\',`recording_time`= NOW() WHERE `erp_id`= \'8042\' AND `month` = \'06\' AND `year` = \'2022\'', 'iftekhar', 'iftekhar', '22', '6', '2022', '2022-06-22 11:26:22');
INSERT INTO `activity_log` VALUES ('54', '8042', '1400', '0', '0', 'Updating Successful', 'UPDATE `set_monthly_deposit` SET `deposit`=\'1400\',`recording_person_name`=\'iftekhar\',`recording_time`= NOW() WHERE `erp_id`= \'8042\' AND `month` = \'06\' AND `year` = \'2022\'', 'iftekhar', 'iftekhar', '22', '6', '2022', '2022-06-22 11:26:34');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name_of_country` varchar(80) NOT NULL,
  `short_code` char(3) DEFAULT NULL,
  `number_code` smallint(6) DEFAULT NULL,
  `phone_code` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'AF', 'Afghanistan', 'AFG', '4', '93');
INSERT INTO `country` VALUES ('2', 'AL', 'Albania', 'ALB', '8', '355');
INSERT INTO `country` VALUES ('3', 'DZ', 'Algeria', 'DZA', '12', '213');
INSERT INTO `country` VALUES ('4', 'AS', 'American Samoa', 'ASM', '16', '1684');
INSERT INTO `country` VALUES ('5', 'AD', 'Andorra', 'AND', '20', '376');
INSERT INTO `country` VALUES ('6', 'AO', 'Angola', 'AGO', '24', '244');
INSERT INTO `country` VALUES ('7', 'AI', 'Anguilla', 'AIA', '660', '1264');
INSERT INTO `country` VALUES ('8', 'AQ', 'Antarctica', null, null, '0');
INSERT INTO `country` VALUES ('9', 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268');
INSERT INTO `country` VALUES ('10', 'AR', 'Argentina', 'ARG', '32', '54');
INSERT INTO `country` VALUES ('11', 'AM', 'Armenia', 'ARM', '51', '374');
INSERT INTO `country` VALUES ('12', 'AW', 'Aruba', 'ABW', '533', '297');
INSERT INTO `country` VALUES ('13', 'AU', 'Australia', 'AUS', '36', '61');
INSERT INTO `country` VALUES ('14', 'AT', 'Austria', 'AUT', '40', '43');
INSERT INTO `country` VALUES ('15', 'AZ', 'Azerbaijan', 'AZE', '31', '994');
INSERT INTO `country` VALUES ('16', 'BS', 'Bahamas', 'BHS', '44', '1242');
INSERT INTO `country` VALUES ('17', 'BH', 'Bahrain', 'BHR', '48', '973');
INSERT INTO `country` VALUES ('18', 'BD', 'Bangladesh', 'BGD', '50', '880');
INSERT INTO `country` VALUES ('19', 'BB', 'Barbados', 'BRB', '52', '1246');
INSERT INTO `country` VALUES ('20', 'BY', 'Belarus', 'BLR', '112', '375');
INSERT INTO `country` VALUES ('21', 'BE', 'Belgium', 'BEL', '56', '32');
INSERT INTO `country` VALUES ('22', 'BZ', 'Belize', 'BLZ', '84', '501');
INSERT INTO `country` VALUES ('23', 'BJ', 'Benin', 'BEN', '204', '229');
INSERT INTO `country` VALUES ('24', 'BM', 'Bermuda', 'BMU', '60', '1441');
INSERT INTO `country` VALUES ('25', 'BT', 'Bhutan', 'BTN', '64', '975');
INSERT INTO `country` VALUES ('26', 'BO', 'Bolivia', 'BOL', '68', '591');
INSERT INTO `country` VALUES ('27', 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387');
INSERT INTO `country` VALUES ('28', 'BW', 'Botswana', 'BWA', '72', '267');
INSERT INTO `country` VALUES ('29', 'BV', 'Bouvet Island', null, null, '0');
INSERT INTO `country` VALUES ('30', 'BR', 'Brazil', 'BRA', '76', '55');
INSERT INTO `country` VALUES ('31', 'IO', 'British Indian Ocean Territory', null, null, '246');
INSERT INTO `country` VALUES ('32', 'BN', 'Brunei Darussalam', 'BRN', '96', '673');
INSERT INTO `country` VALUES ('33', 'BG', 'Bulgaria', 'BGR', '100', '359');
INSERT INTO `country` VALUES ('34', 'BF', 'Burkina Faso', 'BFA', '854', '226');
INSERT INTO `country` VALUES ('35', 'BI', 'Burundi', 'BDI', '108', '257');
INSERT INTO `country` VALUES ('36', 'KH', 'Cambodia', 'KHM', '116', '855');
INSERT INTO `country` VALUES ('37', 'CM', 'Cameroon', 'CMR', '120', '237');
INSERT INTO `country` VALUES ('38', 'CA', 'Canada', 'CAN', '124', '1');
INSERT INTO `country` VALUES ('39', 'CV', 'Cape Verde', 'CPV', '132', '238');
INSERT INTO `country` VALUES ('40', 'KY', 'Cayman Islands', 'CYM', '136', '1345');
INSERT INTO `country` VALUES ('41', 'CF', 'Central African Republic', 'CAF', '140', '236');
INSERT INTO `country` VALUES ('42', 'TD', 'Chad', 'TCD', '148', '235');
INSERT INTO `country` VALUES ('43', 'CL', 'Chile', 'CHL', '152', '56');
INSERT INTO `country` VALUES ('44', 'CN', 'China', 'CHN', '156', '86');
INSERT INTO `country` VALUES ('45', 'CX', 'Christmas Island', null, null, '61');
INSERT INTO `country` VALUES ('46', 'CC', 'Cocos (Keeling) Islands', null, null, '672');
INSERT INTO `country` VALUES ('47', 'CO', 'Colombia', 'COL', '170', '57');
INSERT INTO `country` VALUES ('48', 'KM', 'Comoros', 'COM', '174', '269');
INSERT INTO `country` VALUES ('49', 'CG', 'Congo', 'COG', '178', '242');
INSERT INTO `country` VALUES ('50', 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242');
INSERT INTO `country` VALUES ('51', 'CK', 'Cook Islands', 'COK', '184', '682');
INSERT INTO `country` VALUES ('52', 'CR', 'Costa Rica', 'CRI', '188', '506');
INSERT INTO `country` VALUES ('53', 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225');
INSERT INTO `country` VALUES ('54', 'HR', 'Croatia', 'HRV', '191', '385');
INSERT INTO `country` VALUES ('55', 'CU', 'Cuba', 'CUB', '192', '53');
INSERT INTO `country` VALUES ('56', 'CY', 'Cyprus', 'CYP', '196', '357');
INSERT INTO `country` VALUES ('57', 'CZ', 'Czech Republic', 'CZE', '203', '420');
INSERT INTO `country` VALUES ('58', 'DK', 'Denmark', 'DNK', '208', '45');
INSERT INTO `country` VALUES ('59', 'DJ', 'Djibouti', 'DJI', '262', '253');
INSERT INTO `country` VALUES ('60', 'DM', 'Dominica', 'DMA', '212', '1767');
INSERT INTO `country` VALUES ('61', 'DO', 'Dominican Republic', 'DOM', '214', '1809');
INSERT INTO `country` VALUES ('62', 'EC', 'Ecuador', 'ECU', '218', '593');
INSERT INTO `country` VALUES ('63', 'EG', 'Egypt', 'EGY', '818', '20');
INSERT INTO `country` VALUES ('64', 'SV', 'El Salvador', 'SLV', '222', '503');
INSERT INTO `country` VALUES ('65', 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240');
INSERT INTO `country` VALUES ('66', 'ER', 'Eritrea', 'ERI', '232', '291');
INSERT INTO `country` VALUES ('67', 'EE', 'Estonia', 'EST', '233', '372');
INSERT INTO `country` VALUES ('68', 'ET', 'Ethiopia', 'ETH', '231', '251');
INSERT INTO `country` VALUES ('69', 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500');
INSERT INTO `country` VALUES ('70', 'FO', 'Faroe Islands', 'FRO', '234', '298');
INSERT INTO `country` VALUES ('71', 'FJ', 'Fiji', 'FJI', '242', '679');
INSERT INTO `country` VALUES ('72', 'FI', 'Finland', 'FIN', '246', '358');
INSERT INTO `country` VALUES ('73', 'FR', 'France', 'FRA', '250', '33');
INSERT INTO `country` VALUES ('74', 'GF', 'French Guiana', 'GUF', '254', '594');
INSERT INTO `country` VALUES ('75', 'PF', 'French Polynesia', 'PYF', '258', '689');
INSERT INTO `country` VALUES ('76', 'TF', 'French Southern Territories', null, null, '0');
INSERT INTO `country` VALUES ('77', 'GA', 'Gabon', 'GAB', '266', '241');
INSERT INTO `country` VALUES ('78', 'GM', 'Gambia', 'GMB', '270', '220');
INSERT INTO `country` VALUES ('79', 'GE', 'Georgia', 'GEO', '268', '995');
INSERT INTO `country` VALUES ('80', 'DE', 'Germany', 'DEU', '276', '49');
INSERT INTO `country` VALUES ('81', 'GH', 'Ghana', 'GHA', '288', '233');
INSERT INTO `country` VALUES ('82', 'GI', 'Gibraltar', 'GIB', '292', '350');
INSERT INTO `country` VALUES ('83', 'GR', 'Greece', 'GRC', '300', '30');
INSERT INTO `country` VALUES ('84', 'GL', 'Greenland', 'GRL', '304', '299');
INSERT INTO `country` VALUES ('85', 'GD', 'Grenada', 'GRD', '308', '1473');
INSERT INTO `country` VALUES ('86', 'GP', 'Guadeloupe', 'GLP', '312', '590');
INSERT INTO `country` VALUES ('87', 'GU', 'Guam', 'GUM', '316', '1671');
INSERT INTO `country` VALUES ('88', 'GT', 'Guatemala', 'GTM', '320', '502');
INSERT INTO `country` VALUES ('89', 'GN', 'Guinea', 'GIN', '324', '224');
INSERT INTO `country` VALUES ('90', 'GW', 'Guinea-Bissau', 'GNB', '624', '245');
INSERT INTO `country` VALUES ('91', 'GY', 'Guyana', 'GUY', '328', '592');
INSERT INTO `country` VALUES ('92', 'HT', 'Haiti', 'HTI', '332', '509');
INSERT INTO `country` VALUES ('93', 'HM', 'Heard Island and Mcdonald Islands', null, null, '0');
INSERT INTO `country` VALUES ('94', 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39');
INSERT INTO `country` VALUES ('95', 'HN', 'Honduras', 'HND', '340', '504');
INSERT INTO `country` VALUES ('96', 'HK', 'Hong Kong', 'HKG', '344', '852');
INSERT INTO `country` VALUES ('97', 'HU', 'Hungary', 'HUN', '348', '36');
INSERT INTO `country` VALUES ('98', 'IS', 'Iceland', 'ISL', '352', '354');
INSERT INTO `country` VALUES ('99', 'IN', 'India', 'IND', '356', '91');
INSERT INTO `country` VALUES ('100', 'ID', 'Indonesia', 'IDN', '360', '62');
INSERT INTO `country` VALUES ('101', 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98');
INSERT INTO `country` VALUES ('102', 'IQ', 'Iraq', 'IRQ', '368', '964');
INSERT INTO `country` VALUES ('103', 'IE', 'Ireland', 'IRL', '372', '353');
INSERT INTO `country` VALUES ('104', 'IL', 'Israel', 'ISR', '376', '972');
INSERT INTO `country` VALUES ('105', 'IT', 'Italy', 'ITA', '380', '39');
INSERT INTO `country` VALUES ('106', 'JM', 'Jamaica', 'JAM', '388', '1876');
INSERT INTO `country` VALUES ('107', 'JP', 'Japan', 'JPN', '392', '81');
INSERT INTO `country` VALUES ('108', 'JO', 'Jordan', 'JOR', '400', '962');
INSERT INTO `country` VALUES ('109', 'KZ', 'Kazakhstan', 'KAZ', '398', '7');
INSERT INTO `country` VALUES ('110', 'KE', 'Kenya', 'KEN', '404', '254');
INSERT INTO `country` VALUES ('111', 'KI', 'Kiribati', 'KIR', '296', '686');
INSERT INTO `country` VALUES ('112', 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850');
INSERT INTO `country` VALUES ('113', 'KR', 'Korea, Republic of', 'KOR', '410', '82');
INSERT INTO `country` VALUES ('114', 'KW', 'Kuwait', 'KWT', '414', '965');
INSERT INTO `country` VALUES ('115', 'KG', 'Kyrgyzstan', 'KGZ', '417', '996');
INSERT INTO `country` VALUES ('116', 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856');
INSERT INTO `country` VALUES ('117', 'LV', 'Latvia', 'LVA', '428', '371');
INSERT INTO `country` VALUES ('118', 'LB', 'Lebanon', 'LBN', '422', '961');
INSERT INTO `country` VALUES ('119', 'LS', 'Lesotho', 'LSO', '426', '266');
INSERT INTO `country` VALUES ('120', 'LR', 'Liberia', 'LBR', '430', '231');
INSERT INTO `country` VALUES ('121', 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218');
INSERT INTO `country` VALUES ('122', 'LI', 'Liechtenstein', 'LIE', '438', '423');
INSERT INTO `country` VALUES ('123', 'LT', 'Lithuania', 'LTU', '440', '370');
INSERT INTO `country` VALUES ('124', 'LU', 'Luxembourg', 'LUX', '442', '352');
INSERT INTO `country` VALUES ('125', 'MO', 'Macao', 'MAC', '446', '853');
INSERT INTO `country` VALUES ('126', 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389');
INSERT INTO `country` VALUES ('127', 'MG', 'Madagascar', 'MDG', '450', '261');
INSERT INTO `country` VALUES ('128', 'MW', 'Malawi', 'MWI', '454', '265');
INSERT INTO `country` VALUES ('129', 'MY', 'Malaysia', 'MYS', '458', '60');
INSERT INTO `country` VALUES ('130', 'MV', 'Maldives', 'MDV', '462', '960');
INSERT INTO `country` VALUES ('131', 'ML', 'Mali', 'MLI', '466', '223');
INSERT INTO `country` VALUES ('132', 'MT', 'Malta', 'MLT', '470', '356');
INSERT INTO `country` VALUES ('133', 'MH', 'Marshall Islands', 'MHL', '584', '692');
INSERT INTO `country` VALUES ('134', 'MQ', 'Martinique', 'MTQ', '474', '596');
INSERT INTO `country` VALUES ('135', 'MR', 'Mauritania', 'MRT', '478', '222');
INSERT INTO `country` VALUES ('136', 'MU', 'Mauritius', 'MUS', '480', '230');
INSERT INTO `country` VALUES ('137', 'YT', 'Mayotte', null, null, '269');
INSERT INTO `country` VALUES ('138', 'MX', 'Mexico', 'MEX', '484', '52');
INSERT INTO `country` VALUES ('139', 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691');
INSERT INTO `country` VALUES ('140', 'MD', 'Moldova, Republic of', 'MDA', '498', '373');
INSERT INTO `country` VALUES ('141', 'MC', 'Monaco', 'MCO', '492', '377');
INSERT INTO `country` VALUES ('142', 'MN', 'Mongolia', 'MNG', '496', '976');
INSERT INTO `country` VALUES ('143', 'MS', 'Montserrat', 'MSR', '500', '1664');
INSERT INTO `country` VALUES ('144', 'MA', 'Morocco', 'MAR', '504', '212');
INSERT INTO `country` VALUES ('145', 'MZ', 'Mozambique', 'MOZ', '508', '258');
INSERT INTO `country` VALUES ('146', 'MM', 'Myanmar', 'MMR', '104', '95');
INSERT INTO `country` VALUES ('147', 'NA', 'Namibia', 'NAM', '516', '264');
INSERT INTO `country` VALUES ('148', 'NR', 'Nauru', 'NRU', '520', '674');
INSERT INTO `country` VALUES ('149', 'NP', 'Nepal', 'NPL', '524', '977');
INSERT INTO `country` VALUES ('150', 'NL', 'Netherlands', 'NLD', '528', '31');
INSERT INTO `country` VALUES ('151', 'AN', 'Netherlands Antilles', 'ANT', '530', '599');
INSERT INTO `country` VALUES ('152', 'NC', 'New Caledonia', 'NCL', '540', '687');
INSERT INTO `country` VALUES ('153', 'NZ', 'New Zealand', 'NZL', '554', '64');
INSERT INTO `country` VALUES ('154', 'NI', 'Nicaragua', 'NIC', '558', '505');
INSERT INTO `country` VALUES ('155', 'NE', 'Niger', 'NER', '562', '227');
INSERT INTO `country` VALUES ('156', 'NG', 'Nigeria', 'NGA', '566', '234');
INSERT INTO `country` VALUES ('157', 'NU', 'Niue', 'NIU', '570', '683');
INSERT INTO `country` VALUES ('158', 'NF', 'Norfolk Island', 'NFK', '574', '672');
INSERT INTO `country` VALUES ('159', 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670');
INSERT INTO `country` VALUES ('160', 'NO', 'Norway', 'NOR', '578', '47');
INSERT INTO `country` VALUES ('161', 'OM', 'Oman', 'OMN', '512', '968');
INSERT INTO `country` VALUES ('162', 'PK', 'Pakistan', 'PAK', '586', '92');
INSERT INTO `country` VALUES ('163', 'PW', 'Palau', 'PLW', '585', '680');
INSERT INTO `country` VALUES ('164', 'PS', 'Palestinian Territory, Occupied', null, null, '970');
INSERT INTO `country` VALUES ('165', 'PA', 'Panama', 'PAN', '591', '507');
INSERT INTO `country` VALUES ('166', 'PG', 'Papua New Guinea', 'PNG', '598', '675');
INSERT INTO `country` VALUES ('167', 'PY', 'Paraguay', 'PRY', '600', '595');
INSERT INTO `country` VALUES ('168', 'PE', 'Peru', 'PER', '604', '51');
INSERT INTO `country` VALUES ('169', 'PH', 'Philippines', 'PHL', '608', '63');
INSERT INTO `country` VALUES ('170', 'PN', 'Pitcairn', 'PCN', '612', '0');
INSERT INTO `country` VALUES ('171', 'PL', 'Poland', 'POL', '616', '48');
INSERT INTO `country` VALUES ('172', 'PT', 'Portugal', 'PRT', '620', '351');
INSERT INTO `country` VALUES ('173', 'PR', 'Puerto Rico', 'PRI', '630', '1787');
INSERT INTO `country` VALUES ('174', 'QA', 'Qatar', 'QAT', '634', '974');
INSERT INTO `country` VALUES ('175', 'RE', 'Reunion', 'REU', '638', '262');
INSERT INTO `country` VALUES ('176', 'RO', 'Romania', 'ROM', '642', '40');
INSERT INTO `country` VALUES ('177', 'RU', 'Russian Federation', 'RUS', '643', '70');
INSERT INTO `country` VALUES ('178', 'RW', 'Rwanda', 'RWA', '646', '250');
INSERT INTO `country` VALUES ('179', 'SH', 'Saint Helena', 'SHN', '654', '290');
INSERT INTO `country` VALUES ('180', 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869');
INSERT INTO `country` VALUES ('181', 'LC', 'Saint Lucia', 'LCA', '662', '1758');
INSERT INTO `country` VALUES ('182', 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508');
INSERT INTO `country` VALUES ('183', 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784');
INSERT INTO `country` VALUES ('184', 'WS', 'Samoa', 'WSM', '882', '684');
INSERT INTO `country` VALUES ('185', 'SM', 'San Marino', 'SMR', '674', '378');
INSERT INTO `country` VALUES ('186', 'ST', 'Sao Tome and Principe', 'STP', '678', '239');
INSERT INTO `country` VALUES ('187', 'SA', 'Saudi Arabia', 'SAU', '682', '966');
INSERT INTO `country` VALUES ('188', 'SN', 'Senegal', 'SEN', '686', '221');
INSERT INTO `country` VALUES ('189', 'CS', 'Serbia and Montenegro', null, null, '381');
INSERT INTO `country` VALUES ('190', 'SC', 'Seychelles', 'SYC', '690', '248');
INSERT INTO `country` VALUES ('191', 'SL', 'Sierra Leone', 'SLE', '694', '232');
INSERT INTO `country` VALUES ('192', 'SG', 'Singapore', 'SGP', '702', '65');
INSERT INTO `country` VALUES ('193', 'SK', 'Slovakia', 'SVK', '703', '421');
INSERT INTO `country` VALUES ('194', 'SI', 'Slovenia', 'SVN', '705', '386');
INSERT INTO `country` VALUES ('195', 'SB', 'Solomon Islands', 'SLB', '90', '677');
INSERT INTO `country` VALUES ('196', 'SO', 'Somalia', 'SOM', '706', '252');
INSERT INTO `country` VALUES ('197', 'ZA', 'South Africa', 'ZAF', '710', '27');
INSERT INTO `country` VALUES ('198', 'GS', 'South Georgia and the South Sandwich Islands', null, null, '0');
INSERT INTO `country` VALUES ('199', 'ES', 'Spain', 'ESP', '724', '34');
INSERT INTO `country` VALUES ('200', 'LK', 'Sri Lanka', 'LKA', '144', '94');
INSERT INTO `country` VALUES ('201', 'SD', 'Sudan', 'SDN', '736', '249');
INSERT INTO `country` VALUES ('202', 'SR', 'Suriname', 'SUR', '740', '597');
INSERT INTO `country` VALUES ('203', 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47');
INSERT INTO `country` VALUES ('204', 'SZ', 'Swaziland', 'SWZ', '748', '268');
INSERT INTO `country` VALUES ('205', 'SE', 'Sweden', 'SWE', '752', '46');
INSERT INTO `country` VALUES ('206', 'CH', 'Switzerland', 'CHE', '756', '41');
INSERT INTO `country` VALUES ('207', 'SY', 'Syrian Arab Republic', 'SYR', '760', '963');
INSERT INTO `country` VALUES ('208', 'TW', 'Taiwan, Province of China', 'TWN', '158', '886');
INSERT INTO `country` VALUES ('209', 'TJ', 'Tajikistan', 'TJK', '762', '992');
INSERT INTO `country` VALUES ('210', 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255');
INSERT INTO `country` VALUES ('211', 'TH', 'Thailand', 'THA', '764', '66');
INSERT INTO `country` VALUES ('212', 'TL', 'Timor-Leste', null, null, '670');
INSERT INTO `country` VALUES ('213', 'TG', 'Togo', 'TGO', '768', '228');
INSERT INTO `country` VALUES ('214', 'TK', 'Tokelau', 'TKL', '772', '690');
INSERT INTO `country` VALUES ('215', 'TO', 'Tonga', 'TON', '776', '676');
INSERT INTO `country` VALUES ('216', 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868');
INSERT INTO `country` VALUES ('217', 'TN', 'Tunisia', 'TUN', '788', '216');
INSERT INTO `country` VALUES ('218', 'TR', 'Turkey', 'TUR', '792', '90');
INSERT INTO `country` VALUES ('219', 'TM', 'Turkmenistan', 'TKM', '795', '7370');
INSERT INTO `country` VALUES ('220', 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649');
INSERT INTO `country` VALUES ('221', 'TV', 'Tuvalu', 'TUV', '798', '688');
INSERT INTO `country` VALUES ('222', 'UG', 'Uganda', 'UGA', '800', '256');
INSERT INTO `country` VALUES ('223', 'UA', 'Ukraine', 'UKR', '804', '380');
INSERT INTO `country` VALUES ('224', 'AE', 'United Arab Emirates', 'ARE', '784', '971');
INSERT INTO `country` VALUES ('225', 'GB', 'United Kingdom', 'GBR', '826', '44');
INSERT INTO `country` VALUES ('226', 'US', 'United States', 'USA', '840', '1');
INSERT INTO `country` VALUES ('227', 'UM', 'United States Minor Outlying Islands', null, null, '1');
INSERT INTO `country` VALUES ('228', 'UY', 'Uruguay', 'URY', '858', '598');
INSERT INTO `country` VALUES ('229', 'UZ', 'Uzbekistan', 'UZB', '860', '998');
INSERT INTO `country` VALUES ('230', 'VU', 'Vanuatu', 'VUT', '548', '678');
INSERT INTO `country` VALUES ('231', 'VE', 'Venezuela', 'VEN', '862', '58');
INSERT INTO `country` VALUES ('232', 'VN', 'Viet Nam', 'VNM', '704', '84');
INSERT INTO `country` VALUES ('233', 'VG', 'Virgin Islands, British', 'VGB', '92', '1284');
INSERT INTO `country` VALUES ('234', 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340');
INSERT INTO `country` VALUES ('235', 'WF', 'Wallis and Futuna', 'WLF', '876', '681');
INSERT INTO `country` VALUES ('236', 'EH', 'Western Sahara', 'ESH', '732', '212');
INSERT INTO `country` VALUES ('237', 'YE', 'Yemen', 'YEM', '887', '967');
INSERT INTO `country` VALUES ('238', 'ZM', 'Zambia', 'ZMB', '894', '260');
INSERT INTO `country` VALUES ('239', 'ZW', 'Zimbabwe', 'ZWE', '716', '263');

-- ----------------------------
-- Table structure for `department_info`
-- ----------------------------
DROP TABLE IF EXISTS `department_info`;
CREATE TABLE `department_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(100) DEFAULT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `section_name` varchar(100) DEFAULT NULL,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_info
-- ----------------------------
INSERT INTO `department_info` VALUES ('1', 'ZZ Gate-2', 'Marketing', 'Marketing', 'Rashed Musharrof', '01714086117', 'Rashed@znzfab.com', 'iftekhar', 'iftekhar', '2021-12-24 12:14:58');
INSERT INTO `department_info` VALUES ('2', 'Home-1', 'Lab &amp; QC', 'Lab &amp; QC', 'Md. Ahsan Habib', '01709994861', 'ahsan.habib@znzfab.com', 'iftekhar', 'iftekhar', '2021-12-24 12:13:12');
INSERT INTO `department_info` VALUES ('5', null, 'ICT', 'ICT', 'Shahriar Asif', '01701212554', 'asif@nomangroup.com', 'iftekhar', 'iftekhar', '2022-06-22 11:06:39');

-- ----------------------------
-- Table structure for `designation_info`
-- ----------------------------
DROP TABLE IF EXISTS `designation_info`;
CREATE TABLE `designation_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `short_form` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of designation_info
-- ----------------------------
INSERT INTO `designation_info` VALUES ('1', 'Officer', 'Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('3', 'Junior Officer', 'Jr. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('4', 'Senior Officer', 'Sr. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('22', 'Programmer', 'Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('23', 'Junior Programmer', 'Jr. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('5', 'Executive', 'Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('7', 'Junior Executive', 'Jr. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('8', 'Senior Executive', 'Sr. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('9', 'General Manager', 'GM', null, null, null);
INSERT INTO `designation_info` VALUES ('24', 'Assistant Programmer', 'Asst. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('25', 'Senior Programmer', 'Sr. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('10', 'Assistant General Manager', 'AGM', null, null, null);
INSERT INTO `designation_info` VALUES ('11', 'Deputy General Manager', 'DGM', null, null, null);
INSERT INTO `designation_info` VALUES ('12', 'Manager', 'Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('19', 'Junior Application Developer', 'Jr. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('13', 'Assistant Manager', 'Asst. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('14', 'Deputy Manager', 'Dept. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('15', 'Senior Manager', 'Sr. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('2', 'Assistant Officer', 'Asst. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('20', 'Assistant Application Developer', 'Asst. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('16', 'Head of Department', 'Head of Dept.', null, null, null);
INSERT INTO `designation_info` VALUES ('17', 'Application Implementer', 'App. Implementer', '', '', '0000-00-00 00:00:00');
INSERT INTO `designation_info` VALUES ('18', 'Application Developer', 'App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('21', 'Senior Application Developer', 'Sr. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('6', 'Assistant Executive', 'Asst. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('27', 'Junior Engineer', 'Jr. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('26', 'Engineer', 'Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('28', 'Assistant Engineer', 'Asst. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('29', 'Senior Engineer', 'Sr. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('30', 'System & Network Engineer', 'System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('31', 'Junior System & Network Engineer', 'Jr. System Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('32', 'Assistant System & Network Engineer', 'Asst. System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('33', 'Senior System & Network Engineer', 'Sr. System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('34', 'Functional Co-ordinator', 'Functional Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('35', 'Senior Functional Co-ordinator', 'Sr. Functional Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('36', 'Data Co-ordinator', 'Data Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('37', 'Senior Data Co-ordinator', 'Sr. Data Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('38', 'NOC Engineer', 'NOC Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('39', 'Chief Information Officer', 'CIO', null, null, null);
INSERT INTO `designation_info` VALUES ('40', 'Chief Technical Officer', 'CTO', null, null, null);
INSERT INTO `designation_info` VALUES ('41', 'Database Administrator', 'DBA', null, null, null);
INSERT INTO `designation_info` VALUES ('42', 'System Administrator', 'System Admin', null, null, null);
INSERT INTO `designation_info` VALUES ('43', 'System Analyst', 'System Analyst', null, null, null);
INSERT INTO `designation_info` VALUES ('44', 'Team Leader', 'Team Leader', null, null, null);
INSERT INTO `designation_info` VALUES ('45', 'Project Manager', 'PM', null, null, null);
INSERT INTO `designation_info` VALUES ('46', 'Junior NOC Engineer', 'Jr. NOC Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('47', 'Electrical Engineer', 'ELec. Engr.', null, null, null);
INSERT INTO `designation_info` VALUES ('48', 'Assistant Manufacturing Engineer', 'Asst. Manufacturing Engr.', null, null, null);
INSERT INTO `designation_info` VALUES ('50', 'Senior Deputy General Manager', 'Sr. DGM', 'iftekhar', 'iftekhar', '2022-03-31 16:18:04');

-- ----------------------------
-- Table structure for `set_active_user`
-- ----------------------------
DROP TABLE IF EXISTS `set_active_user`;
CREATE TABLE `set_active_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `erp_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `recording_person_name` varchar(100) NOT NULL,
  `recording_person_id` varchar(100) NOT NULL,
  `recording_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of set_active_user
-- ----------------------------
INSERT INTO `set_active_user` VALUES ('1', '2022-06-18', '18', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('2', '2022-06-18', '18', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('3', '2022-06-18', '18', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('4', '2022-06-18', '18', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('5', '2022-06-18', '18', '6', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('6', '2022-06-18', '18', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('7', '2022-06-18', '18', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('8', '2022-06-18', '18', '6', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('9', '2022-06-18', '18', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('10', '2022-06-18', '18', '6', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('11', '2022-06-18', '18', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('12', '2022-06-18', '18', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('13', '2022-06-18', '18', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('14', '2022-06-18', '18', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('15', '2022-06-18', '18', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('16', '2022-06-18', '18', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('17', '2022-06-18', '18', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('18', '2022-06-18', '18', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('19', '2022-06-18', '18', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('20', '2022-06-18', '18', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('21', '2022-06-18', '18', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('22', '2022-06-18', '18', '6', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('23', '2022-06-18', '18', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('24', '2022-06-18', '18', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('25', '2022-06-18', '18', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:15:54');
INSERT INTO `set_active_user` VALUES ('26', '2022-06-19', '19', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('27', '2022-06-19', '19', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('28', '2022-06-19', '19', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('29', '2022-06-19', '19', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('30', '2022-06-19', '19', '6', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('31', '2022-06-19', '19', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('32', '2022-06-19', '19', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('33', '2022-06-19', '19', '6', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('34', '2022-06-19', '19', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('35', '2022-06-19', '19', '6', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('36', '2022-06-19', '19', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('37', '2022-06-19', '19', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('38', '2022-06-19', '19', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('39', '2022-06-19', '19', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('40', '2022-06-19', '19', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('41', '2022-06-19', '19', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('42', '2022-06-19', '19', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('43', '2022-06-19', '19', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('44', '2022-06-19', '19', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('45', '2022-06-19', '19', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('46', '2022-06-19', '19', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('47', '2022-06-19', '19', '6', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('48', '2022-06-19', '19', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('49', '2022-06-19', '19', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('50', '2022-06-19', '19', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:00');
INSERT INTO `set_active_user` VALUES ('51', '2022-06-20', '20', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('52', '2022-06-20', '20', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('53', '2022-06-20', '20', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('54', '2022-06-20', '20', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('55', '2022-06-20', '20', '6', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('56', '2022-06-20', '20', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('57', '2022-06-20', '20', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('58', '2022-06-20', '20', '6', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('59', '2022-06-20', '20', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('60', '2022-06-20', '20', '6', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('61', '2022-06-20', '20', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('62', '2022-06-20', '20', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('63', '2022-06-20', '20', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('64', '2022-06-20', '20', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('65', '2022-06-20', '20', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('66', '2022-06-20', '20', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('67', '2022-06-20', '20', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('68', '2022-06-20', '20', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('69', '2022-06-20', '20', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('70', '2022-06-20', '20', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('71', '2022-06-20', '20', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('72', '2022-06-20', '20', '6', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('73', '2022-06-20', '20', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('74', '2022-06-20', '20', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('75', '2022-06-20', '20', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:06');
INSERT INTO `set_active_user` VALUES ('76', '2022-06-21', '21', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('77', '2022-06-21', '21', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('78', '2022-06-21', '21', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('79', '2022-06-21', '21', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('80', '2022-06-21', '21', '6', '2022', '9453', 'qc', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('81', '2022-06-21', '21', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('82', '2022-06-21', '21', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('83', '2022-06-21', '21', '6', '2022', '9457', 'dto', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('84', '2022-06-21', '21', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('85', '2022-06-21', '21', '6', '2022', '9459', 'adsadasd', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('86', '2022-06-21', '21', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('87', '2022-06-21', '21', '6', '2022', '9461', 'Muzammel', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('88', '2022-06-21', '21', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('89', '2022-06-21', '21', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('90', '2022-06-21', '21', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('91', '2022-06-21', '21', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('92', '2022-06-21', '21', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('93', '2022-06-21', '21', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('94', '2022-06-21', '21', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('95', '2022-06-21', '21', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('96', '2022-06-21', '21', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('97', '2022-06-21', '21', '6', '2022', '9474', 'Shamim', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('98', '2022-06-21', '21', '6', '2022', '9475', 'Shahin', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('99', '2022-06-21', '21', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('100', '2022-06-21', '21', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:18');
INSERT INTO `set_active_user` VALUES ('101', '2022-06-22', '22', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('102', '2022-06-22', '22', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('103', '2022-06-22', '22', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('104', '2022-06-22', '22', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('105', '2022-06-22', '22', '6', '2022', '9453', 'qc', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('106', '2022-06-22', '22', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('107', '2022-06-22', '22', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('108', '2022-06-22', '22', '6', '2022', '9457', 'dto', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('109', '2022-06-22', '22', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('110', '2022-06-22', '22', '6', '2022', '9459', 'adsadasd', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('111', '2022-06-22', '22', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('112', '2022-06-22', '22', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('113', '2022-06-22', '22', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('114', '2022-06-22', '22', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('115', '2022-06-22', '22', '6', '2022', '9467', 'Mamun', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('116', '2022-06-22', '22', '6', '2022', '9468', 'Mamun', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('117', '2022-06-22', '22', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('118', '2022-06-22', '22', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('119', '2022-06-22', '22', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('120', '2022-06-22', '22', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('121', '2022-06-22', '22', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('122', '2022-06-22', '22', '6', '2022', '9474', 'Shamim', '0', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('123', '2022-06-22', '22', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('124', '2022-06-22', '22', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('125', '2022-06-22', '22', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:16:32');
INSERT INTO `set_active_user` VALUES ('126', '2022-06-23', '23', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('127', '2022-06-23', '23', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('128', '2022-06-23', '23', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('129', '2022-06-23', '23', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('130', '2022-06-23', '23', '6', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('131', '2022-06-23', '23', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('132', '2022-06-23', '23', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('133', '2022-06-23', '23', '6', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('134', '2022-06-23', '23', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('135', '2022-06-23', '23', '6', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('136', '2022-06-23', '23', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('137', '2022-06-23', '23', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('138', '2022-06-23', '23', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('139', '2022-06-23', '23', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('140', '2022-06-23', '23', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('141', '2022-06-23', '23', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('142', '2022-06-23', '23', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('143', '2022-06-23', '23', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('144', '2022-06-23', '23', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('145', '2022-06-23', '23', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('146', '2022-06-23', '23', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('147', '2022-06-23', '23', '6', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('148', '2022-06-23', '23', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('149', '2022-06-23', '23', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('150', '2022-06-23', '23', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 17:44:31');
INSERT INTO `set_active_user` VALUES ('151', '2022-06-24', '24', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('152', '2022-06-24', '24', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('153', '2022-06-24', '24', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('154', '2022-06-24', '24', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('155', '2022-06-24', '24', '6', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('156', '2022-06-24', '24', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('157', '2022-06-24', '24', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('158', '2022-06-24', '24', '6', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('159', '2022-06-24', '24', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('160', '2022-06-24', '24', '6', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('161', '2022-06-24', '24', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('162', '2022-06-24', '24', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('163', '2022-06-24', '24', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('164', '2022-06-24', '24', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('165', '2022-06-24', '24', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('166', '2022-06-24', '24', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('167', '2022-06-24', '24', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('168', '2022-06-24', '24', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('169', '2022-06-24', '24', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('170', '2022-06-24', '24', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('171', '2022-06-24', '24', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('172', '2022-06-24', '24', '6', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('173', '2022-06-24', '24', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('174', '2022-06-24', '24', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('175', '2022-06-24', '24', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:19:20');
INSERT INTO `set_active_user` VALUES ('176', '2022-06-25', '25', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('177', '2022-06-25', '25', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('178', '2022-06-25', '25', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('179', '2022-06-25', '25', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('180', '2022-06-25', '25', '6', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('181', '2022-06-25', '25', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('182', '2022-06-25', '25', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('183', '2022-06-25', '25', '6', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('184', '2022-06-25', '25', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('185', '2022-06-25', '25', '6', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('186', '2022-06-25', '25', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('187', '2022-06-25', '25', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('188', '2022-06-25', '25', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('189', '2022-06-25', '25', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('190', '2022-06-25', '25', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('191', '2022-06-25', '25', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('192', '2022-06-25', '25', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('193', '2022-06-25', '25', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('194', '2022-06-25', '25', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('195', '2022-06-25', '25', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('196', '2022-06-25', '25', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('197', '2022-06-25', '25', '6', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('198', '2022-06-25', '25', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('199', '2022-06-25', '25', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('200', '2022-06-25', '25', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-18 22:39:34');
INSERT INTO `set_active_user` VALUES ('201', '2022-06-01', '1', '6', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('202', '2022-06-01', '1', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('203', '2022-06-01', '1', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('204', '2022-06-01', '1', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('205', '2022-06-01', '1', '6', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('206', '2022-06-01', '1', '6', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('207', '2022-06-01', '1', '6', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('208', '2022-06-01', '1', '6', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('209', '2022-06-01', '1', '6', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('210', '2022-06-01', '1', '6', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('211', '2022-06-01', '1', '6', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('212', '2022-06-01', '1', '6', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('213', '2022-06-01', '1', '6', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('214', '2022-06-01', '1', '6', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('215', '2022-06-01', '1', '6', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('216', '2022-06-01', '1', '6', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('217', '2022-06-01', '1', '6', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('218', '2022-06-01', '1', '6', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('219', '2022-06-01', '1', '6', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('220', '2022-06-01', '1', '6', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('221', '2022-06-01', '1', '6', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('222', '2022-06-01', '1', '6', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('223', '2022-06-01', '1', '6', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('224', '2022-06-01', '1', '6', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('225', '2022-06-01', '1', '6', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-19 09:53:00');
INSERT INTO `set_active_user` VALUES ('226', '2022-05-01', '1', '5', '2022', '9449', 'iftekhar', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('227', '2022-05-01', '1', '5', '2022', '9450', 'Md. Jiash Hasnat', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('228', '2022-05-01', '1', '5', '2022', '9451', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('229', '2022-05-01', '1', '5', '2022', '9452', 'Md. Saiful Islam', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('230', '2022-05-01', '1', '5', '2022', '9453', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('231', '2022-05-01', '1', '5', '2022', '9454', 'abc', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('232', '2022-05-01', '1', '5', '2022', '9456', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('233', '2022-05-01', '1', '5', '2022', '9457', 'dto', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('234', '2022-05-01', '1', '5', '2022', '9458', 'Data Entry OP', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('235', '2022-05-01', '1', '5', '2022', '9459', 'adsadasd', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('236', '2022-05-01', '1', '5', '2022', '9460', 'qc', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('237', '2022-05-01', '1', '5', '2022', '9461', 'Muzammel', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('238', '2022-05-01', '1', '5', '2022', '9462', 'Anower', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('239', '2022-05-01', '1', '5', '2022', '9463', 'Rifat', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('240', '2022-05-01', '1', '5', '2022', '9467', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('241', '2022-05-01', '1', '5', '2022', '9468', 'Mamun', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('242', '2022-05-01', '1', '5', '2022', '9469', 'Zahir Uddin', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('243', '2022-05-01', '1', '5', '2022', '9470', 'Masum Mia', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('244', '2022-05-01', '1', '5', '2022', '9471', 'Rony', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('245', '2022-05-01', '1', '5', '2022', '9472', 'Hridoy', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('246', '2022-05-01', '1', '5', '2022', '9473', 'Md. Khorshed', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('247', '2022-05-01', '1', '5', '2022', '9474', 'Shamim', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('248', '2022-05-01', '1', '5', '2022', '9475', 'Shahin', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('249', '2022-05-01', '1', '5', '2022', '9476', 'kausar', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('250', '2022-05-01', '1', '5', '2022', '9477', 'Testing', '1', 'iftekhar', 'iftekhar', '2022-06-19 15:35:23');
INSERT INTO `set_active_user` VALUES ('251', '2022-07-13', '13', '7', '2022', '9449', 'iftekhar', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('252', '2022-07-13', '13', '7', '2022', '9450', 'Md. Jiash Hasnat', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('253', '2022-07-13', '13', '7', '2022', '9451', 'Md. Saiful Islam', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('254', '2022-07-13', '13', '7', '2022', '9452', 'Md. Saiful Islam', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('255', '2022-07-13', '13', '7', '2022', '9453', 'qc', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('256', '2022-07-13', '13', '7', '2022', '9454', 'abc', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('257', '2022-07-13', '13', '7', '2022', '9456', 'dto', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('258', '2022-07-13', '13', '7', '2022', '9457', 'dto', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('259', '2022-07-13', '13', '7', '2022', '9458', 'Data Entry OP', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('260', '2022-07-13', '13', '7', '2022', '9459', 'adsadasd', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('261', '2022-07-13', '13', '7', '2022', '9460', 'qc', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('262', '2022-07-13', '13', '7', '2022', '9461', 'Muzammel', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('263', '2022-07-13', '13', '7', '2022', '9462', 'Anower', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('264', '2022-07-13', '13', '7', '2022', '9463', 'Rifat', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('265', '2022-07-13', '13', '7', '2022', '9467', 'Mamun', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('266', '2022-07-13', '13', '7', '2022', '9468', 'Mamun', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('267', '2022-07-13', '13', '7', '2022', '9469', 'Zahir Uddin', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('268', '2022-07-13', '13', '7', '2022', '9470', 'Masum Mia', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('269', '2022-07-13', '13', '7', '2022', '9471', 'Rony', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('270', '2022-07-13', '13', '7', '2022', '9472', 'Hridoy', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('271', '2022-07-13', '13', '7', '2022', '9473', 'Md. Khorshed', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('272', '2022-07-13', '13', '7', '2022', '9474', 'Shamim', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('273', '2022-07-13', '13', '7', '2022', '9475', 'Shahin', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('274', '2022-07-13', '13', '7', '2022', '9476', 'kausar', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('275', '2022-07-13', '13', '7', '2022', '9477', 'Testing', '0', 'iftekhar', 'iftekhar', '2022-06-20 14:28:20');
INSERT INTO `set_active_user` VALUES ('276', '2023-01-01', '1', '1', '2023', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('277', '2023-01-01', '1', '1', '2023', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('278', '2023-01-01', '1', '1', '2023', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('279', '2023-01-01', '1', '1', '2023', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('280', '2023-01-01', '1', '1', '2023', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('281', '2023-01-01', '1', '1', '2023', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('282', '2023-01-01', '1', '1', '2023', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('283', '2023-01-01', '1', '1', '2023', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('284', '2023-01-01', '1', '1', '2023', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('285', '2023-01-01', '1', '1', '2023', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('286', '2023-01-01', '1', '1', '2023', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('287', '2023-01-01', '1', '1', '2023', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('288', '2023-01-01', '1', '1', '2023', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('289', '2023-01-01', '1', '1', '2023', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('290', '2023-01-01', '1', '1', '2023', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('291', '2023-01-01', '1', '1', '2023', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('292', '2023-01-01', '1', '1', '2023', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('293', '2023-01-01', '1', '1', '2023', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('294', '2023-01-01', '1', '1', '2023', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('295', '2023-01-01', '1', '1', '2023', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('296', '2023-01-01', '1', '1', '2023', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('297', '2023-01-01', '1', '1', '2023', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('298', '2023-01-01', '1', '1', '2023', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('299', '2023-01-01', '1', '1', '2023', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('300', '2023-01-01', '1', '1', '2023', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('301', '2023-01-01', '1', '1', '2023', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:10');
INSERT INTO `set_active_user` VALUES ('302', '2023-01-02', '2', '1', '2023', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('303', '2023-01-02', '2', '1', '2023', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('304', '2023-01-02', '2', '1', '2023', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('305', '2023-01-02', '2', '1', '2023', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('306', '2023-01-02', '2', '1', '2023', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('307', '2023-01-02', '2', '1', '2023', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('308', '2023-01-02', '2', '1', '2023', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('309', '2023-01-02', '2', '1', '2023', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('310', '2023-01-02', '2', '1', '2023', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('311', '2023-01-02', '2', '1', '2023', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('312', '2023-01-02', '2', '1', '2023', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('313', '2023-01-02', '2', '1', '2023', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('314', '2023-01-02', '2', '1', '2023', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('315', '2023-01-02', '2', '1', '2023', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('316', '2023-01-02', '2', '1', '2023', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('317', '2023-01-02', '2', '1', '2023', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('318', '2023-01-02', '2', '1', '2023', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('319', '2023-01-02', '2', '1', '2023', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('320', '2023-01-02', '2', '1', '2023', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('321', '2023-01-02', '2', '1', '2023', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('322', '2023-01-02', '2', '1', '2023', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('323', '2023-01-02', '2', '1', '2023', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('324', '2023-01-02', '2', '1', '2023', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('325', '2023-01-02', '2', '1', '2023', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('326', '2023-01-02', '2', '1', '2023', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('327', '2023-01-02', '2', '1', '2023', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:16');
INSERT INTO `set_active_user` VALUES ('328', '2023-01-03', '3', '1', '2023', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('329', '2023-01-03', '3', '1', '2023', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('330', '2023-01-03', '3', '1', '2023', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('331', '2023-01-03', '3', '1', '2023', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('332', '2023-01-03', '3', '1', '2023', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('333', '2023-01-03', '3', '1', '2023', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('334', '2023-01-03', '3', '1', '2023', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('335', '2023-01-03', '3', '1', '2023', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('336', '2023-01-03', '3', '1', '2023', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('337', '2023-01-03', '3', '1', '2023', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('338', '2023-01-03', '3', '1', '2023', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('339', '2023-01-03', '3', '1', '2023', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('340', '2023-01-03', '3', '1', '2023', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('341', '2023-01-03', '3', '1', '2023', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('342', '2023-01-03', '3', '1', '2023', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('343', '2023-01-03', '3', '1', '2023', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('344', '2023-01-03', '3', '1', '2023', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('345', '2023-01-03', '3', '1', '2023', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('346', '2023-01-03', '3', '1', '2023', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('347', '2023-01-03', '3', '1', '2023', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('348', '2023-01-03', '3', '1', '2023', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('349', '2023-01-03', '3', '1', '2023', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('350', '2023-01-03', '3', '1', '2023', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('351', '2023-01-03', '3', '1', '2023', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('352', '2023-01-03', '3', '1', '2023', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('353', '2023-01-03', '3', '1', '2023', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:25');
INSERT INTO `set_active_user` VALUES ('354', '2023-01-04', '4', '1', '2023', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('355', '2023-01-04', '4', '1', '2023', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('356', '2023-01-04', '4', '1', '2023', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('357', '2023-01-04', '4', '1', '2023', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('358', '2023-01-04', '4', '1', '2023', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('359', '2023-01-04', '4', '1', '2023', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('360', '2023-01-04', '4', '1', '2023', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('361', '2023-01-04', '4', '1', '2023', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('362', '2023-01-04', '4', '1', '2023', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('363', '2023-01-04', '4', '1', '2023', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('364', '2023-01-04', '4', '1', '2023', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('365', '2023-01-04', '4', '1', '2023', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('366', '2023-01-04', '4', '1', '2023', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('367', '2023-01-04', '4', '1', '2023', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('368', '2023-01-04', '4', '1', '2023', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('369', '2023-01-04', '4', '1', '2023', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('370', '2023-01-04', '4', '1', '2023', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('371', '2023-01-04', '4', '1', '2023', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('372', '2023-01-04', '4', '1', '2023', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('373', '2023-01-04', '4', '1', '2023', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('374', '2023-01-04', '4', '1', '2023', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('375', '2023-01-04', '4', '1', '2023', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('376', '2023-01-04', '4', '1', '2023', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('377', '2023-01-04', '4', '1', '2023', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('378', '2023-01-04', '4', '1', '2023', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('379', '2023-01-04', '4', '1', '2023', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:31');
INSERT INTO `set_active_user` VALUES ('380', '2023-01-05', '5', '1', '2023', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('381', '2023-01-05', '5', '1', '2023', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('382', '2023-01-05', '5', '1', '2023', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('383', '2023-01-05', '5', '1', '2023', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('384', '2023-01-05', '5', '1', '2023', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('385', '2023-01-05', '5', '1', '2023', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('386', '2023-01-05', '5', '1', '2023', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('387', '2023-01-05', '5', '1', '2023', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('388', '2023-01-05', '5', '1', '2023', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('389', '2023-01-05', '5', '1', '2023', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('390', '2023-01-05', '5', '1', '2023', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('391', '2023-01-05', '5', '1', '2023', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('392', '2023-01-05', '5', '1', '2023', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('393', '2023-01-05', '5', '1', '2023', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('394', '2023-01-05', '5', '1', '2023', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('395', '2023-01-05', '5', '1', '2023', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('396', '2023-01-05', '5', '1', '2023', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('397', '2023-01-05', '5', '1', '2023', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('398', '2023-01-05', '5', '1', '2023', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('399', '2023-01-05', '5', '1', '2023', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('400', '2023-01-05', '5', '1', '2023', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('401', '2023-01-05', '5', '1', '2023', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('402', '2023-01-05', '5', '1', '2023', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('403', '2023-01-05', '5', '1', '2023', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('404', '2023-01-05', '5', '1', '2023', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('405', '2023-01-05', '5', '1', '2023', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:37');
INSERT INTO `set_active_user` VALUES ('406', '2023-02-06', '6', '2', '2023', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('407', '2023-02-06', '6', '2', '2023', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('408', '2023-02-06', '6', '2', '2023', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('409', '2023-02-06', '6', '2', '2023', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('410', '2023-02-06', '6', '2', '2023', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('411', '2023-02-06', '6', '2', '2023', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('412', '2023-02-06', '6', '2', '2023', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('413', '2023-02-06', '6', '2', '2023', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('414', '2023-02-06', '6', '2', '2023', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('415', '2023-02-06', '6', '2', '2023', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('416', '2023-02-06', '6', '2', '2023', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('417', '2023-02-06', '6', '2', '2023', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('418', '2023-02-06', '6', '2', '2023', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('419', '2023-02-06', '6', '2', '2023', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('420', '2023-02-06', '6', '2', '2023', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('421', '2023-02-06', '6', '2', '2023', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('422', '2023-02-06', '6', '2', '2023', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('423', '2023-02-06', '6', '2', '2023', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('424', '2023-02-06', '6', '2', '2023', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('425', '2023-02-06', '6', '2', '2023', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('426', '2023-02-06', '6', '2', '2023', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('427', '2023-02-06', '6', '2', '2023', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('428', '2023-02-06', '6', '2', '2023', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('429', '2023-02-06', '6', '2', '2023', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('430', '2023-02-06', '6', '2', '2023', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('431', '2023-02-06', '6', '2', '2023', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:44');
INSERT INTO `set_active_user` VALUES ('432', '2023-03-07', '7', '3', '2023', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('433', '2023-03-07', '7', '3', '2023', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('434', '2023-03-07', '7', '3', '2023', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('435', '2023-03-07', '7', '3', '2023', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('436', '2023-03-07', '7', '3', '2023', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('437', '2023-03-07', '7', '3', '2023', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('438', '2023-03-07', '7', '3', '2023', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('439', '2023-03-07', '7', '3', '2023', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('440', '2023-03-07', '7', '3', '2023', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('441', '2023-03-07', '7', '3', '2023', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('442', '2023-03-07', '7', '3', '2023', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('443', '2023-03-07', '7', '3', '2023', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('444', '2023-03-07', '7', '3', '2023', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('445', '2023-03-07', '7', '3', '2023', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('446', '2023-03-07', '7', '3', '2023', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('447', '2023-03-07', '7', '3', '2023', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('448', '2023-03-07', '7', '3', '2023', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('449', '2023-03-07', '7', '3', '2023', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('450', '2023-03-07', '7', '3', '2023', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('451', '2023-03-07', '7', '3', '2023', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('452', '2023-03-07', '7', '3', '2023', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('453', '2023-03-07', '7', '3', '2023', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('454', '2023-03-07', '7', '3', '2023', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('455', '2023-03-07', '7', '3', '2023', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('456', '2023-03-07', '7', '3', '2023', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('457', '2023-03-07', '7', '3', '2023', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 16:49:51');
INSERT INTO `set_active_user` VALUES ('458', '2022-06-26', '26', '6', '2022', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('459', '2022-06-26', '26', '6', '2022', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('460', '2022-06-26', '26', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('461', '2022-06-26', '26', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('462', '2022-06-26', '26', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('463', '2022-06-26', '26', '6', '2022', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('464', '2022-06-26', '26', '6', '2022', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('465', '2022-06-26', '26', '6', '2022', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('466', '2022-06-26', '26', '6', '2022', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('467', '2022-06-26', '26', '6', '2022', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('468', '2022-06-26', '26', '6', '2022', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('469', '2022-06-26', '26', '6', '2022', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('470', '2022-06-26', '26', '6', '2022', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('471', '2022-06-26', '26', '6', '2022', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('472', '2022-06-26', '26', '6', '2022', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('473', '2022-06-26', '26', '6', '2022', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('474', '2022-06-26', '26', '6', '2022', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('475', '2022-06-26', '26', '6', '2022', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('476', '2022-06-26', '26', '6', '2022', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('477', '2022-06-26', '26', '6', '2022', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('478', '2022-06-26', '26', '6', '2022', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('479', '2022-06-26', '26', '6', '2022', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('480', '2022-06-26', '26', '6', '2022', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('481', '2022-06-26', '26', '6', '2022', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('482', '2022-06-26', '26', '6', '2022', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('483', '2022-06-26', '26', '6', '2022', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-21 17:17:58');
INSERT INTO `set_active_user` VALUES ('484', '2022-06-29', '29', '6', '2022', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('485', '2022-06-29', '29', '6', '2022', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('486', '2022-06-29', '29', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('487', '2022-06-29', '29', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('488', '2022-06-29', '29', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('489', '2022-06-29', '29', '6', '2022', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('490', '2022-06-29', '29', '6', '2022', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('491', '2022-06-29', '29', '6', '2022', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('492', '2022-06-29', '29', '6', '2022', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('493', '2022-06-29', '29', '6', '2022', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('494', '2022-06-29', '29', '6', '2022', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('495', '2022-06-29', '29', '6', '2022', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('496', '2022-06-29', '29', '6', '2022', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('497', '2022-06-29', '29', '6', '2022', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('498', '2022-06-29', '29', '6', '2022', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('499', '2022-06-29', '29', '6', '2022', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('500', '2022-06-29', '29', '6', '2022', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('501', '2022-06-29', '29', '6', '2022', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('502', '2022-06-29', '29', '6', '2022', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('503', '2022-06-29', '29', '6', '2022', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('504', '2022-06-29', '29', '6', '2022', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('505', '2022-06-29', '29', '6', '2022', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('506', '2022-06-29', '29', '6', '2022', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('507', '2022-06-29', '29', '6', '2022', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('508', '2022-06-29', '29', '6', '2022', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('509', '2022-06-29', '29', '6', '2022', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-22 09:23:24');
INSERT INTO `set_active_user` VALUES ('510', '2022-06-30', '30', '6', '2022', '9448', 'Hasan Imam', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('511', '2022-06-30', '30', '6', '2022', '9449', 'iftekhar', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('512', '2022-06-30', '30', '6', '2022', '9450', 'Md. Jiash Hasnat', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('513', '2022-06-30', '30', '6', '2022', '9451', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('514', '2022-06-30', '30', '6', '2022', '9452', 'Md. Saiful Islam', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('515', '2022-06-30', '30', '6', '2022', '9453', 'qc', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('516', '2022-06-30', '30', '6', '2022', '9454', 'abc', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('517', '2022-06-30', '30', '6', '2022', '9456', 'dto', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('518', '2022-06-30', '30', '6', '2022', '9457', 'dto', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('519', '2022-06-30', '30', '6', '2022', '9458', 'Data Entry OP', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('520', '2022-06-30', '30', '6', '2022', '9459', 'adsadasd', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('521', '2022-06-30', '30', '6', '2022', '9460', 'qc', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('522', '2022-06-30', '30', '6', '2022', '9461', 'Muzammel', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('523', '2022-06-30', '30', '6', '2022', '9462', 'Anower', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('524', '2022-06-30', '30', '6', '2022', '9463', 'Rifat', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('525', '2022-06-30', '30', '6', '2022', '9467', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('526', '2022-06-30', '30', '6', '2022', '9468', 'Mamun', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('527', '2022-06-30', '30', '6', '2022', '9469', 'Zahir Uddin', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('528', '2022-06-30', '30', '6', '2022', '9470', 'Masum Mia', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('529', '2022-06-30', '30', '6', '2022', '9471', 'Rony', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('530', '2022-06-30', '30', '6', '2022', '9472', 'Hridoy', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('531', '2022-06-30', '30', '6', '2022', '9473', 'Md. Khorshed', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('532', '2022-06-30', '30', '6', '2022', '9474', 'Shamim', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('533', '2022-06-30', '30', '6', '2022', '9475', 'Shahin', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('534', '2022-06-30', '30', '6', '2022', '9476', 'kausar', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');
INSERT INTO `set_active_user` VALUES ('535', '2022-06-30', '30', '6', '2022', '9477', 'Testing', '1', 'Hasan Imam', '9448', '2022-06-22 09:24:12');

-- ----------------------------
-- Table structure for `set_monthly_deposit`
-- ----------------------------
DROP TABLE IF EXISTS `set_monthly_deposit`;
CREATE TABLE `set_monthly_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `erp_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `deposit` float NOT NULL,
  `final_pay` float NOT NULL,
  `final_pay_recording_person` varchar(100) NOT NULL,
  `final_pay_recording_time` varchar(50) NOT NULL,
  `recording_person_name` varchar(100) NOT NULL,
  `recording_person_id` varchar(100) NOT NULL,
  `recording_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of set_monthly_deposit
-- ----------------------------
INSERT INTO `set_monthly_deposit` VALUES ('1', '2022-06-18', '18', '6', '2022', '9449', 'iftekhar', '120', '380', 'Hasan Imam', '2022-06-21 17:20:57', 'iftekhar', 'iftekhar', '2022-06-20 10:06:57');
INSERT INTO `set_monthly_deposit` VALUES ('2', '2022-06-18', '18', '6', '2022', '9450', 'Md. Jiash Hasnat', '100', '0', 'iftekhar', '2022-06-20 10:04:57', 'iftekhar', 'iftekhar', '2022-06-20 10:06:57');
INSERT INTO `set_monthly_deposit` VALUES ('3', '2022-06-18', '18', '6', '2022', '9451', 'Md. Saiful Islam', '100', '0', 'iftekhar', '2022-06-20 10:05:04', 'iftekhar', 'iftekhar', '2022-06-20 10:06:57');
INSERT INTO `set_monthly_deposit` VALUES ('4', '2022-06-18', '18', '6', '2022', '9452', 'Md. Saiful Islam', '100', '0', 'iftekhar', '2022-06-20 10:05:08', 'iftekhar', 'iftekhar', '2022-06-20 10:06:57');
INSERT INTO `set_monthly_deposit` VALUES ('5', '2022-06-18', '18', '6', '2022', '9453', 'qc', '1221', '-871', 'iftekhar', '2022-06-20 10:10:16', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('6', '2022-06-18', '18', '6', '2022', '9454', 'abc', '1220', '0', 'iftekhar', '2022-06-20 10:05:15', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('7', '2022-06-18', '18', '6', '2022', '9456', 'dto', '1219', '0', 'iftekhar', '2022-06-20 10:05:21', 'iftekhar', 'iftekhar', '2022-06-20 09:35:08');
INSERT INTO `set_monthly_deposit` VALUES ('8', '2022-06-18', '18', '6', '2022', '9457', 'dto', '1218', '0', 'iftekhar', '2022-06-20 10:04:42', 'iftekhar', 'iftekhar', '2022-06-20 09:35:25');
INSERT INTO `set_monthly_deposit` VALUES ('9', '2022-06-18', '18', '6', '2022', '9458', 'Data Entry OP', '1217', '0', 'iftekhar', '2022-06-20 10:04:38', 'iftekhar', 'iftekhar', '2022-06-20 09:35:33');
INSERT INTO `set_monthly_deposit` VALUES ('10', '2022-06-18', '18', '6', '2022', '9459', 'adsadasd', '1216', '0', '', '2022-06-20 09:34:03', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('11', '2022-06-18', '18', '6', '2022', '9460', 'qc', '1215', '0', '', '2022-06-20 09:34:03', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('12', '2022-06-18', '18', '6', '2022', '9461', 'Muzammel', '1214', '0', '', '2022-06-20 09:34:03', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('13', '2022-06-18', '18', '6', '2022', '9462', 'Anower', '1213', '0', '', '2022-06-20 09:34:03', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('14', '2022-06-18', '18', '6', '2022', '9463', 'Rifat', '1212', '0', '', '2022-06-20 09:34:03', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('15', '2022-06-18', '18', '6', '2022', '9467', 'Mamun', '1211', '0', '', '2022-06-20 09:34:03', 'iftekhar', 'iftekhar', '2022-06-20 09:34:03');
INSERT INTO `set_monthly_deposit` VALUES ('16', '2022-06-18', '18', '6', '2022', '9468', 'Mamun', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 17:17:08');
INSERT INTO `set_monthly_deposit` VALUES ('17', '2022-06-18', '18', '6', '2022', '9469', 'Zahir Uddin', '1210', '0', '', '2022-06-20 09:34:37', 'iftekhar', 'iftekhar', '2022-06-20 09:34:37');
INSERT INTO `set_monthly_deposit` VALUES ('18', '2022-06-18', '18', '6', '2022', '9470', 'Masum Mia', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 17:17:08');
INSERT INTO `set_monthly_deposit` VALUES ('19', '2022-06-18', '18', '6', '2022', '9471', 'Rony', '1208', '0', '', '2022-06-20 09:34:37', 'iftekhar', 'iftekhar', '2022-06-20 09:34:37');
INSERT INTO `set_monthly_deposit` VALUES ('20', '2022-06-18', '18', '6', '2022', '9472', 'Hridoy', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 17:17:08');
INSERT INTO `set_monthly_deposit` VALUES ('21', '2022-06-18', '18', '6', '2022', '9473', 'Md. Khorshed', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 17:17:08');
INSERT INTO `set_monthly_deposit` VALUES ('22', '2022-06-18', '18', '6', '2022', '9474', 'Shamim', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 17:17:08');
INSERT INTO `set_monthly_deposit` VALUES ('23', '2022-06-18', '18', '6', '2022', '9475', 'Shahin', '1200', '400', 'iftekhar', '2022-06-20 09:32:43', 'iftekhar', 'iftekhar', '2022-06-20 09:32:43');
INSERT INTO `set_monthly_deposit` VALUES ('24', '2022-06-18', '18', '6', '2022', '9476', 'kausar', '1203', '500', 'iftekhar', '2022-06-20 09:32:37', 'iftekhar', 'iftekhar', '2022-06-20 09:32:37');
INSERT INTO `set_monthly_deposit` VALUES ('25', '2022-06-18', '18', '6', '2022', '9477', 'Testing', '1201', '509', 'iftekhar', '2022-06-20 09:47:10', 'iftekhar', 'iftekhar', '2022-06-20 09:47:47');
INSERT INTO `set_monthly_deposit` VALUES ('26', '2022-08-18', '18', '8', '2022', '9449', 'iftekhar', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('27', '2022-08-18', '18', '8', '2022', '9450', 'Md. Jiash Hasnat', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('28', '2022-08-18', '18', '8', '2022', '9451', 'Md. Saiful Islam', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('29', '2022-08-18', '18', '8', '2022', '9452', 'Md. Saiful Islam', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('30', '2022-08-18', '18', '8', '2022', '9453', 'qc', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('31', '2022-08-18', '18', '8', '2022', '9454', 'abc', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('32', '2022-08-18', '18', '8', '2022', '9456', 'dto', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('33', '2022-08-18', '18', '8', '2022', '9457', 'dto', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('34', '2022-08-18', '18', '8', '2022', '9458', 'Data Entry OP', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('35', '2022-08-18', '18', '8', '2022', '9459', 'adsadasd', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('36', '2022-08-18', '18', '8', '2022', '9460', 'qc', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('37', '2022-08-18', '18', '8', '2022', '9461', 'Muzammel', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('38', '2022-08-18', '18', '8', '2022', '9462', 'Anower', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('39', '2022-08-18', '18', '8', '2022', '9463', 'Rifat', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('40', '2022-08-18', '18', '8', '2022', '9467', 'Mamun', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('41', '2022-08-18', '18', '8', '2022', '9468', 'Mamun', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('42', '2022-08-18', '18', '8', '2022', '9469', 'Zahir Uddin', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('43', '2022-08-18', '18', '8', '2022', '9470', 'Masum Mia', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('44', '2022-08-18', '18', '8', '2022', '9471', 'Rony', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('45', '2022-08-18', '18', '8', '2022', '9472', 'Hridoy', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('46', '2022-08-18', '18', '8', '2022', '9473', 'Md. Khorshed', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('47', '2022-08-18', '18', '8', '2022', '9474', 'Shamim', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('48', '2022-08-18', '18', '8', '2022', '9475', 'Shahin', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('49', '2022-08-18', '18', '8', '2022', '9476', 'kausar', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('50', '2022-08-18', '18', '8', '2022', '9477', 'Testing', '1200', '0', '', '2022-06-19 13:06:26', 'iftekhar', 'iftekhar', '2022-06-18 22:39:16');
INSERT INTO `set_monthly_deposit` VALUES ('140', '2022-05-05', '5', '5', '2022', '9449', 'iftekhar', '1200', '0', '', '2022-06-19 16:59:21', 'iftekhar', 'iftekhar', '2022-06-19 16:59:21');
INSERT INTO `set_monthly_deposit` VALUES ('141', '2022-05-05', '5', '5', '2022', '9450', 'Md. Jiash Hasnat', '1200', '0', '', '2022-06-19 16:59:21', 'iftekhar', 'iftekhar', '2022-06-19 16:59:21');
INSERT INTO `set_monthly_deposit` VALUES ('142', '2022-05-05', '5', '5', '2022', '9451', 'Md. Saiful Islam', '1200', '0', '', '2022-06-19 16:59:21', 'iftekhar', 'iftekhar', '2022-06-19 16:59:21');
INSERT INTO `set_monthly_deposit` VALUES ('143', '2022-05-05', '5', '5', '2022', '9452', 'Md. Saiful Islam', '1200', '500', 'iftekhar', '2022-06-19 17:00:28', 'iftekhar', 'iftekhar', '2022-06-19 17:00:28');
INSERT INTO `set_monthly_deposit` VALUES ('144', '2022-05-05', '5', '5', '2022', '9453', 'qc', '1200', '0', '', '2022-06-19 16:59:21', 'iftekhar', 'iftekhar', '2022-06-19 16:59:21');
INSERT INTO `set_monthly_deposit` VALUES ('145', '2022-05-05', '5', '5', '2022', '9454', 'abc', '1200', '0', '', '2022-06-19 16:59:21', 'iftekhar', 'iftekhar', '2022-06-19 16:59:21');
INSERT INTO `set_monthly_deposit` VALUES ('146', '2022-05-05', '5', '5', '2022', '9456', 'dto', '7000', '4000', 'iftekhar', '2022-06-19 17:00:44', 'iftekhar', 'iftekhar', '2022-06-19 17:00:44');
INSERT INTO `set_monthly_deposit` VALUES ('147', '2022-05-05', '5', '5', '2022', '9457', 'dto', '5000', '800', 'iftekhar', '2022-06-19 17:58:37', 'iftekhar', 'iftekhar', '2022-06-19 17:58:37');
INSERT INTO `set_monthly_deposit` VALUES ('148', '2022-05-05', '5', '5', '2022', '9458', 'Data Entry OP', '4949', '500', 'iftekhar', '2022-06-19 17:00:52', 'iftekhar', 'iftekhar', '2022-06-19 17:00:52');
INSERT INTO `set_monthly_deposit` VALUES ('149', '2022-05-11', '11', '5', '2022', '9467', 'Mamun', '3889', '200', 'iftekhar', '2022-06-20 00:19:50', 'iftekhar', 'iftekhar', '2022-06-20 00:19:50');
INSERT INTO `set_monthly_deposit` VALUES ('150', '2022-05-11', '11', '5', '2022', '9469', 'Zahir Uddin', '37878', '500', 'iftekhar', '2022-06-20 00:20:27', 'iftekhar', 'iftekhar', '2022-06-20 00:20:27');
INSERT INTO `set_monthly_deposit` VALUES ('151', '2022-05-11', '11', '5', '2022', '9476', 'kausar', '337', '0', 'iftekhar', '2022-06-19 17:16:29', 'iftekhar', 'iftekhar', '2022-06-19 17:16:29');
INSERT INTO `set_monthly_deposit` VALUES ('152', '2022-05-11', '11', '5', '2022', '9477', 'Testing', '33', '0', 'iftekhar', '2022-06-19 17:16:29', 'iftekhar', 'iftekhar', '2022-06-19 17:16:29');
INSERT INTO `set_monthly_deposit` VALUES ('154', '2022-05-18', '18', '5', '2022', '9459', 'adsadasd', '717', '700', 'iftekhar', '2022-06-19 17:58:21', 'iftekhar', 'iftekhar', '2022-06-19 17:58:21');
INSERT INTO `set_monthly_deposit` VALUES ('155', '2022-05-18', '18', '5', '2022', '9459', 'adsadasd', '717', '700', 'iftekhar', '2022-06-19 17:58:21', 'iftekhar', 'iftekhar', '2022-06-19 17:58:21');
INSERT INTO `set_monthly_deposit` VALUES ('156', '2022-05-18', '18', '5', '2022', '9460', 'qc', '1200', '700', 'iftekhar', '2022-06-19 17:58:15', 'iftekhar', 'iftekhar', '2022-06-19 17:58:15');
INSERT INTO `set_monthly_deposit` VALUES ('157', '2022-05-18', '18', '5', '2022', '9461', 'Muzammel', '1200', '700', 'iftekhar', '2022-06-19 17:58:07', 'iftekhar', 'iftekhar', '2022-06-19 17:58:07');
INSERT INTO `set_monthly_deposit` VALUES ('158', '2022-05-18', '18', '5', '2022', '9462', 'Anower', '1200', '0', '', '2022-06-19 17:57:49', 'iftekhar', 'iftekhar', '2022-06-19 17:57:49');
INSERT INTO `set_monthly_deposit` VALUES ('159', '2022-05-18', '18', '5', '2022', '9463', 'Rifat', '1200', '0', '', '2022-06-19 17:57:49', 'iftekhar', 'iftekhar', '2022-06-19 17:57:49');
INSERT INTO `set_monthly_deposit` VALUES ('161', '2022-05-18', '18', '5', '2022', '9470', 'Masum Mia', '1200', '400', 'iftekhar', '2022-06-20 00:20:32', 'iftekhar', 'iftekhar', '2022-06-20 00:20:32');
INSERT INTO `set_monthly_deposit` VALUES ('163', '2022-05-19', '19', '5', '2022', '9471', 'Rony', '1201', '0', '', '2022-06-20 00:05:48', 'iftekhar', 'iftekhar', '2022-06-20 00:05:48');
INSERT INTO `set_monthly_deposit` VALUES ('166', '2022-05-10', '10', '5', '2022', '9472', 'Hridoy', '1205', '0', '', '2022-06-20 00:18:31', 'iftekhar', 'iftekhar', '2022-06-20 00:18:31');
INSERT INTO `set_monthly_deposit` VALUES ('168', '2022-05-11', '11', '5', '2022', '9473', 'Md. Khorshed', '1213', '0', '', '2022-06-20 00:19:11', 'iftekhar', 'iftekhar', '2022-06-20 00:19:11');
INSERT INTO `set_monthly_deposit` VALUES ('169', '2022-05-10', '10', '5', '2022', '9474', 'Shamim', '1200', '0', '', '2022-06-20 00:19:31', 'iftekhar', 'iftekhar', '2022-06-20 00:19:31');
INSERT INTO `set_monthly_deposit` VALUES ('170', '2022-05-10', '10', '5', '2022', '9475', 'Shahin', '1200', '0', '', '2022-06-20 00:19:31', 'iftekhar', 'iftekhar', '2022-06-20 00:19:31');
INSERT INTO `set_monthly_deposit` VALUES ('171', '2022-05-17', '17', '5', '2022', '9468', 'Mamun', '1200', '0', '', '2022-06-20 00:20:53', 'iftekhar', 'iftekhar', '2022-06-20 00:20:53');
INSERT INTO `set_monthly_deposit` VALUES ('172', '2022-07-14', '14', '7', '2022', '9449', 'iftekhar', '1200', '704', 'Hasan Imam', '2022-06-21 14:32:01', 'iftekhar', 'iftekhar', '2022-06-20 00:46:59');
INSERT INTO `set_monthly_deposit` VALUES ('173', '2022-10-21', '21', '10', '2022', '9449', 'iftekhar', '1300', '400', 'iftekhar', '2022-06-20 12:20:25', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('174', '2022-10-21', '21', '10', '2022', '9450', 'Md. Jiash Hasnat', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('175', '2022-10-21', '21', '10', '2022', '9451', 'Md. Saiful Islam', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('176', '2022-10-21', '21', '10', '2022', '9452', 'Md. Saiful Islam', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('177', '2022-10-21', '21', '10', '2022', '9453', 'qc', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('178', '2022-10-21', '21', '10', '2022', '9454', 'abc', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('179', '2022-10-21', '21', '10', '2022', '9456', 'dto', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('180', '2022-10-21', '21', '10', '2022', '9457', 'dto', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('181', '2022-10-21', '21', '10', '2022', '9458', 'Data Entry OP', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('182', '2022-10-21', '21', '10', '2022', '9459', 'adsadasd', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('183', '2022-10-21', '21', '10', '2022', '9460', 'qc', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('184', '2022-10-21', '21', '10', '2022', '9461', 'Muzammel', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('185', '2022-10-21', '21', '10', '2022', '9462', 'Anower', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('186', '2022-10-21', '21', '10', '2022', '9463', 'Rifat', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('187', '2022-10-21', '21', '10', '2022', '9467', 'Mamun', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('188', '2022-10-21', '21', '10', '2022', '9468', 'Mamun', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('189', '2022-10-21', '21', '10', '2022', '9469', 'Zahir Uddin', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('190', '2022-10-21', '21', '10', '2022', '9470', 'Masum Mia', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('191', '2022-10-21', '21', '10', '2022', '9471', 'Rony', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('192', '2022-10-21', '21', '10', '2022', '9472', 'Hridoy', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('193', '2022-10-21', '21', '10', '2022', '9473', 'Md. Khorshed', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('194', '2022-10-21', '21', '10', '2022', '9474', 'Shamim', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('195', '2022-10-21', '21', '10', '2022', '9475', 'Shahin', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('196', '2022-10-21', '21', '10', '2022', '9476', 'kausar', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('197', '2022-10-21', '21', '10', '2022', '9477', 'Testing', '1300', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-20 12:24:54');
INSERT INTO `set_monthly_deposit` VALUES ('198', '2022-06-21', '21', '6', '2022', '9448', 'Hasan Imam', '1200', '300', 'Hasan Imam', '2022-06-21 14:27:46', 'Hasan Imam', '9448', '2022-06-21 11:20:02');
INSERT INTO `set_monthly_deposit` VALUES ('208', '2022-07-28', '28', '7', '2022', '9450', 'Md. Jiash Hasnat', '1200', '300', 'Hasan Imam', '2022-06-21 13:07:42', 'Hasan Imam', '9448', '2022-06-21 12:13:34');
INSERT INTO `set_monthly_deposit` VALUES ('215', '2022-07-28', '28', '7', '2022', '9450', 'Md. Jiash Hasnat', '1200', '300', 'Hasan Imam', '2022-06-21 13:07:42', 'Hasan Imam', '9448', '2022-06-21 12:40:20');
INSERT INTO `set_monthly_deposit` VALUES ('216', '2022-07-19', '19', '7', '2022', '9451', 'Md. Saiful Islam', '1300', '400', 'Hasan Imam', '2022-06-21 13:14:46', 'Hasan Imam', '9448', '2022-06-21 12:40:20');
INSERT INTO `set_monthly_deposit` VALUES ('219', '2022-07-12', '12', '7', '2022', '9452', 'Md. Saiful Islam', '1400', '300', 'Hasan Imam', '2022-06-21 13:22:56', 'Hasan Imam', '9448', '2022-06-21 13:02:25');
INSERT INTO `set_monthly_deposit` VALUES ('220', '2022-07-07', '7', '7', '2022', '9453', 'qc', '1200', '400', 'Hasan Imam', '2022-06-21 13:24:35', 'Hasan Imam', '9448', '2022-06-21 13:23:36');
INSERT INTO `set_monthly_deposit` VALUES ('221', '2022-07-13', '13', '7', '2022', '9454', 'abc', '1300', '500', 'Hasan Imam', '2022-06-21 14:11:55', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('222', '2022-07-13', '13', '7', '2022', '9456', 'dto', '1400', '600', 'Hasan Imam', '2022-06-21 14:12:00', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('223', '2022-07-13', '13', '7', '2022', '9457', 'dto', '1500', '700', 'Hasan Imam', '2022-06-21 14:12:08', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('224', '2022-07-13', '13', '7', '2022', '9458', 'Data Entry OP', '1600', '800', 'Hasan Imam', '2022-06-21 14:12:13', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('225', '2022-07-13', '13', '7', '2022', '9459', 'adsadasd', '1700', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('226', '2022-07-13', '13', '7', '2022', '9460', 'qc', '1800', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('227', '2022-07-13', '13', '7', '2022', '9461', 'Muzammel', '1900', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('228', '2022-07-13', '13', '7', '2022', '9462', 'Anower', '2000', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 14:07:19');
INSERT INTO `set_monthly_deposit` VALUES ('229', '2022-07-14', '14', '7', '2022', '9463', 'Rifat', '1212', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 15:11:07');
INSERT INTO `set_monthly_deposit` VALUES ('230', '2023-01-02', '2', '1', '2023', '9449', 'iftekhar', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('231', '2023-01-02', '2', '1', '2023', '9450', 'Md. Jiash Hasnat', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('232', '2023-01-02', '2', '1', '2023', '9451', 'Md. Saiful Islam', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('233', '2023-01-02', '2', '1', '2023', '9452', 'Md. Saiful Islam', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('234', '2023-01-02', '2', '1', '2023', '9453', 'qc', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('235', '2023-01-02', '2', '1', '2023', '9454', 'abc', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('236', '2023-01-02', '2', '1', '2023', '9456', 'dto', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('237', '2023-01-02', '2', '1', '2023', '9457', 'dto', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('238', '2023-01-02', '2', '1', '2023', '9458', 'Data Entry OP', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('239', '2023-01-02', '2', '1', '2023', '9459', 'adsadasd', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:10');
INSERT INTO `set_monthly_deposit` VALUES ('240', '2023-01-02', '2', '1', '2023', '9460', 'qc', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('241', '2023-01-02', '2', '1', '2023', '9461', 'Muzammel', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('242', '2023-01-02', '2', '1', '2023', '9462', 'Anower', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('243', '2023-01-02', '2', '1', '2023', '9463', 'Rifat', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('244', '2023-01-02', '2', '1', '2023', '9467', 'Mamun', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('245', '2023-01-02', '2', '1', '2023', '9468', 'Mamun', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('246', '2023-01-02', '2', '1', '2023', '9469', 'Zahir Uddin', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('247', '2023-01-02', '2', '1', '2023', '9470', 'Masum Mia', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('248', '2023-01-02', '2', '1', '2023', '9471', 'Rony', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('249', '2023-01-02', '2', '1', '2023', '9472', 'Hridoy', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('250', '2023-01-02', '2', '1', '2023', '9473', 'Md. Khorshed', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('251', '2023-01-02', '2', '1', '2023', '9474', 'Shamim', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('252', '2023-01-02', '2', '1', '2023', '9475', 'Shahin', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('253', '2023-01-02', '2', '1', '2023', '9476', 'kausar', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('254', '2023-01-02', '2', '1', '2023', '9477', 'Testing', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('255', '2023-01-02', '2', '1', '2023', '9448', 'Hasan Imam', '1200', '0', '', '', 'Hasan Imam', '9448', '2022-06-21 16:48:11');
INSERT INTO `set_monthly_deposit` VALUES ('256', '2022-06-22', '22', '6', '2022', '8042', 'hriday', '1400', '0', '', '', 'iftekhar', 'iftekhar', '2022-06-22 11:26:34');

-- ----------------------------
-- Table structure for `user_access_management`
-- ----------------------------
DROP TABLE IF EXISTS `user_access_management`;
CREATE TABLE `user_access_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `users` int(10) DEFAULT NULL,
  `create_user` int(10) DEFAULT NULL,
  `user_list` int(10) DEFAULT NULL,
  `files` int(10) DEFAULT NULL,
  `file_create` int(10) DEFAULT NULL,
  `file_list` int(10) DEFAULT NULL,
  `lc_and_pi` int(10) DEFAULT NULL,
  `lc_and_pi_doc` int(10) DEFAULT NULL,
  `lc_and_pi_acceptance_doc` int(10) DEFAULT NULL,
  `b2b` int(10) DEFAULT NULL,
  `b2b_lc_and_pi_weave_doc` int(10) DEFAULT NULL,
  `b2b_lc_and_pi_spin_doc` int(10) DEFAULT NULL,
  `b2b_doc_weave_doc` int(10) DEFAULT NULL,
  `b2b_doc_spin_doc` int(10) DEFAULT NULL,
  `btma_and_cash` int(10) DEFAULT NULL,
  `btma_weave_doc` int(10) DEFAULT NULL,
  `btma_spin_doc` int(10) DEFAULT NULL,
  `cash_weave_doc` int(10) DEFAULT NULL,
  `banking` int(10) DEFAULT NULL,
  `banking_bank_acceptance_doc` int(10) DEFAULT NULL,
  `prc` int(10) DEFAULT NULL,
  `prc_duration_doc` int(10) DEFAULT NULL,
  `others` int(10) DEFAULT NULL,
  `backup_doc` int(10) DEFAULT NULL,
  `settings` int(10) DEFAULT NULL,
  `recording_person_id` varchar(30) NOT NULL,
  `recording_time` datetime NOT NULL,
  `modifying_person_id` varchar(30) NOT NULL,
  `modification_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_access_management
-- ----------------------------

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `religion` varchar(20) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `profile_picture` varchar(130) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('15', 'iftekhar', 'iftekhar', '9449', '12345', '12345', 'Admin', 'Muslim', 'Active', 'abcd@gmail.com', '11111111', 'ICT', 'Application Developer', 'default.png', 'iftekhar', 'iftekhar', '2021-02-23 15:53:17');
INSERT INTO `user_info` VALUES ('26', 'Md. Jiash Hasnat', 'Md.Jiash Hasnat', '9450', '123456', '123456', 'Admin', 'Muslim', 'Active', 'ftslab@znzfab.com', '01985982850', 'Lab & QC', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:28:20');
INSERT INTO `user_info` VALUES ('27', 'Md. Saiful Islam', null, '9451', '4321', '4321', 'User', 'Muslim', 'Active', 'md.saiful@znzfab.com', '01701212563', 'Marketing', 'Manager', 'default.png', 'qc', 'qc', '2020-12-01 09:55:55');
INSERT INTO `user_info` VALUES ('28', 'Md. Saiful Islam', null, '9452', '4321', '4321', 'User', 'Muslim', 'Active', 'md.saiful@znzfab.com', '01701212563', 'ICT', 'Manager', 'default.png', 'qc', 'qc', '2020-12-01 09:58:41');
INSERT INTO `user_info` VALUES ('30', 'qc', 'Mr.qc', '9453', '12345', '12345', 'Admin', 'Hindu', 'Active', 'qc@gmail.com', '100000000', 'Lab & QC', 'Deputy Manager', 'default.png', 'iftekhar', 'iftekhar', '2021-03-07 23:44:16');
INSERT INTO `user_info` VALUES ('32', 'abc', 'Mr.QC', '9454', '12345', '12345', 'User', 'Muslim', 'Active', 'abc@gmail.com', '11111111', 'ICT', 'Engineer', 'default.png', 'iftekhar', 'iftekhar', '2021-02-23 15:51:47');
INSERT INTO `user_info` VALUES ('34', 'dto', 'data entry operator', '9456', '12345', '12345', 'User', 'Christian', 'Active', 'dto@dto.com', '34543523232', 'ICT', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-03-07 23:43:56');
INSERT INTO `user_info` VALUES ('35', 'dto', 'data entry operator', '9457', '12345', '12345', 'User', 'Hindu', 'Active', 'dto@dto.com', '34543523232', 'ICT', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-03-07 23:43:56');
INSERT INTO `user_info` VALUES ('36', 'Data Entry OP', 'Mr. Haris', '9458', '1234', '1234', 'Sub_User', 'Muslim', 'Active', 'jiash09@live.com', '0', 'Marketing', 'Assistant Officer', 'default.png', 'qc', 'qc', '2021-03-10 17:51:42');
INSERT INTO `user_info` VALUES ('37', 'adsadasd', 'sdasd', '9459', 'dd', 'dd', 'User', 'Buddha', 'Active', 'sdsd', 'sdsd', 'Marketing', 'Application Developer', 'kausarNewPic.jpg', 'qc', 'qc', '2021-06-09 00:12:25');
INSERT INTO `user_info` VALUES ('38', 'qc', 'Sumon', '9460', '12345', '12345', 'Sub_User', 'Hindu', 'Active', 'ftslab@znzfab.com', '+88001701212563', 'Marketing', 'Junior Engineer', 'default.png', 'qc', 'qc', '2021-12-23 17:12:28');
INSERT INTO `user_info` VALUES ('39', 'Muzammel', 'Muzammel', '9461', '1234', '1234', 'Sub_User', 'Muslim', 'Active', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:25:18');
INSERT INTO `user_info` VALUES ('40', 'Anower', 'Anower', '9462', '1234', '1234', 'Sub_User', 'Muslim', 'Active', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:25:47');
INSERT INTO `user_info` VALUES ('41', 'Rifat', 'Rifat Hossain', '9463', '1234', '1234', 'Sub_User', 'Muslim', 'Active', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:26:03');
INSERT INTO `user_info` VALUES ('42', 'Mamun', 'Mamunur Rashid', '9467', '1234', '1234', 'Sub_User', 'Muslim', 'Active', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:26:17');
INSERT INTO `user_info` VALUES ('43', 'Mamun', 'Md.Mamunur Rashid', '9468', '1234', '1234', 'User', 'Muslim', 'Active', '12', '12', 'Lab & QC', 'Senior Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:36:18');
INSERT INTO `user_info` VALUES ('44', 'Zahir Uddin', 'Zahir', '9469', '12345', '12345', 'Sub_User', 'Muslim', 'Active', 'jiash09@live.com', '1', 'Lab & QC', 'Officer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 19:33:35');
INSERT INTO `user_info` VALUES ('45', 'Masum Mia', 'Masum Mia', '9470', '12345', '12345', 'Sub_User', 'Muslim', 'Active', 'jiash09@live.com', '2', 'Lab & QC', 'Chief Technical Officer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 19:42:59');
INSERT INTO `user_info` VALUES ('46', 'Rony', 'Rony', '9471', '12345', '12345', 'Sub_User', 'Hindu', 'Active', 'jiash09@live.com', '2', 'Lab & QC', 'Chief Technical Officer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 19:57:27');
INSERT INTO `user_info` VALUES ('47', 'Hridoy', 'Hridoy', '9472', '12345', '12345', 'Sub_User', 'Muslim', 'Active', 'ftslab@znzfab.com', '2', 'Lab & QC', 'Chief Technical Officer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 20:13:27');
INSERT INTO `user_info` VALUES ('48', 'Md. Khorshed', 'Md. Khorshed Alam', '9473', '12345', '12345', 'Sub_User', 'Muslim', 'Active', 'jiash09@live.com', '2', 'Lab & QC', 'Chief Technical Officer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-08 09:38:30');
INSERT INTO `user_info` VALUES ('49', 'Shamim', 'Shamim', '9474', '12345', '12345', 'Sub_User', 'Hindu', 'Active', 'ftslab@znzfab.com', '2', 'Lab & QC', 'Chief Technical Officer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-08 10:11:59');
INSERT INTO `user_info` VALUES ('50', 'Shahin', 'Shahin', '9475', '12345', '12345', 'Sub_User', 'Muslim', 'Active', 'ftslab@znzfab.com', '2', 'Lab & QC', 'Chief Technical Officer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-08 11:59:25');
INSERT INTO `user_info` VALUES ('51', 'kausar', 'kausar ahmed', '9476', '12345', '12345', 'Admin', 'Muslim', 'Active', 'kausarcse@gmail.com', '01738128576', 'Lab & QC', 'Application Developer', 'default.png', 'iftekhar', 'iftekhar', '2022-01-19 09:16:20');
INSERT INTO `user_info` VALUES ('52', 'Testing', 'Employee 1', '9477', '123456', '123456', 'User', 'Muslim', 'Active', 'testing@yahoo.com', '12345678', 'Lab & QC', 'Data Co-ordinator', 'Datacolor 600.jpg', 'iftekhar', 'iftekhar', '2022-03-31 12:51:01');
INSERT INTO `user_info` VALUES ('53', 'Hasan Imam', 'Hasan Imam', '9448', '12345', '12345', 'Admin', 'Muslim', 'Active', 'hasance14922@gmail.com', '01776740802', 'Lab & QC', 'Application Developer', '16999_300x300.jpg', 'iftekhar', 'iftekhar', '2022-06-20 17:35:49');
INSERT INTO `user_info` VALUES ('54', 'hriday', 'Hriday Ahmed', '8042', '12345', '12345', 'User', 'Muslim', 'Active', 'hridayahmed22@gmail.com', '01733730039', 'Marketing', 'Application Developer', 'default.png', 'iftekhar', 'iftekhar', '2022-06-22 11:02:20');

-- ----------------------------
-- Table structure for `user_login`
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` varchar(25) NOT NULL,
  `department` varchar(30) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `recording_person_id` varchar(30) NOT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('69', 'iftekhar', 'iftekhar', '', '', '', '', '12345', 'abcd@gmail.com', '11111111', 'ICT', 'Application Developer', 'Admin', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-02-23 15:53:17');
INSERT INTO `user_login` VALUES ('94', 'CSDM', 'Anower', 'Anower', '', '', '', '1234', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:25:48');
INSERT INTO `user_login` VALUES ('80', '004143', 'Md. Jiash Hasnat', 'Md.Jiash Hasnat', '', '', '', '123456', 'ftslab@znzfab.com', '01985982850', 'Lab & QC', 'Data Co-ordinator', 'Admin', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:28:20');
INSERT INTO `user_login` VALUES ('89', 'dto_1', 'dto', 'data entry operator', '', '', '', '12345', 'dto@dto.com', '34543523232', 'ICT', 'Data Co-ordinator', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-03-07 23:43:56');
INSERT INTO `user_login` VALUES ('90', '090', 'Data Entry OP', 'Mr. Haris', '', '', '', '1234', 'jiash09@live.com', '0', 'Marketing', 'Assistant Officer', 'Sub_User', 'Active', 'default.png', 'qc', 'qc', '2021-03-10 17:51:42');
INSERT INTO `user_login` VALUES ('91', 'dddd', 'adsadasd', 'sdasd', '', '', '', 'dd', 'sdsd', 'sdsd', 'Marketing', 'Application Developer', 'User', 'Active', 'kausarNewPic.jpg', 'qc', 'qc', '2021-06-09 00:12:26');
INSERT INTO `user_login` VALUES ('93', 'CSDM', 'Muzammel', 'Muzammel', '', '', '', '1234', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:25:18');
INSERT INTO `user_login` VALUES ('95', 'CSDM', 'Rifat', 'Rifat Hossain', '', '', '', '1234', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:26:03');
INSERT INTO `user_login` VALUES ('96', 'CSDM', 'Mamun', 'Mamunur Rashid', '', '', '', '1234', '12', '12', 'Lab & QC', 'Data Co-ordinator', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:26:17');
INSERT INTO `user_login` VALUES ('97', 'Mamun CSDM', 'Mamun', 'Md.Mamunur Rashid', '', '', '', '1234', '12', '12', 'Lab & QC', 'Senior Data Co-ordinator', 'User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-12-24 12:36:18');
INSERT INTO `user_login` VALUES ('98', 'qc', 'Zahir Uddin', 'Zahir', '', '', '', '12345', 'jiash09@live.com', '1', 'Lab & QC', 'Officer', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 19:33:35');
INSERT INTO `user_login` VALUES ('99', 'qc', 'Masum Mia', 'Masum Mia', '', '', '', '12345', 'jiash09@live.com', '2', 'Lab & QC', 'Chief Technical Officer', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 19:42:59');
INSERT INTO `user_login` VALUES ('100', 'qc', 'Rony', 'Rony', '', '', '', '12345', 'jiash09@live.com', '2', 'Lab & QC', 'Chief Technical Officer', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 19:57:27');
INSERT INTO `user_login` VALUES ('101', 'qc', 'Hridoy', 'Hridoy', '', '', '', '12345', 'ftslab@znzfab.com', '2', 'Lab & QC', 'Chief Technical Officer', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-01-07 20:13:27');
INSERT INTO `user_login` VALUES ('102', 'qc', 'Md. Khorshed', 'Md. Khorshed Alam', '', '', '', '12345', 'jiash09@live.com', '2', 'Lab & QC', 'Chief Technical Officer', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-01-08 09:38:30');
INSERT INTO `user_login` VALUES ('103', 'qc', 'Shamim', 'Shamim', '', '', '', '12345', 'ftslab@znzfab.com', '2', 'Lab & QC', 'Chief Technical Officer', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-01-08 10:11:59');
INSERT INTO `user_login` VALUES ('104', 'qc', 'Shahin', 'Shahin', '', '', '', '12345', 'ftslab@znzfab.com', '2', 'Lab & QC', 'Chief Technical Officer', 'Sub_User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-01-08 11:59:25');
INSERT INTO `user_login` VALUES ('105', '1010', 'kausar', 'kausar ahmed', '', '', '', '12345', 'kausarcse@gmail.com', '01738128576', 'Lab & QC', 'Application Developer', 'Admin', 'Active', 'kausarNewPic.jpg', 'iftekhar', 'iftekhar', '2022-01-19 09:16:20');
INSERT INTO `user_login` VALUES ('106', '1234', 'Testing', 'Employee 1', '', '', '', '123456', 'testing@yahoo.com', '12345678', 'Lab & QC', 'Data Co-ordinator', 'User', 'Active', 'Datacolor 600.jpg', 'iftekhar', 'iftekhar', '2022-03-31 12:51:01');
INSERT INTO `user_login` VALUES ('107', '9448', 'Hasan Imam', 'Hasan Imam', '', '', '', '12345', 'hasance14922@gmail.com', '01776740802', 'Lab & QC', 'Application Developer', 'Admin', 'Active', '16999_300x300.jpg', 'iftekhar', 'iftekhar', '2022-06-20 17:35:49');
INSERT INTO `user_login` VALUES ('108', '8042', 'hriday', 'Hriday Ahmed', '', '', '', '12345', 'hridayahmed22@gmail.com', '01733730039', 'Marketing', 'Application Developer', 'User', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2022-06-22 11:02:20');

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', 'Super Admin', 'super_admin');
INSERT INTO `user_type` VALUES ('2', 'Admin', 'admin');
INSERT INTO `user_type` VALUES ('3', 'Senior Officer LC & PI', 'senior_officer_lc_pi');
INSERT INTO `user_type` VALUES ('4', 'Senior Officer B2B', 'senior_officer_b2b');
INSERT INTO `user_type` VALUES ('5', 'Assistant Manager ', 'assistant_manager');
INSERT INTO `user_type` VALUES ('6', 'Assistant Manager Banking', 'assistant_manager_banking');
INSERT INTO `user_type` VALUES ('7', 'Officer', 'officer');
INSERT INTO `user_type` VALUES ('8', 'Assistant Officer BTMA', 'assistant_officer_btma');
INSERT INTO `user_type` VALUES ('9', 'Assistant Officer B2B', 'assistant_officer_b2b');
INSERT INTO `user_type` VALUES ('10', 'Manager', 'manager');
INSERT INTO `user_type` VALUES ('11', 'Sub User', 'sub_user');
