package com.soecode.lyf.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soecode.lyf.dao.GameDao;
import com.soecode.lyf.entity.Game;
import com.soecode.lyf.service.GameService;

@Service
public class GameServiceImpl implements GameService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private GameDao gameDao;

    @Override
    public Game getById(long gameId) {
        return gameDao.queryById(gameId);
    }

    @Override
    public List<Game> getList() {
        return gameDao.queryAll(0, 1000);
    }

    @Override
    public List<Game> getByCategory(String category) {
        return gameDao.queryByCategory(category, 0, 1000);
    }

    @Override
    @Transactional
    public boolean addGame(Game game) {
        try {
            int result = gameDao.addGame(game);
            return result > 0;
        } catch (Exception e) {
            logger.error("添加游戏失败: {}", e.getMessage());
            return false;
        }
    }

    @Override
    @Transactional
    public boolean updateGame(Game game) {
        try {
            int result = gameDao.updateGame(game);
            return result > 0;
        } catch (Exception e) {
            logger.error("更新游戏失败: {}", e.getMessage());
            return false;
        }
    }

    @Override
    @Transactional
    public boolean deleteGame(long gameId) {
        try {
            int result = gameDao.deleteGame(gameId);
            return result > 0;
        } catch (Exception e) {
            logger.error("删除游戏失败: {}", e.getMessage());
            return false;
        }
    }
}