package com.soecode.lyf.service.impl;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soecode.lyf.dao.OrderDao;
import com.soecode.lyf.entity.Order;
import com.soecode.lyf.service.OrderService;

/**
 * 订单服务实现类
 */
@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Order> getAllOrders(int offset, int limit) {
        try {
            return orderDao.queryAll(offset, limit);
        } catch (Exception e) {
            logger.error("获取所有订单失败: {}", e.getMessage());
            return null;
        }
    }

    @Override
    public Order getOrderById(long orderId) {
        try {
            return orderDao.queryById(orderId);
        } catch (Exception e) {
            logger.error("根据ID获取订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return null;
        }
    }

    @Override
    public Order getOrderByNo(String orderNo) {
        try {
            return orderDao.queryByOrderNo(orderNo);
        } catch (Exception e) {
            logger.error("根据订单号获取订单失败，订单号: {}, 错误: {}", orderNo, e.getMessage());
            return null;
        }
    }

    @Override
    public List<Order> getOrdersByCustomer(long customerId, int offset, int limit) {
        try {
            return orderDao.queryByCustomerId(customerId, offset, limit);
        } catch (Exception e) {
            logger.error("获取用户订单失败，用户ID: {}, 错误: {}", customerId, e.getMessage());
            return null;
        }
    }

    @Override
    public List<Order> getOrdersByPlayer(long playerId, int offset, int limit) {
        try {
            return orderDao.queryByPlayerId(playerId, offset, limit);
        } catch (Exception e) {
            logger.error("获取打手订单失败，打手ID: {}, 错误: {}", playerId, e.getMessage());
            return null;
        }
    }

    @Override
    public List<Order> getOrdersByStatus(int status, int offset, int limit) {
        try {
            return orderDao.queryByStatus(status, offset, limit);
        } catch (Exception e) {
            logger.error("根据状态获取订单失败，状态: {}, 错误: {}", status, e.getMessage());
            return null;
        }
    }

    @Override
    public boolean createOrder(Order order) {
        try {
            // 验证必填字段
            if (order.getGameName() == null || order.getGameName().trim().isEmpty()) {
                logger.error("创建订单失败: 游戏名称不能为空");
                return false;
            }
            if (order.getDetail() == null || order.getDetail().trim().isEmpty()) {
                logger.error("创建订单失败: 订单描述不能为空");
                return false;
            }
            
            // 生成订单号
            String orderNo = "ORD" + System.currentTimeMillis();
            order.setOrderNo(orderNo);
            order.setStatus(0); // 待支付状态
            order.setCreateTime(new Date());

            int result = orderDao.insert(order);
            return result > 0;
        } catch (Exception e) {
            logger.error("创建订单失败: {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean updateOrder(Order order) {
        try {
            int result = orderDao.update(order);
            return result > 0;
        } catch (Exception e) {
            logger.error("更新订单失败，订单ID: {}, 错误: {}", order.getOrderId(), e.getMessage());
            return false;
        }
    }

    @Override
    public boolean updateOrderStatus(long orderId, int status) {
        try {
            int result = orderDao.updateStatus(orderId, status);

            // 如果是支付或完成状态，更新相应时间
            if (result > 0) {
                Order order = orderDao.queryById(orderId);
                if (order != null) {
                    if (status == 1) { // 已支付
                        order.setPayTime(new Date());
                    } else if (status == 3) { // 已完成
                        order.setCompleteTime(new Date());
                    }
                    orderDao.update(order);
                }
            }

            return result > 0;
        } catch (Exception e) {
            logger.error("更新订单状态失败，订单ID: {}, 状态: {}, 错误: {}", orderId, status, e.getMessage());
            return false;
        }
    }

    @Override
    public boolean payOrder(long orderId) {
        return updateOrderStatus(orderId, 1); // 更新为已支付状态
    }

    @Override
    public boolean startOrder(long orderId) {
        return updateOrderStatus(orderId, 2); // 更新为进行中状态
    }

    @Override
    public boolean completeOrder(long orderId) {
        return updateOrderStatus(orderId, 3); // 更新为已完成状态
    }

    @Override
    public boolean cancelOrder(long orderId) {
        return updateOrderStatus(orderId, 4); // 更新为已取消状态
    }

    @Override
    public boolean deleteOrder(long orderId) {
        try {
            int result = orderDao.delete(orderId);
            return result > 0;
        } catch (Exception e) {
            logger.error("删除订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return false;
        }
    }

    @Override
    public boolean deleteOrderPermanently(long orderId) {
        try {
            // 添加确认逻辑，防止误删
            Order order = orderDao.queryById(orderId);
            if (order == null) {
                logger.error("物理删除失败：订单不存在，订单ID: {}", orderId);
                return false;
            }
            
            logger.warn("执行物理删除操作，订单ID: {}, 订单号: {}", orderId, order.getOrderNo());
            
            int result = orderDao.deletePermanently(orderId);
            return result > 0;
        } catch (Exception e) {
            logger.error("物理删除订单失败，订单ID: {}, 错误: {}", orderId, e.getMessage());
            return false;
        }
    }

    @Override
    public int getOrderCount() {
        try {
            return orderDao.countAll();
        } catch (Exception e) {
            logger.error("统计订单总数失败: {}", e.getMessage());
            return 0;
        }
    }

    @Override
    public int getOrderCountByCustomer(long customerId) {
        try {
            return orderDao.countByCustomerId(customerId);
        } catch (Exception e) {
            logger.error("统计用户订单数失败，用户ID: {}, 错误: {}", customerId, e.getMessage());
            return 0;
        }
    }

    @Override
    public int getOrderCountByPlayer(long playerId) {
        try {
            return orderDao.countByPlayerId(playerId);
        } catch (Exception e) {
            logger.error("统计打手订单数失败，打手ID: {}, 错误: {}", playerId, e.getMessage());
            return 0;
        }
    }
}