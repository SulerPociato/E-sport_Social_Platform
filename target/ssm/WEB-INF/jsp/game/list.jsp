<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>游戏列表 - 游戏陪玩平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ include file="/WEB-INF/jsp/common/head.jsp" %>
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
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
        }
        .game-cover {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 15px;
        }
        .game-category {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 5px 12px;
            border-radius: 15px;
            font-size: 0.9rem;
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
        <h1>游戏列表</h1>
        <p>浏览我们丰富的游戏库，包含各种热门游戏和经典作品</p>
    </div>

    <div class="main-content">

    <div class="row">
        <c:forEach items="${list}" var="game">
            <div class="col-md-4">
                <div class="game-card">
                    <c:if test="${not empty game.coverImage}">
                        <img src="${game.coverImage}" alt="${game.name}" class="game-cover">
                    </c:if>
                    <c:if test="${empty game.coverImage}">
                        <div class="game-cover bg-light d-flex align-items-center justify-content-center">
                            <i class="fas fa-gamepad fa-3x text-muted"></i>
                        </div>
                    </c:if>

                    <div class="mt-3">
                        <h4>${game.name}</h4>
                        <p class="text-muted">${game.description}</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="game-category">${game.category}</span>
                            <div>
                                <c:if test="${game.status == 1}">
                                    <span class="badge badge-success">正常</span>
                                </c:if>
                                <c:if test="${game.status == 0}">
                                    <span class="badge badge-secondary">禁用</span>
                                </c:if>
                            </div>
                        </div>
                        <div class="mt-3">
                            <a href="/game/${game.gameId}/detail" class="btn btn-primary btn-sm">查看详情</a>
                            <a href="/companion/game/${game.gameId}" class="btn btn-outline-secondary btn-sm">陪玩服务</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <c:if test="${empty list}">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="alert alert-info">
                    <h4>暂无游戏数据</h4>
                    <p>请先添加游戏信息</p>
                </div>
            </div>
        </div>
    </c:if>
</div>
</div>>
<script>
    $(document).ready(function() {
        // 页面加载完成后的初始化操作
        console.log('游戏列表页面加载完成');
    });
</script>
</body>
</html>