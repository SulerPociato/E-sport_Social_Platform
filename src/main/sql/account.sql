USE e_sport_platform;

    -- 账户表
CREATE TABLE IF NOT EXISTS `account` (
                                         `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                         `user_id` BIGINT NOT NULL COMMENT '用户ID',
                                         `balance` DECIMAL(10,2) DEFAULT 0.00 COMMENT '余额',
    `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(id),
    UNIQUE KEY `uk_user_id` (`user_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户账户表';