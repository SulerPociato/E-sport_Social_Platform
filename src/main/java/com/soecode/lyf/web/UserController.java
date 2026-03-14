package com.soecode.lyf.web;

import com.soecode.lyf.dto.Result;
import com.soecode.lyf.entity.User;
import com.soecode.lyf.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    /**
     * 用户登录
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<User> login(String username, String password, HttpSession session) {
        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            return new Result<>(false, "用户名或密码不能为空");
        }
        User user = userService.getByUsername(username);
        if (user == null) {
            return new Result<>(false, "用户不存在");
        }
        if (!user.getPassword().equals(password)) {
            return new Result<>(false, "密码错误");
        }
        if (user.getStatus() != 1) {
            return new Result<>(false, "账号已被禁用");
        }
        user.setPassword(null);
        session.setAttribute("user", user);
        return new Result<>(true, user);
    }

    /**
     * 用户注册
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<String> register(User user) {
        if (user.getUsername() == null || user.getUsername().trim().isEmpty() ||
                user.getPassword() == null || user.getPassword().trim().isEmpty()) {
            return new Result<>(false, "用户名和密码不能为空");
        }
        User existing = userService.getByUsername(user.getUsername());
        if (existing != null) {
            return new Result<>(false, "用户名已存在");
        }
        // 设置默认值
        if (user.getNickname() == null || user.getNickname().trim().isEmpty()) {
            user.setNickname(user.getUsername());
        }
        user.setStatus(1);
        user.setOrderCount(0);
        user.setPlayerType(0);
        // 其他字段可选，保持null
        boolean success = userService.addUser(user);
        if (success) {
            return new Result<>(true, "注册成功");
        } else {
            return new Result<>(false, "注册失败，请稍后重试");
        }
    }

    /**
     * 退出登录
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    @ResponseBody
    public Result<String> logout(HttpSession session) {
        session.invalidate();
        return new Result<>(true, "退出成功");
    }
    /**
     * 获取当前登录用户信息
     */
    @RequestMapping(value = "/current", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<User> currentUser(HttpSession session) {
        User sessionUser = (User) session.getAttribute("user");
        if (sessionUser == null) {
            return new Result<>(false, "未登录");
        }
        User user = userService.getById(sessionUser.getUserId());
        if (user == null) {
            session.invalidate();
            return new Result<>(false, "用户不存在");
        }
        user.setPassword(null);
        return new Result<>(true, user);
    }

    /**
     * 修改个人信息（仅允许修改部分字段）
     */
    @RequestMapping(value = "/updateProfile", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<String> updateProfile(HttpSession session,
                                        String nickname, String avatar, Integer gender,
                                        String description, String phone, String email) {
        User sessionUser = (User) session.getAttribute("user");
        if (sessionUser == null) {
            return new Result<>(false, "未登录");
        }
        User user = userService.getById(sessionUser.getUserId());
        if (user == null) {
            session.invalidate();
            return new Result<>(false, "用户不存在");
        }
        // 更新字段
        if (nickname != null && !nickname.trim().isEmpty()) {
            user.setNickname(nickname);
        }
        if (avatar != null) {
            user.setAvatar(avatar);
        }
        if (gender != null) {
            user.setGender(gender);
        }
        if (description != null) {
            user.setDescription(description);
        }
        if (phone != null) {
            user.setPhone(phone);
        }
        if (email != null) {
            user.setEmail(email);
        }
        boolean success = userService.updateUser(user);
        if (success) {
            // 更新 session 中的用户信息（去除密码）
            user.setPassword(null);
            session.setAttribute("user", user);
            return new Result<>(true, "修改成功");
        } else {
            return new Result<>(false, "修改失败");
        }
    }

    /**
     * 获取所有用户列表（可选，用于管理）
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(org.springframework.ui.Model model) {
        List<User> list = userService.getList();
        model.addAttribute("list", list);
        return "user/list";
    }

    /**
     * 查看用户详情（可选）
     */
    @RequestMapping(value = "/{userId}/detail", method = RequestMethod.GET)
    public String detail(@PathVariable("userId") Long userId, org.springframework.ui.Model model) {
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