package com.soecode.lyf.service.impl;

import com.soecode.lyf.dao.AccountDao;
import com.soecode.lyf.entity.Account;
import com.soecode.lyf.service.AccountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

@Service
public class AccountServiceImpl implements AccountService {

    private static final Logger logger = LoggerFactory.getLogger(AccountServiceImpl.class);

    @Autowired
    private AccountDao accountDao;

    @Override
    public Account getOrCreateAccount(long userId) {
        Account account = accountDao.queryByUserId(userId);
        if (account == null) {
            account = new Account();
            account.setUserId(userId);
            account.setBalance(BigDecimal.ZERO);
            int result = accountDao.insert(account);
            if (result <= 0) {
                logger.error("创建账户失败，userId: {}", userId);
                return null;
            }
        }
        return account;
    }

    @Override
    public BigDecimal getBalance(long userId) {
        Account account = accountDao.queryByUserId(userId);
        if (account == null) {
            return BigDecimal.ZERO;
        }
        return account.getBalance();
    }

    @Override
    @Transactional
    public boolean recharge(long userId, BigDecimal amount) {
        if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
            return false;
        }
        // 确保账户存在
        getOrCreateAccount(userId);
        int rows = accountDao.updateBalance(userId, amount);
        return rows > 0;
    }

    @Override
    @Transactional
    public boolean deduct(long userId, BigDecimal amount) {
        if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
            return false;
        }
        int rows = accountDao.deductBalance(userId, amount);
        return rows > 0;
    }
}