## 功能模块

### 1. 游戏管理
- 访问地址：`/game/list`
- 功能：查看游戏列表、游戏详情

### 2. 陪玩服务管理
- 访问地址：`/companion/list`
- 功能：查看陪玩服务列表、服务详情、按游戏分类查看

### 3. API接口
- 游戏详情API：`/game/{id}/json`
- 陪玩服务详情API：`/companion/{id}/json`

## 测试方法

### 1. 单元测试
运行对应的测试类验证DAO和Service层功能：
- `GameDaoTest`
- `CompanionServiceDaoTest`
- `GameServiceImplTest`
- `CompanionServiceServiceImplTest`

### 2. 功能测试
1. 启动Tomcat服务器
2. 访问 `http://localhost:8080/game/list` 查看游戏列表
3. 访问 `http://localhost:8080/companion/list` 查看陪玩服务列表

## 技术栈
- 后端：Spring + SpringMVC + MyBatis
- 数据库：MySQL
- 前端：JSP + Bootstrap
- 构建工具：Maven

## 注意事项
1. 确保MySQL服务已启动
2. 数据库字符集设置为utf8mb4以支持emoji
3. 项目使用C3P0连接池，请确保连接池配置正确
4. 所有删除操作均为逻辑删除（status=0）
