<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>陪玩服务列表 - 游戏陪玩平台</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%@ include file="../common/head.jsp" %>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      min-height: 100vh;
      color: #333;
    }
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }
    .header {
      text-align: center;
      padding: 40px 20px;
      color: white;
    }
    .header h1 {
      font-size: 2.5rem;
      margin-bottom: 10px;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
    }
    .header p {
      font-size: 1.2rem;
      opacity: 0.9;
      max-width: 600px;
      margin: 0 auto;
      line-height: 1.6;
    }
    .filter-section {
      background: rgba(255,255,255,0.1);
      backdrop-filter: blur(10px);
      padding: 25px;
      border-radius: 15px;
      margin: 30px 0;
      color: white;
    }
    .main-content {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
      gap: 25px;
    }
    .card {
      background: white;
      border-radius: 15px;
      padding: 25px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    }
    .service-header {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      padding: 20px;
      border-radius: 10px;
      margin-bottom: 20px;
    }
    .service-rating {
      color: #ffc107;
    }
    .price-tag {
      font-size: 2rem;
      font-weight: bold;
      color: #28a745;
    }
    .user-avatar {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      border: 2px solid white;
    }
    .btn {
      display: inline-block;
      padding: 10px 25px;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      text-decoration: none;
      border-radius: 20px;
      font-weight: bold;
      transition: all 0.3s ease;
      border: none;
      cursor: pointer;
    }
    .btn:hover {
      transform: scale(1.05);
      box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
    }
    @media (max-width: 768px) {
      .header h1 {
        font-size: 2rem;
      }
      .main-content {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>
<div class="container">
  <div class="header">
    <h1>陪玩服务列表</h1>
    <p>专业游戏陪玩，带你上分，提升游戏体验</p>
  </div>

  <!-- 筛选区域 -->
  <div class="filter-section">
    <div class="row">
      <div class="col-md-4">
        <select class="form-control" id="gameFilter">
          <option value="">所有游戏</option>
          <!-- 这里可以动态加载游戏选项 -->
        </select>
      </div>
      <div class="col-md-4">
        <select class="form-control" id="priceFilter">
          <option value="">价格排序</option>
          <option value="asc">价格从低到高</option>
          <option value="desc">价格从高到低</option>
        </select>
      </div>
      <div class="col-md-4">
        <select class="form-control" id="ratingFilter">
          <option value="">评分排序</option>
          <option value="desc">评分从高到低</option>
          <option value="asc">评分从低到高</option>
        </select>
      </div>
    </div>
  </div>

  <div class="row">
    <c:forEach items="${list}" var="service">
      <div class="col-md-6">
        <div class="service-card">
          <div class="service-header">
            <div class="d-flex justify-content-between align-items-center">
              <h5 class="mb-0">${service.title}</h5>
              <span class="badge badge-light">${service.game.name}</span>
            </div>
          </div>

          <div class="p-3">
            <div class="row">
              <div class="col-8">
                <p class="text-muted mb-2">${service.description}</p>
                <div class="d-flex align-items-center mb-2">
                                    <span class="service-rating mr-2">
                                        <c:forEach begin="1" end="5" var="i">
                                          <i class="fas fa-star${i <= service.rating ? ' text-warning' : ' text-muted'}"></i>
                                        </c:forEach>
                                        <small class="ml-1">${service.rating}</small>
                                    </span>
                  <span class="text-muted">
                                        <i class="fas fa-shopping-cart"></i> ${service.orderCount} 单
                                    </span>
                </div>
                <div class="d-flex align-items-center">
                  <img src="${service.user.avatar != null ? service.user.avatar : '/static/images/default-avatar.png'}"
                       alt="${service.user.nickname}"
                       class="rounded-circle mr-2"
                       width="24" height="24">
                  <small class="text-muted">${service.user.nickname}</small>
                </div>
              </div>
              <div class="col-4 text-right">
                <div class="price-tag">¥${service.price}</div>
                <small class="text-muted">/${service.unit}</small>
                <div class="mt-2">
                  <a href="/companion/${service.serviceId}/detail" class="btn btn-primary btn-sm btn-block">查看详情</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>

  <c:if test="${empty list}">
    <div class="text-center py-5">
      <i class="fas fa-users fa-3x text-muted mb-3"></i>
      <h4>暂无陪玩服务</h4>
      <p class="text-muted">暂时没有可用的陪玩服务，请稍后再来</p>
      <a href="/game/list" class="btn btn-primary">浏览游戏</a>
    </div>
  </c:if>
</div>

<script>
  $(document).ready(function() {
    // 初始化筛选功能
    initFilters();
  });

  function initFilters() {
    // 这里可以添加筛选逻辑
    $('#gameFilter, #priceFilter, #ratingFilter').change(function() {
      // 实现筛选功能
      console.log('筛选条件改变');
    });
  }
</script>
</body>
</html>