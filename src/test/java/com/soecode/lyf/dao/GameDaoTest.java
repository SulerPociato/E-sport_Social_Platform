package com.soecode.lyf.dao;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.soecode.lyf.BaseTest;
import com.soecode.lyf.entity.Game;

public class GameDaoTest extends BaseTest {

    @Autowired
    private GameDao gameDao;

    @Test
    public void testQueryById() throws Exception {
        long gameId = 1;
        Game game = gameDao.queryById(gameId);
        System.out.println("查询游戏结果: " + game);
        System.out.println("游戏名称: " + game.getName());
        System.out.println("游戏分类: " + game.getCategory());
    }

    @Test
    public void testQueryAll() throws Exception {
        List<Game> games = gameDao.queryAll(0, 100);
        System.out.println("查询所有游戏，数量: " + games.size());
        for (Game game : games) {
            System.out.println("游戏ID: " + game.getGameId() + ", 名称: " + game.getName());
        }
    }

    @Test
    public void testQueryByCategory() throws Exception {
        String category = "MOBA";
        List<Game> games = gameDao.queryByCategory(category, 0, 100);
        System.out.println("查询" + category + "分类游戏，数量: " + games.size());
        for (Game game : games) {
            System.out.println("游戏ID: " + game.getGameId() + ", 名称: " + game.getName());
        }
    }

    @Test
    public void testAddGame() throws Exception {
        Game game = new Game();
        game.setName("测试游戏");
        game.setDescription("这是一个测试游戏，用于单元测试");
        game.setCategory("测试");
        game.setStatus(1);

        int result = gameDao.addGame(game);
        System.out.println("添加游戏结果: " + result);
        System.out.println("生成的游戏ID: " + game.getGameId());

        // 验证添加结果
        Game addedGame = gameDao.queryById(game.getGameId());
        System.out.println("验证添加的游戏: " + addedGame);
    }

    @Test
    public void testUpdateGame() throws Exception {
        long gameId = 1;
        Game game = gameDao.queryById(gameId);
        if (game != null) {
            String originalName = game.getName();
            game.setName(originalName + " - 修改版");

            int result = gameDao.updateGame(game);
            System.out.println("更新游戏结果: " + result);

            // 验证更新结果
            Game updatedGame = gameDao.queryById(gameId);
            System.out.println("更新后的游戏名称: " + updatedGame.getName());
        }
    }

    @Test
    public void testDeleteGame() throws Exception {
        long gameId = 2;
        int result = gameDao.deleteGame(gameId);
        System.out.println("删除游戏结果: " + result);

        // 验证删除结果（逻辑删除，状态变为0）
        Game deletedGame = gameDao.queryById(gameId);
        if (deletedGame != null) {
            System.out.println("删除后的游戏状态: " + deletedGame.getStatus());
        }
    }

    @Test
    public void testGameCRUD() throws Exception {
        // 综合测试：增删改查
        System.out.println("=== 开始游戏CRUD综合测试 ===");

        // 1. 添加游戏
        Game newGame = new Game();
        newGame.setName("CRUD测试游戏");
        newGame.setDescription("用于CRUD综合测试的游戏");
        newGame.setCategory("测试");
        newGame.setStatus(1);

        int addResult = gameDao.addGame(newGame);
        System.out.println("添加结果: " + addResult);
        long testGameId = newGame.getGameId();
        System.out.println("测试游戏ID: " + testGameId);

        // 2. 查询游戏
        Game queriedGame = gameDao.queryById(testGameId);
        System.out.println("查询结果: " + queriedGame);

        // 3. 更新游戏
        queriedGame.setDescription("修改后的描述");
        int updateResult = gameDao.updateGame(queriedGame);
        System.out.println("更新结果: " + updateResult);

        // 4. 删除游戏（逻辑删除）
        int deleteResult = gameDao.deleteGame(testGameId);
        System.out.println("删除结果: " + deleteResult);

        // 5. 验证删除
        Game afterDelete = gameDao.queryById(testGameId);
        System.out.println("删除后状态: " + (afterDelete != null ? afterDelete.getStatus() : "游戏不存在"));

        System.out.println("=== 游戏CRUD综合测试完成 ===");
    }
}