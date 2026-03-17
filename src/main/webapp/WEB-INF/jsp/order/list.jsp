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
    /* 全局重置样式：清除所有元素的内外边距 */
    * {
      margin: 0;
      padding: 0;
    }
    /* 页面主体样式：设置字体、背景图片和文字颜色 */
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-image: url('${pageContext.request.contextPath}/images/background.png');/* 替换为您的背景图片路径 */
      background-size: cover; /* 背景图片覆盖整个页面 */
      background-position: center; /* 背景图片居中 */
      background-repeat: no-repeat; /* 不重复背景图片 */
      background-attachment: fixed; /* 背景图片固定不滚动 */
      color: #ffffff;
    }
    /* 主容器样式：设置居中布局和内边距 */
    .container {
      margin: 0 auto;
      padding: 20px;
    }
    /* 主要内容区域样式：使用网格布局，设置三列布局和间距 */
    .main-content {
      display: grid;
      grid-template-columns: 1fr 2fr 1fr;
      position: relative;
      gap: 80px;
      margin: 10px 80px;
      padding: 10px 10px;
    }
    /* 俱乐部卡片样式：设置卡片外观、尺寸和布局 */
    .club-card {
      background: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      padding: 10px; /* 适当内边距，确保按钮在卡片内 */
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      width: 350px; /* 保持固定宽度 */
      height: 500px; /* 保持固定高度 */
      display: flex;
      flex-direction: column;
      margin-left: auto;
    }
    /* 俱乐部卡片悬停效果：添加3D位移和阴影增强效果 */
    .club-card:hover {
      transform: translate3d(5px, 5px, 0);
      box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    }
    /* 俱乐部卡片标题样式：设置标题文字样式和布局 */
    .club-card h1 {
      color: #ffffff;
      margin-bottom: 15px; /* 适当下边距 */
      font-size: 1.7rem; /* 适中字体大小 */
      font-weight: bold;
      text-align: center;
      line-height: 1.3; /* 适中行高 */
      margin-top: 2%;
      margin-bottom: 4%;
      flex-shrink: 0;
    }
    /* 俱乐部特性列表样式：设置网格布局和滚动效果 */
    .club-features {
      list-style: none;
      display: grid;
      grid-template-columns: 1fr;
      gap: 20px; /* 适中网格间距 */
      flex-grow: 1;
      overflow-y: auto;
    }
    /* Webkit浏览器滚动条隐藏：在Chrome和Safari中隐藏滚动条 */
    .club-features::-webkit-scrollbar {
      display: none;
    }
    /* 俱乐部名称样式：设置俱乐部名称的文字样式 */
    .club-card-name {
      font-size: 1.2rem; /* 适中字体大小 */
      font-weight: bold;
      margin-top: 2%;
    }
    /* 俱乐部介绍文字样式：设置俱乐部介绍的文字样式和颜色 */
    .club-card-intro {
      font-size: 0.8rem; /* 适中字体大小 */
      margin-top: 2%;
      color: #007bff;
    }

    /* 俱乐部特性列表项样式：设置列表项的外观、尺寸和交互效果 */
    .club-features li {
      width: 80%;
      height: 100%;
      color: #ffffff;
      text-align: left;
      align-items: center;
      position: relative;
      padding-left: 0.5em; /* 适中左右内边距 */
      padding-right: 0.5em;
      margin-left: auto;
      margin-right: auto;
      margin-top: 1%;
      font-size: 0.95rem; /* 适中字体大小 */
      line-height: 1.2; /* 适中行高 */
      transition: all 0.3s ease;
      font-size: 0.9rem; /* 稍微减小字体大小 */
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      background-color: #000000;
    }
    /* 俱乐部特性列表项悬停效果：添加悬停时的颜色变化和放大效果 */
    .club-features li:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
    }
    /* 俱乐部搜索框容器样式：设置搜索框容器的布局和外观 */
    .club-search-con {
      background-color: #000000;
      justify-content: center;
      margin-bottom: 3%;
      margin-top: 3%;
      margin-left: 6.5%;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      height: 5%;
      width: 85%;
      display: flex;
    }
    /* 俱乐部搜索输入框样式：设置搜索输入框的外观和文字样式 */
    .club-search-input {
      font-size: 0.8rem;
      flex: 1;
      border: none;
      background: #000000;
      color: #ffffff;
      outline: none;
      margin-left: 5%;
      margin-top: 1%;
    }

    /* 俱乐部搜索输入框占位符样式：设置占位符文字的颜色和大小 */
    .club-search-input::placeholder {
      color: #888888;
      font-size: 0.8rem;
    }
    /* 俱乐部搜索按钮样式：设置搜索按钮的外观和布局 */
    .club-search-btn {
      padding: 12px 30px;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: -1.2%;
      margin-right: -2%;
      width: 20%;
      background-color: #000000;
      color: white;
      cursor: pointer;
      font-size: 1rem;
      transition: all 0.3s ease;
      white-space: nowrap;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
    }

    /* 俱乐部搜索按钮悬停效果：悬停时的颜色变化和放大效果 */
    .club-search-btn:hover {
      font-weight: bold;
      background-color: #FEDE00;
      color: #000000;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
      transform: scale(1.05);
    }

    /* 俱乐部按钮容器样式：设置按钮容器的布局和间距 */
    .club-btn-con {
      display: flex;
      justify-content: center;
      gap: 20px;
      flex-shrink: 0;
      margin-top: 0%;
      margin-bottom: 0%;
    }
    /* 俱乐部按钮样式：设置俱乐部按钮的外观、尺寸和交互效果 */
    .club-btn {
      display: inline-block;
      padding: 12px 20px;
      background-color: #000000;
      color: white;
      text-decoration: none;
      font-weight: bold;
      transition: all 0.3s ease;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
      font-size: 1rem;
      text-align: center;
      flex: 1;
      max-width: 150px;
      white-space: nowrap;
    }
    /* 俱乐部按钮悬停效果：悬停时的颜色变化和放大效果 */
    .club-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
    }

    /* 订单卡片样式：设置订单卡片的外观、尺寸和布局 */
    .order-card {
      background: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 10px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      width: 350px;
      height: 500px;
      display: flex;
      flex-direction: column;
      margin-right: auto;
    }
    /* 订单卡片悬停效果：添加3D位移和阴影增强效果 */
    .order-card:hover {
      transform: translate3d(5px, 5px, 0);
      box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    }
    /* 订单卡片标题样式：设置订单卡片标题的文字样式和布局 */
    .order-card h1 {
      color: #ffffff;
      margin-bottom: 15px;
      font-size: 1.7rem;
      font-weight: bold;
      text-align: center;
      line-height: 1.3;
      margin-top: 2%;
      margin-bottom: 4%;
      flex-shrink: 0;
    }
    /* 订单特性列表样式：设置订单列表的网格布局和滚动效果 */
    .order-features {
      list-style: none;
      display: grid;
      grid-template-columns: 1fr;
      gap: 20px;
      flex-grow: 1;
      overflow-y: auto;
    }
    /* Webkit浏览器订单列表滚动条隐藏：在Chrome和Safari中隐藏滚动条 */
    .order-features::-webkit-scrollbar {
      display: none;
    }
    /* 订单名称样式：设置订单名称的文字样式 */
    .order-card-name {
      font-size: 1.2rem;
      font-weight: bold;
      margin-top: 2%;
    }
    /* 订单介绍文字样式：设置订单介绍的文字样式和颜色 */
    .order-card-intro {
      font-size: 0.8rem;
      margin-top: 2%;
      color: #007bff;
    }
    /* 订单特性列表项样式：设置订单列表项的外观、尺寸和交互效果 */
    .order-features li {
      width: 80%;
      height: 100%;
      color: #ffffff;
      text-align: left;
      align-items: center;
      position: relative;
      padding-left: 0.5em;
      padding-right: 0.5em;
      margin-left: auto;
      margin-right: auto;
      margin-top: 1%;
      font-size: 0.95rem;
      line-height: 1.2;
      transition: all 0.3s ease;
      font-size: 0.9rem;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      background-color: #000000;
    }
    /* 订单特性列表项悬停效果：悬停时的颜色变化和放大效果 */
    .order-features li:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }
    /* 订单搜索框容器样式：设置订单搜索框容器的布局和外观 */
    .order-search-con {
      background-color: #000000;
      justify-content: center;
      margin-bottom: 3%;
      margin-top: 3%;
      margin-left: 6.5%;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      height: 5%;
      width: 85%;
      display: flex;
    }
    /* 订单搜索输入框样式：设置订单搜索输入框的外观和文字样式 */
    .order-search-input {
      font-size: 0.8rem;
      flex: 1;
      border: none;
      background: #000000;
      color: #ffffff;
      outline: none;
      margin-left: 5%;
      margin-top: 2%;
    }

    /* 订单搜索输入框占位符样式：设置占位符文字的颜色和大小 */
    .order-search-input::placeholder {
      color: #888888;
      font-size: 0.8rem;
    }
    /* 订单搜索按钮样式：设置订单搜索按钮的外观和布局 */
    .order-search-btn {
      padding: 12px 30px;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: -1.2%;
      margin-right: -2%;
      width: 20%;
      background-color: #000000;
      color: white;
      cursor: pointer;
      font-size: 1rem;
      transition: all 0.3s ease;
      white-space: nowrap;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
    }

    /* 订单搜索按钮悬停效果：悬停时的颜色变化和放大效果 */
    .order-search-btn:hover {
      font-weight: bold;
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #FEDE00;
      cursor: pointer;
      transform: scale(1.05);
    }

    /* 订单按钮容器样式：设置订单按钮容器的布局和间距 */
    .order-btn-con {
      display: flex;
      justify-content: center;
      gap: 20px;
      flex-shrink: 0;
      margin-top: 0%;
      margin-bottom: 0%;
    }
    /* 订单按钮样式：设置订单按钮的外观、尺寸和交互效果 */
    .order-btn {
      display: inline-block;
      padding: 12px 20px;
      background-color: #000000;
      color: white;
      text-decoration: none;
      border-radius: 25px;
      font-weight: bold;
      transition: all 0.3s ease;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
      font-size: 1rem;
      text-align: center;
      flex: 1;
      max-width: 150px;
      white-space: nowrap;
    }
    /* 订单按钮悬停效果：悬停时的颜色变化和放大效果 */
    .order-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 管理员卡片样式：设置管理员卡片的外观、尺寸和交互效果 */
    .admin-card {
      background: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      padding: 20px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      height: 480px;
      width: 105%;
      margin-left: -4.75%;
    }
    /* 管理员卡片悬停效果：添加3D位移和阴影增强效果 */
    .admin-card:hover {
      transform: translate3d(5px, 5px, 0);
      box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    }
    /* 管理员卡片标题样式：设置管理员卡片标题的文字样式和布局 */
    .admin-card h1 {
      color: #ffffff;
      margin-bottom: 3%;
      margin-left: 2%;
      font-size: 1.8rem;
      font-weight: bold;
      text-align: left;
    }
    /* 管理员卡片内部容器样式：设置内部容器的布局和尺寸 */
    .admin-card-2{
      display: flex;
      justify-content: flex-start;
      gap: 20px;
      height: 280px;
      padding: 10px 10px;
    }
    /* 登录左侧区域样式：设置登录表单区域的布局和边框 */
    .login-left{
      flex: 1.5;
      border-right: 2px solid rgba(0, 0, 0, 0.4);
      padding-right: 2%;
      padding-left: 2%;
      height: 125%; /* 设置分隔线高度为80% */
    }

    /* 表单组样式：设置表单元素之间的间距 */
    .form-group{
      margin-bottom: 2%;
    }
    /* 表单标签样式：设置表单标签的文字样式和颜色 */
    .form-label-1{
      color: #007bff;
      font-size: 1rem;
      font-weight: bold;
      text-align: left;
    }
    /* 表单输入框样式：设置输入框的外观、尺寸和文字样式 */
    .form-input{
      height: 15%;
      width: 100%;
      padding: 12px 12px;
      margin-top: 1%;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      box-sizing: border-box;
      background-color: #000000;
      color: #ffffff;
    }
    /* 表单输入框焦点状态：移除默认的焦点轮廓 */
    .form-input:focus{
      outline: none;
    }
    /* 记住我复选框容器样式：设置复选框容器的布局和间距 */
    .remember-me{
      margin-bottom: 10px;
      margin-top: 5px;
      display: flex;
      align-items: center;

    }
    /* 记住我复选框样式：设置复选框的尺寸和外观 */
    .remember-me input[type="checkbox"] {
      width: 20px;
      height: 20px;
      vertical-align: middle;
      cursor: pointer;
      accent-color: #000000;
    }
    /* 记住我复选框选中状态：设置选中时的背景和文字颜色 */
    .remember-me input[type="checkbox"]:checked {
      background-color: #000000;
      color: #ffffff;
    }

    /* 记住我标签样式：设置标签文字的大小和间距 */
    .remember-label{
      font-size: 1rem;
      margin-left: 5px;
    }
    /* 登录按钮容器样式：设置登录按钮容器的布局和位置 */
    .login-btn-con{
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: 12%;
    }
    /* 登录按钮样式：设置登录按钮的外观、尺寸和交互效果 */
    .login-btn {
      display: flex;
      justify-content: center;
      padding: 12px 20px;
      background-color: #000000;
      color: white;
      transition: all 0.3s ease;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
      font-size: 1.2rem;
      width: 50%;
    }
    /* 登录按钮悬停效果：悬停时的颜色变化和放大效果 */
    .login-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
    }
    /* 注册链接容器样式：设置注册链接容器的布局和位置 */
    .register{
      flex: 1;
      display: flex;
      height: 8%;
      margin-top: 4.5%;
      margin-left: -5%;
    }
    /* 注册链接样式：设置注册链接的文字样式和颜色 */
    .register-link{
      font-size: 0.9rem;
      color: #007bff;
      text-decoration: none;
    }
    /* 注册链接悬停效果：悬停时添加下划线 */
    .register-link:hover {
      text-decoration: underline;
    }
    /* 登录右侧区域样式：设置右侧区域的背景颜色和布局 */
    .login-right {
      flex: 1;
      background-color: #222222;
    }

    /* 登录后的用户信息展示区域样式 */
    .login-left-intro {
      flex: 1.5;
      border-right: 2px solid rgba(0, 0, 0, 0.4);
      padding-right: 2%;
      height: 125%; /* 设置分隔线高度为80% */
      padding-left: 2%;
      display: flex;
      flex-direction: column;
      gap: 20px;
    }

    /* 用户基本信息容器样式 */
    .login-left-intro-user-basic-info {
      display: flex;
      align-items: center;
      gap: 15px;
      padding: 10px 0;
    }

    /* 用户头像容器样式 */
    .login-left-intro-user-avatar-container {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      overflow: hidden;
      border: 3px solid #000000;
      background-color: #000000;
    }

    /* 用户头像样式 */
    .login-left-intro-user-avatar {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    /* 用户文本信息样式 */
    .login-left-intro-user-text-info {
      display: flex;
      flex-direction: column;
      gap: 5px;
    }

    /* 用户名样式 */
    .login-left-intro-user-name {
      font-size: 1.2rem;
      font-weight: bold;
      color: #ffffff;
    }

    /* 用户UID样式 */
    .login-left-intro-user-uid {
      font-size: 0.9rem;
      color: #007bff;
    }

    /* 用户统计信息样式 */
    .login-left-intro-user-stats {
      display: flex;
      justify-content: space-between;
      gap: 15px;
      padding: 15px 0;
      border-top: 1px solid rgba(255, 255, 255, 0.5);
      border-bottom: 1px solid rgba(255, 255, 255, 0.5);
    }

    /* 统计项样式 */
    .login-left-intro-stat-item {
      display: flex;
      flex-direction: column;
      align-items: center;
      flex: 1;
    }

    /* 统计标签样式 */
    .login-left-intro-stat-label {
      font-size: 0.8rem;
      color: #ffffff;
      margin-bottom: 5px;
    }

    /* 统计值样式 */
    .login-left-intro-stat-value {
      font-size: 1.1rem;
      font-weight: bold;
      color: #FEDE00;
    }

    /* 用户个人简介样式 */
    .login-left-intro-user-intro {
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 10px;

    }

    /* 简介标签样式 */
    .login-left-intro-intro-label {
      font-size: 1rem;
      font-weight: bold;
      color: #007bff;
    }

    /* 简介内容样式 */
    .login-left-intro-intro-content {
      font-size: 0.9rem;
      line-height: 1.4;
      color: #ffffff;
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 15px;
      flex: 1;
      overflow-y: auto;
    }

    /* 简介内容滚动条隐藏 */
    .intro-content::-webkit-scrollbar {
      display: none;
    }
    /* 中心按钮容器样式：设置按钮网格布局和间距 */
    .center-btn-con {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      width: 20%;
      margin-left: -1%;
      column-gap: 60%;  /* 水平间隙 */
      row-gap: 30px;     /* 垂直间隙 */

    }
    /* 中心按钮样式：设置中心按钮的外观、尺寸和交互效果 */
    .center-btn {
      width: 150%;
      height: 90%;
      padding-top: 10%;
      padding-bottom: 10%;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      text-decoration: none;
      color: white;
      transition: all 0.3s ease;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
    }
    /* 中心按钮悬停效果：悬停时的颜色变化和文字颜色改变 */
    .center-btn:hover {
      background-color: #FEDE00;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      color: #000; /* 改变文字颜色为黑色 */
    }
    /* 按钮图标样式：设置按钮图标的尺寸和颜色效果 */
    .btn-icon {
      width: 50px;
      height: 50px;
      margin-bottom: 12px;
      filter: brightness(0) invert(1); /* 将图标变为白色 */
    }
    /* 按钮文字样式：设置按钮文字的大小和样式 */
    .btn-text {
      font-size: 0.9rem;
      font-weight: bold;
      text-align: center;
    }
    /* 按钮悬停时图标效果：悬停时将图标变为黑色 */
    .center-btn:hover .btn-icon  {
      filter: brightness(0) invert(0); /* 黑色图标 */
    }
    /* 按钮悬停时文字效果：悬停时将文字变为黑色 */
    .center-btn:hover .btn-text  {
      color: #000000;
    }
    /* 弹窗打开动画：定义弹窗打开时的渐入动画效果 */
    @keyframes modalopen {
      from { opacity: 0; transform: translateY(-20px);}
      to { opacity: 1; transform: translateY(0);}
    }

    .club-create-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }
    .club-create-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 500px;
      height: 615px;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }
    /* 创建俱乐部弹窗头部样式 */
    .club-create-modal-header {
      display: flex;
      justify-content: center;
      align-items: center;

    }
    .club-create-modal-body {
      padding-left: 20%;
      padding-right: 20%;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
    /* 创建俱乐部弹窗关闭按钮样式 */
    .club-create-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    /* 创建俱乐部弹窗关闭按钮悬停效果 */
    .club-create-close-modal:hover,
    .club-create-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }
    .club-create-avatar-upload-group-container{
      width: 120px;
      height: 120px;
      border-radius: 50%;
      overflow: hidden;
      border: 4px solid #000000;
      display: flex;
      align-items: center;
      justify-content: center;
      background: transparent;
    }
    .club-create-default-avatar {
      width: 100%;
      height: 100%;
      object-fit: cover;
      cursor: pointer;
    }
    .club-create-avatar-upload-group{
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 30%;
      margin-bottom: 30%;
    }
    /* 申请表单组样式：设置表单组的布局和间距 */
    .club-create-form-group {
      width: 100%;
      margin-bottom: 10%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .club-create-form-group-clubname{
      margin-bottom: 5%;
      font-size: 18px;
      color: #007bff;
      font-weight: 500;
      margin-left: -170%;
    }
    .club-create-form-group-clubintro{
      margin-bottom: 5%;
      font-size: 18px;
      color: #ffffff;
      font-weight: 500;
      margin-left: -170%;
    }
    .club-create-form-actions{
      width: 100%;
      margin-bottom: 20%;
      padding-top: 10%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .club-create-form-group input[type="text"]{
      font-size: 16px;
      line-height: 1.6;
      color: #ffffff;
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      text-align: left;
      height: 150%;
      padding: 15px 0;
      padding-left: 15px;
      width: 200%;
      overflow-y: hidden;
    }
    .club-create-form-group input[type="text"]:focus {
      outline: none;
      box-shadow: none;
      border-color: #000000; /* 确保边框颜色保持黑色 */
      background-color: #000000;
    }
    .club-create-form-group textarea {
      font-size: 16px;
      line-height: 1.6;
      color: #ffffff;
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      text-align: left;
      height: 150%;
      padding: 15px 0;
      padding-left: 15px;
      width: 200%;
      overflow-y: hidden;
      resize: none;
    }
    .club-create-form-group textarea:focus {
      outline: none;
      box-shadow: none;
      border-color: #000000; /* 确保边框颜色保持黑色 */
      background-color: #000000;
    }
    /* 创建俱乐部弹窗通用按钮样式 */
    .club-create-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }
    /* 创建俱乐部弹窗主要按钮悬停效果 */
    .club-create-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
    }
    /* 俱乐部详情弹窗样式 */
    .club-detail-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .club-detail-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 500px;
      height: 650px;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }
    .club-detail-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
    .club-detail-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .club-detail-close-modal:hover,
    .club-detail-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }
    /* 俱乐部头像样式 */
    .club-detail-avatar-container {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      overflow: hidden;
      border: 4px solid #000000;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      /* 移除固定背景色，让图片正常显示 */
      background: transparent;
    }

    .club-detail-avatar {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    /* 俱乐部名称样式：设置俱乐部名称的文字样式和布局 */
    .club-detail-name {
      font-size: 24px;
      font-weight: 600;
      color: #ffffff;
      margin-bottom: 20px;
      text-align: center;
      width: 100%;
    }

    /* 俱乐部简介容器样式：设置简介容器的布局和间距 */
    .club-detail-intro-container {
      width: 100%;
      margin-bottom: 30px;
      text-align: center;
    }

    /* 俱乐部简介标题样式：设置简介标题的文字样式 */
    .club-detail-intro-container h3 {
      font-size: 18px;
      font-weight: 500;
      color: #007bff;
      margin-bottom: 10px;
      text-align: left;
    }

    /* 俱乐部简介内容样式：设置简介内容的文字样式和滚动效果 */
    .club-detail-intro {
      font-size: 16px;
      line-height: 1.6;
      color: #ffffff;
      padding: 15px;
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      text-align: left;
      height: 100%;
      overflow-y: hidden;
    }

    /* 俱乐部申请表单样式：设置申请表单的布局和对齐 */
    .club-detail-apply-form {
      width: 90%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 申请表单组样式：设置表单组的布局和间距 */
    .club-detail-form-group {
      width: 100%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;

    }

    /* 申请表单标签样式：设置表单标签的文字样式和布局 */
    .club-detail-form-group label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: left;
      width: 100%;
      margin-left: -10%;

    }

    /* 申请表单文本域样式：设置文本域的外观、尺寸和交互效果 */
    .club-detail-form-group textarea {
      width: 100%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      background-color: #000000;
      color: #ffffff;
      resize: none;
    }
    /* 申请表单文本域焦点状态：焦点状态下的边框和阴影效果 */
    .club-detail-form-group textarea:focus {
      outline: none;
    }

    /* 申请操作按钮区域样式：设置按钮容器的布局 */
    .club-detail-apply-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 10%;
    }

    /* 申请按钮样式：设置申请按钮的渐变背景和阴影效果 */
    .club-detail-apply-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    /* 申请按钮悬停效果：悬停时的放大和阴影增强效果 */
    .club-detail-apply-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
    }

    /* 俱乐部管理申请弹窗样式（与俱乐部详情弹窗相同） */
    .club-manageappli-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .club-manageappli-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .club-manageappli-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .club-manageappli-close-modal:hover,
    .club-manageappli-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .club-manageappli-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      margin-top: 10%;
      margin-bottom: 10%;
    }

    .club-manageappli-applications-container {
      width: 100%;
      height: 50vh;
      margin-bottom: 30px;
      text-align: center;
    }

    .club-manageappli-applications-container h3 {
      font-size: 18px;
      font-weight: 500;
      color: #007bff;
      margin-bottom: 10px;
      text-align: center;
    }

    .club-manageappli-applications-list {
      font-size: 16px;
      line-height: 1.6;
      color: #ffffff;
      padding-left: 15px;
      padding-right: 15px;
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #222222; /* 使用简写属性 */
      text-align: left;
      height: 50vh;
      overflow-y: auto;
      scrollbar-width: none; /* 隐藏滚动条 */
      scrollbar-color: transparent transparent; /* 隐藏滚动条颜色 */
    }
    /* 自定义滚动条样式 - 隐藏滚动条 */
    .club-manageappli-applications-list::-webkit-scrollbar {
      width: 0px;
      display: none;
    }
    .club-manageappli-applications-list::-webkit-scrollbar-track {
      background: transparent;
    }
    .club-manageappli-applications-list::-webkit-scrollbar-thumb {
      background: transparent;
    }
    .club-manageappli-no-applications {
      font-size: 16px;
      line-height: 1.6;
      color: #ffffff;
    }

    /* 申请项样式 */
    .application-item {
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 15px;
      transition: all 0.3s ease;
      margin-bottom: 5%;
      height: 25%;
    }

    .application-item:hover {
      border-color: #FEDE00;
      box-shadow: 0 4px 12px rgba(254, 222, 0, 0.2);
      transform: translateY(-2px);

    }

    /* 申请信息区域样式 */
    .application-info {
      margin-bottom: 15px;
    }

    .application-id {
      font-size: 14px;
      color: #FEDE00;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .application-nickname {
      font-size: 16px;
      color: #ffffff;
      font-weight: 500;
      margin-bottom: 10px;
    }

    .application-details {
      background-color: #2a2a2a;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 10px;
      margin-bottom: -3%;
    }

    .details-truncated {
      font-size: 14px;
      color: #cccccc;
      cursor: pointer;
      display: block;
      transition: color 0.2s ease;
    }

    .details-truncated:hover {
      color: #FEDE00;
    }

    .details-full {
      font-size: 14px;
      color: #ffffff;
      line-height: 1.5;
      margin-top: 8px;
      display: none;
      background-color: #333;
      padding: 8px;
      border-radius: 4px;
    }

    /* 申请操作按钮区域样式 */
    .application-actions {
      display: flex;
      gap: 10px;
      justify-content: left;
    }

    /* 同意按钮样式 */
    .btn-approve {
      background-color: #FEDE00;
      color: rgb(0, 0, 0);
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 8px 16px;
      font-size: 14px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      min-width: 60px;
      margin-top: 4%;
    }

    .btn-approve:hover {
      background-color: #007bff;
      transform: scale(1.05);
      color: #ffffff;
    }
    /* 拒绝按钮样式 */
    .btn-reject {
      background-color: #FEDE00;
      color: rgb(0, 0, 0);
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 8px 16px;
      font-size: 14px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      min-width: 60px;
      margin-top: 4%;
    }

    .btn-reject:hover {
      background-color: #007bff;
      transform: scale(1.05);
      color: #ffffff;
    }
    /* 个人中心弹窗样式 */
    .personal-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .personal-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .personal-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .personal-close-modal:hover,
    .personal-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .personal-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 个人中心表单样式 */
    .personal-center-form {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 个人中心表单组样式 */
    .personal-form-group-club {
      width: 100%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 个人中心表单标签样式 */
    .personal-form-group-club label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: left;
      width: 100%;
    }

    /* 个人中心表单输入框样式 */
    .personal-form-group-club input,
    .personal-form-group-club textarea {
      width: 100%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
      resize: none;
    }

    .personal-form-group-club input:focus,
    .personal-form-group-club textarea:focus {
      outline: none;
    }

    /* 个人中心头像上传容器样式 */
    .personal-avatar-upload-container {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 个人中心头像预览样式 */
    .personal-avatar-preview {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      overflow: hidden;
      border: 4px solid #000000;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      margin-bottom: 15px;
      display: flex;
      align-items: center;
      justify-content: center;
      background: transparent;
    }

    /* 个人中心默认头像样式 */
    .personal-default-avatar {
      display: flex;
      flex-direction: column;
      align-items: center;
      color: #666;
    }

    .personal-default-avatar svg {
      margin-bottom: 8px;
    }

    .personal-default-avatar span {
      font-size: 14px;
    }

    /* 个人中心头像控制样式 */
    .personal-avatar-controls {
      display: flex;
      gap: 10px;
      margin-bottom: 8px;
      justify-content: center;
    }

    /* 个人中心按钮移除样式 */
    .personal-btn-remove {
      display: inline-block;
      padding: 8px 16px;
      background-color: #f0f0f0;
      color: #666;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 0.9rem;
      transition: background-color 0.2s;
    }

    .personal-btn-remove:hover {
      background-color: #e0e0e0;
      color: #333;
    }

    /* 个人中心头像提示样式 */
    .personal-avatar-hint {
      font-size: 0.8rem;
      color: #ffffff;
      line-height: 1.4;
      margin-bottom: 4px;
      text-align: center;
    }

    /* 个人中心头像错误样式 */
    .personal-avatar-error {
      font-size: 0.85rem;
      color: #e74c3c;
      margin-top: 4px;
      padding: 6px 10px;
      background-color: #fdf0f0;
      border-radius: 4px;
      border-left: 3px solid #e74c3c;
    }

    .personal-hidden {
      display: none;
    }

    /* 个人中心字符计数样式 */
    .personal-char-count {
      font-size: 14px;
      color: #ffffff;
      text-align: right;
      margin-top: 5px;
      width: 100%;
    }

    /* 个人中心操作按钮区域样式 */
    .personal-form-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* 个人中心按钮样式 */
    .personal-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .personal-btn-primary {
      background-color: #000000;
      border-color: #000000;
    }

    /* 个人中心按钮悬停效果 */
    .personal-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 钱包充值弹窗样式 */
    .wallet-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .wallet-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .wallet-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .wallet-close-modal:hover,
    .wallet-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .wallet-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      margin-top: 5%;
    }

    /* 钱包余额显示样式 */
    .wallet-balance {
      width: 80%;
      margin-bottom: 25px;
      padding: 20px;
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      text-align: center;
    }

    .wallet-balance-label {
      font-size: 16px;
      color: #ffffff;
      width: 100%;
    }

    .wallet-balance-amount {
      font-size: 28px;
      font-weight: bold;
      color: #FEDE00;
    }

    /* 钱包表单样式 */
    .wallet-form {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 钱包表单组样式 */
    .wallet-form-group-club {
      width: 100%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 钱包表单标签样式 */
    .wallet-form-group-club label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: center;
      width: 100%;
    }

    /* 钱包表单输入框样式 */
    .wallet-form-input {
      width: 180%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
    }

    .wallet-form-input:focus {
      outline: none;
    }

    /* 钱包金额选项样式 */
    .wallet-amount-options {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 10px;
      margin-bottom: 15px;
      width: 180%;
    }

    .wallet-amount-option {
      padding: 12px 8px;
      background-color: #000000;
      color: #ffffff;
      border: 2px solid #000000;
      border-radius: 8px;
      font-size: 14px;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .wallet-amount-option:hover,
    .wallet-amount-option.active {
      background-color: #FEDE00;
      color: #000000;
      border-color: #000000;
    }

    /* 钱包自定义金额样式 */
    .wallet-custom-amount {
      width: 180%;
    }

    .wallet-custom-amount input {
      width: 100%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
    }

    .wallet-custom-amount input:focus {
      outline: none;
    }

    /* 钱包操作按钮区域样式 */
    .wallet-form-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* 钱包按钮样式 */
    .wallet-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      margin-top: 10%;
    }

    .wallet-btn-primary {
      background-color: #000000;
      border-color: #000000;
    }

    /* 钱包按钮悬停效果 */
    .wallet-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 针对Webkit浏览器（Chrome, Safari, Edge等） */
    #customAmount::-webkit-outer-spin-button,
    #customAmount::-webkit-inner-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }

    /* 针对Firefox */
    #customAmount[type=number] {
      -moz-appearance: textfield;
      appearance: textfield;
    }

    /* 确保在所有浏览器中都隐藏 */
    #customAmount {
      appearance: textfield;
      -webkit-appearance: none;
      -moz-appearance: textfield;
    }
    /* 修改密码弹窗样式 */
    .security-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .security-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .security-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #ffffff;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .security-close-modal:hover,
    .security-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .security-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 安全中心头部样式 */
    .security-center-header {
      text-align: center;
      margin-top: 10%;
      margin-bottom: 10%;
    }

    .security-title {
      font-size: 1.5rem;
      color: #ffffff;
      margin-bottom: 8px;
    }

    .security-subtitle {
      font-size: 0.9rem;
      color: #ffffff;
    }

    /* 安全中心表单组样式 */
    .security-form-group-club {
      width: 100%;
      margin-bottom: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .security-form-group {
      width: 100%;
      max-width: 400px;
    }

    .security-form-group-club input {
      width: 100%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
    }

    .security-form-group-club input:focus {
      outline: none;
    }

    .security-text-align-left {
      text-align: left;
    }

    /* 密码要求容器样式 */
    .security-password-requirements-container {
      width: 100%;
      max-width: 400px;
      margin-bottom: 20px;
    }

    /* 密码要求项样式 */
    .security-password-requirement {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }

    .security-password-requirement-item {
      display: flex;
      align-items: center;
    }

    .security-requirement-indicator {
      width: 12px;
      height: 12px;
      border-radius: 50%;
      border: 2px solid #ccc; /* 默认灰色边框 */
      margin-right: 10px;
      transition: all 0.3s ease;
    }

    .security-requirement-text {
      font-size: 14px;
      color: #ffffff;
    }
    /* 安全中心操作按钮区域样式 */
    .security-form-actions {
      width: 100%;
      max-width: 400px;
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* 安全中心按钮样式 */
    .security-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      width: 100%;
    }

    .security-btn-primary {
      background-color: #000000;
      border-color: #000000;
    }

    .security-btn-full-width {
      width: 100%;
    }

    .security-btn:disabled {
      background-color: #000000;
      border-color: #000000;
      cursor: not-allowed;
    }

    .security-btn:disabled:hover {
      background-color: #666;
      border-color: #666;
      transform: none;
    }

    /* 安全中心按钮悬停效果 */
    .security-btn:hover:not(:disabled) {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 用户注册弹窗样式 */
    .register-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .register-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .register-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .register-close-modal:hover,
    .register-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .register-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 用户注册表单样式 */
    .register-form {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 用户注册表单组样式 */
    .register-form-group-club {
      width: 100%;
      margin-top: 20%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 用户注册表单标签样式 */
    .register-form-group-club label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: left;
      margin-left: -100%;
      width: 100%;
    }

    /* 用户注册表单输入框样式 */
    .register-form-group-club input {
      width: 200%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
    }

    .register-form-group-club input:focus {
      outline: none;
    }

    /* 用户注册操作按钮区域样式 */
    .register-form-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 20%;
    }

    /* 用户注册按钮样式 */
    .register-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .register-btn-primary {
      background-color: #000000;
      border-color: #000000;
    }

    /* 用户注册按钮悬停效果 */
    .register-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 俱乐部管理弹窗样式 */
    .club-manage-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .club-manage-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .club-manage-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .club-manage-close-modal:hover,
    .club-manage-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .club-manage-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 俱乐部管理容器样式 */
    .club-manage-management-container {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 打手网格容器样式 */
    .club-manage-fighters-grid-container {
      width: 100%;
      margin-bottom: 25px;
    }

    .club-manage-fighters-title {
      font-size: 1.5rem;
      color: #ffffff;
      margin-bottom: 15px;
      text-align: center;
    }

    .club-manage-fighters-grid-wrapper {
      width: 100%;
    }

    .club-manage-fighters-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 15px;
      width: 100%;
    }

    /* 战士项样式：设置单个战士项的外观、尺寸和交互效果 */
    .fighter-item {
      padding: 12px 15px;
      background-color: #000000;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
      transition: all 0.3s ease;
      text-align: center;
      font-size: 0.9rem;
      color: #ffffff;
      font-weight: 500;
    }

    /* 战士项悬停效果：悬停时的渐变背景和位移效果 */
    .fighter-item:hover {
      background-color: #FEDE00;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      color: #000000;
    }
    /* 俱乐部管理操作按钮区域样式 */
    .club-manage-management-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      gap: 15px;
      margin-top: 20px;
    }

    /* 俱乐部管理按钮样式 */
    .club-manage-btn {
      padding: 12px 30px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .club-manage-btn-primary {
      background-color: #000000;
      border-color: #000000;
    }

    .club-manage-btn-secondary {
      background-color: #000000;
      border-color: #000000;
    }

    /* 俱乐部管理按钮悬停效果 */
    .club-manage-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }
    .club-manage-fighter-grid-item{
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 打手管理弹窗样式 */
    .fighter-manage-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .fighter-manage-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 600px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .fighter-manage-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .fighter-manage-close-modal:hover,
    .fighter-manage-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .fighter-manage-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 打手管理容器样式 */
    .fighter-manage-management-container {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 打手信息头部样式 */
    .fighter-manage-info-header {
      width: 100%;
      margin-bottom: 25px;
      text-align: center;
    }

    .fighter-manage-info-header h3 {
      font-size: 1.5rem;
      color: #ffffff;
      margin: 0;
    }

    /* 打手订单区域样式 */
    .fighter-manage-orders-section {
      width: 100%;
      margin-bottom: 25px;
    }

    .fighter-manage-orders-section h4 {
      font-size: 1.2rem;
      color: #ffffff;
      margin-bottom: 15px;
      text-align: center;
    }

    /* 订单表格容器样式 */
    .fighter-manage-orders-table-container {
      width: 100%;
      overflow-x: auto;
    }

    /* 订单表格样式 */
    .fighter-manage-orders-table {
      width: 100%;
      border-collapse: collapse;
      background-color: #000000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      overflow: hidden;
    }

    .fighter-manage-orders-table thead {
      background-color: #333;
    }

    .fighter-manage-orders-table th {
      padding: 12px 15px;
      text-align: left;
      font-weight: 600;
      color: #ffffff;
      border-bottom: 2px solid #444;
    }

    .fighter-manage-orders-table td {
      padding: 10px 15px;
      text-align: left;
      color: #ffffff;
      border-bottom: 1px solid #333;
    }

    .fighter-manage-orders-table tbody tr:hover {
      background-color: #222;
    }

    /* 打手管理操作按钮区域样式 */
    .fighter-manage-management-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* 打手管理按钮样式 */
    .fighter-manage-btn {
      padding: 12px 30px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }


    /* 打手管理按钮悬停效果 */
    .fighter-manage-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 俱乐部信息编辑弹窗样式 */
    .club-edit-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .club-edit-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      height: 55vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .club-edit-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .club-edit-close-modal:hover,
    .club-edit-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .club-edit-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 俱乐部信息编辑表单样式 */
    .club-edit-club-apply-form {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 头像上传组样式 */
    .club-edit-avatar-upload-group {
      width: 100%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .club-edit-avatar-upload-group label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: center;
      width: 100%;
    }

    /* 头像上传容器样式 */
    .club-edit-avatar-upload-container {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 头像预览样式 */
    .club-edit-avatar-preview {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      overflow: hidden;
      border: 4px solid #000000;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      margin-bottom: 15px;
      display: flex;
      align-items: center;
      justify-content: center;
      background: transparent;
    }

    .club-edit-default-avatar {
      width: 100%;
      height: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: #333;
      color: #999;
      font-size: 14px;
      text-align: center;
    }

    /* 俱乐部信息编辑表单组样式 */
    .club-edit-form-group-club {
      width: 100%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .club-edit-form-group-club label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: left;
      width: 100%;
    }

    /* 俱乐部信息编辑表单输入框样式 */
    .club-edit-form-group-club input{
      width: 100%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
    }
    .club-edit-form-group-club textarea{
      width: 100%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
      resize: none;
      min-height: 200px;
    }

    .club-edit-form-group-club input:focus{
      outline: none;
    }
    .club-edit-form-group-club textarea:focus {
      outline: none;
    }

    /* 字符计数样式 */
    .club-edit-char-count {
      display: none;
    }

    /* 俱乐部信息编辑操作按钮区域样式 */
    .club-edit-form-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* 俱乐部信息编辑按钮样式 */
    .club-edit-btn {
      padding: 12px 30px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .club-edit-btn-primary {
      background-color: #000000;
      border-color: #000000;
    }

    .club-edit-btn-secondary {
      background-color: #666;
      border-color: #666;
    }

    /* 俱乐部信息编辑按钮悬停效果 */
    .club-edit-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 俱乐部编辑成功弹窗样式 */
    .club-editsuccess-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .club-editsuccess-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .club-editsuccess-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .club-editsuccess-close-modal:hover,
    .club-editsuccess-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .club-editsuccess-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 编辑成功消息样式 */
    .club-editsuccess-message {
      width: 100%;
      margin-bottom: 25px;
      text-align: center;
    }

    .club-editsuccess-message p {
      font-size: 1.2rem;
      color: #ffffff;
      margin: 0;
      line-height: 1.5;
    }

    /* 编辑成功操作按钮区域样式 */
    .club-editsuccess-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* 编辑成功按钮样式 */
    .club-editsuccess-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .club-editsuccess-btn-primary {
      background-color: #000000;
      border-color: #000000;
    }

    /* 编辑成功按钮悬停效果 */
    .club-editsuccess-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 管理订单弹窗样式 */
    .order-manage-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .order-manage-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }
    .order-manage-modal-header{
      display: flex;
      margin-top: 15%;
      justify-self: center;
    }
    .order-manage-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }
    .order-manage-close-modal:hover,
    .order-manage-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .order-manage-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 管理订单表单样式 */
    .order-manage-club-apply-form {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 管理订单表单组样式 */
    .order-manage-from-grop-apply {
      width: 100%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 管理订单表单标签样式 */
    .order-manage-from-grop-apply label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: center;
      width: 100%;
    }

    /* 管理订单表单输入框样式 */
    .order-manage-form-input {
      width: 100%;
      min-height: 50px;
      padding-left: 2%;
      padding-right: 2%;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-family: inherit;
      resize: vertical;
      transition: all 0.3s ease;
      box-sizing: border-box;
      resize: none;
      color: #ffffff;
      background-color: #000000;
    }
    .order-manage-form-input:focus {
      outline: none;
    }
    /* 管理订单操作按钮区域样式 */
    .order-manage-apply-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 10px;
      gap: 15px;
    }

    /* 管理订单按钮样式 */
    .order-manage-apply-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000;
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    /* 管理订单按钮悬停效果 */
    .order-manage-apply-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      cursor: pointer;
    }

    /* 管理订单删除按钮样式 */
    .order-manage-delete-btn {
      background-color: #dc3545;
      border-color: #dc3545;
    }

    .order-manage-delete-btn:hover {
      background-color: #007bff;
      border-color: #000000;
    }

    /* 管理订单字符计数样式 */
    .order-manage-char-count {
      display: none;
    }
    #orderAmount, #manageOrderAmount {
      -moz-appearance: textfield;
      appearance: textfield;
    }
    /* 弹窗打开动画：定义弹窗打开时的缩放和位移动画效果 */
    @keyframes modalopen {
      from {
        opacity: 0;
        transform: scale(0.9) translateY(-20px);
      }
      to {
        opacity: 1;
        transform: scale(1) translateY(0);
      }
    }
    /* 搜索容器样式：设置搜索区域的居中布局和位置 */
    .middle-search-container {
      display: flex;
      justify-content: center;
      margin-top: -0.5%;
    }
    /* 搜索框样式：设置搜索框的外观、尺寸和过渡效果 */
    .middle-search-box {
      display: flex;
      width: 30%;
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      transition: all 0.3s ease;
    }
    /* 搜索框悬停效果：悬停时的3D位移和阴影增强效果 */
    .middle-search-box:hover {
      transform: translate3d(5px, 5px, 0);
      box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    }
    /* 搜索输入框样式：设置搜索输入框的外观、文字和布局 */
    .middle-search-input {
      background-color: #222222;
      flex: 1;
      padding-top: 1%;
      padding-bottom: 1%;
      padding-left: 2%;
      border: none;
      font-size: 1rem;
      outline: none;
      border-radius: 0 16px 16px 16px;
      color: #ffffff;
    }
    /* 搜索按钮样式：设置搜索按钮的外观、文字和交互效果 */
    .middle-search-btn {
      padding-top: 0.5%;
      padding-bottom: 0.5%;
      padding-left: 5%;
      padding-right: 5%;
      background-color: #222222;
      color: white;
      border-radius:  0 16px 16px 16px;
      border: 5px solid #222222;
      font-size: 1rem;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s ease;

    }
    /* 搜索按钮悬停效果：悬停时的颜色变化和放大效果 */
    .middle-search-btn:hover {
      background-color: #FEDE00 ;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #FEDE00;
      color: #000000;
      cursor: pointer;
      transform: scale(1.05);
    }

    /* 发布订单弹窗样式 */
    .order-post-modal {
      display: none;
      position: fixed;
      z-index: 1001; /* 在创建俱乐部弹窗之上 */
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      justify-content: center;
      align-items: center;
    }

    .order-post-modal-content {
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      width: 90%;
      max-width: 500px;
      max-height: 90vh;
      overflow-y: hidden;
      position: relative;
      animation: modalopen 0.3s;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    .order-post-close-modal {
      position: absolute;
      right: 20px;
      top: 20px;
      font-size: 28px;
      font-weight: bold;
      color: #999;
      cursor: pointer;
      width: 30px;
      height: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      transition: all 0.2s ease;
      z-index: 1;
    }

    .order-post-close-modal:hover,
    .order-post-close-modal:focus {
      color: #FEDE00;
      text-decoration: none;
    }

    .order-post-modal-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 24px;
    }

    .order-post-modal-header h2 {
      margin: 0;
      font-size: 1.5rem;
      color: #ffffff;
    }

    .order-post-modal-body {
      padding: 30px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    /* 发布订单表单样式 */
    .order-post-form-group {
      width: 100%;
      margin-bottom: 25px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    /* 发布订单表单标签样式 */
    .order-post-form-group label {
      display: block;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 10px;
      text-align: left;
      width: 100%;
      margin-left: -100%;
    }

    /* 发布订单表单输入框样式 */
    .order-post-form-input,
    .order-post-form-group input[type="text"],
    .order-post-form-group input[type="number"],
    .order-post-form-group select {
      width: 200%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      font-size: 16px;
      font-family: inherit;
      transition: all 0.3s ease;
      box-sizing: border-box;
      color: #ffffff;
      background-color: #000000;
    }

    .order-post-form-input:focus,
    .order-post-form-group input[type="text"]:focus,
    .order-post-form-group input[type="number"]:focus,
    .order-post-form-group select:focus {
      outline: none;
    }

    /* 发布订单表单文本域样式 */
    .order-post-form-group textarea {
      width: 200%;
      padding: 12px 15px;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      font-size: 16px;
      font-family: inherit;
      resize: vertical;
      min-height: 100px;
      transition: all 0.3s ease;
      box-sizing: border-box;
      resize: none;
      color: #ffffff;
      background-color: #000000;
    }

    .order-post-form-group textarea:focus {
      outline: none;
    }

    /* 字符计数样式 */
    .order-post-char-count {
      display: none;
    }

    /* 发布订单操作按钮区域样式 */
    .order-post-form-actions {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    /* 发布订单按钮样式 */
    .order-post-btn {
      padding: 12px 40px;
      background-color: #000000;
      color: white;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      font-size: 16px;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .order-post-btn-primary {
      background-color: #000000;
      color: white;
    }

    /* 发布订单按钮悬停效果 */
    .order-post-btn:hover {
      font-weight: bold;
      transform: scale(1.05);
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
    }
    /* 针对Chrome, Safari, Edge, Opera等基于WebKit的浏览器 */
    #orderAmount::-webkit-outer-spin-button,
    #orderAmount::-webkit-inner-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }

    /* 针对Firefox */
    #orderAmount[type=number] {
      -moz-appearance: textfield;
    }

    /* 确保在所有浏览器中都隐藏 */
    #orderAmount {
      appearance: none;
      -webkit-appearance: none;
      -moz-appearance: textfield;
    }
    @media (max-width: 768px) {
      .main-content {
        grid-template-columns: 1fr;
        margin: 10px 20px;
      }
      .admin-card {
        width: 100%;
      }
      .admin-card-2 {
        flex-direction: column;
        height: auto;
      }
      .login-left {
        width: 100%;
        border-right: none;
        border-bottom: 1px solid rgba(0, 0, 0, 0.4);
        padding-bottom: 20px;
      }
      .login-right {
        padding-top: 20px;
      }
      .login-btn {
        width: 100%;
      }
    }
    /* 订单网格容器样式：设置五列n行的网格布局并水平居中 */
    .show-order-grid {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 15px;
      padding: 20px;
      margin: 0 auto;
      max-width: 1800px;
      justify-content: center;
    }
    /* 订单卡片基础样式：仿照俱乐部卡片样式 */
    .show-order-card-1{
      background: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 15px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      display: flex;
      flex-direction: column;
      width: 350px; /* 与club-card相同宽度 */
      height: 520px; /* 与club-card相同高度 */
    }
    .show-order-card-1:hover{
      transform: translate3d(5px, 5px, 0);
    }
    .show-order-card-2{
      background: #222222;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 15px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      display: flex;
      flex-direction: column;
      width: 350px; /* 与club-card相同宽度 */
      height: 520px; /* 与club-card相同高度 */
    }
    .show-order-card-2:hover{
      transform: translate3d(5px, 5px, 0);
    }
    /* 订单卡片内容样式 */
    .show-order-card-content h3 {
      color: #ffffff;
      font-size: 1.2rem;
      font-weight: bold;
      margin-bottom: 10px;
      text-align: center;
    }

    /* 订单信息样式 */
    .show-order-info {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      width: 100%;
      background-color: #222222;
      border-radius: 0 16px 16px 16px;
      margin-left: -1.5%;
    }

    .show-order-type {
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      background-color: #000000;
      font-size: 1.2rem;
      font-weight: 600;
      color: #007bff;
      margin-bottom: 3%;
      margin-top: 3%;
      height: 2vh;
      display: flex;
      align-items: center;
      padding-left: 2%;
      width: 98%;
    }

    .show-order-amount {
      width: 98%;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      background-color: #000000;
      font-size: 14px;
      font-weight: 500;
      color: #FEDE00;
      margin-bottom: 5%;
      height: 2vh;
      display: flex;
      align-items: center;
      padding-left: 2%;
    }

    .show-order-content {
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      background-color: #000000;
      width: 98%;
      height: 15vh;
      margin-bottom: 5%;
      display: flex;
      padding-left: 2%;
      margin-left: auto;
      margin-right: auto;
    }

    .show-order-content p {
      font-size: 13px;
      color: #cccccc;
      line-height: 1.4;
    }

    /* 发布人信息样式 */
    .show-order-publisher-info {
      display: flex;
      align-items: center;
      width: 100%;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      background-color: #000000;
      margin-left: auto;
      margin-right: auto;
    }

    .show-order-publisher-avatar {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      overflow: hidden;
      border: 2px solid #222222;
      margin-right: 10px;
      flex-shrink: 0;
    }

    .show-order-publisher-avatar img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .show-order-publisher-details {
      display: flex;
      flex-direction: column;
    }

    .show-order-publisher-name {
      font-size: 14px;
      font-weight: 500;
      color: #ffffff;
      margin-bottom: 2px;
    }

    .show-order-publisher-uid {
      font-size: 12px;
      color: #999999;
    }

    /* 接受订单按钮样式 */
    .show-order-accept-btn {
      margin-top: 3.5%;
      height: 12%;
      width: 55%;
      background-color: #000000;
      color: white;
      border-radius: 0 16px 16px 16px;
      border: 5px solid #000000;
      padding: 8px 16px;
      font-size: 1rem;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      display: flex;
      justify-self: center;
      justify-content: center;
      align-items: center;
    }

    .show-order-accept-btn:hover {
      font-weight: bold;
      background-color: #FEDE00;
      color: #000000;
      border-color: #000;
      border-radius: 0px 16px 16px 16px;
      border: 5px solid #000000; /* 使用简写属性 */
      cursor: pointer;
      transform: scale(1.05);
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