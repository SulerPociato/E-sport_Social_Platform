<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>${service.title} - 陪玩服务详情</title>
  <%@ include file="../common/head.jsp" %>
  <style>
    .service-hero {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      padding: 40px 0;
    }
    .service-main {
      margin-top: -50px;
    }
    .service-card {
      background: white;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      padding: 30px;
    }
    .price-display {
      font-size: 2.5em;
      font-weight: bold;
      color: #28a745;
    }
    .rating-stars {
      color: #ffc107;
      font-size: 1.2em;
    }
    .user-avatar {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      border: 3px solid white;
      box-shadow: 0 2px 4px rgba(0,0,0,0.2);
    }
    .action-section {
      position: sticky;
      top: 20px;
    }
  </style>
</head>
<body>
<div class="service-hero">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-8">
        <h1 class="display-4">${service.title}</h1>
        <p class="lead">${service.description}</p>
        <div class="d-flex align-items-center">
          <img src="${service.user.avatar != null ? service.user.avatar : '/static/images/default-avatar.png'}"
               alt="${service.user.nickname}"
               class="user-avatar mr-3">
          <div>
            <h5 class="mb-1">${service.user.nickname}</h5>
            <div class="rating-stars">
              <c:forEach begin="1" end="5" var="i">
                <i class="fas fa-star${i <= service.user.rating ? ' text-warning' : ' text-muted'}"></i>
              </c:forEach>
              <span class="ml-1">${service.user.rating}</span>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4 text-center">
        <div class="price-display">¥${service.price}</div>
        <div class="text-light">/${service.unit}</div>
        <button class="btn btn-light btn-lg mt-3" onclick="orderService(${service.serviceId})">
          <i class="fas fa-shopping-cart"></i> 立即下单
        </button>
      </div>
    </div>
  </div>
</div>

<div class="container service-main">
  <div class="row">
    <div class="col-md-8">
      <div class="service-card">
        <h3>服务详情</h3>
        <p>${service.description}</p>

        <h4 class="mt-4">服务信息</h4>
        <table class="table table-bordered">
          <tr>
            <td width="30%"><strong>服务ID</strong></td>
            <td>${service.serviceId}</td>
          </tr>
          <tr>
            <td><strong>服务标题</strong></td>
            <td>${service.title}</td>
          </tr>
          <tr>
            <td><strong>游戏</strong></td>
            <td>${service.game.name}</td>
          </tr>
          <tr>
            <td><strong>价格</strong></td>
            <td>¥${service.price}/${service.unit}</td>
          </tr>
          <tr>
            <td><strong>评分</strong></td>
            <td>
                            <span class="rating-stars">
                                <c:forEach begin="1" end="5" var="i">
                                  <i class="fas fa-star${i <= service.rating ? ' text-warning' : ' text-muted'}"></i>
                                </c:forEach>
                                ${service.rating}
                            </span>
            </td>
          </tr>
          <tr>
            <td><strong>订单数量</strong></td>
            <td>${service.orderCount} 单</td>
          </tr>
          <tr>
            <td><strong>创建时间</strong></td>
            <td>${service.createTime}</td>
          </tr>
        </table>

        <h4 class="mt-4">陪玩用户信息</h4>
        <div class="media">
          <img src="${service.user.avatar != null ? service.user.avatar : '/static/images/default-avatar.png'}"
               class="mr-3 rounded-circle" width="64" height="64">
          <div class="media-body">
            <h5 class="mt-0">${service.user.nickname}</h5>
            <p class="text-muted">用户名: ${service.user.username}</p>
            <div class="rating-stars">
              <c:forEach begin="1" end="5" var="i">
                <i class="fas fa-star${i <= service.user.rating ? ' text-warning' : ' text-muted'}"></i>
              </c:forEach>
              <span class="ml-1">${service.user.rating} 分</span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-md-4">
      <div class="action-section">
        <div class="service-card">
          <h4>立即下单</h4>
          <div class="text-center mb-4">
            <div class="price-display">¥${service.price}</div>
            <div class="text-muted">/${service.unit}</div>
          </div>

          <button class="btn btn-primary btn-lg btn-block mb-3" onclick="orderService(${service.serviceId})">
            <i class="fas fa-shopping-cart"></i> 立即下单
          </button>

          <div class="text-center">
            <small class="text-muted">已有 ${service.orderCount} 人下单</small>
          </div>

          <hr>

          <div class="text-center">
            <a href="/companion/game/${service.game.gameId}" class="btn btn-outline-secondary btn-sm mr-2">
              同游戏服务
            </a>
            <a href="/companion/list" class="btn btn-outline-secondary btn-sm">
              所有服务
            </a>
          </div>
        </div>

        <div class="service-card mt-3">
          <h5>服务保障</h5>
          <ul class="list-unstyled">
            <li class="mb-2"><i class="fas fa-check text-success mr-2"></i>专业游戏陪玩</li>
            <li class="mb-2"><i class="fas fa-check text-success mr-2"></i>按时计费</li>
            <li class="mb-2"><i class="fas fa-check text-success mr-2"></i>满意再付款</li>
            <li class="mb-2"><i class="fas fa-check text-success mr-2"></i>7x24小时客服</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  function orderService(serviceId) {
    if(confirm('确定要下单购买此陪玩服务吗？')) {
      $.post('/companion/' + serviceId + '/order', function(result) {
        if (result.success) {
          alert('下单成功！');
          // 刷新页面更新订单数
          location.reload();
        } else {
          alert('下单失败：' + result.error);
        }
      }).fail(function() {
        alert('网络错误，请稍后重试');
      });
    }
  }

  $(document).ready(function() {
    // 页面初始化
    console.log('陪玩服务详情页面加载完成');
  });
</script>
</body>
</html>