<%--
  Created by IntelliJ IDEA.
  User: 24789
  Date: 2026/3/11
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/head.jsp"%>
<html>
<head>
    <title>加入俱乐部</title>
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
        .club-info {
            background-color: #f5f5f5;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">加入俱乐部</h3>
        </div>
        <div class="panel-body">
            <c:if test="${not empty club}">
                <div class="club-info">
                    <h4>${club.clubName}</h4>
                    <p>${club.description}</p>
                    <p><small>创建时间: <fmt:formatDate value="${club.createTime}" pattern="yyyy-MM-dd HH:mm"/></small></p>
                </div>
            </c:if>

            <form id="joinClubForm" action="${basePath}club/join" method="post">
                <input type="hidden" name="clubId" value="${club.clubId}">

                <div class="form-group">
                    <label for="userId">用户ID</label>
                    <input type="number" class="form-control" id="userId" name="userId"
                           placeholder="请输入您的用户ID" required min="1">
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-submit">加入俱乐部</button>
                    <a href="${basePath}club/list" class="btn btn-default btn-submit">返回列表</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#joinClubForm').submit(function(e) {
            e.preventDefault();

            var userId = $('#userId').val().trim();

            if (!userId || userId < 1) {
                alert('请输入有效的用户ID');
                return false;
            }

            // 提交表单
            this.submit();
        });
    });
</script>
</body>
</html>
