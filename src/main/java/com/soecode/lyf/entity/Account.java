package com.soecode.lyf.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Account {
    private Long id;
    private Long userId;
    private BigDecimal balance;
    private Date createTime;
    private Date updateTime;

    // 无参构造
    public Account() {}

    // Getter 和 Setter
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }

    public BigDecimal getBalance() { return balance; }
    public void setBalance(BigDecimal balance) { this.balance = balance; }

    public Date getCreateTime() { return createTime; }
    public void setCreateTime(Date createTime) { this.createTime = createTime; }

    public Date getUpdateTime() { return updateTime; }
    public void setUpdateTime(Date updateTime) { this.updateTime = updateTime; }
}