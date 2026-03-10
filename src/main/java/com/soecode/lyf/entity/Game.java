package com.soecode.lyf.entity;

/**
 * 游戏实体
 */
public class Game {

    private long gameId; // 游戏ID
    private String name; // 游戏名称
    private String description; // 游戏描述
    private String coverImage; // 封面图
    private String category; // 游戏分类
    private int status; // 状态

    public Game() {
    }

    public Game(long gameId, String name, String description, String coverImage, String category, int status) {
        this.gameId = gameId;
        this.name = name;
        this.description = description;
        this.coverImage = coverImage;
        this.category = category;
        this.status = status;
    }

    public long getGameId() {
        return gameId;
    }

    public void setGameId(long gameId) {
        this.gameId = gameId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Game [gameId=" + gameId + ", name=" + name + ", description=" + description + ", coverImage="
                + coverImage + ", category=" + category + ", status=" + status + "]";
    }
}