
CREATE DATABASE IF NOT EXISTS e_sport_platform DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE e_sport_platform;

CREATE TABLE user (
                      id BIGINT PRIMARY KEY AUTO_INCREMENT,
                      username VARCHAR(50) UNIQUE NOT NULL COMMENT '用户名',
                      password VARCHAR(255) NOT NULL COMMENT '密码',
                      email VARCHAR(100) UNIQUE COMMENT '邮箱',
                      phone VARCHAR(20) UNIQUE COMMENT '手机号',
                      nickname VARCHAR(50) NOT NULL COMMENT '昵称',
                      avatar VARCHAR(255) COMMENT '头像',
                      gender TINYINT DEFAULT 0 COMMENT '性别:0未知 1男 2女',
                      description VARCHAR(75) DEFAULT NULL COMMENT '个人描述',
                      order_count INT DEFAULT 0 COMMENT '订单数',
                      player_type TINYINT DEFAULT 0 COMMENT '打手类型:0个人打手 1俱乐部打手 2俱乐部管理员',
                      club_id BIGINT COMMENT '所属俱乐部',
                      status TINYINT DEFAULT 1 COMMENT '状态:0禁用 1正常',
                      create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                      INDEX idx_username (username),
                      INDEX idx_email (email),
                      INDEX idx_phone (phone),
                      INDEX idx_club_id (club_id)
) ENGINE=InnoDB COMMENT='用户表';
CREATE TABLE club (
                      id BIGINT PRIMARY KEY AUTO_INCREMENT,
                      club_name VARCHAR(100) NOT NULL COMMENT '俱乐部名称',
                      description VARCHAR(255) COMMENT '俱乐部介绍',
                      admin_id BIGINT NOT NULL COMMENT '俱乐部管理员',
                      create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      FOREIGN KEY (admin_id) REFERENCES user(id)
) ENGINE=InnoDB COMMENT='俱乐部表';
CREATE TABLE `order` (
                         id BIGINT PRIMARY KEY AUTO_INCREMENT,
                         order_no VARCHAR(50) UNIQUE NOT NULL COMMENT '订单号',
                         customer_id BIGINT NOT NULL COMMENT '下单用户',
                         player_id BIGINT NOT NULL COMMENT '接单打手',
                         amount DECIMAL(10,2) NOT NULL COMMENT '单价',
                         quantity DECIMAL(5,2) NOT NULL COMMENT '小时',
                         total_amount DECIMAL(10,2) NOT NULL COMMENT '总金额',
                         status TINYINT DEFAULT 0 COMMENT '状态:0待支付 1已支付 2进行中 3已完成 4已取消',
                         pay_time DATETIME COMMENT '支付时间',
                         complete_time DATETIME COMMENT '完成时间',
                         create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         FOREIGN KEY (customer_id) REFERENCES user(id),
                         FOREIGN KEY (player_id) REFERENCES user(id),
                         INDEX idx_customer_id (customer_id),
                         INDEX idx_player_id (player_id),
                         INDEX idx_order_no (order_no)
) ENGINE=InnoDB COMMENT='订单表';