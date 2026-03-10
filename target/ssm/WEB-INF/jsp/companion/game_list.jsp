<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>${gameId}游戏陪玩服务 - 开黑电竞平台</title>
  <%@ include file="../common/head.jsp" %>
  <style>
    .game-banner {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      padding: 30px 0;
      margin-bottom: 30px;
    }
    .service-count {
      font-size: 0.9em;
      color: #6c757d;
    }
  </style>
</head>
<body>
<div class="game-banner">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h1>
          <i class="fas fa-gamepad mr-2"></i>
          ${gameId}游戏陪玩服务
        </h1>
        <p class="lead">专业${gameId}游戏陪玩，带你轻松上分</p>
        <span class="service-count">共找到 ${list.size()} 个陪玩服务</span>
      </div>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-3">
      <!-- 侧边栏筛选 -->
      <div class="card">
        <div class="card-header">
          <h5 class="mb-0">筛选条件</h5>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label>价格范围</label>
            <select class="form-control" id="priceRange">
              <option value="">全部</option>
              <option value="0-50">50元以下</option>
              <option value="50-100">50-100元</option>
              <option value="100-200">100-200元</option>
              <option value="200-">200元以上</option>
            </select>
          </div>
          <div class="form-group">
            <label>评分要求</label>
            <select class="form-control" id="minRating">
              <option value="">全部</option>
              <option value="4.5">4.5分以上</option>
              <option value="4.0">4.0分以上</option>
              <option value="3.5">3.5分以上</option>
            </select>
          </div>
          <button class="btn btn-primary btn-block" onclick="applyFilters()">应用筛选</button>
          <button class="btn btn-outline-secondary btn-block mt-2" onclick="resetFilters()">重置</button>
        </div>
      </div>
    </div>

    <div class="col-md-9">
      <!-- 服务列表 -->
      <div class="row">
        <c:forEach items="${list}" var="service">
          <div class="col-md-6 mb-4">
            <div class="card h-100">
              <div class="card-body">
                <h5 class="card-title">${service.title}</h5>
                <p class="card-text text-muted small">${service.description}</p>

                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="text-warning">
                                        <c:forEach begin="1" end="5" var="i">
                                          <i class="fas fa-star${i <= service.rating ? ' text-warning' : ' text-muted'}"></i>
                                        </c:forEach>
                                        ${service.rating}
                                    </span>
                  <span class="text-success font-weight-bold">¥${service.price}/${service.unit}</span>
                </div>

                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">
                    <i class="fas fa-shopping-cart"></i> ${service.orderCount} 单
                  </small>
                  <small class="text-muted">
                    <img src="${service.user.avatar != null ? service.user.avatar : '/static/images/default-avatar.png'}"
                         class="rounded-circle mr-1" width="16" height="16">
                      ${service.user.nickname}
                  </small>
                </div>
              </div>
              <div class="card-footer">
                <a href="/companion/${service.serviceId}/detail" class="btn btn-primary btn-sm btn-block">查看详情</a>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>

      <c:if test="${empty list}">
        <div class="text-center py-5">
          <i class="fas fa-users fa-3x text-muted mb-3"></i>
          <h4>暂无陪玩服务</h4>
          <p class="text-muted">该游戏暂时没有可用的陪玩服务</p>
          <a href="/game/list" class="btn btn-primary">浏览其他游戏</a>
        </div>
      </c:if>
    </div>
  </div>
</div>

<script>
  function applyFilters() {
    // 实现筛选逻辑
    const priceRange = $('#priceRange').val();
    const minRating = $('#minRating').val();
    console.log('应用筛选:', {priceRange, minRating});
    // 这里可以添加AJAX请求或页面刷新逻辑
  }

  function resetFilters() {
    $('#priceRange').val('');
    $('#minRating').val('');
    applyFilters();
  }

  $(document).ready(function() {
    // 页面初始化
    console.log('游戏陪玩服务页面加载完成');
  });
</script>
</body>
</html>