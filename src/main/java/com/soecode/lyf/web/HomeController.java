package com.soecode.lyf.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soecode.lyf.entity.Order;
import com.soecode.lyf.service.OrderService;

/**
 * 首页控制器
 */
@Controller
public class HomeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OrderService orderService;

    /**
     * 首页
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        try {
            logger.info("开始处理首页请求...");
            
            // 获取订单数据（包含用户关联信息）
            List<Order> orders = orderService.getAllOrders(0, 10);
            
            if (orders == null) {
                logger.warn("订单服务返回null，可能是数据库连接问题");
                model.addAttribute("error", "数据库连接失败");
                model.addAttribute("orderList", new java.util.ArrayList<Order>());
            } else {
                logger.info("成功获取订单数据，数量: {}", orders.size());
                
                // 确保订单数据包含用户信息
                for (Order order : orders) {
                    if (order.getCustomer() == null) {
                        logger.debug("订单ID={} 缺少用户信息，将显示默认信息", order.getOrderId());
                    }
                }
                
                model.addAttribute("orderList", orders);
                
                // 调试信息：打印前3个订单的详细信息
                for (int i = 0; i < Math.min(3, orders.size()); i++) {
                    Order order = orders.get(i);
                    logger.debug("订单{}: ID={}, 游戏={}, 金额={}, 用户={}", 
                        i+1, order.getOrderId(), order.getGameName(), order.getTotalAmount(),
                        order.getCustomer() != null ? order.getCustomer().getNickname() : "匿名");
                }
            }
            
            return "index";
        } catch (Exception e) {
            logger.error("获取首页数据失败: {}", e.getMessage(), e);
            model.addAttribute("error", "获取数据失败: " + e.getMessage());
            model.addAttribute("orderList", new java.util.ArrayList<Order>());
            return "index";
        }
    }

    /**
     * 直接访问index页面的处理
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String indexPage(Model model) {
        return index(model);
    }
}