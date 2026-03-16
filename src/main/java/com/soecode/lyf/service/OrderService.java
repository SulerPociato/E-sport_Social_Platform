package com.soecode.lyf.service;

import java.util.List;

import com.soecode.lyf.entity.Order;

/**
 * 订单服务接口
 */
public interface OrderService {

    /**
     * 获取所有订单
     */
    List<Order> getAllOrders(int offset, int limit);

    /**
     * 根据ID获取订单
     */
    Order getOrderById(long orderId);

    /**
     * 根据订单号获取订单
     */
    Order getOrderByNo(String orderNo);

    /**
     * 获取用户作为客户的订单
     */
    List<Order> getOrdersByCustomer(long customerId, int offset, int limit);

    /**
     * 获取用户作为打手的订单
     */
    List<Order> getOrdersByPlayer(long playerId, int offset, int limit);

    /**
     * 根据状态获取订单
     */
    List<Order> getOrdersByStatus(int status, int offset, int limit);

    /**
     * 创建订单
     */
    boolean createOrder(Order order);

    /**
     * 更新订单
     */
    boolean updateOrder(Order order);

    /**
     * 更新订单状态
     */
    boolean updateOrderStatus(long orderId, int status);

    /**
     * 支付订单
     */
    boolean payOrder(long orderId);

    /**
     * 开始订单（打手接单）
     */
    boolean startOrder(long orderId);

    /**
     * 完成订单
     */
    boolean completeOrder(long orderId);

    /**
     * 取消订单
     */
    boolean cancelOrder(long orderId);

    /**
     * 删除订单（逻辑删除）
     */
    boolean deleteOrder(long orderId);

    /**
     * 物理删除订单（永久删除）
     */
    boolean deleteOrderPermanently(long orderId);

    /**
     * 统计订单总数
     */
    int getOrderCount();

    /**
     * 统计用户订单数
     */
    int getOrderCountByCustomer(long customerId);

    /**
     * 统计打手订单数
     */
    int getOrderCountByPlayer(long playerId);
}