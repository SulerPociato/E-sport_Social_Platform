package com.soecode.lyf.web;

import com.soecode.lyf.dto.Result;
import com.soecode.lyf.entity.User;
import com.soecode.lyf.service.AccountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;

@Controller
@RequestMapping("/account")
public class AccountController {

    private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

    @Autowired
    private AccountService accountService;

    /**
     * 获取当前用户余额
     */
    @RequestMapping(value = "/balance", method = RequestMethod.GET)
    @ResponseBody
    public Result<BigDecimal> getBalance(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return new Result<>(false, "未登录");
        }
        BigDecimal balance = accountService.getBalance(user.getUserId());
        return new Result<>(true, balance);
    }

    /**
     * 充值
     * @param amount 充值金额
     */
    @RequestMapping(value = "/recharge", method = RequestMethod.POST)
    @ResponseBody
    public Result<String> recharge(HttpSession session, BigDecimal amount) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return new Result<>(false, "未登录");
        }
        if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
            return new Result<>(false, "金额必须大于0");
        }
        boolean success = accountService.recharge(user.getUserId(), amount);
        if (success) {
            return new Result<>(true, "充值成功");
        } else {
            return new Result<>(false, "充值失败");
        }
    }
}