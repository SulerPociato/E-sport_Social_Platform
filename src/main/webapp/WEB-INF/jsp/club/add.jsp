<%--
  Created by IntelliJ IDEA.
  User: 24789
  Date: 2026/3/11
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/head.jsp"%>
<html>
<head>
  <title>创建俱乐部</title>
  <style>
    .container {
      max-width: 600px;
      margin-top: 50px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .btn-submit {
      width: 100%;
      margin-top: 20px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h3 class="panel-title">创建新俱乐部</h3>
    </div>
    <div class="panel-body">
      <form id="addClubForm" action="${basePath}club/add" method="post">
        <div class="form-group">
          <label for="clubName">俱乐部名称</label>
          <input type="text" class="form-control" id="clubName" name="clubName"
                 placeholder="请输入俱乐部名称" required maxlength="50">
        </div>

        <div class="form-group">
          <label for="description">俱乐部描述</label>
          <textarea class="form-control" id="description" name="description"
                    rows="4" placeholder="请输入俱乐部描述" maxlength="200"></textarea>
        </div>

        <div class="form-group">
          <label for="adminId">管理员ID</label>
          <input type="number" class="form-control" id="adminId" name="adminId"
                 placeholder="请输入管理员用户ID" required min="1">
        </div>

        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-submit">创建俱乐部</button>
          <a href="${basePath}club/list" class="btn btn-default btn-submit">返回列表</a>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  $(document).ready(function() {
    $('#addClubForm').submit(function(e) {
      e.preventDefault();

      var clubName = $('#clubName').val().trim();
      var adminId = $('#adminId').val().trim();

      if (!clubName) {
        alert('请输入俱乐部名称');
        return false;
      }

      if (!adminId || adminId < 1) {
        alert('请输入有效的管理员ID');
        return false;
      }

      // 提交表单
      this.submit();
    });
  });
</script>
</body>
</html>
