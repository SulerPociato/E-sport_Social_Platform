package com.soecode.lyf.service;

import java.util.List;

import com.soecode.lyf.entity.Game;

/**
 * 游戏服务接口
 */
public interface GameService {

    /**
     * 根据ID获取游戏
     */
    Game getById(long gameId);

    /**
     * 获取所有游戏列表
     */
    List<Game> getList();

    /**
     * 根据分类获取游戏列表
     */
    List<Game> getByCategory(String category);

    /**
     * 添加游戏
     */
    boolean addGame(Game game);

    /**
     * 更新游戏信息
     */
    boolean updateGame(Game game);

    /**
     * 删除游戏（逻辑删除）
     */
    boolean deleteGame(long gameId);
}