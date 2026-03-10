package com.soecode.lyf.entity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 陪玩服务实体
 */
public class CompanionService {

    private long serviceId; // 服务ID
    private long userId; // 用户ID
    private long gameId; // 游戏ID
    private String title; // 服务标题
    private String description; // 服务描述
    private BigDecimal price; // 价格
    private String unit; // 单位
    private BigDecimal rating; // 评分
    private int orderCount; // 订单数
    private int status; // 状态
    private Date createTime; // 创建时间
    private Date updateTime; // 更新时间

    // 多对一的复合属性
    private Game game; // 游戏实体
    private User user; // 用户实体

    public CompanionService() {
    }

    public CompanionService(long serviceId, long userId, long gameId, String title, String description,
                            BigDecimal price, String unit, BigDecimal rating, int orderCount, int status) {
        this.serviceId = serviceId;
        this.userId = userId;
        this.gameId = gameId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.unit = unit;
        this.rating = rating;
        this.orderCount = orderCount;
        this.status = status;
    }

    public long getServiceId() {
        return serviceId;
    }

    public void setServiceId(long serviceId) {
        this.serviceId = serviceId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getGameId() {
        return gameId;
    }

    public void setGameId(long gameId) {
        this.gameId = gameId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public BigDecimal getRating() {
        return rating;
    }

    public void setRating(BigDecimal rating) {
        this.rating = rating;
    }

    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "CompanionService [serviceId=" + serviceId + ", userId=" + userId + ", gameId=" + gameId + ", title="
                + title + ", description=" + description + ", price=" + price + ", unit=" + unit + ", rating=" + rating
                + ", orderCount=" + orderCount + ", status=" + status + ", createTime=" + createTime + ", updateTime="
                + updateTime + "]";
    }
}