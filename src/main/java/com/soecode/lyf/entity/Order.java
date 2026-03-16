package com.soecode.lyf.entity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单实体类
 */
public class Order {

    private long orderId; // 订单ID
    private String orderNo; // 订单号
    private String gameName; // 游戏名称
    private String detail; // 描述
    private long customerId; // 下单用户ID
    private long playerId; // 接单打手ID
    private BigDecimal amount; // 单价
    private BigDecimal quantity; // 小时数
    private BigDecimal totalAmount; // 总金额
    private int status; // 状态:0待支付 1已支付 2进行中 3已完成 4已取消
    private Date payTime; // 支付时间
    private Date completeTime; // 完成时间
    private Date createTime; // 创建时间

    // 关联的用户信息（用于显示）
    private User customer; // 下单用户
    private User player; // 接单打手

    public Order() {
    }

    public Order(long orderId, String orderNo, String gameName, String detail, long customerId, long playerId,
                 BigDecimal amount, BigDecimal quantity, BigDecimal totalAmount,
                 int status, Date payTime, Date completeTime, Date createTime) {
        this.orderId = orderId;
        this.orderNo = orderNo;
        this.gameName = gameName;
        this.detail = detail;
        this.customerId = customerId;
        this.playerId = playerId;
        this.amount = amount;
        this.quantity = quantity;
        this.totalAmount = totalAmount;
        this.status = status;
        this.payTime = payTime;
        this.completeTime = completeTime;
        this.createTime = createTime;
    }

    // Getter和Setter方法
    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(long customerId) {
        this.customerId = customerId;
    }

    public long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(long playerId) {
        this.playerId = playerId;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public BigDecimal getQuantity() {
        return quantity;
    }

    public void setQuantity(BigDecimal quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Date getCompleteTime() {
        return completeTime;
    }

    public void setCompleteTime(Date completeTime) {
        this.completeTime = completeTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

    public User getPlayer() {
        return player;
    }

    public void setPlayer(User player) {
        this.player = player;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", orderNo='" + orderNo + '\'' +
                ", customerId=" + customerId +
                ", playerId=" + playerId +
                ", amount=" + amount +
                ", quantity=" + quantity +
                ", totalAmount=" + totalAmount +
                ", status=" + status +
                ", payTime=" + payTime +
                ", completeTime=" + completeTime +
                ", createTime=" + createTime +
                '}';
    }
}