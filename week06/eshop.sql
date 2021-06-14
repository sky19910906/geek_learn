SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS ESHOP_GOODS;
DROP TABLE IF EXISTS ESHOP_ORDER;
DROP TABLE IF EXISTS ESHOP_ORDER_GOODS;
DROP TABLE IF EXISTS ESHOP_USER;




/* Create Tables */

-- 电商商品表
CREATE TABLE ESHOP_GOODS
(
	GOOD_ID bigint NOT NULL AUTO_INCREMENT COMMENT '商品编号',
	GOOD_NAME varchar(40) NOT NULL COMMENT '商品名称',
	GOOD_DESC varchar(100) COMMENT '商品描述',
	GOOD_PRICE decimal(15,2) NOT NULL COMMENT '商品单价',
	GOOD_STOCK int NOT NULL COMMENT '商品库存',
	CREATE_TIME datetime NOT NULL COMMENT '创建时间',
	UPDATE_TIME datetime NOT NULL COMMENT '更新时间',
	-- Y-已删除/N-未删除
	DELETE_FLAG char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
	JPA_VERSION int NOT NULL COMMENT '乐观锁版本号',
	PRIMARY KEY (GOOD_ID)
) COMMENT = '电商商品表';


-- 电商订单表
CREATE TABLE ESHOP_ORDER
(
	ORDER_ID bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
	USER_ID bigint NOT NULL COMMENT '用户编号',
	ORDER_TIME datetime NOT NULL COMMENT '下单时间',
	-- 1-已下单
	-- 2-支付中
	-- 3-支付成功
	-- 4-已取消
	-- 5-支付失败
	-- 6-已超时
	ORDER_STATUS char(1) NOT NULL COMMENT '订单状态 : 1-已下单
2-支付中
3-支付成功
4-已取消
5-支付失败
6-已超时',
	ORDER_PRICE decimal(15,2) NOT NULL COMMENT '订单总价',
	TIME_OUT datetime NOT NULL COMMENT '超时时间',
	-- 1-APP
	-- 2-网站
	-- 3-小程序
	-- 4-三方推广
	-- 
	ORDER_SOURCE char(1) COMMENT '订单来源 : 1-APP
2-网站
3-小程序
4-三方推广
',
	CREATE_TIME datetime NOT NULL COMMENT '创建时间',
	UPDATE_TIME datetime NOT NULL COMMENT '更新时间',
	-- Y-已删除/N-未删除
	DELETE_FLAG char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
	JPA_VERSION int NOT NULL COMMENT '乐观锁版本号',
	PRIMARY KEY (ORDER_ID)
) COMMENT = '电商订单表';


-- 订单商品表
CREATE TABLE ESHOP_ORDER_GOODS
(
	ORDER_GOOD_ID bigint NOT NULL AUTO_INCREMENT COMMENT '订单商品ID',
	ORDER_ID bigint NOT NULL COMMENT '订单编号',
	GOOD_ID bigint COMMENT '商品编号',
	BUY_COUNT int NOT NULL COMMENT '购买数量',
	BUY_PRICE decimal(15,2) NOT NULL COMMENT '购买价格',
	GOOD_NAME_SNAPSHOT varchar(40) COMMENT '商品名称快照',
	GOOD_DESC_SNAPSHOT varchar(100) NOT NULL COMMENT '商品描述快照',
	GOOD_PRICE_SNAPSHOT decimal(15,2) NOT NULL COMMENT '商品价格快照',
	BUY_LINK varchar(100) NOT NULL COMMENT '购买链接',
	CREATE_TIME datetime NOT NULL COMMENT '创建时间',
	UPDATE_TIME datetime NOT NULL COMMENT '更新时间',
	-- Y-已删除/N-未删除
	DELETE_FLAG char(1) NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
	JPA_VERSION int NOT NULL COMMENT '乐观锁版本号',
	PRIMARY KEY (ORDER_GOOD_ID)
) COMMENT = '订单商品表';


-- 电商用户表
CREATE TABLE ESHOP_USER
(
	USER_ID bigint NOT NULL AUTO_INCREMENT COMMENT '用户编号',
	USER_NAME varchar(40) NOT NULL COMMENT '用户姓名',
	NICK_NAME varchar(100) COMMENT '用户昵称',
	MOBILE char(11) COMMENT '手机号',
	EMAIL varchar(40) COMMENT '电子邮箱',
	IDENTITY_NO char(18) COMMENT '证件号码',
	CREATE_TIME datetime NOT NULL COMMENT '创建时间',
	UPDATE_TIME datetime NOT NULL COMMENT '更新时间',
	-- Y-已删除/N-未删除
	DELETE_FLAG char(1) DEFAULT 'N' NOT NULL COMMENT '删除标识 : Y-已删除/N-未删除',
	JPA_VERSION int NOT NULL COMMENT '乐观锁版本号',
	PRIMARY KEY (USER_ID)
) COMMENT = '电商用户表';



