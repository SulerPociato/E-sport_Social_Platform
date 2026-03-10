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
import com.soecode.lyf.entity.CompanionService;
import com.soecode.lyf.service.CompanionServiceService;

@Controller
@RequestMapping("/companion")
public class CompanionServiceController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CompanionServiceService companionServiceService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<CompanionService> list = companionServiceService.getList();
        model.addAttribute("list", list);
        return "companion/list";
    }

    @RequestMapping(value = "/game/{gameId}", method = RequestMethod.GET)
    public String listByGame(@PathVariable("gameId") Long gameId, Model model) {
        List<CompanionService> list = companionServiceService.getByGameId(gameId);
        model.addAttribute("list", list);
        model.addAttribute("gameId", gameId);
        return "companion/game_list";
    }

    @RequestMapping(value = "/user/{userId}", method = RequestMethod.GET)
    public String listByUser(@PathVariable("userId") Long userId, Model model) {
        List<CompanionService> list = companionServiceService.getByUserId(userId);
        model.addAttribute("list", list);
        model.addAttribute("userId", userId);
        return "companion/user_list";
    }

    @RequestMapping(value = "/{serviceId}/detail", method = RequestMethod.GET)
    public String detail(@PathVariable("serviceId") Long serviceId, Model model) {
        if (serviceId == null) {
            return "redirect:/companion/list";
        }
        CompanionService service = companionServiceService.getById(serviceId);
        if (service == null) {
            return "forward:/companion/list";
        }
        model.addAttribute("service", service);
        return "companion/detail";
    }

    @RequestMapping(value = "/{serviceId}/json", method = RequestMethod.GET, produces = {
            "application/json; charset=utf-8" })
    @ResponseBody
    public Result<CompanionService> detailJson(@PathVariable("serviceId") Long serviceId) {
        if (serviceId == null) {
            return new Result<CompanionService>(false, "服务ID不能为空");
        }
        CompanionService service = companionServiceService.getById(serviceId);
        if (service == null) {
            return new Result<CompanionService>(false, "服务不存在");
        }
        return new Result<CompanionService>(true, service);
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Result<String> add(CompanionService service) {
        try {
            boolean success = companionServiceService.addService(service);
            if (success) {
                return new Result<>(true, "添加陪玩服务成功");
            } else {
                return new Result<>(false, "添加陪玩服务失败");
            }
        } catch (Exception e) {
            logger.error("添加陪玩服务异常: {}", e.getMessage());
            return new Result<>(false, "添加陪玩服务异常");
        }
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Result<String> update(CompanionService service) {
        try {
            boolean success = companionServiceService.updateService(service);
            if (success) {
                return new Result<>(true, "更新陪玩服务成功");
            } else {
                return new Result<>(false, "更新陪玩服务失败");
            }
        } catch (Exception e) {
            logger.error("更新陪玩服务异常: {}", e.getMessage());
            return new Result<>(false, "更新陪玩服务异常");
        }
    }

    @RequestMapping(value = "/{serviceId}/delete", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Result<String> delete(@PathVariable("serviceId") Long serviceId) {
        try {
            boolean success = companionServiceService.deleteService(serviceId);
            if (success) {
                return new Result<>(true, "删除陪玩服务成功");
            } else {
                return new Result<>(false, "删除陪玩服务失败");
            }
        } catch (Exception e) {
            logger.error("删除陪玩服务异常: {}", e.getMessage());
            return new Result<>(false, "删除陪玩服务异常");
        }
    }

    @RequestMapping(value = "/{serviceId}/order", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Result<String> increaseOrder(@PathVariable("serviceId") Long serviceId) {
        try {
            boolean success = companionServiceService.increaseOrderCount(serviceId);
            if (success) {
                return new Result<>(true, "增加订单数成功");
            } else {
                return new Result<>(false, "增加订单数失败");
            }
        } catch (Exception e) {
            logger.error("增加订单数异常: {}", e.getMessage());
            return new Result<>(false, "增加订单数异常");
        }
    }
}