package com.soecode.lyf.dao;

import com.soecode.lyf.entity.Account;
import org.apache.ibatis.annotations.Param;

public interface AccountDao {
    /**
     * 根据用户ID查询账户
     */
    Account queryByUserId(@Param("userId") long userId);

    /**
     * 插入账户（注册时调用）
     */
    int insert(Account account);

    /**
     * 更新余额（充值/扣款）
     */
    int updateBalance(@Param("userId") long userId, @Param("amount") java.math.BigDecimal amount);

    /**
     * 扣款（确保余额足够）
     */
    int deductBalance(@Param("userId") long userId, @Param("amount") java.math.BigDecimal amount);
}