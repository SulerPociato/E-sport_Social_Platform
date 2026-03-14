package com.soecode.lyf.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soecode.lyf.entity.User;
import com.soecode.lyf.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<User> list = userService.getList();
        model.addAttribute("list", list);
        return "user/list";
    }

    @RequestMapping(value = "/{userId}/detail", method = RequestMethod.GET)
    public String detail(Long userId, Model model) {
        if (userId == null) {
            return "redirect:/user/list";
        }
        User user = userService.getById(userId);
        if (user == null) {
            return "forward:/user/list";
        }
        model.addAttribute("user", user);
        return "user/detail";
    }

    /**
     * 显示登录页面
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage() {
        return "login";
    }

    /**
     * 处理登录请求
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password, Model model) {
        // 这里应该实现实际的登录逻辑
        // 暂时返回登录页面
        return "login";
    }

    /**
     * 显示注册页面
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegisterPage() {
        return "register";
    }

    /**
     * 处理注册请求
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(User user, Model model) {
        // 这里应该实现实际的注册逻辑
        // 暂时重定向到登录页面
        return "redirect:/user/login";
    }
}