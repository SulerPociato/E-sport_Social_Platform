
## 安装部署步骤

### 1. 环境准备

#### 安装JDK
```bash
# 验证JDK安装
java -version
javac -version
```

#### 安装Maven
```bash
# 验证Maven安装
mvn -version
```

#### 安装MySQL
```bash
# 启动MySQL服务
sudo systemctl start mysql  # Linux
# 或通过服务管理器启动MySQL
```

### 2. 数据库配置

#### 创建数据库
```sql
-- 执行项目中的SQL脚本
mysql -u root -p < src/main/sql/e_sport_platform.sql
```

#### 修改数据库配置
编辑 `src/main/resources/jdbc.properties`：
```properties
jdbc.driver=com.mysql.cj.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/e_sport_platform?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true
jdbc.username=root
jdbc.password=your_password
```

### 3. 项目构建

#### 方式一：使用Maven命令
```bash
# 清理并打包项目
mvn clean package

# 跳过测试打包
mvn clean package -DskipTests
```

#### 方式二：使用IDE
1. 导入项目到IDE（IntelliJ IDEA/Eclipse）
2. 配置Maven
3. 执行Maven构建

### 4. 部署到Tomcat

#### 方式一：直接部署WAR包
1. 将生成的 `target/ssm.war` 复制到Tomcat的webapps目录
2. 启动Tomcat服务器
3. 访问 `http://localhost:8080/ssm`

#### 方式二：IDE内嵌Tomcat
1. 配置Tomcat服务器
2. 部署项目
3. 启动服务器

## 功能模块说明

### 1. 游戏管理模块
- **访问路径**: `/game/list`
- **功能描述**: 查看游戏列表和游戏详情
- **相关文件**:
  - 控制器: [GameController.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/web/GameController.java)
  - 服务层: [GameService.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/service/GameService.java)
  - 数据层: [GameDao.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/dao/GameDao.java)
  - 页面: [list.jsp](file:///d:/ssm-master/src/main/webapp/WEB-INF/jsp/game/list.jsp)

### 2. 陪玩服务管理模块
- **访问路径**: `/companion/list`
- **功能描述**: 查看陪玩服务列表、服务详情、按游戏分类查看
- **相关文件**:
  - 控制器: [CompanionServiceController.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/web/CompanionServiceController.java)
  - 服务层: [CompanionServiceService.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/service/CompanionServiceService.java)
  - 数据层: [CompanionServiceDao.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/dao/CompanionServiceDao.java)
  - 页面: [list.jsp](file:///d:/ssm-master/src/main/webapp/WEB-INF/jsp/companion/list.jsp)

### 3. 用户管理模块
- **访问路径**: `/user/list`
- **功能描述**: 用户信息管理
- **相关文件**:
  - 控制器: [UserController.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/web/UserController.java)
  - 服务层: [UserService.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/service/UserService.java)
  - 数据层: [UserDao.java](file:///d:/ssm-master/src/main/java/com/soecode/lyf/dao/UserDao.java)

## API接口文档

### 游戏相关API
- `GET /game/list` - 获取游戏列表
- `GET /game/{id}/json` - 获取游戏详情(JSON格式)
- `GET /game/detail` - 游戏详情页面

### 陪玩服务相关API
- `GET /companion/list` - 获取陪玩服务列表
- `GET /companion/{id}/json` - 获取陪玩服务详情(JSON格式)
- `GET /companion/detail` - 陪玩服务详情页面
- `GET /companion/game_list` - 按游戏分类查看陪玩服务

## 测试指南

### 1. 单元测试
```bash
# 运行所有测试
mvn test

# 运行特定测试类
mvn test -Dtest=GameDaoTest
```

### 2. 功能测试
1. 启动应用服务器
2. 访问以下URL进行功能测试：
   - 游戏列表: `http://localhost:8080/game/list`
   - 陪玩服务: `http://localhost:8080/companion/list`
   - 用户列表: `http://localhost:8080/user/list`

### 3. 数据库测试
项目包含完整的测试数据，可通过SQL脚本初始化。

## 配置说明

### Spring配置文件
- **spring-dao.xml**: 数据访问层配置
- **spring-service.xml**: 业务层配置
- **spring-web.xml**: Web层配置

### MyBatis配置
- **mybatis-config.xml**: MyBatis全局配置
- **mapper/*.xml**: 各模块的SQL映射文件

### 日志配置
- **logback.xml**: 日志级别、输出格式等配置

## 常见问题解决

### 1. 数据库连接失败
**问题**: `Communications link failure`
**解决**: 检查MySQL服务是否启动，数据库配置是否正确

### 2. 字符编码问题
**问题**: 中文显示乱码
**解决**: 确保数据库字符集为utf8mb4，连接参数包含`characterEncoding=utf8`

### 3. 端口冲突
**问题**: `Address already in use`
**解决**: 修改Tomcat端口或停止占用端口的进程

### 4. 依赖下载失败
**问题**: Maven依赖下载超时
**解决**: 配置国内镜像源或使用代理

## 开发规范

### 代码结构规范
- 遵循MVC分层架构
- 包名使用小写，类名使用大驼峰命名法
- 配置文件统一放在resources目录

### 数据库设计规范
- 表名使用小写，字段名使用下划线分隔
- 主键使用BIGINT自增
- 时间字段使用TIMESTAMP类型

### 日志规范
- 使用SLF4J接口，Logback实现
- 合理设置日志级别
- 关键操作记录操作日志

## 性能优化建议

### 数据库优化
1. 为常用查询字段添加索引
2. 合理使用连接池配置
3. 避免N+1查询问题

### 应用优化
1. 使用缓存减少数据库访问
2. 合理配置线程池
3. 静态资源使用CDN加速

## 安全注意事项

1. 生产环境修改默认数据库密码
2. 配置适当的访问权限
3. 对用户输入进行验证和过滤
4. 使用HTTPS协议传输敏感数据

## 扩展开发指南

### 添加新模块步骤
1. 创建实体类
2. 创建DAO接口和映射文件
3. 创建Service接口和实现类
4. 创建Controller
5. 创建JSP页面
6. 配置Spring Bean
7. 编写单元测试

### 自定义功能开发
参考现有模块代码结构，保持代码风格一致。

---

**最后更新**: 2026-03-10  
**项目版本**: 0.0.1-SNAPSHOT  
**维护人员**: 项目开发团队

### 项目根目录
ssm-master/
├── src/                    # 源代码目录
├── target/                 # 构建输出目录
├── LICENSE                 # 许可证文件
├── README.md              # 项目说明文档
└── pom.xml                # Maven项目配置文件

### 主代码目录
src/main/
├── java/                  # Java源代码
│   └── com/soecode/lyf/
│       ├── dao/           # 数据访问层接口
│       │   ├── CompanionServiceDao.java
│       │   ├── GameDao.java
│       │   └── UserDao.java
│       ├── dto/           # 数据传输对象
│       │   └── Result.java
│       ├── entity/        # 实体类
│       │   ├── CompanionService.java
│       │   ├── Game.java
│       │   └── User.java
│       ├── enums/         # 枚举类
│       │   └── AppointStateEnum.java
│       ├── exception/     # 异常处理类
│       │   ├── AppointException.java
│       │   ├── NoNumberException.java
│       │   └── RepeatAppointException.java
│       ├── service/       # 业务逻辑层
│       │   ├── impl/      # 服务实现类
│       │   │   ├── CompanionServiceServiceImpl.java
│       │   │   ├── GameServiceImpl.java
│       │   │   └── UserServiceImpl.java
│       │   ├── CompanionServiceService.java
│       │   ├── GameService.java
│       │   └── UserService.java
│       └── web/           # Web控制器层
│           ├── CompanionServiceController.java
│           ├── GameController.java
│           └── UserController.java
├── resources/             # 资源文件
│   ├── mapper/           # MyBatis映射文件
│   │   ├── CompanionServiceDao.xml
│   │   ├── GameDao.xml
│   │   └── UserDao.xml
│   ├── spring/           # Spring配置文件
│   │   ├── spring-dao.xml
│   │   ├── spring-service.xml
│   │   └── spring-web.xml
│   ├── jdbc.properties   # 数据库连接配置
│   ├── logback.xml       # 日志配置
│   └── mybatis-config.xml # MyBatis配置
├── sql/                  # 数据库脚本
│   └── e_sport_platform.sql
└── webapp/               # Web应用资源
    └── WEB-INF/
        ├── jsp/          # JSP页面文件
        │   ├── common/   # 公共页面组件
        │   │   ├── bootstrap.jsp
        │   │   ├── head.jsp
        │   │   └── tag.jsp
        │   ├── companion/ # 陪玩服务页面
        │   │   ├── detail.jsp
        │   │   ├── game_list.jsp
        │   │   ├── list.jsp
        │   │   └── user_list.jsp
        │   ├── game/     # 游戏管理页面
        │   │   ├── detail.jsp
        │   │   └── list.jsp
        │   ├── user/     # 用户管理页面
        │   │   └── list.jsp
        │   ├── index.jsp # 首页
        │   └── detail.jsp
        ├── lib/          # 依赖库
        │   └── [各种jar包文件]
        └── web.xml       # Web应用配置

### 测试代码目录
src/test/
└── java/com/soecode/lyf/
    ├── dao/              # DAO层测试
    │   ├── CompanionServiceDaoTest.java
    │   └── GameDaoTest.java
    ├── service/impl/     # 服务层测试
    │   ├── CompanionServiceServiceImplTest.java
    │   └── GameServiceImplTest.java
    ├── web/              # Web层测试
    │   ├── AbstractContextControllerTests.java
    │   └── BookControllerTest.java
    └── BaseTest.java     # 基础测试类

### 构建输出目录
target/
├── classes/              # 编译后的类文件
├── maven-status/         # Maven构建状态
├── ssm/                  # 打包后的Web应用
│   ├── META-INF/
│   ├── WEB-INF/
│   │   ├── classes/     # 运行时类文件
│   │   ├── jsp/         # JSP页面
│   │   ├── lib/         # 依赖库
│   │   └── web.xml
│   └── [其他Web资源]
├── test-classes/         # 测试类文件
└── ssm.war              # 最终打包文件
