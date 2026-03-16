package com.soecode.lyf.web;

import com.soecode.lyf.dao.PaymentOrderDao;
import com.soecode.lyf.dto.Result;
import com.soecode.lyf.entity.PaymentOrder;
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
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/account")
public class AccountController {

    private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

    @Autowired
    private AccountService accountService;

    @Autowired
    private PaymentOrderDao paymentOrderDao;

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

    /**
     * 创建支付订单（模拟）
     * @param amount 金额
     * @param method 支付方式：wechat/alipay
     */
    @RequestMapping(value = "/createPayment", method = RequestMethod.POST)
    @ResponseBody
    public Result<Map<String, String>> createPayment(HttpSession session, BigDecimal amount, String method) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return new Result<>(false, "未登录");
        }
        if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
            return new Result<>(false, "金额必须大于0");
        }
        if (!"wechat".equals(method) && !"alipay".equals(method)) {
            return new Result<>(false, "不支持的支付方式");
        }

        // 生成唯一订单号
        String orderNo = "PAY" + System.currentTimeMillis() + (int)(Math.random()*1000);

        PaymentOrder order = new PaymentOrder();
        order.setOrderNo(orderNo);
        order.setUserId(user.getUserId());
        order.setAmount(amount);
        order.setStatus(0); // 待支付
        order.setPaymentMethod(method);
        paymentOrderDao.insert(order);

        // 模拟支付链接（实际应该是微信/支付宝生成的链接）
        String payUrl = "http://localhost:8080/ssm_war/pay/demo?orderNo=" + orderNo;

        Map<String, String> result = new HashMap<>();
        result.put("orderNo", orderNo);
        result.put("payUrl", payUrl);
        return new Result<>(true, result);
    }

    /**
     * 支付成功回调（模拟用户点击“支付完成”）
     */
    @RequestMapping(value = "/paymentCallback", method = RequestMethod.POST)
    @ResponseBody
    public Result<String> paymentCallback(HttpSession session, String orderNo) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return new Result<>(false, "未登录");
        }
        PaymentOrder order = paymentOrderDao.queryByOrderNo(orderNo);
        if (order == null) {
            return new Result<>(false, "订单不存在");
        }
        if (order.getUserId() != user.getUserId()) {
            return new Result<>(false, "无权操作");
        }
        if (order.getStatus() == 1) {
            return new Result<>(false, "订单已支付");
        }
        if (order.getStatus() != 0) {
            return new Result<>(false, "订单状态异常");
        }

        // 更新订单状态
        paymentOrderDao.updateStatus(orderNo, 1, new Date());

        // 增加余额
        accountService.recharge(user.getUserId(), order.getAmount());

        return new Result<>(true, "支付成功");
    }
}