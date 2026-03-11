package com.soecode.lyf.web;

import com.soecode.lyf.dto.Result;
import com.soecode.lyf.entity.User;
import com.soecode.lyf.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserService userService;

    // ==================== 原有方法（保留） ====================
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<User> list = userService.getList();
        model.addAttribute("list", list);
        return "user/list";
    }

    @RequestMapping(value = "/{userId}/detail", method = RequestMethod.GET)
    public String detail(@PathVariable("userId") Long userId, Model model) {
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

    // ==================== 新增：登录接口 ====================
    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<User> login(String username, String password, HttpSession session) {
        // 参数校验
        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            return new Result<>(false, "用户名或密码不能为空");
        }

        // 根据用户名查询用户
        User user = userService.getByUsername(username);
        if (user == null) {
            return new Result<>(false, "用户不存在");
        }

        // 验证密码（暂用明文比对）
        if (!user.getPassword().equals(password)) {
            return new Result<>(false, "密码错误");
        }

        // 检查用户状态
        if (user.getStatus() != 1) {
            return new Result<>(false, "账号已被禁用");
        }

        // 登录成功，将用户存入session
        session.setAttribute("user", user);

        // 返回用户信息（隐藏密码）
        user.setPassword(null);
        return new Result<>(true, user);
    }

    // ==================== 新增：注册接口 ====================
    @RequestMapping(value = "/register", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<String> register(User user) {
        // 校验必填字段
        if (user.getUsername() == null || user.getUsername().trim().isEmpty() ||
                user.getPassword() == null || user.getPassword().trim().isEmpty()) {
            return new Result<>(false, "用户名和密码不能为空");
        }
        // 检查用户名是否已存在
        User existing = userService.getByUsername(user.getUsername());
        if (existing != null) {
            return new Result<>(false, "用户名已存在");
        }

        // 补全默认字段
        if (user.getNickname() == null || user.getNickname().trim().isEmpty()) {
            user.setNickname(user.getUsername());
        }
        user.setStatus(1);          // 正常状态
        user.setLevel(1);            // 默认等级
        user.setRating(5.0);         // 默认评分

        // 调用service添加用户
        boolean success = userService.addUser(user);
        if (success) {
            return new Result<>(true, "注册成功");
        } else {
            return new Result<>(false, "注册失败，请稍后重试");
        }
    }

    // ==================== 新增：退出登录 ====================
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    @ResponseBody
    public Result<String> logout(HttpSession session) {
        session.invalidate();
        return new Result<>(true, "退出成功");
    }

    // ==================== 新增：获取当前登录用户 ====================
    @RequestMapping(value = "/current", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<User> currentUser(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return new Result<>(false, "未登录");
        }
        user.setPassword(null); // 隐藏密码
        return new Result<>(true, user);
    }

    // ==================== 新增：修改个人信息 ====================
    @RequestMapping(value = "/update", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Result<String> update(User updatedUser, HttpSession session) {
        // 从session获取当前登录用户
        User currentUser = (User) session.getAttribute("user");
        if (currentUser == null) {
            return new Result<>(false, "请先登录");
        }

        // 设置要更新的用户ID为当前用户ID
        updatedUser.setUserId(currentUser.getUserId());

        // 调用service更新
        boolean success = userService.updateUser(updatedUser);
        if (success) {
            // 更新session中的用户信息（重新查询一次或直接更新部分字段）
            User newUser = userService.getById(currentUser.getUserId());
            newUser.setPassword(null);
            session.setAttribute("user", newUser);
            return new Result<>(true, "修改成功");
        } else {
            return new Result<>(false, "修改失败");
        }
    }
}