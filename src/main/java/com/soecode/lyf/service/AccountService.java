package com.soecode.lyf.service;

import com.soecode.lyf.entity.Account;
import java.math.BigDecimal;

public interface AccountService {
    /**
     * 获取用户账户，若不存在则创建
     */
    Account getOrCreateAccount(long userId);

    /**
     * 查询余额
     */
    BigDecimal getBalance(long userId);

    /**
     * 充值
     */
    boolean recharge(long userId, BigDecimal amount);

    /**
     * 扣款（用于支付）
     */
    boolean deduct(long userId, BigDecimal amount);
}