package com.soecode.lyf.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soecode.lyf.dao.CompanionServiceDao;
import com.soecode.lyf.entity.CompanionService;
import com.soecode.lyf.service.CompanionServiceService;

@Service
public class CompanionServiceServiceImpl implements CompanionServiceService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CompanionServiceDao companionServiceDao;

    @Override
    public CompanionService getById(long serviceId) {
        return companionServiceDao.queryById(serviceId);
    }

    @Override
    public List<CompanionService> getList() {
        return companionServiceDao.queryAll(0, 1000);
    }

    @Override
    public List<CompanionService> getByGameId(long gameId) {
        return companionServiceDao.queryByGameId(gameId, 0, 1000);
    }

    @Override
    public List<CompanionService> getByUserId(long userId) {
        return companionServiceDao.queryByUserId(userId, 0, 1000);
    }

    @Override
    @Transactional
    public boolean addService(CompanionService service) {
        try {
            int result = companionServiceDao.addService(service);
            return result > 0;
        } catch (Exception e) {
            logger.error("添加陪玩服务失败: {}", e.getMessage());
            return false;
        }
    }

    @Override
    @Transactional
    public boolean updateService(CompanionService service) {
        try {
            int result = companionServiceDao.updateService(service);
            return result > 0;
        } catch (Exception e) {
            logger.error("更新陪玩服务失败: {}", e.getMessage());
            return false;
        }
    }

    @Override
    @Transactional
    public boolean deleteService(long serviceId) {
        try {
            int result = companionServiceDao.deleteService(serviceId);
            return result > 0;
        } catch (Exception e) {
            logger.error("删除陪玩服务失败: {}", e.getMessage());
            return false;
        }
    }

    @Override
    @Transactional
    public boolean increaseOrderCount(long serviceId) {
        try {
            int result = companionServiceDao.increaseOrderCount(serviceId);
            return result > 0;
        } catch (Exception e) {
            logger.error("增加订单数失败: {}", e.getMessage());
            return false;
        }
    }
}