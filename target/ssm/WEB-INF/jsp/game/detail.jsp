<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>${game.name} - 游戏详情</title>
  <%@ include file="../common/head.jsp" %>
  <style>
    .game-header {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      padding: 40px 0;
      margin-bottom: 30px;
    }
    .game-cover-large {
      width: 300px;
      height: 400px;
      object-fit: cover;
      border-radius: 8px;
      box-shadow: 0 8px 16px rgba(0,0,0,0.3);
    }
    .game-info-card {
      background: white;
      border-radius: 8px;
      padding: 20px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    .action-buttons {
      margin-top: 20px;
    }
  </style>
</head>
<body>
<div class="game-header">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-4 text-center">
        <c:if test="${not empty game.coverImage}">
          <img src="${game.coverImage}" alt="${game.name}" class="game-cover-large">
        </c:if>
        <c:if test="${empty game.coverImage}">
          <div class="game-cover-large bg-light d-flex align-items-center justify-content-center">
            <i class="fas fa-gamepad fa-5x text-muted"></i>
          </div>
        </c:if>
      </div>
      <div class="col-md-8">
        <h1 class="display-4">${game.name}</h1>
        <p class="lead">${game.description}</p>
        <div class="game-meta">
          <span class="badge badge-light mr-2">${game.category}</span>
          <c:if test="${game.status == 1}">
            <span class="badge badge-success">正常</span>
          </c:if>
          <c:if test="${game.status == 0}">
            <span class="badge badge-secondary">禁用</span>
          </c:if>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="game-info-card">
        <h3>游戏介绍</h3>
        <p>${game.description}</p>

        <h4 class="mt-4">游戏信息</h4>
        <table class="table table-bordered">
          <tr>
            <td width="30%"><strong>游戏ID</strong></td>
            <td>${game.gameId}</td>
          </tr>
          <tr>
            <td><strong>游戏名称</strong></td>
            <td>${game.name}</td>
          </tr>
          <tr>
            <td><strong>游戏分类</strong></td>
            <td>${game.category}</td>
          </tr>
          <tr>
            <td><strong>状态</strong></td>
            <td>
              <c:if test="${game.status == 1}">
                <span class="badge badge-success">正常</span>
              </c:if>
              <c:if test="${game.status == 0}">
                <span class="badge badge-secondary">禁用</span>
              </c:if>
            </td>
          </tr>
        </table>
      </div>
    </div>

    <div class="col-md-4">
      <div class="game-info-card">
        <h4>快速操作</h4>
        <div class="action-buttons">
          <a href="/companion/game/${game.gameId}" class="btn btn-primary btn-block mb-2">
            <i class="fas fa-users"></i> 查看陪玩服务
          </a>
          <a href="/game/list" class="btn btn-outline-secondary btn-block mb-2">
            <i class="fas fa-arrow-left"></i> 返回列表
          </a>
          <button class="btn btn-outline-info btn-block" onclick="shareGame()">
            <i class="fas fa-share"></i> 分享游戏
          </button>
        </div>

        <h5 class="mt-4">相关统计</h5>
        <div class="text-center">
          <div class="mb-3">
            <small class="text-muted">陪玩服务数量</small>
            <h3 id="companionCount">加载中...</h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function() {
    // 加载陪玩服务数量
    loadCompanionCount(${game.gameId});
  });

  function loadCompanionCount(gameId) {
    $.get('/companion/game/' + gameId, function(data) {
      // 这里可以调用API获取具体的数量
      $('#companionCount').text('--');
    }).fail(function() {
      $('#companionCount').text('0');
    });
  }

  function shareGame() {
    if (navigator.share) {
      navigator.share({
        title: '${game.name}',
        text: '${game.description}',
        url: window.location.href
      });
    } else {
      // 备用分享方式
      alert('分享链接: ' + window.location.href);
    }
  }
</script>
</body>
</html>