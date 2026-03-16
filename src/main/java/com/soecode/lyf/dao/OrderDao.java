package com.soecode.lyf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.soecode.lyf.entity.Order;

/**
 * 订单DAO接口
 */
public interface OrderDao {

    /**
     * 查询所有订单
     */
    List<Order> queryAll(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 根据订单ID查询订单
     */
    Order queryById(long orderId);

    /**
     * 根据订单号查询订单
     */
    Order queryByOrderNo(String orderNo);

    /**
     * 根据用户ID查询订单（作为客户）
     */
    List<Order> queryByCustomerId(@Param("customerId") long customerId, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 根据用户ID查询订单（作为打手）
     */
    List<Order> queryByPlayerId(@Param("playerId") long playerId, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 根据状态查询订单
     */
    List<Order> queryByStatus(@Param("status") int status, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 添加订单
     */
    int insert(Order order);

    /**
     * 更新订单信息
     */
    int update(Order order);

    /**
     * 更新订单状态
     */
    int updateStatus(@Param("orderId") long orderId, @Param("status") int status);

    /**
     * 删除订单（逻辑删除）
     */
    int delete(long orderId);

    /**
     * 物理删除订单（永久删除）
     */
    int deletePermanently(long orderId);

    /**
     * 统计订单数量
     */
    int countAll();

    /**
     * 根据用户统计订单数量
     */
    int countByCustomerId(long customerId);

    /**
     * 根据打手统计订单数量
     */
    int countByPlayerId(long playerId);
}