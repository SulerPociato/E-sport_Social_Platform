<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>用户${userId}的陪玩服务 - 开黑电竞平台</title>
  <%@ include file="../common/head.jsp" %>
</head>
<body>
<div class="container mt-4">
  <div class="row">
    <div class="col-md-12">
      <div class="page-header">
        <h1>用户 ${userId} 的陪玩服务</h1>
      </div>
    </div>
  </div>

  <div class="row">
    <c:forEach items="${list}" var="service">
      <div class="col-md-4 mb-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">${service.title}</h5>
            <h6 class="card-subtitle mb-2 text-muted">${service.game.name}</h6>
            <p class="card-text">${service.description}</p>

            <div class="d-flex justify-content-between align-items-center">
                            <span class="text-warning">
                                <c:forEach begin="1" end="5" var="i">
                                  <i class="fas fa-star${i <= service.rating ? ' text-warning' : ' text-muted'}"></i>
                                </c:forEach>
                                ${service.rating}
                            </span>
              <span class="text-success font-weight-bold">¥${service.price}/${service.unit}</span>
            </div>

            <div class="mt-2">
              <span class="badge badge-info">${service.orderCount} 单</span>
              <span class="badge badge-secondary">${service.game.category}</span>
            </div>
          </div>
          <div class="card-footer">
            <a href="/companion/${service.serviceId}/detail" class="btn btn-primary btn-sm">查看详情</a>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>

  <c:if test="${empty list}">
    <div class="text-center py-5">
      <i class="fas fa-user-slash fa-3x text-muted mb-3"></i>
      <h4>该用户暂无陪玩服务</h4>
      <p class="text-muted">用户 ${userId} 还没有发布任何陪玩服务</p>
      <a href="/companion/list" class="btn btn-primary">浏览所有服务</a>
    </div>
  </c:if>
</div>
</body>
</html>