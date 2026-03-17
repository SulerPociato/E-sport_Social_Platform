use e_sport_platform;
CREATE TABLE club_apply (
                            id BIGINT PRIMARY KEY AUTO_INCREMENT,
                            club_id BIGINT NOT NULL COMMENT '俱乐部ID',
                            user_id BIGINT NOT NULL COMMENT '申请用户ID',
                            apply_message VARCHAR(255) DEFAULT NULL COMMENT '申请理由',
                            status TINYINT NOT NULL DEFAULT 0 COMMENT '状态:0待审核 1已通过 2已拒绝',
                            create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                            INDEX idx_club_id (club_id),
                            INDEX idx_user_id (user_id),
                            INDEX idx_status (status)
) COMMENT='俱乐部申请表';