<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>用户管理 - 游戏陪玩平台</title>
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
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        .main-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 25px;
            margin-top: 30px;
        }
        .card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
        }
        .avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid #667eea;
        }
        .status-badge {
            position: absolute;
            top: 15px;
            right: 15px;
            padding: 5px 12px;
            border-radius: 15px;
            font-size: 0.8rem;
            font-weight: bold;
        }
        .btn {
            display: inline-block;
            padding: 8px 20px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-decoration: none;
            border-radius: 20px;
            font-weight: bold;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            font-size: 0.9rem;
        }
        .btn:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
        .btn-primary {
            background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
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
        <h1>用户管理</h1>
        <p>管理平台用户信息，查看用户详情和状态</p>
        <a href="${basePath}user/add" class="btn btn-primary">添加用户</a>
    </div>

    <div class="main-content">

        <c:forEach items="${list}" var="user">
            <div class="card">
                <span class="status-badge" style="background: ${user.status == 1 ? '#28a745' : '#dc3545'};">
                    ${user.status == 1 ? '正常' : '禁用'}
                </span>
                        
                <div class="text-center mb-3">
                    <c:choose>
                        <c:when test="${not empty user.avatar}">
                            <img src="${user.avatar}" alt="${user.nickname}" class="avatar">
                        </c:when>
                        <c:otherwise>
                            <div class="avatar" style="background: #667eea; display: flex; align-items: center; justify-content: center;">
                                <i class="fas fa-user text-white" style="font-size: 2rem;"></i>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
                
                <h3 class="text-center" style="color: #667eea; margin-bottom: 10px;">${user.nickname}</h3>
                <p class="text-center text-muted" style="margin-bottom: 20px;">@${user.username}</p>
                
                <div class="user-info">
                    <p style="margin-bottom: 8px;"><i class="fas fa-envelope" style="color: #667eea;"></i> ${user.email}</p>
                    <p style="margin-bottom: 8px;"><i class="fas fa-phone" style="color: #28a745;"></i> ${user.phone}</p>
                    <p style="margin-bottom: 8px;">
                        <i class="fas fa-venus-mars" style="color: #764ba2;"></i> 
                        <c:choose>
                            <c:when test="${user.gender == 1}">男</c:when>
                            <c:when test="${user.gender == 2}">女</c:when>
                            <c:otherwise>未知</c:otherwise>
                        </c:choose>
                    </p>
                    <p style="margin-bottom: 8px;"><i class="fas fa-star" style="color: #ffc107;"></i> 评分: ${user.rating}</p>
                    <p style="margin-bottom: 20px;"><i class="fas fa-gamepad" style="color: #6c757d;"></i> 等级: ${user.level}</p>
                </div>
                
                <div style="display: flex; justify-content: space-between; margin-top: 15px;">
                    <a href="${basePath}user/${user.userId}/detail" class="btn" style="background: #17a2b8;">查看详情</a>
                    <a href="${basePath}companion/user/${user.userId}" class="btn">陪玩服务</a>
                </div>
            </div>
        </c:forEach>
    </div>

    <c:if test="${empty list}">
        <div style="text-align: center; margin-top: 50px;">
            <div style="background: rgba(255,255,255,0.9); padding: 40px; border-radius: 15px; display: inline-block;">
                <h3 style="color: #667eea; margin-bottom: 15px;">暂无用户数据</h3>
                <p style="color: #666;">还没有用户信息，请先添加用户</p>
            </div>
        </div>
    </c:if>
</div>

<%@ include file="../common/bootstrap.jsp" %>
</body>
</html>