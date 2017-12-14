-- ----------------------------
-- Table structure for `tb_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `did` int(6) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '人事部');
INSERT INTO `tb_dept` VALUES ('2', '财务部');
INSERT INTO `tb_dept` VALUES ('3', '市场部');
INSERT INTO `tb_dept` VALUES ('4', '研发部');

-- ----------------------------
-- Table structure for `tb_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp`;
CREATE TABLE `tb_emp` (
  `eid` int(6) NOT NULL AUTO_INCREMENT,
  `ename` varchar(50) NOT NULL,
  `deptid` int(6) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `workDate` date NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_emp
-- ----------------------------
INSERT INTO `tb_emp` VALUES ('1', '王明', '1', '55', '男', '2013-02-05');
INSERT INTO `tb_emp` VALUES ('2', '李红', '2', '21', '女', '2016-10-04');
INSERT INTO `tb_emp` VALUES ('3', '刘丽', '3', '44', '女', '2013-05-06');
INSERT INTO `tb_emp` VALUES ('4', '舒畅', '4', '22', '男', '2013-02-05');

