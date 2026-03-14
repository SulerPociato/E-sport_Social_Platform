<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>订单管理 - 电竞陪玩平台</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    .order-card {
      border: 1px solid #e0e0e0;
      border-radius: 8px;
      margin-bottom: 20px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    .order-header {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      padding: 15px;
      border-radius: 8px 8px 0 0;
    }
    .order-body {
      padding: 20px;
    }
    .order-status {
      font-weight: bold;
      padding: 5px 10px;
      border-radius: 15px;
      font-size: 12px;
    }
    .status-pending { background: #ffc107; color: #000; }
    .status-paid { background: #17a2b8; color: #fff; }
    .status-processing { background: #007bff; color: #fff; }
    .status-completed { background: #28a745; color: #fff; }
    .status-cancelled { background: #dc3545; color: #fff; }
    .user-info {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }
    .user-avatar {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      margin-right: 10px;
    }
    .order-actions {
      margin-top: 15px;
      text-align: right;
    }
    .price-highlight {
      font-size: 24px;
      font-weight: bold;
      color: #ff6b6b;
    }
  </style>
</head>
<body>
<!-- 引入公共头部 -->
<%@ include file="../common/head.jsp" %>

<div class="container mt-4">
  <div class="row">
    <div class="col-12">
      <div class="d-flex justify-content-between align-items-center mb-4">
        <h2><i class="fas fa-shopping-cart mr-2"></i>订单管理</h2>
        <div class="btn-group">
          <button class="btn btn-outline-primary" onclick="filterOrders('all')">全部</button>
          <button class="btn btn-outline-warning" onclick="filterOrders(0)">待支付</button>
          <button class="btn btn-outline-info" onclick="filterOrders(1)">已支付</button>
          <button class="btn btn-outline-primary" onclick="filterOrders(2)">进行中</button>
          <button class="btn btn-outline-success" onclick="filterOrders(3)">已完成</button>
          <button class="btn btn-outline-danger" onclick="filterOrders(4)">已取消</button>
        </div>
      </div>

      <c:if test="${empty list}">
        <div class="text-center py-5">
          <i class="fas fa-shopping-cart fa-3x text-muted mb-3"></i>
          <h4>暂无订单</h4>
          <p class="text-muted">当前没有任何订单记录</p>
        </div>
      </c:if>

      <c:forEach items="${list}" var="order">
        <div class="order-card" data-status="${order.status}">
          <div class="order-header">
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <h5 class="mb-0">订单号: ${order.orderNo}</h5>
                <small>
                  <fmt:formatDate value="${order.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                </small>
              </div>
              <span class="order-status status-${order.status == 0 ? 'pending' : order.status == 1 ? 'paid' : order.status == 2 ? 'processing' : order.status == 3 ? 'completed' : 'cancelled'}">
                  ${order.status == 0 ? '待支付' : order.status == 1 ? '已支付' : order.status == 2 ? '进行中' : order.status == 3 ? '已完成' : '已取消'}
              </span>
            </div>
          </div>

          <div class="order-body">
            <div class="row">
              <div class="col-md-6">
                <h6><i class="fas fa-user mr-2"></i>客户信息</h6>
                <div class="user-info">
                  <img src="${order.customer.avatar != null ? order.customer.avatar : '/images/default-avatar.png'}"
                       alt="${order.customer.nickname}" class="user-avatar">
                  <div>
                    <strong>${order.customer.nickname}</strong><br>
                    <small class="text-muted">${order.customer.username}</small>
                  </div>
                </div>
              </div>

              <div class="col-md-6">
                <h6><i class="fas fa-gamepad mr-2"></i>打手信息</h6>
                <div class="user-info">
                  <img src="${order.player.avatar != null ? order.player.avatar : '/images/default-avatar.png'}"
                       alt="${order.player.nickname}" class="user-avatar">
                  <div>
                    <strong>${order.player.nickname}</strong><br>
                    <small class="text-muted">${order.player.username}</small>
                  </div>
                </div>
              </div>
            </div>

            <div class="row mt-3">
              <div class="col-md-4">
                <strong>单价:</strong> ¥${order.amount}/小时
              </div>
              <div class="col-md-4">
                <strong>时长:</strong> ${order.quantity} 小时
              </div>
              <div class="col-md-4 text-right">
                <span class="price-highlight">¥${order.totalAmount}</span>
              </div>
            </div>

            <div class="order-actions">
              <a href="/order/${order.orderId}/detail" class="btn btn-outline-primary btn-sm">
                <i class="fas fa-eye"></i> 查看详情
              </a>

              <c:if test="${order.status == 0}">
                <button class="btn btn-success btn-sm" onclick="payOrder(${order.orderId})">
                  <i class="fas fa-credit-card"></i> 支付
                </button>
                <button class="btn btn-danger btn-sm" onclick="cancelOrder(${order.orderId})">
                  <i class="fas fa-times"></i> 取消
                </button>
              </c:if>

              <c:if test="${order.status == 1}">
                <button class="btn btn-info btn-sm" onclick="startOrder(${order.orderId})">
                  <i class="fas fa-play"></i> 开始服务
                </button>
              </c:if>

              <c:if test="${order.status == 2}">
                <button class="btn btn-success btn-sm" onclick="completeOrder(${order.orderId})">
                  <i class="fas fa-check"></i> 完成服务
                </button>
              </c:if>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>

<!-- 引入公共脚本 -->
<%@ include file="../common/bootstrap.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script>
  // 订单状态筛选
  function filterOrders(status) {
    $('.order-card').show();
    if (status !== 'all') {
      $('.order-card').each(function() {
        if ($(this).data('status') != status) {
          $(this).hide();
        }
      });
    }
  }

  // 支付订单
  function payOrder(orderId) {
    if (confirm('确定要支付这个订单吗？')) {
      $.post('/order/' + orderId + '/pay', function(result) {
        if (result.success) {
          alert('支付成功！');
          location.reload();
        } else {
          alert('支付失败：' + result.error);
        }
      }).fail(function() {
        alert('网络错误，请稍后重试');
      });
    }
  }

  // 开始订单
  function startOrder(orderId) {
    if (confirm('确定要开始这个订单的服务吗？')) {
      $.post('/order/' + orderId + '/start', function(result) {
        if (result.success) {
          alert('订单已开始！');
          location.reload();
        } else {
          alert('操作失败：' + result.error);
        }
      }).fail(function() {
        alert('网络错误，请稍后重试');
      });
    }
  }

  // 完成订单
  function completeOrder(orderId) {
    if (confirm('确定要完成这个订单吗？')) {
      $.post('/order/' + orderId + '/complete', function(result) {
        if (result.success) {
          alert('订单已完成！');
          location.reload();
        } else {
          alert('操作失败：' + result.error);
        }
      }).fail(function() {
        alert('网络错误，请稍后重试');
      });
    }
  }

  // 取消订单
  function cancelOrder(orderId) {
    if (confirm('确定要取消这个订单吗？此操作不可撤销。')) {
      $.post('/order/' + orderId + '/cancel', function(result) {
        if (result.success) {
          alert('订单已取消！');
          location.reload();
        } else {
          alert('取消失败：' + result.error);
        }
      }).fail(function() {
        alert('网络错误，请稍后重试');
      });
    }
  }

  $(document).ready(function() {
    console.log('订单列表页面加载完成');
  });
</script>
</body>
</html>