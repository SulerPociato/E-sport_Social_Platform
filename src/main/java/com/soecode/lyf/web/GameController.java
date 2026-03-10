package com.soecode.lyf.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soecode.lyf.dto.Result;
import com.soecode.lyf.entity.Game;
import com.soecode.lyf.service.GameService;

@Controller
@RequestMapping("/game")
public class GameController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private GameService gameService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Game> list = gameService.getList();
        model.addAttribute("list", list);
        return "game/list";
    }

    @RequestMapping(value = "/{gameId}/detail", method = RequestMethod.GET)
    public String detail(@PathVariable("gameId") Long gameId, Model model) {
        if (gameId == null) {
            return "redirect:/game/list";
        }
        Game game = gameService.getById(gameId);
        if (game == null) {
            return "forward:/game/list";
        }
        model.addAttribute("game", game);
        return "game/detail";
    }

    @RequestMapping(value = "/{gameId}/json", method = RequestMethod.GET, produces = {
            "application/json; charset=utf-8" })
    @ResponseBody
    public Result<Game> detailJson(@PathVariable("gameId") Long gameId) {
        if (gameId == null) {
            return new Result<Game>(false, "游戏ID不能为空");
        }
        Game game = gameService.getById(gameId);
        if (game == null) {
            return new Result<Game>(false, "游戏不存在");
        }
        return new Result<Game>(true, game);
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Result<String> add(Game game) {
        try {
            boolean success = gameService.addGame(game);
            if (success) {
                return new Result<>(true, (String)"添加游戏成功");
            } else {
                return new Result<>(false, (String)"添加游戏失败");
            }
        } catch (Exception e) {
            logger.error("添加游戏异常: {}", e.getMessage());
            return new Result<>(false, (String)"添加游戏异常");
        }
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Result<String> update(Game game) {
        try {
            boolean success = gameService.updateGame(game);
            if (success) {
                return new Result<>(true, (String)"更新游戏成功");
            } else {
                return new Result<>(false, (String)"更新游戏失败");
            }
        } catch (Exception e) {
            logger.error("更新游戏异常: {}", e.getMessage());
            return new Result<>(false, (String)"更新游戏异常");
        }
    }

    @RequestMapping(value = "/{gameId}/delete", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Result<String> delete(@PathVariable("gameId") Long gameId) {
        try {
            boolean success = gameService.deleteGame(gameId);
            if (success) {
                return new Result<>(true, (String)"删除游戏成功");
            } else {
                return new Result<>(false, (String)"删除游戏失败");
            }
        } catch (Exception e) {
            logger.error("删除游戏异常: {}", e.getMessage());
            return new Result<>(false, (String)"删除游戏异常");
        }
    }
}