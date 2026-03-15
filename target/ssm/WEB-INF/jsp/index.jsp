<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>游戏陪玩平台 - 首页</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
      padding: 60px 20px;
      color: white;
    }
    .header h1 {
      font-size: 3.5rem;
      margin-bottom: 20px;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
    }
    .header p {
      font-size: 1.3rem;
      opacity: 0.9;
      max-width: 600px;
      margin: 0 auto;
      line-height: 1.6;
    }
    .main-content {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
      gap: 30px;
      margin-top: 40px;
    }
    .card {
      background: white;
      border-radius: 15px;
      padding: 30px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    }
    .card h2 {
      color: #667eea;
      margin-bottom: 20px;
      font-size: 1.8rem;
    }
    .card p {
      color: #666;
      line-height: 1.6;
      margin-bottom: 25px;
    }
    .features {
      list-style: none;
      margin-bottom: 25px;
    }
    .features li {
      padding: 8px 0;
      color: #555;
      position: relative;
      padding-left: 25px;
    }
    .features li:before {
      content: "🎮";
      position: absolute;
      left: 0;
      top: 8px;
    }
    .btn {
      display: inline-block;
      padding: 12px 30px;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      text-decoration: none;
      border-radius: 25px;
      font-weight: bold;
      transition: all 0.3s ease;
      border: none;
      cursor: pointer;
      font-size: 1rem;
    }
    .btn:hover {
      transform: scale(1.05);
      box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
    }
    .stats {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 20px;
      margin-top: 50px;
    }
    .stat-item {
      background: rgba(255,255,255,0.1);
      backdrop-filter: blur(10px);
      border-radius: 10px;
      padding: 20px;
      text-align: center;
      color: white;
    }
    .stat-number {
      font-size: 2.5rem;
      font-weight: bold;
      margin-bottom: 10px;
    }
    .stat-label {
      font-size: 1rem;
      opacity: 0.9;
    }
    @media (max-width: 768px) {
      .header h1 {
        font-size: 2.5rem;
      }
      .header p {
        font-size: 1.1rem;
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
    <h1>游戏陪玩平台</h1>
    <p>专业的游戏陪玩服务平台，为您提供优质的游戏陪玩体验和丰富的游戏资源</p>
  </div>

  <div class="stats">
    <div class="stat-item">
      <div class="stat-number">100+</div>
      <div class="stat-label">热门游戏</div>
    </div>
    <div class="stat-item">
      <div class="stat-number">500+</div>
      <div class="stat-label">专业陪玩</div>
    </div>
    <div class="stat-item">
      <div class="stat-number">1000+</div>
      <div class="stat-label">满意用户</div>
    </div>
  </div>

  <div class="main-content">
    <div class="card">
      <h2>游戏资源</h2>
      <p>浏览我们丰富的游戏库，包含各种热门游戏和经典作品</p>
      <ul class="features">
        <li>热门游戏实时更新</li>
        <li>详细游戏信息介绍</li>
        <li>游戏分类和搜索功能</li>
        <li>玩家评价和评分系统</li>
      </ul>
      <a href="${basePath}game/list" class="btn">浏览游戏</a>
    </div>

    <div class="card">
      <h2>陪玩服务</h2>
      <p>选择专业的游戏陪玩，提升您的游戏体验和技能水平</p>
      <ul class="features">
        <li>专业陪玩认证体系</li>
        <li>多种游戏类型覆盖</li>
        <li>实时在线匹配系统</li>
        <li>服务评价和反馈机制</li>
      </ul>
      <a href="${basePath}companion/list" class="btn">查看陪玩</a>
    </div>
  </div>

  <div style="text-align: center; margin-top: 50px;">
    <a href="${basePath}user/list" class="btn" style="background: #28a745;">用户管理</a>
  </div>
</div>
</body>
</html>