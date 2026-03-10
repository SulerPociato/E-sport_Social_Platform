package com.soecode.lyf.dao;

import java.math.BigDecimal;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.soecode.lyf.BaseTest;
import com.soecode.lyf.entity.CompanionService;

public class CompanionServiceDaoTest extends BaseTest {

    @Autowired
    private CompanionServiceDao companionServiceDao;

    @Test
    public void testQueryById() throws Exception {
        long serviceId = 1;
        CompanionService service = companionServiceDao.queryById(serviceId);
        System.out.println("查询陪玩服务结果: " + service);
        if (service != null) {
            System.out.println("服务标题: " + service.getTitle());
            System.out.println("游戏名称: " + (service.getGame() != null ? service.getGame().getName() : "未知"));
            System.out.println("用户昵称: " + (service.getUser() != null ? service.getUser().getNickname() : "未知"));
        }
    }

    @Test
    public void testQueryAll() throws Exception {
        List<CompanionService> services = companionServiceDao.queryAll(0, 100);
        System.out.println("查询所有陪玩服务，数量: " + services.size());
        for (CompanionService service : services) {
            System.out.println("服务ID: " + service.getServiceId() +
                    ", 标题: " + service.getTitle() +
                    ", 价格: " + service.getPrice());
        }
    }

    @Test
    public void testQueryByGameId() throws Exception {
        long gameId = 1;
        List<CompanionService> services = companionServiceDao.queryByGameId(gameId, 0, 100);
        System.out.println("查询游戏ID为" + gameId + "的陪玩服务，数量: " + services.size());
        for (CompanionService service : services) {
            System.out.println("服务ID: " + service.getServiceId() +
                    ", 标题: " + service.getTitle() +
                    ", 评分: " + service.getRating());
        }
    }

    @Test
    public void testQueryByUserId() throws Exception {
        long userId = 1;
        List<CompanionService> services = companionServiceDao.queryByUserId(userId, 0, 100);
        System.out.println("查询用户ID为" + userId + "的陪玩服务，数量: " + services.size());
        for (CompanionService service : services) {
            System.out.println("服务ID: " + service.getServiceId() +
                    ", 标题: " + service.getTitle() +
                    ", 游戏: " + (service.getGame() != null ? service.getGame().getName() : "未知"));
        }
    }

    @Test
    public void testAddService() throws Exception {
        CompanionService service = new CompanionService();
        service.setUserId(1);
        service.setGameId(1);
        service.setTitle("测试陪玩服务");
        service.setDescription("这是一个测试陪玩服务，用于单元测试");
        service.setPrice(new BigDecimal("50.00"));
        service.setUnit("小时");
        service.setRating(new BigDecimal("5.0"));
        service.setOrderCount(0);
        service.setStatus(1);

        int result = companionServiceDao.addService(service);
        System.out.println("添加陪玩服务结果: " + result);
        System.out.println("生成的服务ID: " + service.getServiceId());

        // 验证添加结果
        CompanionService addedService = companionServiceDao.queryById(service.getServiceId());
        System.out.println("验证添加的服务: " + addedService);
    }

    @Test
    public void testUpdateService() throws Exception {
        long serviceId = 1;
        CompanionService service = companionServiceDao.queryById(serviceId);
        if (service != null) {
            String originalTitle = service.getTitle();
            service.setTitle(originalTitle + " - 修改版");
            service.setPrice(new BigDecimal("60.00"));

            int result = companionServiceDao.updateService(service);
            System.out.println("更新陪玩服务结果: " + result);

            // 验证更新结果
            CompanionService updatedService = companionServiceDao.queryById(serviceId);
            System.out.println("更新后的服务标题: " + updatedService.getTitle());
            System.out.println("更新后的价格: " + updatedService.getPrice());
        }
    }

    @Test
    public void testDeleteService() throws Exception {
        long serviceId = 2;
        int result = companionServiceDao.deleteService(serviceId);
        System.out.println("删除陪玩服务结果: " + result);

        // 验证删除结果（逻辑删除，状态变为0）
        CompanionService deletedService = companionServiceDao.queryById(serviceId);
        if (deletedService != null) {
            System.out.println("删除后的服务状态: " + deletedService.getStatus());
        }
    }

    @Test
    public void testIncreaseOrderCount() throws Exception {
        long serviceId = 1;

        // 先查询当前订单数
        CompanionService service = companionServiceDao.queryById(serviceId);
        if (service != null) {
            int originalCount = service.getOrderCount();
            System.out.println("原始订单数: " + originalCount);

            // 增加订单数
            int result = companionServiceDao.increaseOrderCount(serviceId);
            System.out.println("增加订单数结果: " + result);

            // 验证增加结果
            CompanionService updatedService = companionServiceDao.queryById(serviceId);
            System.out.println("增加后的订单数: " + updatedService.getOrderCount());
        }
    }

    @Test
    public void testCompanionServiceCRUD() throws Exception {
        // 综合测试：增删改查
        System.out.println("=== 开始陪玩服务CRUD综合测试 ===");

        // 1. 添加陪玩服务
        CompanionService newService = new CompanionService();
        newService.setUserId(1);
        newService.setGameId(1);
        newService.setTitle("CRUD测试陪玩服务");
        newService.setDescription("用于CRUD综合测试的陪玩服务");
        newService.setPrice(new BigDecimal("99.00"));
        newService.setUnit("小时");
        newService.setRating(new BigDecimal("4.8"));
        newService.setOrderCount(0);
        newService.setStatus(1);

        int addResult = companionServiceDao.addService(newService);
        System.out.println("添加结果: " + addResult);
        long testServiceId = newService.getServiceId();
        System.out.println("测试服务ID: " + testServiceId);

        // 2. 查询陪玩服务
        CompanionService queriedService = companionServiceDao.queryById(testServiceId);
        System.out.println("查询结果: " + queriedService);

        // 3. 更新陪玩服务
        queriedService.setTitle("修改后的标题");
        queriedService.setPrice(new BigDecimal("88.00"));
        int updateResult = companionServiceDao.updateService(queriedService);
        System.out.println("更新结果: " + updateResult);

        // 4. 增加订单数
        int increaseResult = companionServiceDao.increaseOrderCount(testServiceId);
        System.out.println("增加订单数结果: " + increaseResult);

        // 5. 删除陪玩服务（逻辑删除）
        int deleteResult = companionServiceDao.deleteService(testServiceId);
        System.out.println("删除结果: " + deleteResult);

        // 6. 验证删除
        CompanionService afterDelete = companionServiceDao.queryById(testServiceId);
        System.out.println("删除后状态: " + (afterDelete != null ? afterDelete.getStatus() : "服务不存在"));

        System.out.println("=== 陪玩服务CRUD综合测试完成 ===");
    }
}