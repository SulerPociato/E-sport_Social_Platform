package com.soecode.lyf.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.soecode.lyf.BaseTest;
import com.soecode.lyf.entity.Game;
import com.soecode.lyf.service.GameService;

public class GameServiceImplTest extends BaseTest {

    @Autowired
    private GameService gameService;

    @Test
    public void testGetById() throws Exception {
        long gameId = 1;
        Game game = gameService.getById(gameId);
        System.out.println("Service层查询游戏结果: " + game);
        if (game != null) {
            System.out.println("游戏名称: " + game.getName());
            System.out.println("游戏状态: " + game.getStatus());
        }
    }

    @Test
    public void testGetList() throws Exception {
        List<Game> games = gameService.getList();
        System.out.println("Service层查询所有游戏，数量: " + games.size());
        for (Game game : games) {
            System.out.println("游戏ID: " + game.getGameId() +
                    ", 名称: " + game.getName() +
                    ", 分类: " + game.getCategory());
        }
    }

    @Test
    public void testGetByCategory() throws Exception {
        String category = "MOBA";
        List<Game> games = gameService.getByCategory(category);
        System.out.println("Service层查询" + category + "分类游戏，数量: " + games.size());
        for (Game game : games) {
            System.out.println("游戏ID: " + game.getGameId() +
                    ", 名称: " + game.getName());
        }
    }

    @Test
    public void testAddGame() throws Exception {
        Game game = new Game();
        game.setName("Service测试游戏");
        game.setDescription("Service层测试添加游戏");
        game.setCategory("测试");
        game.setStatus(1);

        boolean result = gameService.addGame(game);
        System.out.println("Service层添加游戏结果: " + result);
        if (result) {
            System.out.println("添加的游戏ID: " + game.getGameId());

            // 验证添加结果
            Game addedGame = gameService.getById(game.getGameId());
            System.out.println("验证添加的游戏: " + addedGame);
        }
    }

    @Test
    public void testUpdateGame() throws Exception {
        long gameId = 1;
        Game game = gameService.getById(gameId);
        if (game != null) {
            String originalName = game.getName();
            game.setName(originalName + " - Service修改");

            boolean result = gameService.updateGame(game);
            System.out.println("Service层更新游戏结果: " + result);

            // 验证更新结果
            Game updatedGame = gameService.getById(gameId);
            System.out.println("更新后的游戏名称: " + updatedGame.getName());
        }
    }

    @Test
    public void testDeleteGame() throws Exception {
        long gameId = 3;
        boolean result = gameService.deleteGame(gameId);
        System.out.println("Service层删除游戏结果: " + result);

        // 验证删除结果（逻辑删除）
        Game deletedGame = gameService.getById(gameId);
        if (deletedGame != null) {
            System.out.println("删除后的游戏状态: " + deletedGame.getStatus());
        }
    }

    @Test
    public void testGameServiceIntegration() throws Exception {
        // Service层集成测试
        System.out.println("=== 开始游戏Service层集成测试 ===");

        // 1. 获取游戏列表
        List<Game> allGames = gameService.getList();
        System.out.println("当前游戏总数: " + allGames.size());

        // 2. 按分类查询
        if (!allGames.isEmpty()) {
            String category = allGames.get(0).getCategory();
            List<Game> categoryGames = gameService.getByCategory(category);
            System.out.println(category + "分类游戏数量: " + categoryGames.size());
        }

        // 3. 测试单个游戏查询
        if (!allGames.isEmpty()) {
            Game sampleGame = gameService.getById(allGames.get(0).getGameId());
            System.out.println("示例游戏信息: " + sampleGame);
        }

        System.out.println("=== 游戏Service层集成测试完成 ===");
    }
}