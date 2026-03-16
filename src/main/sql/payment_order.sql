USE e_sport_platform;

-- 支付订单表
CREATE TABLE IF NOT EXISTS `payment_order` (
                                               `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
                                               `order_no` VARCHAR(64) NOT NULL COMMENT '支付订单号',
    `user_id` BIGINT NOT NULL COMMENT '用户ID',
    `amount` DECIMAL(10,2) NOT NULL COMMENT '金额',
    `status` TINYINT DEFAULT 0 COMMENT '状态：0待支付，1已支付，2已取消',
    `payment_method` VARCHAR(20) COMMENT '支付方式：wechat/alipay',
    `pay_time` DATETIME COMMENT '支付时间',
    `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY `uk_order_no` (`order_no`),
    INDEX `idx_user_id` (`user_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付订单表';