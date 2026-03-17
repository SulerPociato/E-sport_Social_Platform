package com.soecode.lyf.entity;

import java.util.Date;

/**
 * 俱乐部实体
 */
public class Club {
    private long clubId;
    private String clubName;
    private String description;
    private long adminId;
    private Date createTime;
    private String avatar;

    public Club() {
    }

    public Club(long clubId, String clubName, String description, long adminId, Date createTime) {
        this.clubId = clubId;
        this.clubName = clubName;
        this.description = description;
        this.adminId = adminId;
        this.createTime = createTime;
    }

    public long getClubId() {
        return clubId;
    }

    public void setClubId(long clubId) {
        this.clubId = clubId;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getAdminId() {
        return adminId;
    }

    public void setAdminId(long adminId) {
        this.adminId = adminId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "Club [clubId=" + clubId + ", clubName=" + clubName + ", description=" + description
                + ", adminId=" + adminId + ", createTime=" + createTime + ", avatar=" + avatar + "]";
    }
}