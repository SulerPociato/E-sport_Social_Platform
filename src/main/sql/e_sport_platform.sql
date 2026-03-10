-- 开黑电竞平台数据库结构（修复版）
-- 解决MySQL版本兼容性问题

CREATE DATABASE IF NOT EXISTS e_sport_platform DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE e_sport_platform;

-- 设置SQL模式以兼容不同MySQL版本
SET @@sql_mode = sys.list_drop(@@sql_mode, 'NO_ZERO_DATE');
SET @@sql_mode = sys.list_drop(@@sql_mode, 'NO_ZERO_IN_DATE');

-- 用户表
CREATE TABLE user (
                      id BIGINT PRIMARY KEY AUTO_INCREMENT,
                      username VARCHAR(50) UNIQUE NOT NULL COMMENT '用户名',
                      password VARCHAR(255) NOT NULL COMMENT '密码',
                      email VARCHAR(100) UNIQUE COMMENT '邮箱',
                      phone VARCHAR(20) UNIQUE COMMENT '手机号',
                      nickname VARCHAR(50) NOT NULL COMMENT '昵称',
                      avatar VARCHAR(255) COMMENT '头像',
                      gender TINYINT DEFAULT 0 COMMENT '性别: 0-未知, 1-男, 2-女',
                      birthday DATE COMMENT '生日',
                      game_id VARCHAR(50) COMMENT '游戏ID',
                      level INT DEFAULT 1 COMMENT '等级',
                      rating DECIMAL(3,2) DEFAULT 5.0 COMMENT '评分',
                      status TINYINT DEFAULT 1 COMMENT '状态: 0-禁用, 1-正常',
                      create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                      update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                      INDEX idx_username (username),
                      INDEX idx_email (email),
                      INDEX idx_phone (phone)
) ENGINE=InnoDB COMMENT='用户表';

-- 游戏表
CREATE TABLE game (
                      id BIGINT PRIMARY KEY AUTO_INCREMENT,
                      name VARCHAR(100) NOT NULL COMMENT '游戏名称',
                      description TEXT COMMENT '游戏描述',
                      cover_image VARCHAR(255) COMMENT '封面图',
                      category VARCHAR(50) COMMENT '游戏分类',
                      status TINYINT DEFAULT 1 COMMENT '状态',
                      create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB COMMENT='游戏表';

-- 陪玩服务表
CREATE TABLE companion_service (
                                   id BIGINT PRIMARY KEY AUTO_INCREMENT,
                                   user_id BIGINT NOT NULL COMMENT '陪玩用户ID',
                                   game_id BIGINT NOT NULL COMMENT '游戏ID',
                                   title VARCHAR(200) NOT NULL COMMENT '服务标题',
                                   description TEXT COMMENT '服务描述',
                                   price DECIMAL(10,2) NOT NULL COMMENT '价格',
                                   unit VARCHAR(20) DEFAULT '小时' COMMENT '单位',
                                   rating DECIMAL(3,2) DEFAULT 5.0 COMMENT '评分',
                                   order_count INT DEFAULT 0 COMMENT '订单数',
                                   status TINYINT DEFAULT 1 COMMENT '状态',
                                   create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                   update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                   FOREIGN KEY (user_id) REFERENCES user(id),
                                   FOREIGN KEY (game_id) REFERENCES game(id),
                                   INDEX idx_user_game (user_id, game_id)
) ENGINE=InnoDB COMMENT='陪玩服务表';

-- 订单表
CREATE TABLE `order` (
                         id BIGINT PRIMARY KEY AUTO_INCREMENT,
                         order_no VARCHAR(50) UNIQUE NOT NULL COMMENT '订单号',
                         user_id BIGINT NOT NULL COMMENT '用户ID',
                         companion_id BIGINT NOT NULL COMMENT '陪玩服务ID',
                         amount DECIMAL(10,2) NOT NULL COMMENT '订单金额',
                         quantity DECIMAL(5,2) NOT NULL COMMENT '数量',
                         total_amount DECIMAL(10,2) NOT NULL COMMENT '总金额',
                         status TINYINT DEFAULT 0 COMMENT '状态: 0-待支付, 1-已支付, 2-进行中, 3-已完成, 4-已取消',
                         pay_time DATETIME COMMENT '支付时间',
                         complete_time DATETIME COMMENT '完成时间',
                         create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         FOREIGN KEY (user_id) REFERENCES user(id),
                         FOREIGN KEY (companion_id) REFERENCES companion_service(id),
                         INDEX idx_user_id (user_id),
                         INDEX idx_order_no (order_no)
) ENGINE=InnoDB COMMENT='订单表';

-- 插入示例数据
INSERT INTO user (username, password, nickname, email) VALUES
                                                           ('testuser', 'password123', '测试用户', 'test@kaihei.com'),
                                                           ('gamepro', 'password123', '游戏高手', 'pro@kaihei.com');

INSERT INTO game (name, description, category) VALUES
                                                   ('王者荣耀', '5v5团队竞技手游', 'MOBA'),
                                                   ('英雄联盟', '经典MOBA游戏', 'MOBA'),
                                                   ('和平精英', '战术竞技手游', '射击');

INSERT INTO companion_service (user_id, game_id, title, description, price) VALUES
                                                                                (1, 1, '王者荣耀陪玩', '专业王者荣耀陪玩，带你上分', 50.00),
                                                                                (2, 2, '英雄联盟陪玩', '英雄联盟高手陪玩', 60.00);

-- 验证数据插入
SELECT '数据库创建成功！' as message;
SELECT COUNT(*) as user_count FROM user;
SELECT COUNT(*) as game_count FROM game;
SELECT COUNT(*) as service_count FROM companion_service;