package com.soecode.lyf.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.soecode.lyf.BaseTest;
import com.soecode.lyf.entity.CompanionService;
import com.soecode.lyf.service.CompanionServiceService;

public class CompanionServiceServiceImplTest extends BaseTest {

    @Autowired
    private CompanionServiceService companionServiceService;

    @Test
    public void testGetById() throws Exception {
        long serviceId = 1;
        CompanionService service = companionServiceService.getById(serviceId);
        System.out.println("Service层查询陪玩服务结果: " + service);
        if (service != null) {
            System.out.println("服务标题: " + service.getTitle());
            System.out.println("游戏信息: " + (service.getGame() != null ? service.getGame().getName() : "未知"));
            System.out.println("用户信息: " + (service.getUser() != null ? service.getUser().getNickname() : "未知"));
        }
    }

    @Test
    public void testGetList() throws Exception {
        List<CompanionService> services = companionServiceService.getList();
        System.out.println("Service层查询所有陪玩服务，数量: " + services.size());
        for (CompanionService service : services) {
            System.out.println("服务ID: " + service.getServiceId() +
                    ", 标题: " + service.getTitle() +
                    ", 价格: " + service.getPrice() +
                    ", 评分: " + service.getRating());
        }
    }

    @Test
    public void testGetByGameId() throws Exception {
        long gameId = 1;
        List<CompanionService> services = companionServiceService.getByGameId(gameId);
        System.out.println("Service层查询游戏ID为" + gameId + "的陪玩服务，数量: " + services.size());
        for (CompanionService service : services) {
            System.out.println("服务ID: " + service.getServiceId() +
                    ", 标题: " + service.getTitle());
        }
    }

    @Test
    public void testGetByUserId() throws Exception {
        long userId = 1;
        List<CompanionService> services = companionServiceService.getByUserId(userId);
        System.out.println("Service层查询用户ID为" + userId + "的陪玩服务，数量: " + services.size());
        for (CompanionService service : services) {
            System.out.println("服务ID: " + service.getServiceId() +
                    ", 标题: " + service.getTitle());
        }
    }

    @Test
    public void testAddService() throws Exception {
        CompanionService service = new CompanionService();
        service.setUserId(1);
        service.setGameId(1);
        service.setTitle("Service测试陪玩服务");
        service.setDescription("Service层测试添加陪玩服务");
        service.setPrice(new BigDecimal("66.00"));
        service.setUnit("小时");
        service.setRating(new BigDecimal("4.9"));
        service.setOrderCount(0);
        service.setStatus(1);

        boolean result = companionServiceService.addService(service);
        System.out.println("Service层添加陪玩服务结果: " + result);
        if (result) {
            System.out.println("添加的服务ID: " + service.getServiceId());

            // 验证添加结果
            CompanionService addedService = companionServiceService.getById(service.getServiceId());
            System.out.println("验证添加的服务: " + addedService);
        }
    }

    @Test
    public void testUpdateService() throws Exception {
        long serviceId = 1;
        CompanionService service = companionServiceService.getById(serviceId);
        if (service != null) {
            String originalTitle = service.getTitle();
            service.setTitle(originalTitle + " - Service修改");
            service.setPrice(new BigDecimal("77.00"));

            boolean result = companionServiceService.updateService(service);
            System.out.println("Service层更新陪玩服务结果: " + result);

            // 验证更新结果
            CompanionService updatedService = companionServiceService.getById(serviceId);
            System.out.println("更新后的服务标题: " + updatedService.getTitle());
            System.out.println("更新后的价格: " + updatedService.getPrice());
        }
    }

    @Test
    public void testDeleteService() throws Exception {
        long serviceId = 4;
        boolean result = companionServiceService.deleteService(serviceId);
        System.out.println("Service层删除陪玩服务结果: " + result);

        // 验证删除结果（逻辑删除）
        CompanionService deletedService = companionServiceService.getById(serviceId);
        if (deletedService != null) {
            System.out.println("删除后的服务状态: " + deletedService.getStatus());
        }
    }

    @Test
    public void testIncreaseOrderCount() throws Exception {
        long serviceId = 1;

        // 先查询当前订单数
        CompanionService service = companionServiceService.getById(serviceId);
        if (service != null) {
            int originalCount = service.getOrderCount();
            System.out.println("原始订单数: " + originalCount);

            // 增加订单数
            boolean result = companionServiceService.increaseOrderCount(serviceId);
            System.out.println("Service层增加订单数结果: " + result);

            // 验证增加结果
            CompanionService updatedService = companionServiceService.getById(serviceId);
            System.out.println("增加后的订单数: " + updatedService.getOrderCount());
        }
    }

    @Test
    public void testCompanionServiceIntegration() throws Exception {
        // Service层集成测试
        System.out.println("=== 开始陪玩服务Service层集成测试 ===");

        // 1. 获取所有陪玩服务
        List<CompanionService> allServices = companionServiceService.getList();
        System.out.println("当前陪玩服务总数: " + allServices.size());

        // 2. 按游戏分类查询
        if (!allServices.isEmpty()) {
            long gameId = allServices.get(0).getGameId();
            List<CompanionService> gameServices = companionServiceService.getByGameId(gameId);
            System.out.println("游戏ID " + gameId + " 的陪玩服务数量: " + gameServices.size());
        }

        // 3. 按用户分类查询
        if (!allServices.isEmpty()) {
            long userId = allServices.get(0).getUserId();
            List<CompanionService> userServices = companionServiceService.getByUserId(userId);
            System.out.println("用户ID " + userId + " 的陪玩服务数量: " + userServices.size());
        }

        // 4. 测试单个服务查询
        if (!allServices.isEmpty()) {
            CompanionService sampleService = companionServiceService.getById(allServices.get(0).getServiceId());
            System.out.println("示例服务信息: " + sampleService);
        }

        System.out.println("=== 陪玩服务Service层集成测试完成 ===");
    }

    @Test
    public void testBusinessLogic() throws Exception {
        // 业务逻辑测试：模拟用户下单流程
        System.out.println("=== 开始业务逻辑测试：模拟下单流程 ===");

        // 1. 查询可用的陪玩服务
        List<CompanionService> availableServices = companionServiceService.getList();
        if (!availableServices.isEmpty()) {
            CompanionService targetService = availableServices.get(0);
            long serviceId = targetService.getServiceId();
            int originalOrderCount = targetService.getOrderCount();

            System.out.println("目标服务: " + targetService.getTitle());
            System.out.println("原始订单数: " + originalOrderCount);

            // 2. 模拟下单（增加订单数）
            boolean orderResult = companionServiceService.increaseOrderCount(serviceId);
            System.out.println("下单结果: " + orderResult);

            // 3. 验证订单数增加
            CompanionService afterOrder = companionServiceService.getById(serviceId);
            System.out.println("下单后的订单数: " + afterOrder.getOrderCount());

            // 4. 验证业务规则：订单数应该增加1
            if (orderResult && afterOrder.getOrderCount() == originalOrderCount + 1) {
                System.out.println("业务逻辑测试通过：订单数正确增加");
            } else {
                System.out.println("业务逻辑测试失败：订单数增加异常");
            }
        } else {
            System.out.println("没有可用的陪玩服务，跳过业务逻辑测试");
        }

        System.out.println("=== 业务逻辑测试完成 ===");
    }
}