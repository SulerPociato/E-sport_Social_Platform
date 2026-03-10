package com.soecode.lyf.service;

import java.util.List;

import com.soecode.lyf.entity.CompanionService;

/**
 * 陪玩服务接口
 */
public interface CompanionServiceService {

    /**
     * 根据ID获取陪玩服务
     */
    CompanionService getById(long serviceId);

    /**
     * 获取所有陪玩服务列表
     */
    List<CompanionService> getList();

    /**
     * 根据游戏ID获取陪玩服务列表
     */
    List<CompanionService> getByGameId(long gameId);

    /**
     * 根据用户ID获取陪玩服务列表
     */
    List<CompanionService> getByUserId(long userId);

    /**
     * 添加陪玩服务
     */
    boolean addService(CompanionService service);

    /**
     * 更新陪玩服务
     */
    boolean updateService(CompanionService service);

    /**
     * 删除陪玩服务（逻辑删除）
     */
    boolean deleteService(long serviceId);

    /**
     * 增加订单数
     */
    boolean increaseOrderCount(long serviceId);
}