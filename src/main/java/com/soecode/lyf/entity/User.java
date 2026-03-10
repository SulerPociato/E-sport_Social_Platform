package com.soecode.lyf.entity;

import java.util.Date;

/**
 * 用户实体
 */
public class User {

    private long userId; // 用户ID
    private String username; // 用户名
    private String password; // 密码
    private String email; // 邮箱
    private String phone; // 手机号
    private String nickname; // 昵称
    private String avatar; // 头像
    private int gender; // 性别: 0-未知, 1-男, 2-女
    private Date birthday; // 生日
    private String gameId; // 游戏ID
    private int level; // 等级
    private double rating; // 评分
    private int status; // 状态: 0-禁用, 1-正常
    private Date createTime; // 创建时间
    private Date updateTime; // 更新时间

    public User() {
    }

    public User(long userId, String username, String password, String email, String phone,
                String nickname, String avatar, int gender, Date birthday, String gameId,
                int level, double rating, int status) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.nickname = nickname;
        this.avatar = avatar;
        this.gender = gender;
        this.birthday = birthday;
        this.gameId = gameId;
        this.level = level;
        this.rating = rating;
        this.status = status;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getGameId() {
        return gameId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
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

    @Override
    public String toString() {
        return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", email=" + email
                + ", phone=" + phone + ", nickname=" + nickname + ", avatar=" + avatar + ", gender=" + gender
                + ", birthday=" + birthday + ", gameId=" + gameId + ", level=" + level + ", rating=" + rating
                + ", status=" + status + ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
    }
}