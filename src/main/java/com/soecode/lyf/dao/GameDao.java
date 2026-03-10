package com.soecode.lyf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.soecode.lyf.entity.Game;

public interface GameDao {

    /**
     * 通过ID查询游戏
     */
    Game queryById(long gameId);

    /**
     * 查询所有游戏
     */
    List<Game> queryAll(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 根据分类查询游戏
     */
    List<Game> queryByCategory(@Param("category") String category, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 添加游戏
     */
    int addGame(Game game);

    /**
     * 更新游戏信息
     */
    int updateGame(Game game);

    /**
     * 删除游戏
     */
    int deleteGame(long gameId);
}