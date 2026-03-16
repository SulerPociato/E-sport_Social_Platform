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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soecode.lyf.dto.Result;
import com.soecode.lyf.entity.Order;
import com.soecode.lyf.service.OrderService;

/**
 * 订单控制器
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OrderService orderService;

    /**
     * 订单列表页面
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model,
                       @RequestParam(value = "offset", required = false, defaultValue = "0") int offset,
                       @RequestParam(value = "limit", required = false, defaultValue = "20") int limit) {
        try {
            List<Order> orders = orderService.getAllOrders(offset, limit);
            model.addAttribute("list", orders);
            return "order/list";
        } catch (Exception e) {
            logger.error("获取订单列表失败: {}", e.getMessage());
            model.addAttribute("error", "获取订单列表失败");
            return "error";
        }
    }

    /**
     * 订单详情页面
     */
    @RequestMapping(value = "/{orderId}/detail", method = RequestMethod.GET)
    public String detail(@PathVariable("orderId") Long orderId, Model model) {
        try {
            Order order = orderService.getOrderById(orderId);
            if (order == null) {
                model.addAttribute("error", "订单不存在");
                return "error";
            }
            model.addAttribute("order", order);
            return "order/detail";
        } catch (Exception e) {
            logger.error("获取订单详情失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            model.addAttribute("error", "获取订单详情失败");
            return "error";
        }
    }

    /**
     * 创建订单（API接口）
     */
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> create(Order order) {
        try {
            boolean result = orderService.createOrder(order);
            if (result) {
                return new Result<Boolean>(true, "订单创建成功");
            } else {
                return new Result<Boolean>(false, "订单创建失败");
            }
        } catch (Exception e) {
            logger.error("创建订单失败: {}", e.getMessage());
            return new Result<Boolean>(false, "创建订单失败: " + e.getMessage());
        }
    }

    /**
     * 首页订单列表
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        try {
            List<Order> orders = orderService.getAllOrders(0, 10); // 获取前10个订单
            model.addAttribute("orderList", orders);
            return "index";
        } catch (Exception e) {
            logger.error("获取首页订单列表失败: {}", e.getMessage());
            model.addAttribute("error", "获取订单列表失败");
            return "error";
        }
    }

    /**
     * 支付订单（API接口）
     */
    @RequestMapping(value = "/{orderId}/pay", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> pay(@PathVariable("orderId") Long orderId) {
        try {
            boolean result = orderService.payOrder(orderId);
            if (result) {
                return new Result<Boolean>(true, "订单支付成功");
            } else {
                return new Result<Boolean>(false, "订单支付失败");
            }
        } catch (Exception e) {
            logger.error("支付订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return new Result<Boolean>(false, "支付订单失败: " + e.getMessage());
        }
    }

    /**
     * 开始订单（打手接单）
     */
    @RequestMapping(value = "/{orderId}/start", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> start(@PathVariable("orderId") Long orderId) {
        try {
            boolean result = orderService.startOrder(orderId);
            if (result) {
                return new Result<Boolean>(true, "订单开始成功");
            } else {
                return new Result<Boolean>(false, "订单开始失败");
            }
        } catch (Exception e) {
            logger.error("开始订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return new Result<Boolean>(false, "开始订单失败: " + e.getMessage());
        }
    }

    /**
     * 完成订单
     */
    @RequestMapping(value = "/{orderId}/complete", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> complete(@PathVariable("orderId") Long orderId) {
        try {
            boolean result = orderService.completeOrder(orderId);
            if (result) {
                return new Result<Boolean>(true, "订单完成成功");
            } else {
                return new Result<Boolean>(false, "订单完成失败");
            }
        } catch (Exception e) {
            logger.error("完成订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return new Result<Boolean>(false, "完成订单失败: " + e.getMessage());
        }
    }

    /**
     * 取消订单
     */
    @RequestMapping(value = "/{orderId}/cancel", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> cancel(@PathVariable("orderId") Long orderId) {
        try {
            boolean result = orderService.cancelOrder(orderId);
            if (result) {
                return new Result<Boolean>(true, "订单取消成功");
            } else {
                return new Result<Boolean>(false, "订单取消失败");
            }
        } catch (Exception e) {
            logger.error("取消订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return new Result<Boolean>(false, "取消订单失败: " + e.getMessage());
        }
    }

    /**
     * 删除订单
     */
    @RequestMapping(value = "/{orderId}/delete", method = RequestMethod.POST)
    @ResponseBody
    public Result<Boolean> delete(@PathVariable("orderId") Long orderId) {
        try {
            boolean result = orderService.deleteOrder(orderId);
            if (result) {
                return new Result<Boolean>(true, "订单删除成功");
            } else {
                return new Result<Boolean>(false, "订单删除失败");
            }
        } catch (Exception e) {
            logger.error("删除订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return new Result<Boolean>(false, "删除订单失败: " + e.getMessage());
        }
    }

    /**
     * 获取用户订单列表（API接口）
     */
    @RequestMapping(value = "/customer/{customerId}/list", method = RequestMethod.GET)
    @ResponseBody
    public Result<List<Order>> getCustomerOrders(@PathVariable("customerId") Long customerId,
                                                 @RequestParam(value = "offset", required = false, defaultValue = "0") int offset,
                                                 @RequestParam(value = "limit", required = false, defaultValue = "20") int limit) {
        try {
            List<Order> orders = orderService.getOrdersByCustomer(customerId, offset, limit);
            return new Result<List<Order>>(true, orders);
        } catch (Exception e) {
            logger.error("获取用户订单失败，用户ID: {}, 错误: {}", customerId, e.getMessage());
            return new Result<List<Order>>(false, "获取用户订单失败: " + e.getMessage());
        }
    }

    /**
     * 获取打手订单列表（API接口）
     */
    @RequestMapping(value = "/player/{playerId}/list", method = RequestMethod.GET)
    @ResponseBody
    public Result<List<Order>> getPlayerOrders(@PathVariable("playerId") Long playerId,
                                               @RequestParam(value = "offset", required = false, defaultValue = "0") int offset,
                                               @RequestParam(value = "limit", required = false, defaultValue = "20") int limit) {
        try {
            List<Order> orders = orderService.getOrdersByPlayer(playerId, offset, limit);
            return new Result<List<Order>>(true, orders);
        } catch (Exception e) {
            logger.error("获取打手订单失败，打手ID: {}, 错误: {}", playerId, e.getMessage());
            return new Result<List<Order>>(false, "获取打手订单失败: " + e.getMessage());
        }
    }
}