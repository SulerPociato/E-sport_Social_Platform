package com.soecode.lyf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.soecode.lyf.entity.CompanionService;

public interface CompanionServiceDao {

    /**
     * 通过ID查询陪玩服务
     */
    CompanionService queryById(long serviceId);

    /**
     * 查询所有陪玩服务
     */
    List<CompanionService> queryAll(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 根据游戏ID查询陪玩服务
     */
    List<CompanionService> queryByGameId(@Param("gameId") long gameId, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 根据用户ID查询陪玩服务
     */
    List<CompanionService> queryByUserId(@Param("userId") long userId, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 添加陪玩服务
     */
    int addService(CompanionService service);

    /**
     * 更新陪玩服务
     */
    int updateService(CompanionService service);

    /**
     * 删除陪玩服务
     */
    int deleteService(long serviceId);

    /**
     * 增加订单数
     */
    int increaseOrderCount(long serviceId);
}