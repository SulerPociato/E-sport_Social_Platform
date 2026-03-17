<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>8889游戏</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<!-- 顶部区域 -->
<div class="container">
  <div class="main-content">
    <!-- 俱乐部卡片 -->
    <div class="club-card">
      <h1>俱乐部</h1>
      <ul class="club-features">
        <!-- 为每个li添加data属性存储俱乐部信息 -->
        <li class="club-item"
            data-name="东东电竞"
            data-intro="专业的电竞俱乐部，培养职业选手"
            data-avatar="/images/pero.png">
          <div class="club-card-name"> 东东电竞</div>
          <div class="club-card-intro"> 专业的电竞俱乐部，培养职业选手</div>
        </li>
        <li class="club-item"
            data-name="PERO"
            data-intro="PUBG职业战队,多次获得国际赛事冠军"
            data-avatar="/images/pero.png">
          <div class="club-card-name">PERO</div>
          <div class="club-card-intro"> PUBG职业战队,多次获得国际赛事冠军</div>
        </li>
        <li class="club-item"
            data-name="白菜电竞"
            data-intro="新人友好俱乐部，提供全方位培训"
            data-avatar="/images/baicai.png">
          <div class="club-card-name">白菜电竞</div>
          <div class="club-card-intro"> 新人友好俱乐部，提供全方位培训</div>
        </li>
        <li class="club-item"
            data-name="GR8"
            data-intro="国际电竞俱乐部,专注于FPS游戏"
            data-avatar="/images/gr8.png">
          <div class="club-card-name">GR8</div>
          <div class="club-card-intro"> 国际电竞俱乐部,专注于FPS游戏</div>
        </li>
        <li class="club-item"
            data-name="东东电竞"
            data-intro="专业的电竞俱乐部，培养职业选手"
            data-avatar="/images/dongdong.png">
          <div class="club-card-name">东东电竞</div>
          <div class="club-card-intro"> 专业的电竞俱乐部，培养职业选手</div>
        </li>
        <li class="club-item"
            data-name="PERO"
            data-intro="PUBG职业战队,多次获得国际赛事冠军"
            data-avatar="/images/pero.png">
          <div class="club-card-name">PERO</div>
          <div class="club-card-intro"> PUBG职业战队,多次获得国际赛事冠军</div>
        </li>
        <li class="club-item"
            data-name="白菜电竞"
            data-intro="新人友好俱乐部，提供全方位培训"
            data-avatar="/images/baicai.png">
          <div class="club-card-name">白菜电竞</div>
          <div class="club-card-intro"> 新人友好俱乐部，提供全方位培训</div>
        </li>
        <li class="club-item"
            data-name="GR8"
            data-intro="国际电竞俱乐部,专注于FPS游戏"
            data-avatar="/images/gr8.png">
          <div class="club-card-name">GR8</div>
          <div class="club-card-intro"> 国际电竞俱乐部,专注于FPS游戏</div>
        </li>
        <li class="club-item"
            data-name="白菜电竞"
            data-intro="新人友好俱乐部,提供全方位培训"
            data-avatar="/images/baicai.png">
          <div class="club-card-name">白菜电竞</div>
          <div class="club-card-intro"> 新人友好俱乐部,提供全方位培训</div>
        </li>
        <li class="club-item"
            data-name="GR8"
            data-intro="国际电竞俱乐部,专注于FPS游戏"
            data-avatar="/images/gr8.png">
          <div class="club-card-name">GR8</div>
          <div class="club-card-intro"> 国际电竞俱乐部,专注于FPS游戏</div>
        </li>
        <li class="club-item"
            data-name="白菜电竞"
            data-intro="新人友好俱乐部,提供全方位培训"
            data-avatar="/images/baicai.png">
          <div class="club-card-name">白菜电竞</div>
          <div class="club-card-intro"> 新人友好俱乐部,提供全方位培训</div>
        </li>
        <li class="club-item"
            data-name="GR8"
            data-intro="国际电竞俱乐部,专注于FPS游戏"
            data-avatar="/images/gr8.png">
          <div class="club-card-name">GR8</div>
          <div class="club-card-intro"> 国际电竞俱乐部,专注于FPS游戏</div>
        </li>
      </ul>

      <!-- 搜索框区域 -->
      <div class="club-search-con">
        <input type="text" id="clubSearchInput" class="club-search-input" placeholder="请输入俱乐部名称">
        <button type="button" id="clubSearchBtn" class="club-search-btn">搜索</button>
      </div>

      <div class="club-btn-con">
        <a href="javascript:void(0);" id="createClubBtn" class="club-btn">创建俱乐部</a>
      </div>
    </div>
    <!-- 用户卡片 -->
    <div class="admin-card">
      <h1>8889游戏平台</h1>
      <div class="admin-card-2">
        <div class="login-left" id="loginLeftOriginal">
          <div class="form-group">
            <div>
              <label for="account" class="form-label-1">账号</label>
            </div>
            <input
                    type="text"
                    id="account"
                    class="form-input"
                    placeholder="请输入账号"
            >
          </div>
          <div class="form-group">
            <div>
              <label for="password" class="form-label-2">密码</label>
            </div>
            <input
                    type="password"
                    id="password"
                    class="form-input"
                    placeholder="请输入密码"
            >
          </div>
          <div class="remember-me">
            <input type="checkbox" id="remember">
            <label for="remember" class="remember-label">记住我</label>
          </div>
          <div class="login-btn-con">
            <button class="login-btn">登录</button>
          </div>
          <div class="register">
            <a href="javascript:void(0);" id="registerBtn" class="register-link">还没有账户？点击创建</a>
          </div>
        </div>
        <!-- 登录后的用户信息展示 -->
        <div class="login-left-intro" id="userInfoDiv" style="display: none;">
          <!-- 用户基本信息（头像、用户名、UID）水平排列 -->
          <div class="login-left-intro-user-basic-info">
            <div class="login-left-intro-user-avatar-container">
              <img id="displayAvatar" src="${pageContext.request.contextPath}/images/default_club.png" alt="用户头像" class="login-left-intro-user-avatar">
            </div>
            <div class="login-left-intro-user-text-info">
              <div id="displayNickname" class="login-left-intro-user-name">张三</div>
              <div id="displayUserId" class="login-left-intro-user-uid">UID: 88890001</div>
            </div>
          </div>

          <!-- 订单统计信息 -->
          <div class="login-left-intro-user-stats">
            <div class="login-left-intro-stat-item">
              <span class="login-left-intro-stat-label">发布订单数</span>
              <span class="login-left-intro-stat-value">15</span>
            </div>
            <div class="login-left-intro-stat-item">
              <span class="login-left-intro-stat-label">完成订单数</span>
              <span class="login-left-intro-stat-value">12</span>
            </div>
          </div>

          <!-- 个人简介 -->
          <div class="login-left-intro-user-intro">
            <div class="login-left-intro-intro-label">个人简介</div>
            <div id="displayDescription" class="login-left-intro-intro-content">热爱游戏的玩家，擅长各种竞技类游戏，有丰富的游戏经验。希望在这里找到志同道合的游戏伙伴！</div>
          </div>
        </div>
        <div class="login-right">
          <div class="center-btn-con">
            <a href="javascript:void(0);" id="personalCenterBtn" class="center-btn">
              <img src="${pageContext.request.contextPath}/images/intro.svg" alt="个人中心" class="btn-icon">
              <span class="btn-text">个人中心</span>
            </a>
            <a href="javascript:void(0);" id="securityCenterBtn" class="center-btn">
              <img src="${pageContext.request.contextPath}/images/password.svg" alt="修改密码" class="btn-icon">
              <span class="btn-text">修改密码</span>
            </a>
            <a href="javascript:void(0);" id="walletBtn" class="center-btn">
              <img src="${pageContext.request.contextPath}/images/cash.svg" alt="我的钱包" class="btn-icon">
              <span class="btn-text">我的钱包</span>
            </a>
            <a href="javascript:void(0);" id="clubManagementBtn" class="center-btn">
              <img src="${pageContext.request.contextPath}/images/club.svg" alt="俱乐部管理" class="btn-icon">
              <span class="btn-text">我的俱乐部</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- 订单卡片 -->
    <div class="order-card">
      <h1>订单管理</h1>
      <ul class="order-features">
        <li class="order-item"
            data-id="1"
            data-type="job"
            data-game="三角洲行动"
            data-amount="500"
            data-details="需要一名经验丰富的玩家协助完成三角洲行动游戏中的护航任务，要求熟悉游戏机制，有团队合作精神。">
          <div class="order-card-name">三角洲护航</div>
          <div class="order-card-intro">¥500 - 三角洲行动</div>
        </li>
        <li class="order-item"
            data-id="2"
            data-type="bounty"
            data-game="王者荣耀"
            data-amount="300"
            data-details="寻找王者荣耀陪玩，要求段位在王者以上，能够提供专业的游戏指导和陪玩服务。">
          <div class="order-card-name">王者荣耀陪玩</div>
          <div class="order-card-intro">¥300 - 王者荣耀</div>
        </li>
        <li class="order-item"
            data-id="3"
            data-type="job"
            data-game="火影忍者"
            data-amount="200"
            data-details="需要完成火影忍者游戏中的3000分任务，要求熟悉角色技能，有快速完成任务的能力。">
          <div class="order-card-name">火影3000</div>
          <div class="order-card-intro">¥200 - 火影忍者</div>
        </li>
        <li class="order-item"
            data-id="4"
            data-type="bounty"
            data-game="无畏契约"
            data-amount="800"
            data-details="寻找无畏契约代练，要求熟悉游戏机制，能够高效完成代练任务，保证账号安全。">
          <div class="order-card-name">无畏契约代练</div>
          <div class="order-card-intro">¥800 - 无畏契约</div>
        </li>
        <li class="order-item"
            data-id="5"
            data-type="job"
            data-game="三角洲行动"
            data-amount="450"
            data-details="需要完成三角洲行动游戏中的护航任务，要求有良好的沟通能力和团队协作精神。">
          <div class="order-card-name">三角洲护航</div>
          <div class="order-card-intro">¥450 - 三角洲行动</div>
        </li>
        <li class="order-item"
            data-id="6"
            data-type="bounty"
            data-game="王者荣耀"
            data-amount="350"
            data-details="寻找王者荣耀陪玩，要求声音好听，能够提供愉快的游戏体验，段位不限。">
          <div class="order-card-name">王者荣耀陪玩</div>
          <div class="order-card-intro">¥350 - 王者荣耀</div>
        </li>
        <li class="order-item"
            data-id="7"
            data-type="job"
            data-game="火影忍者"
            data-amount="250"
            data-details="需要完成火影忍者游戏中的3000分任务，要求有耐心，能够按时完成任务。">
          <div class="order-card-name">火影3000</div>
          <div class="order-card-intro">¥250 - 火影忍者</div>
        </li>
        <li class="order-item"
            data-id="8"
            data-type="bounty"
            data-game="无畏契约"
            data-amount="700"
            data-details="寻找无畏契约代练，要求信誉良好，能够保证代练质量，按时交付。">
          <div class="order-card-name">无畏契约代练</div>
          <div class="order-card-intro">¥700 - 无畏契约</div>
        </li>
        <li class="order-item"
            data-id="9"
            data-type="job"
            data-game="火影忍者"
            data-amount="220"
            data-details="需要完成火影忍者游戏中的3000分任务，要求熟悉游戏操作，能够快速上手。">
          <div class="order-card-name">火影3000</div>
          <div class="order-card-intro">¥220 - 火影忍者</div>
        </li>
        <li class="order-item"
            data-id="10"
            data-type="bounty"
            data-game="无畏契约"
            data-amount="750"
            data-details="寻找无畏契约代练，要求有丰富的代练经验，能够处理各种游戏问题。">
          <div class="order-card-name">无畏契约代练</div>
          <div class="order-card-intro">¥750 - 无畏契约</div>
        </li>
        <li class="order-item"
            data-id="11"
            data-type="job"
            data-game="火影忍者"
            data-amount="280"
            data-details="需要完成火影忍者游戏中的3000分任务，要求有责任心，能够保证任务质量。">
          <div class="order-card-name">火影3000</div>
          <div class="order-card-intro">¥280 - 火影忍者</div>
        </li>
        <li class="order-item"
            data-id="12"
            data-type="bounty"
            data-game="无畏契约"
            data-amount="650"
            data-details="寻找无畏契约代练，要求价格合理，服务态度好，能够及时沟通。">
          <div class="order-card-name">无畏契约代练</div>
          <div class="order-card-intro">¥650 - 无畏契约</div>
        </li>
      </ul>

      <!-- 搜索框区域 -->
      <div class="order-search-con">
        <input type="text" id="orderSearchInput" class="order-search-input" placeholder="请输入订单名称">
        <button type="button" id="orderSearchBtn" class="order-search-btn">搜索</button>
      </div>

      <div class="order-btn-con">
        <a href="javascript:void(0);" id="postOrderBtn" class="order-btn">发布订单</a>
      </div>
    </div>
  </div>
  <!-- 俱乐部详情弹窗 -->
  <div id="clubDetailModal" class="club-detail-modal">
    <div class="club-detail-modal-content">
      <!-- 关闭按钮（右上角叉号） -->
      <span class="club-detail-close-modal">&times;</span>

      <!-- 弹窗主体内容 -->
      <div class="club-detail-modal-body">
        <!-- 俱乐部头像 -->
        <div class="club-detail-avatar-container">
          <img id="detailClubAvatar" src="" alt="" class="club-detail-avatar">
        </div>

        <!-- 俱乐部名称 -->
        <h2 id="detailClubName" class="club-detail-name"></h2>

        <!-- 俱乐部简介 -->
        <div class="club-detail-intro-container">
          <h3>俱乐部简介</h3>
          <p id="detailClubIntro" class="club-detail-intro"></p>
        </div>

        <!-- 申请加入表单 -->
        <form id="clubApplyForm" class="club-detail-apply-form">
          <div class="club-detail-form-group">
            <label for="applyMessage">请填写验证信息</label>
            <textarea
                    id="applyMessage"
                    name="applyMessage"
                    rows="4"
                    placeholder="请简单介绍自己，并说明申请加入的理由..."
                    required></textarea>
          </div>
          <!-- 发送按钮 -->
          <div class="club-detail-apply-actions">
            <button type="submit" class="club-detail-apply-btn">发送申请</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 创建俱乐部弹窗 -->
  <div id="createClubModal" class="club-create-modal">
    <div class="club-create-modal-content">
      <div class="club-create-modal-header">
        <span class="club-create-close-modal">&times;</span>
      </div>
      <div class="club-create-modal-body">
        <form id="createClubForm">
          <!-- 头像上传区域 -->
          <div class="club-create-avatar-upload-group">
            <div class="club-create-avatar-upload-container">
              <div class="club-create-avatar-preview" id="avatarPreview">
                <!-- 默认头像图标 -->
                <div class="club-create-default-avatar">
                  <svg width="60" height="60" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 12C14.21 12 16 10.21 16 8C16 5.79 14.21 4 12 4C9.79 4 8 5.79 8 8C8 10.21 9.79 12 12 12Z" stroke="#666" stroke-width="1.5"/>
                    <path d="M6 20V19C6 16.79 7.79 15 10 15H14C16.21 15 18 16.79 18 19V20" stroke="#666" stroke-width="1.5"/>
                    <circle cx="12" cy="12" r="10" stroke="#666" stroke-width="1.5"/>
                  </svg>
                </div>
                <!-- 选择的图片会在这里显示 -->
                <img id="avatarDisplay" src="" alt="头像预览" style="display: none;">
              </div>
              <div class="club-create-avatar-controls">
                <input type="file" id="clubAvatar" name="clubAvatar" accept="image/jpeg,image/png,image/gif,image/webp" style="display: none;">
                <button type="button" id="removeAvatarBtn" class="club-create-btn-remove" style="display: none;">移除</button>
              </div>
              <div class="club-create-avatar-error hidden" id="avatarError"></div>
            </div>
          </div>

          <div class="club-create-form-group">
            <label for="clubName" class="club-create-form-group-clubname">俱乐部名称</label>
            <input type="text" id="clubName" name="clubName" placeholder="请输入俱乐部名称" required>
          </div>
          <div class="club-create-form-group">
            <label for="clubIntro" class="club-create-form-group-clubintro">俱乐部简介</label>
            <textarea id="clubIntro" name="clubIntro" rows="4" placeholder="请简单描述您的俱乐部（例如：宗旨、活动等）" required></textarea>
          </div>
          <div class="club-create-form-actions">
            <button type="submit" class="club-create-btn">创建</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 发布订单弹窗 -->
  <div id="postOrderModal" class="order-post-modal">
    <div class="order-post-modal-content">
      <div class="order-post-modal-header">
        <span class="order-post-close-modal">&times;</span>
      </div>
      <div class="order-post-modal-body">
        <form id="postOrderForm">
          <!-- 订单类型 -->
          <div class="order-post-form-group">
            <label for="orderType">订单类型</label>
            <select id="orderType" name="orderType" class="order-post-form-input" required>
              <option value="">请选择订单类型</option>
              <option value="job">求职订单</option>
              <option value="bounty">悬赏订单</option>
            </select>
          </div>

          <!-- 游戏名称 -->
          <div class="order-post-form-group">
            <label for="gameName">游戏名称</label>
            <input type="text" id="gameName" name="gameName" placeholder="请输入游戏名称" required>
          </div>

          <!-- 订单金额 -->
          <div class="order-post-form-group">
            <label for="orderAmount">订单金额</label>
            <input type="number" id="orderAmount" name="orderAmount" placeholder="请输入金额" min="0" step="0.01" required>
          </div>

          <!-- 订单详情 -->
          <div class="order-post-form-group">
            <label for="orderDetails">订单详情</label>
            <textarea id="orderDetails" name="orderDetails" rows="5" placeholder="请详细描述订单内容..." maxlength="999" required></textarea>
            <div class="order-post-char-count">
              <span id="charCount">0</span>/999
            </div>
          </div>

          <!-- 提交按钮 -->
          <div class="order-post-form-actions">
            <button type="submit" class="order-post-btn order-post-btn-primary">递交订单</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 管理订单弹窗 -->
  <div id="manageOrderModal" class="order-manage-modal">
    <div class="order-manage-modal-content">
      <div class="order-manage-modal-header">
        <h2 id="manageOrderTitle"></h2>
        <span class="order-manage-close-modal">&times;</span>
      </div>
      <div class="order-manage-modal-body">

        <!-- 订单编辑表单 -->
        <form id="manageOrderForm" class="order-manage-club-apply-form">
          <!-- 订单类型 -->
          <div class="order-manage-from-grop-apply">
            <label for="manageOrderType">订单类型</label>
            <select id="manageOrderType" name="manageOrderType" class="order-manage-form-input" required>
              <option value="job">求职订单</option>
              <option value="bounty">悬赏订单</option>
            </select>
          </div>

          <!-- 游戏名称 -->
          <div class="order-manage-from-grop-apply">
            <label for="manageGameName">游戏名称</label>
            <input type="text" id="manageGameName" name="manageGameName" class="order-manage-form-input" required>
          </div>

          <!-- 订单金额 -->
          <div class="order-manage-from-grop-apply">
            <label for="manageOrderAmount">订单金额</label>
            <input type="number" id="manageOrderAmount" name="manageOrderAmount" class="order-manage-form-input" min="0" step="0.01" required>
          </div>

          <!-- 订单详情 -->
          <div class="order-manage-from-grop-apply">
            <label for="manageOrderDetails">订单详情</label>
            <textarea
                    id="manageOrderDetails"
                    name="manageOrderDetails"
                    rows="5"
                    class="order-manage-form-input"
                    maxlength="999"
                    required></textarea>
            <div class="order-manage-char-count">
              <span id="manageCharCount">0</span>/999
            </div>
          </div>

          <!-- 操作按钮 -->
          <div class="order-manage-apply-actions">
            <button type="submit" class="order-manage-apply-btn">提交修改</button>
            <button type="button" id="deleteOrderBtn" class="order-manage-apply-btn order-manage-delete-btn">删除订单</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 个人中心弹窗 -->
  <div id="personalCenterModal" class="personal-modal">
    <div class="personal-modal-content">
      <div class="personal-modal-header">
        <span class="personal-close-modal">&times;</span>
      </div>
      <div class="personal-modal-body">
        <form id="personalCenterForm">
          <!-- 头像上传 -->
          <div class="personal-form-group-club">
            <label for="personalAvatar">用户头像</label>
            <div class="personal-avatar-upload-container">
              <div class="personal-avatar-preview" id="personalAvatarPreview">
                <!-- 默认头像图标 -->
                <div class="personal-default-avatar">
                  <svg width="60" height="60" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 12C14.21 12 16 10.21 16 8C16 5.79 14.21 4 12 4C9.79 4 8 5.79 8 8C8 10.21 9.79 12 12 12Z" stroke="#666" stroke-width="1.5"/>
                    <path d="M6 20V19C6 16.79 7.79 15 10 15H14C16.21 15 18 16.79 18 19V20" stroke="#666" stroke-width="1.5"/>
                    <circle cx="12" cy="12" r="10" stroke="#666" stroke-width="1.5"/>
                  </svg>
                  <span>点击上传头像</span>
                </div>
                <!-- 选择的图片会在这里显示 -->
                <img id="personalAvatarDisplay" src="" alt="头像预览" style="display: none;">
              </div>
              <div class="personal-avatar-controls">
                <input type="file" id="personalAvatarInput" name="personalAvatar" accept="image/jpeg,image/png,image/gif,image/webp" style="display: none;">
                <button type="button" id="removePersonalAvatarBtn" class="personal-btn-remove" style="display: none;">移除</button>
              </div>
              <div class="personal-avatar-hint">
                支持 JPG、PNG、GIF、WEBP 格式，大小不超过 2MB,建议尺寸 200x200 像素
              </div>
              <div class="personal-avatar-error personal-hidden" id="personalAvatarError"></div>
            </div>
          </div>

          <!-- 姓名 -->
          <div class="personal-form-group-club">
            <label for="personalName">姓名</label>
            <input type="text" id="personalName" name="personalName" placeholder="请输入您的姓名" required>
          </div>

          <!-- 个人简介 -->
          <div class="personal-form-group-club">
            <label for="personalIntro">个人简介</label>
            <textarea id="personalIntro" name="personalIntro" rows="4" placeholder="请简单介绍一下自己..." maxlength="200" required></textarea>
            <div class="personal-char-count">
              <span id="personalCharCount">0</span>/200
            </div>
          </div>

          <!-- 完成修改按钮 -->
          <div class="personal-form-actions">
            <button type="submit" class="personal-btn personal-btn-primary">完成修改</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 钱包充值弹窗 -->
  <div id="walletModal" class="wallet-modal">
    <div class="wallet-modal-content">
      <div class="wallet-modal-header">
        <span class="wallet-close-modal">&times;</span>
      </div>
      <div class="wallet-modal-body">
        <!-- 余额显示 -->
        <div class="wallet-balance">
          <div class="wallet-balance-label">我的余额</div>
          <div class="wallet-balance-amount">¥ 0.00</div>
        </div>

        <form id="walletForm">
          <!-- 充值金额选择 -->
          <div class="wallet-form-group-club">
            <label for="rechargeAmount">充值金额</label>
            <div class="wallet-amount-options">
              <button type="button" class="wallet-amount-option" data-amount="6">6元</button>
              <button type="button" class="wallet-amount-option" data-amount="30">30元</button>
              <button type="button" class="wallet-amount-option" data-amount="98">98元</button>
              <button type="button" class="wallet-amount-option" data-amount="198">198元</button>
              <button type="button" class="wallet-amount-option" data-amount="328">328元</button>
              <button type="button" class="wallet-amount-option" data-amount="648">648元</button>
            </div>
            <div class="wallet-custom-amount">
              <input type="number" id="customAmount" name="customAmount" placeholder="自定义金额" min="1" step="0.01">
            </div>
          </div>

          <!-- 支付方式选择 -->
          <div class="wallet-form-group-club">
            <label for="paymentMethod">支付方式</label>
            <select id="paymentMethod" name="paymentMethod" class="wallet-form-input" required>
              <option value="">请选择支付方式</option>
              <option value="wechat">微信支付</option>
              <option value="alipay">支付宝支付</option>
            </select>
          </div>

          <!-- 确认充值按钮 -->
          <div class="wallet-form-actions">
            <button type="submit" class="wallet-btn wallet-btn-primary">确认充值</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 修改密码弹窗 -->
  <div id="securityCenterModal" class="security-modal">
    <div class="security-modal-content">
      <div class="security-modal-header">
        <h2></h2>
        <span class="security-close-modal">&times;</span>
      </div>
      <div class="security-modal-body security-modal-body-center">
        <div class="security-center-header">
          <h3 class="security-title">设置密码</h3>
          <p class="security-subtitle">请设置强度较高的密码</p>
        </div>

        <div class="security-form-group-club security-form-group">
          <input type="password" id="oldPassword" placeholder="请输入旧密码" class="security-text-align-left">
        </div>

        <div class="security-form-group-club security-form-group">
          <input type="password" id="newPassword" placeholder="请输入密码" class="security-text-align-left">
        </div>

        <div class="security-form-group-club security-form-group">
          <input type="password" id="confirmPassword" placeholder="请再次输入密码" class="security-text-align-left">
        </div>

        <div class="security-password-requirements-container">
          <div class="security-password-requirement security-password-requirement-item">
            <div class="security-requirement-indicator" id="lengthIndicator"></div>
            <span class="security-requirement-text">密码由8-15位数字、字母或符号组成</span>
          </div>
          <div class="security-password-requirement security-password-requirement-item">
            <div class="security-requirement-indicator" id="matchIndicator"></div>
            <span class="security-requirement-text">两次输入密码需保持一致</span>
          </div>
        </div>

        <div class="security-form-actions security-form-actions">
          <button type="button" id="confirmPasswordBtn" class="security-btn security-btn-primary security-btn-full-width" disabled>确认修改</button>
        </div>
      </div>
    </div>
  </div>
  <!-- 用户注册弹窗 -->
  <div id="registerModal" class="register-modal">
    <div class="register-modal-content">
      <div class="register-modal-header">
        <span class="register-close-modal">&times;</span>
      </div>
      <div class="register-modal-body">
        <form id="registerForm">
          <!-- 账号 -->
          <div class="register-form-group-club">
            <label for="registerAccount">账号</label>
            <input type="text" id="registerAccount" name="registerAccount" placeholder="请输入账号" required>
          </div>

          <!-- 密码 -->
          <div class="register-form-group-club">
            <label for="registerPassword">密码</label>
            <input type="password" id="registerPassword" name="registerPassword" placeholder="请输入密码" required>
          </div>

          <!-- 姓名 -->
          <div class="register-form-group-club">
            <label for="registerName">姓名</label>
            <input type="text" id="registerName" name="registerName" placeholder="请输入真实姓名" required>
          </div>

          <!-- 身份证号 -->
          <div class="register-form-group-club">
            <label for="registerIdCard">身份证号</label>
            <input type="text" id="registerIdCard" name="registerIdCard" placeholder="请输入身份证号码" required maxlength="18">
          </div>

          <!-- 创建按钮 -->
          <div class="register-form-actions">
            <button type="submit" class="register-btn register-btn-primary">创建账户</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 俱乐部管理弹窗 -->
  <div id="clubManagementModal" class="club-manage-modal">
    <div class="club-manage-modal-content">
      <div class="club-manage-modal-header">
        <span class="club-manage-close-modal">&times;</span>
      </div>
      <div class="club-manage-modal-body">
        <div class="club-manage-management-container">
          <div class="club-manage-fighters-grid-container">
            <h3 id="currentClubTitle" class="club-manage-fighters-title">默认俱乐部</h3>

            <div class="club-manage-fighters-grid-wrapper">
              <div class="club-manage-fighters-grid" id="fightersGrid">
                <!-- 打手列表将通过JavaScript动态生成 -->
              </div>
            </div>


          </div>
          <div class="club-manage-management-actions">
            <button type="button" id="editInfoBtn" class="club-manage-btn club-manage-btn-secondary">编辑信息</button>
            <button type="button" id="manageApplicationsBtn" class="club-manage-btn club-manage-btn-primary">管理申请</button>
            <button type="button" id="quitClubBtn" class="club-manage-btn club-manage-btn-secondary" style="display:none;">退出俱乐部</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 打手管理弹窗 -->
  <div id="fighterManagementModal" class="fighter-manage-modal">
    <div class="fighter-manage-modal-content">
      <div class="fighter-manage-modal-header">
        <span class="fighter-manage-close-modal">&times;</span>
      </div>
      <div class="fighter-manage-modal-body">
        <div class="fighter-manage-management-container">
          <div class="fighter-manage-info-header">
            <h3 id="fighterNameDisplay">打手姓名</h3>
          </div>

          <!-- 订单信息表格 -->
          <div class="fighter-manage-orders-section">
            <h4>已完成订单</h4>
            <div class="fighter-manage-orders-table-container">
              <table class="fighter-manage-orders-table">
                <thead>
                <tr>
                  <th>订单编号</th>
                  <th>游戏名称</th>
                  <th>金额</th>
                  <th>完成时间</th>
                </tr>
                </thead>
                <tbody id="fighterOrdersTable">
                <!-- 订单信息将通过JavaScript动态生成 -->
                </tbody>
              </table>
            </div>
          </div>

          <!-- 移除打手按钮 -->
          <div class="fighter-manage-management-actions">
            <button type="button" id="removeFighterBtn" class="fighter-manage-btn fighter-manage-btn-danger">移除打手</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 俱乐部信息编辑弹窗 -->
  <div id="clubEditModal" class="club-edit-modal">
    <div class="club-edit-modal-content">
      <div class="club-edit-modal-header">
        <span class="club-edit-close-modal">&times;</span>
      </div>
      <div class="club-edit-modal-body">
        <form id="clubEditForm" class="club-edit-club-apply-form">
          <!-- 俱乐部头像 -->
          <div class="club-edit-avatar-upload-group">
            <label>俱乐部头像</label>
            <div class="club-edit-avatar-upload-container">
              <div class="club-edit-avatar-preview" id="clubAvatarPreview">
                <div class="club-edit-default-avatar">
                </div>
              </div>
              <input type="file" id="clubAvatarInput" accept="image/*" style="display: none;">
            </div>
          </div>

          <!-- 俱乐部名称 -->
          <div class="club-edit-form-group-club">
            <label for="editClubName">俱乐部名称</label>
            <input type="text" id="editClubName" name="clubName" placeholder="请输入俱乐部名称" required>
          </div>

          <!-- 俱乐部简介 -->
          <div class="club-edit-form-group-club">
            <label for="editClubIntro">俱乐部简介</label>
            <textarea id="editClubIntro" name="clubIntro" rows="5" placeholder="请详细描述俱乐部简介..." maxlength="999" required></textarea>
            <div class="club-edit-char-count">
              <span id="editCharCount">0</span>/999
            </div>
          </div>

          <!-- 提交按钮 -->
          <div class="club-edit-form-actions">
            <button type="submit" class="club-edit-btn club-edit-btn-primary">完成编辑</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 俱乐部管理申请弹窗 -->
  <div id="manageApplicationsModal" class="club-manageappli-modal">
    <div class="club-manageappli-modal-content">
      <div class="club-manageappli-modal-header">
        <span class="club-manageappli-close-modal">&times;</span>
      </div>
      <div class="club-manageappli-modal-body">
        <div class="club-manageappli-applications-container">
          <div class="club-manageappli-applications-list" id="applicationsList">
            <!-- 申请信息将通过JavaScript动态生成 -->
          </div>
          <div class="club-manageappli-no-applications" id="noApplications" style="display: none;">
            <p>暂无申请信息</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 中部搜索栏 -->
<div class="middle-search-container">
  <div class="middle-search-box">
    <input type="text" class="middle-search-input" placeholder="搜索俱乐部、游戏或订单...">
    <button class="middle-search-btn">搜索</button>
  </div>
</div>

<div class="bottom-container">
  <div class="show-order-grid">
    <!-- 第一行：求职 悬赏 求职 悬赏 求职 -->
    <div class="show-order-card-1" data-type="job">
      <div class="show-order-card-content">
        <h3>求职订单</h3>
        <div class="show-order-info">
          <div class="show-order-type">PUBG</div>
          <div class="show-order-amount">订单金额：¥500</div>
          <div class="show-order-content">
            <p>寻找精通PUBG的陪玩，要求KD 3.0以上，能够指导新手玩家</p>
          </div>
          <div class="show-order-publisher-info">
            <div class="show-order-publisher-avatar">
              <img src="${pageContext.request.contextPath}/images/default_club.png" alt="发布人头像">
            </div>
            <div class="show-order-publisher-details">
              <div class="show-order-publisher-name">游戏玩家小明</div>
              <div class="show-order-publisher-uid">UID: 123456</div>
            </div>
          </div>
        </div>
        <button class="show-order-accept-btn">接受订单</button>
      </div>
    </div>
    <div class="show-order-card-2" data-type="bounty">
      <div class="show-order-card-content">
        <h3>悬赏订单</h3>
        <div class="show-order-info">
          <div class="show-order-type">PUBG</div>
          <div class="show-order-amount">订单金额：¥800</div>
          <div class="show-order-content">
            <p>悬赏PUBG单排上分，目标段位钻石以上，要求胜率60%以上</p>
          </div>
          <div class="show-order-publisher-info">
            <div class="show-order-publisher-avatar">
              <img src="${pageContext.request.contextPath}/images/default_club.png" alt="发布人头像">
            </div>
            <div class="show-order-publisher-details">
              <div class="show-order-publisher-name">电竞爱好者</div>
              <div class="show-order-publisher-uid">UID: 654321</div>
            </div>
          </div>
        </div>
        <button class="show-order-accept-btn">接受订单</button>
      </div>
    </div>
    <div class="show-order-card-1" data-type="job">
      <div class="show-order-card-content">
        <h3>求职订单</h3>
        <div class="show-order-info">
          <div class="show-order-type">LOL</div>
          <div class="show-order-amount">订单金额：¥300</div>
          <div class="show-order-content">
            <p>寻找LOL陪玩，要求钻石段位以上，擅长ADC位置</p>
          </div>
          <div class="show-order-publisher-info">
            <div class="show-order-publisher-avatar">
              <img src="${pageContext.request.contextPath}/images/default_club.png" alt="发布人头像">
            </div>
            <div class="show-order-publisher-details">
              <div class="show-order-publisher-name">LOL玩家</div>
              <div class="show-order-publisher-uid">UID: 789012</div>
            </div>
          </div>
        </div>
        <button class="show-order-accept-btn">接受订单</button>
      </div>
    </div>
    <div class="show-order-card-2" data-type="bounty">
      <div class="show-order-card-content">
        <h3>悬赏订单</h3>
        <div class="show-order-info">
          <div class="show-order-type">CSGO</div>
          <div class="show-order-amount">订单金额：¥1200</div>
          <div class="show-order-content">
            <p>悬赏CSGO排位上分，要求AK段位以上，枪法精准</p>
          </div>
          <div class="show-order-publisher-info">
            <div class="show-order-publisher-avatar">
              <img src="${pageContext.request.contextPath}/images/default_club.png" alt="发布人头像">
            </div>
            <div class="show-order-publisher-details">
              <div class="show-order-publisher-name">CSGO爱好者</div>
              <div class="show-order-publisher-uid">UID: 345678</div>
            </div>
          </div>
        </div>
        <button class="show-order-accept-btn">接受订单</button>
      </div>
    </div>
    <div class="show-order-card-1" data-type="job">
      <div class="show-order-card-content">
        <h3>求职订单</h3>
        <div class="show-order-info">
          <div class="show-order-type">王者荣耀</div>
          <div class="show-order-amount">订单金额：¥450</div>
          <div class="show-order-content">
            <p>寻找王者荣耀陪玩，要求星耀段位，擅长打野位置</p>
          </div>
          <div class="show-order-publisher-info">
            <div class="show-order-publisher-avatar">
              <img src="${pageContext.request.contextPath}/images/default_club.png" alt="发布人头像">
            </div>
            <div class="show-order-publisher-details">
              <div class="show-order-publisher-name">王者玩家</div>
              <div class="show-order-publisher-uid">UID: 901234</div>
            </div>
          </div>
        </div>
        <button class="show-order-accept-btn">接受订单</button>
      </div>
    </div>
    <!-- 更多卡片将根据后端数据动态生成 -->
  </div>
</div>


<script>


  // 创建俱乐部弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const createClubBtn = document.getElementById('createClubBtn');
    const modal = document.getElementById('createClubModal');
    const closeModalBtn = document.querySelector('.club-create-close-modal');
    const cancelBtn = document.getElementById('cancelCreateBtn');
    const createClubForm = document.getElementById('createClubForm');

    // 头像上传相关元素
    const avatarInput = document.getElementById('clubAvatar');
    const avatarPreview = document.getElementById('avatarPreview');
    const avatarDisplay = document.getElementById('avatarDisplay');
    const removeAvatarBtn = document.getElementById('removeAvatarBtn');
    const avatarError = document.getElementById('avatarError');
    const defaultAvatar = document.querySelector('.default-avatar');

    // 存储选择的文件
    let selectedAvatarFile = null;

    // 1. 点击"创建俱乐部"按钮，打开弹窗


    // 2. 点击关闭按钮 (X)，关闭弹窗
    if (closeModalBtn) {
      closeModalBtn.addEventListener('click', closeModal);
    }

    // 3. 点击取消按钮，关闭弹窗
    if (cancelBtn) {
      cancelBtn.addEventListener('click', closeModal);
    }

    // 关闭弹窗函数
    function closeModal() {
      if (modal) {
        modal.style.display = 'none';
      }
      // 可选：关闭时重置表单
      if (createClubForm) {
        createClubForm.reset();
      }
      resetAvatar();
    }

    // 5. 头像上传相关功能
    // 点击预览区域触发文件选择
    if (avatarPreview) {
      avatarPreview.addEventListener('click', function() {
        avatarInput.click();
      });
    }

    // 点击"选择图片"标签也触发文件选择
    const uploadBtn = document.querySelector('.btn-upload');
    if (uploadBtn) {
      uploadBtn.addEventListener('click', function(e) {
        e.stopPropagation(); // 防止事件冒泡触发上面的预览区域点击
        avatarInput.click();
      });
    }

    // 文件选择变化事件
    if (avatarInput) {
      avatarInput.addEventListener('change', function(e) {
        const file = e.target.files[0];
        if (file) {
          handleAvatarSelection(file);
        }
      });
    }

    // 移除头像按钮
    if (removeAvatarBtn) {
      removeAvatarBtn.addEventListener('click', function(e) {
        e.stopPropagation(); // 防止事件冒泡
        resetAvatar();
      });
    }

    // 处理选择的头像文件
    function handleAvatarSelection(file) {
      // 验证文件类型
      const validTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/webp'];
      if (!validTypes.includes(file.type)) {
        showAvatarError('不支持的文件格式，请选择 JPG、PNG、GIF 或 WEBP 格式的图片');
        return;
      }

      // 验证文件大小 (2MB = 2 * 1024 * 1024 bytes)
      const maxSize = 2 * 1024 * 1024;
      if (file.size > maxSize) {
        showAvatarError('图片大小不能超过 2MB');
        return;
      }

      // 清空错误信息
      hideAvatarError();

      // 创建文件阅读器来预览图片
      const reader = new FileReader();
      reader.onload = function(e) {
        // 显示预览图片
        avatarDisplay.src = e.target.result;
        avatarDisplay.style.display = 'block';
        defaultAvatar.style.display = 'none';
        removeAvatarBtn.style.display = 'block';

        // 存储文件
        selectedAvatarFile = file;
      };
      reader.readAsDataURL(file);
    }

    // 重置头像
    function resetAvatar() {
      avatarDisplay.src = '';
      avatarDisplay.style.display = 'none';
      defaultAvatar.style.display = 'flex';
      removeAvatarBtn.style.display = 'none';
      avatarInput.value = '';
      selectedAvatarFile = null;
      hideAvatarError();
    }

    // 显示头像错误信息
    function showAvatarError(message) {
      avatarError.textContent = message;
      avatarError.style.display = 'block';
      // 3秒后自动隐藏错误
      setTimeout(hideAvatarError, 3000);
    }

    // 隐藏头像错误信息
    function hideAvatarError() {
      avatarError.style.display = 'none';
    }

    // 6. 处理表单提交
    if (createClubForm) {
      createClubForm.addEventListener('submit', function(event) {
        // 阻止表单默认提交行为
        event.preventDefault();

        // 获取表单数据
        const clubName = document.getElementById('clubName').value.trim();
        const clubIntro = document.getElementById('clubIntro').value.trim();

        // 表单验证
        let isValid = true;

        // 验证俱乐部名称
        if (!clubName) {
          isValid = false;
          alert('请输入俱乐部名称');
          document.getElementById('clubName').focus();
          return;
        }

        // 验证俱乐部简介
        if (!clubIntro) {
          isValid = false;
          alert('请输入俱乐部简介');
          document.getElementById('clubIntro').focus();
          return;
        }

        if (!isValid) return;

        // 构建表单数据 (支持文件上传)
        const formData = new FormData();
        formData.append('clubName', clubName);
        formData.append('clubIntro', clubIntro);

        // 如果有选择头像文件，添加到表单数据
        if (selectedAvatarFile) {
          formData.append('clubAvatar', selectedAvatarFile);
        }

        // 显示加载状态
        const submitBtn = document.querySelector('.club-create-btn');
        const originalText = submitBtn.textContent;
        submitBtn.textContent = '创建中...';
        submitBtn.disabled = true;

        // 模拟网络请求延迟
        setTimeout(() => {
          // 恢复按钮状态
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;

          // 模拟成功响应
          alert('俱乐部"' + clubName + '"创建成功！');

          // 关闭弹窗并重置表单
          closeModal();
          createClubForm.reset();
          resetAvatar();
        }, 1000);
      });
    }

    // 7. 添加键盘支持：按ESC键关闭弹窗
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape' && modal && modal.style.display === 'flex') {
        closeModal();
      }
    });
  });

  // 俱乐部管理弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const clubManagementBtn = document.getElementById('clubManagementBtn');
    const clubManagementModal = document.getElementById('clubManagementModal');
    const closeModalBtn = clubManagementModal?.querySelector('.club-manage-close-modal');
    const fightersGrid = document.getElementById('fightersGrid');
    const editInfoBtn = document.getElementById('editInfoBtn');
    const manageApplicationsBtn = document.getElementById('manageApplicationsBtn');

    // 模拟俱乐部打手数据
    const fightersData = [
      '张三', '李四', '王五', '赵六', '钱七', '孙八', '周九', '吴十',
      '郑十一', '王十二', '李十三', '张十四', '刘十五', '陈十六', '杨十七', '黄十八',
      '赵十九', '周二十', '吴二十一', '郑二十二'
    ];

    // 当前选中的打手
    let selectedFighter = null;

    // 1. 点击"俱乐部管理"按钮，打开弹窗
    if (clubManagementBtn && clubManagementModal) {
      clubManagementBtn.addEventListener('click', function() {
        console.log('俱乐部管理按钮被点击');

        // 生成打手列表
        generateFightersList();

        // 显示弹窗
        clubManagementModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      });
    }

    // 2. 生成打手列表
    function generateFightersList() {
      if (!fightersGrid) return;

      fightersGrid.innerHTML = '';

      fightersData.forEach((fighter, index) => {
        const fighterItem = document.createElement('div');
        fighterItem.className = 'fighter-item';
        fighterItem.textContent = fighter;
        fighterItem.dataset.index = index;

        // 添加点击事件
        fighterItem.addEventListener('click', function() {
          selectFighter(this);
        });

        fightersGrid.appendChild(fighterItem);
      });
    }

    // 3. 选择打手
    function selectFighter(element) {
      // 移除之前选中的样式
      const previouslySelected = fightersGrid.querySelector('.fighter-item.selected');
      if (previouslySelected) {
        previouslySelected.classList.remove('selected');
      }

      // 添加选中样式
      element.classList.add('selected');
      selectedFighter = fightersData[element.dataset.index];

      console.log('选中的打手:', selectedFighter);

      // 打开打手管理弹窗
      if (typeof window.openFighterManagement === 'function') {
        window.openFighterManagement(selectedFighter);
      }
    }

    // 4. 编辑信息按钮点击事件
    if (editInfoBtn) {
      editInfoBtn.addEventListener('click', function() {
        // 打开俱乐部信息编辑弹窗
        if (typeof window.openClubEditModal === 'function') {
          window.openClubEditModal();
        }
      });
    }

    // 5. 管理申请按钮点击事件
    if (manageApplicationsBtn) {
      manageApplicationsBtn.addEventListener('click', function() {
        // 打开管理申请弹窗
        if (typeof window.openManageApplicationsModal === 'function') {
          window.openManageApplicationsModal();
        }
      });
    }

    // 6. 关闭弹窗
    function closeClubManagementModal() {
      if (clubManagementModal) {
        clubManagementModal.style.display = 'none';
        document.body.style.overflow = 'auto';

        // 重置选中状态
        selectedFighter = null;
        const selectedItem = fightersGrid.querySelector('.fighter-item.selected');
        if (selectedItem) {
          selectedItem.classList.remove('selected');
        }
      }
    }

    // 7. 关闭按钮事件
    if (closeModalBtn) {
      closeModalBtn.addEventListener('click', closeClubManagementModal);
    }

    // 8. 点击弹窗外部关闭
    clubManagementModal?.addEventListener('click', function(event) {
      if (event.target === clubManagementModal) {
        closeClubManagementModal();
      }
    });

    // 9. 按ESC键关闭弹窗
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape' && clubManagementModal && clubManagementModal.style.display === 'flex') {
        closeClubManagementModal();
      }
    });
  });

  // 打手管理弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const fighterManagementModal = document.getElementById('fighterManagementModal');
    const closeFighterModalBtn = fighterManagementModal?.querySelector('.fighter-manage-close-modal');
    const removeFighterBtn = document.getElementById('removeFighterBtn');
    const confirmRemoveModal = document.getElementById('confirmRemoveModal');
    const closeConfirmModalBtn = confirmRemoveModal?.querySelector('.confirmremove-close-modal');
    const confirmYesBtn = document.getElementById('confirmYesBtn');
    const confirmNoBtn = document.getElementById('confirmNoBtn');

    // 模拟打手订单数据
    const fighterOrdersData = {
      '张三': [
        { id: 'ORD001', game: '王者荣耀', type: '陪玩', amount: '300元', time: '2024-01-15' },
        { id: 'ORD002', game: '三角洲行动', type: '护航', amount: '500元', time: '2024-01-20' },
        { id: 'ORD003', game: '火影忍者', type: '任务', amount: '200元', time: '2024-01-25' },
        { id: 'ORD004', game: '英雄联盟', type: '排位', amount: '400元', time: '2024-02-01' },
        { id: 'ORD005', game: '绝地求生', type: '训练', amount: '350元', time: '2024-02-05' }
      ],
      '李四': [
        { id: 'ORD006', game: '王者荣耀', type: '陪玩', amount: '280元', time: '2024-01-16' },
        { id: 'ORD007', game: '原神', type: '代练', amount: '600元', time: '2024-01-22' },
        { id: 'ORD008', game: '和平精英', type: '训练', amount: '320元', time: '2024-01-28' },
        { id: 'ORD009', game: 'CS:GO', type: '比赛', amount: '450元', time: '2024-02-03' }
      ],
      '王五': [
        { id: 'ORD010', game: '英雄联盟', type: '排位', amount: '380元', time: '2024-01-18' },
        { id: 'ORD011', game: '守望先锋', type: '训练', amount: '290元', time: '2024-01-24' },
        { id: 'ORD012', game: 'DOTA2', type: '比赛', amount: '520元', time: '2024-01-30' }
      ],
      '赵六': [
        { id: 'ORD013', game: '王者荣耀', type: '陪玩', amount: '310元', time: '2024-01-19' },
        { id: 'ORD014', game: '绝地求生', type: '训练', amount: '340元', time: '2024-01-26' }
      ],
      '钱七': [
        { id: 'ORD015', game: '原神', type: '代练', amount: '550元', time: '2024-01-21' }
      ]
    };

    // 当前选中的打手
    let currentFighter = null;

    // 1. 打开打手管理弹窗（从俱乐部管理弹窗调用）
    window.currentSelectedFighter = null;
    function formatOrderTime(v) {
      if (!v) return '';

      try {
        const d = new Date(v);
        if (isNaN(d.getTime())) return v;

        const y = d.getFullYear();
        const m = String(d.getMonth() + 1).padStart(2, '0');
        const day = String(d.getDate()).padStart(2, '0');
        const h = String(d.getHours()).padStart(2, '0');
        const min = String(d.getMinutes()).padStart(2, '0');
        const s = String(d.getSeconds()).padStart(2, '0');

        return y + '-' + m + '-' + day + ' ' + h + ':' + min + ':' + s;
      } catch (e) {
        return v;
      }
    }

    function loadFighterOrders(playerId) {
      const ordersTable = document.getElementById('fighterOrdersTable');
      if (!ordersTable) return;

      try {
        ordersTable.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #999; padding: 40px;">正在加载订单...</td></tr>';

        const base = window.location.origin + '<%=request.getContextPath()%>';
        const url = base + '/order/player/' + encodeURIComponent(playerId) + '/list?offset=0&limit=100';

        fetch(url, {
          method: 'GET',
          credentials: 'same-origin'
        })
                .then(function(response) {
                  return response.json();
                })
                .then(function(res) {
                  console.log('订单接口返回=', res);
                  console.log('订单列表=', res ? res.data : null);
                  if (!res || !res.success) {
                    ordersTable.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #999; padding: 40px;">订单加载失败</td></tr>';
                    return;
                  }

                  const list = Array.isArray(res.data) ? res.data : [];

                  const finishedList = list.filter(function(order) {
                    const ct = order ? (order.completeTime || order.complete_time) : null;
                    return !!ct;
                  });

                  if (!finishedList.length) {
                    ordersTable.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #999; padding: 40px;">暂无完成订单</td></tr>';
                    return;
                  }

                  ordersTable.innerHTML = '';

                  finishedList.forEach(function(order) {
                    const row = document.createElement('tr');

                    const orderNo = order.orderNo || order.order_no || '';
                    const gameName = order.gameName || order.game_name || '';
                    const totalAmount = order.totalAmount != null ? order.totalAmount : (order.total_amount != null ? order.total_amount : '');
                    const completeTimeRaw = order.completeTime || order.complete_time || '';
                    const completeTime = formatOrderTime(completeTimeRaw);

                    row.innerHTML = ''
                            + '<td>' + String(orderNo) + '</td>'
                            + '<td>' + String(gameName) + '</td>'
                            + '<td>' + String(totalAmount) + '</td>'
                            + '<td>' + String(completeTime) + '</td>';

                    ordersTable.appendChild(row);
                  });
                })
                .catch(function() {
                  ordersTable.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #999; padding: 40px;">订单加载失败</td></tr>';
                });
      } catch (e) {
        ordersTable.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #999; padding: 40px;">订单加载失败：' + e.message + '</td></tr>';
      }
    }

    window.openFighterManagement = function(fighter) {
      if (!fighter) return;
      console.log('打开打手管理弹窗 fighter = ', fighter);
      console.log('fighterId = ', fighter ? fighter.userId : null);
      window.currentSelectedFighter = fighter;
      currentFighter = fighter;

      const fighterId = fighter.userId;
      const fighterName = fighter.fighterName || fighter.nickname || fighter.username || ('用户' + (fighterId || ''));

      const title = document.getElementById('fighterManagementTitle');
      const nameDisplay = document.getElementById('fighterNameDisplay');
      const ordersTable = document.getElementById('fighterOrdersTable');

      if (title) title.textContent = '打手管理 - ' + fighterName;
      if (nameDisplay) nameDisplay.textContent = fighterName;

      if (ordersTable) {
        ordersTable.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #999; padding: 40px;">正在加载订单...</td></tr>';
      }

      if (fighterManagementModal) {
        fighterManagementModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      }

      if (fighterId) {
        loadFighterOrders(fighterId);
      } else if (ordersTable) {
        ordersTable.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #999; padding: 40px;">未找到打手ID</td></tr>';
      }
    };

    function closeFighterManagementModal() {
      if (fighterManagementModal) {
        fighterManagementModal.style.display = 'none';
        document.body.style.overflow = 'auto';
        currentFighter = null;
        window.currentSelectedFighter = null;
      }
    }

    if (closeFighterModalBtn) {
      closeFighterModalBtn.addEventListener('click', closeFighterManagementModal);
    }

    fighterManagementModal?.addEventListener('click', function(event) {
      if (event.target === fighterManagementModal) {
        closeFighterManagementModal();
      }
    });

    if (removeFighterBtn) {
      removeFighterBtn.onclick = function() {
        if (!window.currentSelectedFighter) {
          alert('请先选择打手');
          return;
        }

        const fighterId = String(window.currentSelectedFighter.userId || '').trim();
        const fighterName = window.currentSelectedFighter.fighterName
                || window.currentSelectedFighter.nickname
                || window.currentSelectedFighter.username
                || ('用户' + fighterId);

        if (!fighterId) {
          alert('未找到打手ID');
          return;
        }

        if (!confirm('确定要移除打手“' + fighterName + '”吗？此操作不可撤销。')) {
          return;
        }

        const body = new URLSearchParams();
        body.append('userId', fighterId);

        fetch(window.location.origin + '<%=request.getContextPath()%>' + '/club/member/remove', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'
          },
          body: body.toString(),
          credentials: 'same-origin'
        })
                .then(function(response) {
                  return response.json();
                })
                .then(function(res) {
                  if (!res || !res.success) {
                    alert((res && (res.error || res.msg)) || '移除失败');
                    return;
                  }

                  try {
                    closeFighterManagementModal();
                  } catch (e) {
                    console.error('关闭弹窗失败：', e);
                  }

                  try {
                    window.currentSelectedFighter = null;
                    currentFighter = null;
                  } catch (e) {
                    console.error('清空当前打手失败：', e);
                  }

                  setTimeout(function() {
                    try {
                      var clubId = null;

                      if (typeof window.getCurrentClubIdGlobal === 'function') {
                        clubId = window.getCurrentClubIdGlobal();
                      }

                      if (clubId && typeof window.loadClubMembersGlobal === 'function') {
                        window.loadClubMembersGlobal(clubId);
                      } else {
                        console.error('刷新成员列表失败：未拿到 clubId 或 loadClubMembersGlobal');
                      }
                    } catch (e) {
                      console.error('刷新成员列表失败：', e);
                    }

                    try {
                      if (typeof loadClubList === 'function') {
                        loadClubList();
                      }
                    } catch (e) {
                      console.error('刷新俱乐部列表失败：', e);
                    }
                  }, 100);

                  alert('移除成功');
                })
                .catch(function(err) {
                  console.error('移除打手请求失败：', err);
                  alert('网络错误，请稍后重试');
                });
      };
    }

    function closeConfirmRemoveModal() {
      if (confirmRemoveModal) {
        confirmRemoveModal.style.display = 'none';
      }
    }

    if (closeConfirmModalBtn) {
      closeConfirmModalBtn.addEventListener('click', closeConfirmRemoveModal);
    }

    confirmRemoveModal?.addEventListener('click', function(event) {
      if (event.target === confirmRemoveModal) {
        closeConfirmRemoveModal();
      }
    });

    if (confirmYesBtn) {
      confirmYesBtn.addEventListener('click', function() {
        closeConfirmRemoveModal();
      });
    }

    if (confirmNoBtn) {
      confirmNoBtn.addEventListener('click', function() {
        closeConfirmRemoveModal();
      });
    }

    // 12. 按ESC键关闭弹窗
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape') {
        if (fighterManagementModal && fighterManagementModal.style.display === 'flex') {
          closeFighterManagementModal();
        }
        if (confirmRemoveModal && confirmRemoveModal.style.display === 'flex') {
          closeConfirmRemoveModal();
        }
      }
    });
  });

  // 俱乐部信息编辑旧的演示脚本已移除，改由下方真实接口逻辑接管。


  // 管理申请功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const manageApplicationsModal = document.getElementById('manageApplicationsModal');
    const closeApplicationsBtn = manageApplicationsModal?.querySelector('.club-manageappli-close-modal');
    const applicationsList = document.getElementById('applicationsList');
    const noApplications = document.getElementById('noApplications');
    const applicationSuccessModal = document.getElementById('applicationSuccessModal');
    const closeApplicationSuccessBtn = applicationSuccessModal?.querySelector('.club-applisuccess-close-modal');
    const applicationSuccessOkBtn = document.getElementById('applicationSuccessOkBtn');
    const applicationSuccessTitle = document.getElementById('applicationSuccessTitle');
    const applicationSuccessText = document.getElementById('applicationSuccessText');

    // 模拟申请数据
    const applicationsData = [
      {
        id: 'APP001',
        nickname: '游戏达人小明',
        details: '我是一名经验丰富的游戏玩家，擅长多种游戏类型，希望加入贵俱乐部提升技能并参与比赛。'
      },
      {
        id: 'APP002',
        nickname: '电竞爱好者小红',
        details: '热爱电竞运动，有良好的团队合作精神，希望能加入专业的电竞俱乐部共同进步。'
      },
      {
        id: 'APP003',
        nickname: '职业选手小刚',
        details: '前职业选手，有丰富的比赛经验，希望在新的俱乐部继续电竞生涯。'
      },
      {
        id: 'APP004',
        nickname: '新人玩家小美',
        details: '虽然是新人玩家，但学习能力强，对电竞充满热情，希望能得到专业指导。'
      },
      {
        id: 'APP005',
        nickname: '资深玩家老张',
        details: '多年游戏经验，熟悉多种游戏机制，希望加入俱乐部分享经验并参与团队活动。'
      }
    ];

    // 当前处理的申请ID
    let currentApplicationId = null;

    // 1. 打开管理申请弹窗
    window.openManageApplicationsModal = function() {
      // 生成申请列表
      generateApplicationsList();

      // 显示弹窗
      if (manageApplicationsModal) {
        manageApplicationsModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      }
    };

    // 2. 生成申请列表
    function generateApplicationsList() {
      if (!applicationsList || !noApplications) return;

      applicationsList.innerHTML = '';

      if (applicationsData.length === 0) {
        noApplications.style.display = 'block';
        applicationsList.style.display = 'none';
        return;
      }

      noApplications.style.display = 'none';
      applicationsList.style.display = 'block';

      applicationsData.forEach(application => {
        const applicationItem = document.createElement('div');
        applicationItem.className = 'application-item';
        applicationItem.dataset.id = application.id;

        // 截断详细描述（超过15字显示...）
        const truncatedDetails = application.details.length > 15 ?
                application.details.substring(0, 15) + '...' :
                application.details;

        applicationItem.innerHTML = ''
                + '<div class="application-info">'
                +   '<div class="application-id">申请人ID: ' + application.id + '</div>'
                +   '<div class="application-nickname">昵称: ' + application.nickname + '</div>'
                +   '<div class="application-details">'
                +     '<span class="details-truncated" title="' + application.details + '">申请详细: ' + truncatedDetails + '</span>'
                +     '<div class="details-full">' + application.details + '</div>'
                +   '</div>'
                + '</div>'
                + '<div class="application-actions">'
                +   '<button type="button" class="btn-approve" data-id="' + application.id + '">同意</button>'
                +   '<button type="button" class="btn-reject" data-id="' + application.id + '">拒绝</button>'
                + '</div>';

        applicationsList.appendChild(applicationItem);
      });

      // 添加按钮事件监听
      addApplicationButtonEvents();
    }

    // 3. 添加申请按钮事件
    function addApplicationButtonEvents() {
      const approveButtons = document.querySelectorAll('.btn-approve');
      const rejectButtons = document.querySelectorAll('.btn-reject');

      approveButtons.forEach(button => {
        button.addEventListener('click', function() {
          const applicationId = this.dataset.id;
          handleApplicationAction(applicationId, 'approve');
        });
      });

      rejectButtons.forEach(button => {
        button.addEventListener('click', function() {
          const applicationId = this.dataset.id;
          handleApplicationAction(applicationId, 'reject');
        });
      });
    }

    // 4. 处理申请操作
    function handleApplicationAction(applicationId, action) {
      currentApplicationId = applicationId;

      // 找到对应的申请
      const application = applicationsData.find(app => app.id === applicationId);
      if (!application) return;

      // 模拟处理延迟
      setTimeout(() => {
        // 从申请列表中移除
        const index = applicationsData.findIndex(app => app.id === applicationId);
        if (index !== -1) {
          applicationsData.splice(index, 1);
        }

        // 显示系统默认成功提示
        if (action === 'approve') {
          alert('同意申请成功！\n已同意"' + application.nickname + '"的加入申请！');
        } else {
          alert('拒绝申请成功！\n已拒绝"' + application.nickname + '"的加入申请。');
        }

        // 重新生成申请列表
        generateApplicationsList();

        console.log((action === 'approve' ? '同意' : '拒绝') + '申请成功:', application);
      }, 500);
    }

    // 6. 关闭管理申请弹窗
    function closeManageApplicationsModal() {
      if (manageApplicationsModal) {
        manageApplicationsModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      }
    }

    // 7. 关闭按钮事件
    if (closeApplicationsBtn) {
      closeApplicationsBtn.addEventListener('click', closeManageApplicationsModal);
    }

    // 8. 点击弹窗外部关闭
    manageApplicationsModal?.addEventListener('click', function(event) {
      if (event.target === manageApplicationsModal) {
        closeManageApplicationsModal();
      }
    });

    // 9. 关闭申请成功提示弹窗
    function closeApplicationSuccessModal() {
      if (applicationSuccessModal) {
        applicationSuccessModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      }
    }

    // 10. 成功提示弹窗关闭按钮
    if (closeApplicationSuccessBtn) {
      closeApplicationSuccessBtn.addEventListener('click', closeApplicationSuccessModal);
    }

    // 11. 成功提示弹窗确定按钮
    if (applicationSuccessOkBtn) {
      applicationSuccessOkBtn.addEventListener('click', closeApplicationSuccessModal);
    }

    // 12. 点击成功提示弹窗外部关闭
    applicationSuccessModal?.addEventListener('click', function(event) {
      if (event.target === applicationSuccessModal) {
        closeApplicationSuccessModal();
      }
    });

    // 13. 按ESC键关闭弹窗
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape') {
        if (manageApplicationsModal && manageApplicationsModal.style.display === 'flex') {
          closeManageApplicationsModal();
        }
        if (applicationSuccessModal && applicationSuccessModal.style.display === 'flex') {
          closeApplicationSuccessModal();
        }
      }
    });
  });

  // 发布订单弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const postOrderBtn = document.getElementById('postOrderBtn');
    const postOrderModal = document.getElementById('postOrderModal');
    const closeOrderModalBtn = document.querySelector('#postOrderModal .order-post-close-modal');
    const cancelOrderBtn = document.getElementById('cancelOrderBtn');
    const postOrderForm = document.getElementById('postOrderForm');
    const orderDetails = document.getElementById('orderDetails');
    const charCount = document.getElementById('charCount');

    // 打开发布订单弹窗
    if (postOrderBtn) {
      postOrderBtn.addEventListener('click', function() {
        console.log('发布订单按钮被点击');
        postOrderModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      });
    }

    // 关闭发布订单弹窗
    if (closeOrderModalBtn) {
      closeOrderModalBtn.addEventListener('click', function() {
        postOrderModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 取消按钮
    if (cancelOrderBtn) {
      cancelOrderBtn.addEventListener('click', function() {
        postOrderModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 字符计数功能
    if (orderDetails && charCount) {
      orderDetails.addEventListener('input', function() {
        const currentLength = this.value.length;
        charCount.textContent = currentLength;

        // 如果超过限制，截断文本
        if (currentLength > 999) {
          this.value = this.value.substring(0, 999);
          charCount.textContent = 999;
        }
      });
    }

    // 阻止点击弹窗外部关闭
    window.addEventListener('click', function(event) {
      if (event.target === postOrderModal) {
        // 点击遮罩层不关闭，只能通过×或取消按钮关闭
        // 这里不执行任何操作
      }
    });

    // 处理订单表单提交
    if (postOrderForm) {
      postOrderForm.addEventListener('submit', function(event) {
        // 阻止表单默认提交行为
        event.preventDefault();

        // 获取表单数据
        const orderType = document.getElementById('orderType').value;
        const gameName = document.getElementById('gameName').value.trim();
        const orderAmount = document.getElementById('orderAmount').value;
        const orderDetails = document.getElementById('orderDetails').value.trim();

        // 表单验证
        if (!orderType) {
          alert('请选择订单类型');
          return;
        }

        if (!gameName) {
          alert('请输入游戏名称');
          return;
        }

        if (!orderAmount || parseFloat(orderAmount) <= 0) {
          alert('请输入有效的订单金额');
          return;
        }

        if (!orderDetails) {
          alert('请输入订单详情');
          return;
        }

        // 显示成功消息
        alert('订单发布成功！');

        // 关闭弹窗
        postOrderModal.style.display = 'none';
        document.body.style.overflow = 'auto';

        // 重置表单
        postOrderForm.reset();
        charCount.textContent = '0';
      });
    }
  });

  // 管理订单弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const manageOrderModal = document.getElementById('manageOrderModal');
    const closeManageOrderBtn = document.querySelector('#manageOrderModal .order-manage-close-modal');
    const manageOrderForm = document.getElementById('manageOrderForm');
    const deleteOrderBtn = document.getElementById('deleteOrderBtn');
    const manageOrderDetails = document.getElementById('manageOrderDetails');
    const manageCharCount = document.getElementById('manageCharCount');

    // 获取显示订单信息的元素
    const manageOrderTitle = document.getElementById('manageOrderTitle');
    const manageOrderType = document.getElementById('manageOrderType');
    const manageGameName = document.getElementById('manageGameName');
    const manageOrderAmount = document.getElementById('manageOrderAmount');

    // 获取所有订单列表项
    const orderItems = document.querySelectorAll('.order-item');
    let currentOrderId = null;

    // 为每个订单列表项添加点击事件
    orderItems.forEach(item => {
      item.addEventListener('click', function() {
        console.log('订单被点击了:', this.getAttribute('data-game'));

        // 获取订单信息
        const orderId = this.getAttribute('data-id');
        const orderType = this.getAttribute('data-type');
        const gameName = this.getAttribute('data-game');
        const orderAmount = this.getAttribute('data-amount');
        const orderDetails = this.getAttribute('data-details');

        // 存储当前订单ID
        currentOrderId = orderId;

        // 设置弹窗内容
        manageOrderTitle.textContent = this.textContent.trim();
        manageOrderType.value = orderType;
        manageGameName.value = gameName;
        manageOrderAmount.value = orderAmount;
        manageOrderDetails.value = orderDetails;
        manageCharCount.textContent = orderDetails.length;

        // 显示弹窗
        manageOrderModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      });
    });

    // 关闭管理订单弹窗
    if (closeManageOrderBtn) {
      closeManageOrderBtn.addEventListener('click', function() {
        manageOrderModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 字符计数功能
    if (manageOrderDetails && manageCharCount) {
      manageOrderDetails.addEventListener('input', function() {
        const currentLength = this.value.length;
        manageCharCount.textContent = currentLength;

        // 如果超过限制，截断文本
        if (currentLength > 999) {
          this.value = this.value.substring(0, 999);
          manageCharCount.textContent = 999;
        }
      });
    }

    // 阻止点击弹窗外部关闭
    window.addEventListener('click', function(event) {
      if (event.target === manageOrderModal) {
        // 点击遮罩层不关闭，只能通过×关闭
        // 这里不执行任何操作
      }
    });

    // 处理订单修改表单提交
    if (manageOrderForm) {
      manageOrderForm.addEventListener('submit', function(event) {
        // 阻止表单默认提交行为
        event.preventDefault();

        // 获取表单数据
        const orderType = manageOrderType.value;
        const gameName = manageGameName.value.trim();
        const orderAmount = manageOrderAmount.value;
        const orderDetails = manageOrderDetails.value.trim();

        // 表单验证
        if (!orderType) {
          alert('请选择订单类型');
          return;
        }

        if (!gameName) {
          alert('请输入游戏名称');
          return;
        }

        if (!orderAmount || parseFloat(orderAmount) <= 0) {
          alert('请输入有效的订单金额');
          return;
        }

        if (!orderDetails) {
          alert('请输入订单详情');
          return;
        }

        // 更新订单数据
        const currentOrder = document.querySelector('.order-item[data-id="' + currentOrderId + '"]');
        if (currentOrder) {
          currentOrder.setAttribute('data-type', orderType);
          currentOrder.setAttribute('data-game', gameName);
          currentOrder.setAttribute('data-amount', orderAmount);
          currentOrder.setAttribute('data-details', orderDetails);

          // 更新显示名称（如果游戏名称改变）
          const orderName = gameName + ' ' + (orderType === 'job' ? '求职' : '悬赏');
          currentOrder.textContent = orderName;
        }

        // 显示成功消息
        alert('订单修改成功！');

        // 关闭弹窗
        manageOrderModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 处理删除订单
    if (deleteOrderBtn) {
      deleteOrderBtn.addEventListener('click', function() {
        if (!currentOrderId) {
          alert('请先选择要删除的订单');
          return;
        }

        // 确认删除
        if (confirm('确定要删除这个订单吗？此操作不可撤销。')) {
          // 删除订单项
          const currentOrder = document.querySelector('.order-item[data-id="' + currentOrderId + '"]');
          if (currentOrder) {
            currentOrder.remove();
          }

          // 显示成功消息
          alert('订单删除成功！');

          // 关闭弹窗
          manageOrderModal.style.display = 'none';
          document.body.style.overflow = 'auto';

          // 重置当前订单ID
          currentOrderId = null;
        }
      });
    }
  });

  // 个人中心弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const personalCenterBtn = document.getElementById('personalCenterBtn');
    const personalCenterModal = document.getElementById('personalCenterModal');
    const closePersonalModalBtn = document.querySelector('#personalCenterModal .personal-close-modal');
    const personalCenterForm = document.getElementById('personalCenterForm');
    const personalIntro = document.getElementById('personalIntro');
    const personalCharCount = document.getElementById('personalCharCount');

    // 头像上传相关元素
    const personalAvatarInput = document.getElementById('personalAvatarInput');
    const personalAvatarPreview = document.getElementById('personalAvatarPreview');
    const personalAvatarDisplay = document.getElementById('personalAvatarDisplay');
    const removePersonalAvatarBtn = document.getElementById('removePersonalAvatarBtn');
    const personalAvatarError = document.getElementById('personalAvatarError');
    const defaultPersonalAvatar = document.querySelector('#personalAvatarPreview .default-avatar');

    // 存储选择的文件
    let selectedPersonalAvatarFile = null;

    // 打开个人中心弹窗
    if (personalCenterBtn) {
      personalCenterBtn.addEventListener('click', function() {
        console.log('个人中心按钮被点击');
        personalCenterModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';

        // 加载用户数据（这里可以模拟从服务器加载）
        loadUserData();
      });
    }

    // 关闭个人中心弹窗
    if (closePersonalModalBtn) {
      closePersonalModalBtn.addEventListener('click', function() {
        personalCenterModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 字符计数功能
    if (personalIntro && personalCharCount) {
      personalIntro.addEventListener('input', function() {
        const currentLength = this.value.length;
        personalCharCount.textContent = currentLength;

        // 如果超过限制，截断文本
        if (currentLength > 200) {
          this.value = this.value.substring(0, 200);
          personalCharCount.textContent = 200;
        }
      });
    }

    // 阻止点击弹窗外部关闭
    window.addEventListener('click', function(event) {
      if (event.target === personalCenterModal) {
        // 点击遮罩层不关闭，只能通过×关闭
        // 这里不执行任何操作
      }
    });

    // 头像上传功能
    if (personalAvatarInput) {
      personalAvatarInput.addEventListener('change', function(event) {
        handlePersonalAvatarUpload(event.target.files[0]);
      });
    }

    // 移除头像
    if (removePersonalAvatarBtn) {
      removePersonalAvatarBtn.addEventListener('click', function() {
        resetPersonalAvatar();
      });
    }

    // 头像预览点击事件
    if (personalAvatarPreview) {
      personalAvatarPreview.addEventListener('click', function() {
        personalAvatarInput.click();
      });
    }

    // 处理头像上传
    function handlePersonalAvatarUpload(file) {
      if (!file) return;

      // 验证文件类型
      const validTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/webp'];
      if (!validTypes.includes(file.type)) {
        showPersonalAvatarError('请选择有效的图片格式（JPG、PNG、GIF、WEBP）');
        return;
      }

      // 验证文件大小（2MB）
      if (file.size > 2 * 1024 * 1024) {
        showPersonalAvatarError('图片大小不能超过 2MB');
        return;
      }

      // 清空错误信息
      hidePersonalAvatarError();

      // 创建文件阅读器来预览图片
      const reader = new FileReader();
      reader.onload = function(e) {
        // 显示预览图片
        personalAvatarDisplay.src = e.target.result;
        personalAvatarDisplay.style.display = 'block';
        defaultPersonalAvatar.style.display = 'none';
        removePersonalAvatarBtn.style.display = 'block';

        // 存储文件
        selectedPersonalAvatarFile = file;
      };
      reader.readAsDataURL(file);
    }

    // 重置头像
    function resetPersonalAvatar() {
      personalAvatarDisplay.src = '';
      personalAvatarDisplay.style.display = 'none';
      defaultPersonalAvatar.style.display = 'flex';
      removePersonalAvatarBtn.style.display = 'none';
      personalAvatarInput.value = '';
      selectedPersonalAvatarFile = null;
      hidePersonalAvatarError();
    }

    // 显示头像错误信息
    function showPersonalAvatarError(message) {
      personalAvatarError.textContent = message;
      personalAvatarError.style.display = 'block';
    }

    // 隐藏头像错误信息
    function hidePersonalAvatarError() {
      personalAvatarError.style.display = 'none';
    }

    // 加载用户数据（模拟）
    function loadUserData() {
      // 这里可以模拟从服务器加载用户数据
      document.getElementById('personalName').value = '张三';
      document.getElementById('personalIntro').value = '热爱游戏的玩家，擅长各种竞技类游戏，有丰富的游戏经验。';
      personalCharCount.textContent = document.getElementById('personalIntro').value.length;

      // 如果有头像，可以在这里设置
      // personalAvatarDisplay.src = '/images/user_avatar.png';
      // personalAvatarDisplay.style.display = 'block';
      // defaultPersonalAvatar.style.display = 'none';
    }

    // 处理个人中心表单提交
    if (personalCenterForm) {
      personalCenterForm.addEventListener('submit', function(event) {
        // 阻止表单默认提交行为
        event.preventDefault();

        // 获取表单数据
        const personalName = document.getElementById('personalName').value.trim();
        const personalIntro = document.getElementById('personalIntro').value.trim();

        // 表单验证
        if (!personalName) {
          alert('请输入您的姓名');
          return;
        }

        if (!personalIntro) {
          alert('请输入个人简介');
          return;
        }

        // 显示成功消息
        alert('个人信息修改完成！');

        // 关闭弹窗
        personalCenterModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }
  });

  // 钱包充值弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const walletBtn = document.getElementById('walletBtn');
    const walletModal = document.getElementById('walletModal');
    const closeWalletModalBtn = document.querySelector('#walletModal .wallet-close-modal');
    const walletForm = document.getElementById('walletForm');
    const amountOptions = document.querySelectorAll('.wallet-amount-option');
    const customAmountInput = document.getElementById('customAmount');
    const balanceAmount = document.querySelector('.wallet-balance-amount');

    // 当前选择的金额
    let selectedAmount = 0;

    // 打开钱包弹窗
    if (walletBtn) {
      walletBtn.addEventListener('click', function() {
        console.log('钱包按钮被点击');
        walletModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';

        // 重置选择状态
        resetAmountSelection();

        // 加载余额数据（这里可以模拟从服务器加载）
        loadBalanceData();
      });
    }

    // 关闭钱包弹窗
    if (closeWalletModalBtn) {
      closeWalletModalBtn.addEventListener('click', function() {
        walletModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 阻止点击弹窗外部关闭
    window.addEventListener('click', function(event) {
      if (event.target === walletModal) {
        // 点击遮罩层不关闭，只能通过×关闭
        // 这里不执行任何操作
      }
    });

    // 金额选项点击事件
    amountOptions.forEach(option => {
      option.addEventListener('click', function() {
        // 移除所有选项的active类
        amountOptions.forEach(opt => opt.classList.remove('active'));

        // 为当前选项添加active类
        this.classList.add('active');

        // 获取选择的金额
        selectedAmount = parseFloat(this.getAttribute('data-amount'));

        // 清空自定义金额输入框
        customAmountInput.value = '';

        console.log('选择金额:', selectedAmount);
      });
    });

    // 自定义金额输入事件
    if (customAmountInput) {
      customAmountInput.addEventListener('input', function() {
        const value = parseFloat(this.value);

        if (!isNaN(value) && value > 0) {
          selectedAmount = value;

          // 移除所有预设金额的active类
          amountOptions.forEach(opt => opt.classList.remove('active'));

          console.log('自定义金额:', selectedAmount);
        } else if (this.value === '') {
          selectedAmount = 0;
        }
      });
    }

    // 重置金额选择状态
    function resetAmountSelection() {
      amountOptions.forEach(opt => opt.classList.remove('active'));
      customAmountInput.value = '';
      selectedAmount = 0;
    }

    // 加载余额数据（模拟）
    function loadBalanceData() {
      // 这里可以模拟从服务器获取余额数据
      const mockBalance = 1234.56; // 模拟余额
      if (balanceAmount) {
        balanceAmount.textContent = '¥ ' + mockBalance.toFixed(2);
      }
    }

    // 处理钱包表单提交
    if (walletForm) {
      walletForm.addEventListener('submit', function(event) {
        // 阻止表单默认提交行为
        event.preventDefault();

        // 获取表单数据
        const paymentMethod = document.getElementById('paymentMethod').value;

        // 表单验证
        if (selectedAmount <= 0) {
          alert('请选择或输入充值金额');
          return;
        }

        if (!paymentMethod) {
          alert('请选择支付方式');
          return;
        }

        // 显示加载状态
        const submitBtn = this.querySelector('.wallet-btn-primary');
        const originalText = submitBtn.textContent;
        submitBtn.textContent = '充值中...';
        submitBtn.disabled = true;

        // 模拟充值请求
        setTimeout(() => {
          // 恢复按钮状态
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;

          // 显示充值成功消息
          alert('充值成功！\n充值金额：¥ ' + selectedAmount.toFixed(2) + '\n支付方式：' +
                  (paymentMethod === 'wechat' ? '微信支付' : '支付宝支付'));

          // 关闭弹窗
          walletModal.style.display = 'none';
          document.body.style.overflow = 'auto';

          // 重置表单
          walletForm.reset();
          resetAmountSelection();

          // 更新余额显示（模拟）
          const currentBalance = parseFloat(balanceAmount.textContent.replace('¥ ', ''));
          const newBalance = currentBalance + selectedAmount;
          balanceAmount.textContent = '¥ ' + newBalance.toFixed(2);

        }, 1500);
      });
    }
  });

  // 登录功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const loginBtn = document.querySelector('.login-btn');
    const loginLeft = document.querySelector('.login-left');
    const loginLeftIntro = document.querySelector('.login-left-intro');
    const accountInput = document.getElementById('account');
    const passwordInput = document.getElementById('password');

    // 登录按钮点击事件
    if (loginBtn) {
      loginBtn.addEventListener('click', function() {
        const account = accountInput.value.trim();
        const password = passwordInput.value.trim();

        // 简单的表单验证
        if (!account) {
          alert('请输入账号');
          accountInput.focus();
          return;
        }

        if (!password) {
          alert('请输入密码');
          passwordInput.focus();
          return;
        }

        // 显示加载状态
        const originalText = loginBtn.textContent;
        loginBtn.textContent = '登录中...';
        loginBtn.disabled = true;

        // 模拟登录请求
        setTimeout(() => {
          // 恢复按钮状态
          loginBtn.textContent = originalText;
          loginBtn.disabled = false;

          // 模拟登录成功
          if (account && password) {
            // 隐藏登录表单，显示用户信息
            loginLeft.style.display = 'none';
            loginLeftIntro.style.display = 'flex';

            // 更新用户信息（这里可以替换为从服务器获取的实际数据）
            updateUserInfo({
              name: account,
              uid: generateUID(),
              avatar: '/images/default_club.png',
              postedOrders: 15,
              completedOrders: 12,
              intro: '热爱游戏的玩家，擅长各种竞技类游戏，有丰富的游戏经验。希望在这里找到志同道合的游戏伙伴！'
            });

            console.log('登录成功，用户信息已更新');
          } else {
            alert('登录失败，请检查账号和密码');
          }
        }, 1000);
      });
    }

    // 更新用户信息函数
    function updateUserInfo(userData) {
      const userAvatar = document.querySelector('.user-avatar');
      const userName = document.querySelector('.user-name');
      const userUid = document.querySelector('.user-uid');
      const postedOrders = document.querySelector('.stat-item:nth-child(1) .stat-value');
      const completedOrders = document.querySelector('.stat-item:nth-child(2) .stat-value');
      const introContent = document.querySelector('.intro-content');

      if (userAvatar) userAvatar.src = userData.avatar;
      if (userName) userName.textContent = userData.name;
      if (userUid) userUid.textContent = 'UID: ' + userData.uid;
      if (postedOrders) postedOrders.textContent = userData.postedOrders;
      if (completedOrders) completedOrders.textContent = userData.completedOrders;
      if (introContent) introContent.textContent = userData.intro;
    }

    // 生成随机UID
    function generateUID() {
      return '8889' + Math.floor(Math.random() * 10000).toString().padStart(4, '0');
    }
  });

  // 用户注册弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const registerBtn = document.getElementById('registerBtn');
    const registerModal = document.getElementById('registerModal');
    const closeRegisterModalBtn = document.querySelector('#registerModal .register-close-modal');
    const registerForm = document.getElementById('registerForm');

    // 打开注册弹窗
    if (registerBtn) {
      registerBtn.addEventListener('click', function() {
        console.log('注册按钮被点击');
        registerModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';

        // 重置表单
        registerForm.reset();
      });
    }

    // 关闭注册弹窗
    if (closeRegisterModalBtn) {
      closeRegisterModalBtn.addEventListener('click', function() {
        registerModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 阻止点击弹窗外部关闭
    window.addEventListener('click', function(event) {
      if (event.target === registerModal) {
        // 点击遮罩层不关闭，只能通过×关闭
        // 这里不执行任何操作
      }
    });

    // 处理注册表单提交
    if (registerForm) {
      registerForm.addEventListener('submit', function(event) {
        // 阻止表单默认提交行为
        event.preventDefault();

        // 获取表单数据
        const account = document.getElementById('registerAccount').value.trim();
        const password = document.getElementById('registerPassword').value.trim();
        const name = document.getElementById('registerName').value.trim();
        const idCard = document.getElementById('registerIdCard').value.trim();

        // 表单验证
        if (!account) {
          alert('请输入账号');
          document.getElementById('registerAccount').focus();
          return;
        }

        if (!password) {
          alert('请输入密码');
          document.getElementById('registerPassword').focus();
          return;
        }

        if (!name) {
          alert('请输入姓名');
          document.getElementById('registerName').focus();
          return;
        }

        if (!idCard) {
          alert('请输入身份证号');
          document.getElementById('registerIdCard').focus();
          return;
        }

        // 身份证号格式验证
        const idCardRegex = /^[1-9]\d{5}(18|19|20)\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
        if (!idCardRegex.test(idCard)) {
          alert('请输入正确的身份证号码');
          document.getElementById('registerIdCard').focus();
          return;
        }

        // 显示加载状态
        const submitBtn = this.querySelector('.btn-primary');
        const originalText = submitBtn.textContent;
        submitBtn.textContent = '注册中...';
        submitBtn.disabled = true;

        // 模拟网络请求延迟
        setTimeout(() => {
          // 恢复按钮状态
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;

          // 模拟成功响应
          alert('注册成功！欢迎加入8889游戏平台');

          // 关闭弹窗
          registerModal.style.display = 'none';
          document.body.style.overflow = 'auto';

          // 重置表单
          registerForm.reset();
        }, 1500);
      });
    }
  });

  // 修改密码弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const securityCenterBtn = document.getElementById('securityCenterBtn');
    const securityCenterModal = document.getElementById('securityCenterModal');
    const closeSecurityModalBtn = document.querySelector('#securityCenterModal .security-close-modal');
    const newPasswordInput = document.getElementById('newPassword');
    const confirmPasswordInput = document.getElementById('confirmPassword');
    const lengthIndicator = document.getElementById('lengthIndicator');
    const matchIndicator = document.getElementById('matchIndicator');
    const confirmPasswordBtn = document.getElementById('confirmPasswordBtn');

    // 打开修改密码弹窗
    if (securityCenterBtn) {
      securityCenterBtn.addEventListener('click', function() {
        console.log('修改密码按钮被点击');
        securityCenterModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';

        // 重置表单状态
        resetSecurityForm();
      });
    }

    // 关闭修改密码弹窗
    if (closeSecurityModalBtn) {
      closeSecurityModalBtn.addEventListener('click', function() {
        securityCenterModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      });
    }

    // 密码输入验证
    function validatePassword() {
      const newPassword = newPasswordInput.value;
      const confirmPassword = confirmPasswordInput.value;

      // 验证密码长度要求
      const isLengthValid = newPassword.length >= 8 && newPassword.length <= 15;

      // 验证密码匹配
      const isMatchValid = newPassword === confirmPassword && newPassword !== '';

      // 更新指示器状态
      updateIndicator(lengthIndicator, isLengthValid);
      updateIndicator(matchIndicator, isMatchValid);

      // 启用/禁用确认按钮
      confirmPasswordBtn.disabled = !(isLengthValid && isMatchValid);
    }

    // 更新指示器状态
    function updateIndicator(indicator, isValid) {
      if (isValid) {
        indicator.style.backgroundColor = '#FEDE00';
        indicator.style.borderColor = '#FEDE00';
      } else {
        indicator.style.backgroundColor = 'transparent';
        indicator.style.borderColor = '#ccc';
      }
    }

    // 重置安全表单
    function resetSecurityForm() {
      if (newPasswordInput) newPasswordInput.value = '';
      if (confirmPasswordInput) confirmPasswordInput.value = '';
      if (lengthIndicator) {
        lengthIndicator.style.backgroundColor = 'transparent';
        lengthIndicator.style.borderColor = '#ccc';
      }
      if (matchIndicator) {
        matchIndicator.style.backgroundColor = 'transparent';
        matchIndicator.style.borderColor = '#ccc';
      }
      if (confirmPasswordBtn) confirmPasswordBtn.disabled = true;
    }

    // 监听密码输入事件
    if (newPasswordInput && confirmPasswordInput) {
      newPasswordInput.addEventListener('input', validatePassword);
      confirmPasswordInput.addEventListener('input', validatePassword);
    }

    // 处理确认密码修改
    if (confirmPasswordBtn) {
      confirmPasswordBtn.addEventListener('click', function() {
        const newPassword = newPasswordInput.value;

        // 显示加载状态
        const originalText = confirmPasswordBtn.textContent;
        confirmPasswordBtn.textContent = '修改中...';
        confirmPasswordBtn.disabled = true;

        // 模拟网络请求延迟
        setTimeout(() => {
          // 恢复按钮状态
          confirmPasswordBtn.textContent = originalText;
          confirmPasswordBtn.disabled = false;

          // 显示成功消息
          alert('密码修改成功！');

          // 关闭弹窗
          securityCenterModal.style.display = 'none';
          document.body.style.overflow = 'auto';

          // 重置表单
          resetSecurityForm();
        }, 1000);
      });
    }

    // 阻止点击弹窗外部关闭
    window.addEventListener('click', function(event) {
      if (event.target === securityCenterModal) {
        // 点击遮罩层不关闭，只能通过×关闭
        // 这里不执行任何操作
      }
    });

    // 按ESC键关闭弹窗
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape' && securityCenterModal.style.display === 'flex') {
        securityCenterModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      }
    });
  });
</script>


</body>
<style>
  /* 全局重置样式：清除所有元素的内外边距 */
  * {
    margin: 0;
    padding: 0;
  }
  /* 页面主体样式：设置字体、背景图片和文字颜色 */
  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url('${pageContext.request.contextPath}/images/background.png'); /* 替换为您的背景图片路径 */
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
    padding-left: 0;
    padding-right: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: #000000;
    border-radius: 0 16px 16px 16px;
    border: 5px solid #000000; /* 使用简写属性 */
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

  .club-create-avatar-preview {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    overflow: hidden;
    border: 4px solid #000000;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    background: transparent;
    position: relative;
  }

  .club-create-avatar-preview img,
  #avatarDisplay {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    border-radius: 50%;
    flex-shrink: 0;
  }

  .club-create-default-avatar {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    object-fit: cover;
    cursor: pointer;
    border-radius: 50%;
    overflow: hidden;
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
<script>
  (function(){
    const c = '<%=request.getContextPath()%>';
    let currentUser = null;
    let currentClubId = null;
    let currentClubApplyPending = false;
    let clubDataCache = [];
    let createAvatarFile = null;
    let editAvatarFile = null;
    let currentClubIsAdmin = false;

    function $(s,p){return (p||document).querySelector(s);}
    function $$(s,p){return Array.from((p||document).querySelectorAll(s));}
    function byId(id){return document.getElementById(id);}
    function cloneReplace(el){ if(!el) return null; const n = el.cloneNode(true); el.parentNode.replaceChild(n, el); return n; }
    function show(el, d){ if(el) el.style.display = d || 'flex'; }
    function hide(el){ if(el) el.style.display = 'none'; }
    function text(el, v){ if(el) el.textContent = v == null ? '' : String(v); }
    function alertMsg(msg){ window.alert(msg); }
    function jsonFetch(url, opt){ return fetch(url, opt).then(r => r.json()); }
    function fileUrl(v){ if(!v) return '/images/default_club.png'; if(/^https?:|^\//.test(v)) return v; return c + '/' + String(v).replace(/^\/+/, ''); }
    function escapeHtml(s){
      return String(s == null ? '' : s)
              .replace(/&/g, '&amp;')
              .replace(/</g, '&lt;')
              .replace(/>/g, '&gt;')
              .replace(/"/g, '&quot;')
              .replace(/'/g, '&#39;');
    }

    function syncUserCard(user){
      const loginLeft = byId('loginLeftOriginal');
      const userInfo = byId('userInfoDiv');
      if(!user){
        if(loginLeft) loginLeft.style.display = 'block';
        if(userInfo) userInfo.style.display = 'none';
        return;
      }
      if(loginLeft) loginLeft.style.display = 'none';
      if(userInfo) userInfo.style.display = 'block';
      const avatar = byId('displayAvatar');
      if(avatar) avatar.src = fileUrl(user.avatar);
      text(byId('displayNickname'), user.nickname || user.username || '用户');
      text(byId('displayUserId'), 'UID: ' + (user.id || user.userId || ''));
      text(byId('displayDescription'), user.description || '这个人很神秘，还没有填写个人简介。');
      const stats = $$('.login-left-intro-stat-value');
      if(stats[0]) stats[0].textContent = user.orderCount != null ? user.orderCount : '0';
      if(stats[1]) stats[1].textContent = user.finishOrderCount != null ? user.finishOrderCount : '0';
    }

    function loadCurrentUser(){
      return jsonFetch(c + '/user/current').then(res => {
        currentUser = res && res.success ? (res.data || null) : null;
        syncUserCard(currentUser);
        return currentUser;
      }).catch(() => {
        currentUser = null;
        syncUserCard(null);
        return null;
      });
    }

    function bindLogin(){
      const btn = cloneReplace($('.login-btn'));
      if(!btn) return;
      btn.addEventListener('click', function(){
        const username = (byId('account')||{}).value?.trim();
        const password = (byId('password')||{}).value?.trim();
        if(!username || !password){ alertMsg('请输入账号和密码'); return; }
        const body = new URLSearchParams();
        body.append('username', username);
        body.append('password', password);
        btn.disabled = true;
        const old = btn.textContent;
        btn.textContent = '登录中...';
        jsonFetch(c + '/user/login', { method:'POST', headers:{'Content-Type':'application/x-www-form-urlencoded'}, body })
                .then(res => {
                  btn.disabled = false; btn.textContent = old;
                  if(res.success){
                    currentUser = res.data || null;
                    syncUserCard(currentUser);
                    alertMsg('登录成功');
                  } else {
                    alertMsg(res.error || res.msg || '登录失败');
                  }
                }).catch(() => { btn.disabled = false; btn.textContent = old; alertMsg('网络错误，请稍后重试'); });
      });
      window.logout = function(){
        jsonFetch(c + '/user/logout').then(res => {
          if(res.success){
            currentUser = null;
            syncUserCard(null);
            if(byId('account')) byId('account').value = '';
            if(byId('password')) byId('password').value = '';
            alertMsg('已退出登录');
          } else { alertMsg('退出失败'); }
        }).catch(() => alertMsg('退出失败'));
      };

      const userInfo = byId('userInfoDiv');
      if(userInfo && !byId('logoutBtnInjected')){
        const wrap = document.createElement('div');
        wrap.style.marginTop = '14px';
        wrap.innerHTML = '<button id="logoutBtnInjected" type="button" class="login-btn" style="width:100%;">退出登录</button>';
        userInfo.appendChild(wrap);
        byId('logoutBtnInjected').addEventListener('click', window.logout);
      }
    }

    function bindRegister(){
      const form = cloneReplace(byId('registerForm'));
      if(!form) return;
      form.addEventListener('submit', function(e){
        e.preventDefault();
        const username = (byId('registerAccount')||{}).value?.trim();
        const password = (byId('registerPassword')||{}).value?.trim();
        const nickname = (byId('registerName')||{}).value?.trim();
        if(!username || !password || !nickname){ alertMsg('请完整填写注册信息'); return; }
        const submitBtn = form.querySelector('button[type="submit"]');
        const old = submitBtn ? submitBtn.textContent : '';
        if(submitBtn){ submitBtn.disabled = true; submitBtn.textContent = '注册中...'; }
        const body = new URLSearchParams();
        body.append('username', username);
        body.append('password', password);
        body.append('nickname', nickname);
        jsonFetch(c + '/user/register', { method:'POST', headers:{'Content-Type':'application/x-www-form-urlencoded'}, body })
                .then(res => {
                  if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
                  if(res.success){
                    alertMsg('注册成功，请登录');
                    form.reset();
                    hide(byId('registerModal'));
                    document.body.style.overflow = 'auto';
                  } else { alertMsg(res.error || res.msg || '注册失败'); }
                }).catch(() => { if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; } alertMsg('网络错误，请稍后重试'); });
      });
    }

    function bindPersonalCenter(){
      const btn = cloneReplace(byId('personalCenterBtn'));
      if(btn){
        btn.addEventListener('click', function(){
          loadCurrentUser().then(user => {
            if(!user){ alertMsg('请先登录'); return; }
            if(byId('personalName')) byId('personalName').value = user.nickname || user.username || '';
            if(byId('personalIntro')) byId('personalIntro').value = user.description || '';
            const img = byId('personalAvatarDisplay');
            const def = $('.personal-default-avatar');
            if(img){ img.src = fileUrl(user.avatar); img.style.display = user.avatar ? 'block' : 'none'; }
            if(def) def.style.display = user.avatar ? 'none' : 'flex';
            const removeBtn = byId('removePersonalAvatarBtn');
            if(removeBtn) removeBtn.style.display = user.avatar ? 'inline-block' : 'none';
            show(byId('personalCenterModal'));
            document.body.style.overflow = 'hidden';
          });
        });
      }
      const form = cloneReplace(byId('personalCenterForm'));
      if(!form) return;
      form.addEventListener('submit', function(e){
        e.preventDefault();
        if(!currentUser){ alertMsg('请先登录'); return; }
        const nickname = (byId('personalName')||{}).value?.trim();
        const description = (byId('personalIntro')||{}).value?.trim();
        if(!nickname || !description){ alertMsg('请完整填写个人信息'); return; }
        const submitBtn = form.querySelector('button[type="submit"]');
        const old = submitBtn ? submitBtn.textContent : '';
        if(submitBtn){ submitBtn.disabled = true; submitBtn.textContent = '保存中...'; }
        const body = new URLSearchParams();
        body.append('nickname', nickname);
        body.append('description', description);
        jsonFetch(c + '/user/updateProfile', { method:'POST', headers:{'Content-Type':'application/x-www-form-urlencoded'}, body })
                .then(res => {
                  if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
                  if(res.success){
                    alertMsg('修改成功');
                    hide(byId('personalCenterModal'));
                    document.body.style.overflow = 'auto';
                    loadCurrentUser();
                  } else { alertMsg(res.error || res.msg || '修改失败'); }
                }).catch(() => { if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; } alertMsg('网络错误，请稍后重试'); });
      });
    }

    function bindSecurity(){
      const btn = cloneReplace(byId('securityCenterBtn'));
      if(btn){
        btn.addEventListener('click', function(){
          loadCurrentUser().then(user => {
            if(!user){ alertMsg('请先登录'); return; }
            show(byId('securityCenterModal'));
            document.body.style.overflow = 'hidden';
          });
        });
      }
      const confirmBtn = cloneReplace(byId('confirmPasswordBtn'));
      const oldInput = byId('oldPassword');
      const newInput = byId('newPassword');
      const confirmInput = byId('confirmPassword');
      const lenIndicator = byId('lengthIndicator');
      const matchIndicator = byId('matchIndicator');
      function setIndicator(el, ok){ if(el){ el.style.backgroundColor = ok ? '#FEDE00' : 'transparent'; el.style.borderColor = ok ? '#FEDE00' : '#ccc'; } }
      function validate(){
        const nv = newInput ? newInput.value : '';
        const cv = confirmInput ? confirmInput.value : '';
        const okLen = nv.length >= 8 && nv.length <= 15;
        const okMatch = !!nv && nv === cv;
        setIndicator(lenIndicator, okLen);
        setIndicator(matchIndicator, okMatch);
        if(confirmBtn) confirmBtn.disabled = !(okLen && okMatch && oldInput && oldInput.value.trim());
      }
      [oldInput,newInput,confirmInput].forEach(el => el && el.addEventListener('input', validate));
      if(confirmBtn){
        confirmBtn.addEventListener('click', function(){
          if(!currentUser){ alertMsg('请先登录'); return; }
          const oldPassword = oldInput ? oldInput.value.trim() : '';
          const newPassword = newInput ? newInput.value.trim() : '';
          if(!oldPassword){ alertMsg('请输入旧密码'); return; }
          if(newPassword.length < 8 || newPassword.length > 15){ alertMsg('新密码长度需为8到15位'); return; }
          const old = confirmBtn.textContent;
          confirmBtn.disabled = true; confirmBtn.textContent = '修改中...';
          const body = new URLSearchParams();
          body.append('oldPassword', oldPassword);
          body.append('newPassword', newPassword);
          jsonFetch(c + '/user/changePassword', { method:'POST', headers:{'Content-Type':'application/x-www-form-urlencoded'}, body })
                  .then(res => {
                    confirmBtn.textContent = old;
                    if(res.success){
                      alertMsg('密码修改成功');
                      if(oldInput) oldInput.value=''; if(newInput) newInput.value=''; if(confirmInput) confirmInput.value='';
                      validate();
                      hide(byId('securityCenterModal'));
                      document.body.style.overflow = 'auto';
                    } else { confirmBtn.disabled = false; alertMsg(res.error || res.msg || '修改失败'); }
                  }).catch(() => { confirmBtn.disabled = false; confirmBtn.textContent = old; alertMsg('网络错误，请稍后重试'); });
        });
      }
      validate();
    }

    function bindWallet(){
      let selectedAmount = '';
      $$('.wallet-amount-option').forEach(btn => {
        btn.addEventListener('click', function(){
          $$('.wallet-amount-option').forEach(x => x.classList.remove('active'));
          btn.classList.add('active');
          selectedAmount = btn.getAttribute('data-amount') || '';
          const custom = byId('customAmount'); if(custom) custom.value = '';
        });
      });
      const custom = byId('customAmount');
      if(custom){ custom.addEventListener('input', function(){ $$('.wallet-amount-option').forEach(x => x.classList.remove('active')); selectedAmount = custom.value.trim(); }); }
      const walletBtn = cloneReplace(byId('walletBtn'));
      if(walletBtn){
        walletBtn.addEventListener('click', function(){
          loadCurrentUser().then(user => {
            if(!user){ alertMsg('请先登录'); return; }
            jsonFetch(c + '/account/balance').then(res => {
              if(res.success){
                const amountEl = $('.wallet-balance-amount');
                if(amountEl) amountEl.textContent = '¥ ' + Number(res.data || 0).toFixed(2);
              }
              show(byId('walletModal')); document.body.style.overflow = 'hidden';
            }).catch(() => { show(byId('walletModal')); document.body.style.overflow = 'hidden'; });
          });
        });
      }
      const form = cloneReplace(byId('walletForm'));
      if(!form) return;
      form.addEventListener('submit', function(e){
        e.preventDefault();
        if(!currentUser){ alertMsg('请先登录'); return; }
        const amount = selectedAmount || ((byId('customAmount')||{}).value || '').trim();
        const payment = (byId('paymentMethod')||{}).value || '';
        if(!amount || Number(amount) <= 0){ alertMsg('请选择或输入有效金额'); return; }
        if(!payment){ alertMsg('请选择支付方式'); return; }
        const submitBtn = form.querySelector('button[type="submit"]');
        const old = submitBtn ? submitBtn.textContent : '';
        if(submitBtn){ submitBtn.disabled = true; submitBtn.textContent = '充值中...'; }
        const body = new URLSearchParams(); body.append('amount', amount);
        jsonFetch(c + '/account/recharge', { method:'POST', headers:{'Content-Type':'application/x-www-form-urlencoded'}, body })
                .then(res => {
                  if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
                  if(res.success){
                    alertMsg('充值成功');
                    form.reset();
                    selectedAmount = '';
                    $$('.wallet-amount-option').forEach(x => x.classList.remove('active'));
                    hide(byId('walletModal')); document.body.style.overflow = 'auto';
                  } else { alertMsg(res.error || res.msg || '充值失败'); }
                }).catch(() => { if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; } alertMsg('网络错误，请稍后重试'); });
      });
    }

    function renderClubList(list){
      const ul = byId('clubList') || $('.club-features');
      if(!ul) return;
      ul.innerHTML = '';
      if(!list || !list.length){ ul.innerHTML = '<li style="color:#999;padding:20px;text-align:center;list-style:none;">暂无俱乐部数据</li>'; return; }
      list.forEach(club => {
        const li = document.createElement('li');
        li.className = 'club-item';
        li.setAttribute('data-id', club.clubId || club.id || '');
        li.setAttribute('data-name', club.clubName || '未命名俱乐部');
        li.setAttribute('data-intro', club.description || club.clubIntro || '暂无简介');
        li.setAttribute('data-avatar', fileUrl(club.avatar));
        li.innerHTML = '<div class="club-card-name"></div><div class="club-card-intro"></div>';
        li.querySelector('.club-card-name').textContent = club.clubName || '未命名俱乐部';
        li.querySelector('.club-card-intro').textContent = club.description || club.clubIntro || '暂无简介';
        ul.appendChild(li);
      });
    }

    function loadClubList(){
      jsonFetch(c + '/club/all').then(res => {
        if(res.success){ clubDataCache = res.data || []; renderClubList(clubDataCache); }
      }).catch(() => {});
    }

    function bindClubList(){
      const ulOld = byId('clubList') || $('.club-features');
      if(!ulOld) return;
      const ul = cloneReplace(ulOld);
      if(!ul.id) ul.id = 'clubList';
      ul.addEventListener('click', function(e){
        const item = e.target.closest('.club-item');
        if(!item) return;

        currentClubId = item.getAttribute('data-id');
        currentClubApplyPending = false;

        const avatar = item.getAttribute('data-avatar');
        const name = item.getAttribute('data-name');
        const intro = item.getAttribute('data-intro');

        if(byId('detailClubAvatar')) {
          var d = byId('detailClubAvatar');
          d.onerror = function(){
            this.onerror = null;
            this.src = c + '/images/default_club.png';
          };
          d.src = avatar || (c + '/images/default_club.png');
        }

        text(byId('detailClubName'), name);
        text(byId('detailClubIntro'), intro);

        const formNow = byId('clubApplyForm');
        const btnNow = formNow ? formNow.querySelector('button[type="submit"]') : null;
        if(btnNow){
          btnNow.textContent = '发送申请';
          btnNow.disabled = false;
          btnNow.classList.remove('disabled');
        }

        show(byId('clubDetailModal'));
        document.body.style.overflow = 'hidden';

        jsonFetch(c + '/club/apply/status?clubId=' + encodeURIComponent(currentClubId)).then(function(res){
          if(!res.success) return;

          currentClubApplyPending = !!res.data;

          const formNow2 = byId('clubApplyForm');
          const btnNow2 = formNow2 ? formNow2.querySelector('button[type="submit"]') : null;
          if(!btnNow2) return;

          if(currentClubApplyPending){
            btnNow2.textContent = '已申请，等待审核';
            btnNow2.disabled = true;
            btnNow2.classList.add('disabled');
          }else{
            btnNow2.textContent = '发送申请';
            btnNow2.disabled = false;
            btnNow2.classList.remove('disabled');
          }
        }).catch(function(){});
      });
      function doClubSearch(){
        const kw = ((byId('clubSearchInput') || {}).value || '').trim().toLowerCase();

        if(!kw){
          renderClubList(clubDataCache);
          return;
        }

        renderClubList((clubDataCache || []).filter(function(x){
          return String(x.clubName || '').toLowerCase().includes(kw);
        }));
      }

      const searchInput = cloneReplace(byId('clubSearchInput'));
      const searchBtn = cloneReplace(byId('clubSearchBtn'));

      if(searchInput){
        searchInput.addEventListener('input', function(){
          doClubSearch();
        });

        searchInput.addEventListener('keyup', function(e){
          if(e.key === 'Enter'){
            doClubSearch();
          }
        });
      }

      if(searchBtn){
        searchBtn.addEventListener('click', function(){
          doClubSearch();
        });
      }
      const clubDetailCloseBtn = document.querySelector('.club-detail-close-modal');
      if(clubDetailCloseBtn){
        clubDetailCloseBtn.onclick = function(){
          hide(byId('clubDetailModal'));
          document.body.style.overflow = 'auto';
        };
      }
      const applyForm = cloneReplace(byId('clubApplyForm'));
      if(applyForm){
        applyForm.addEventListener('submit', function(e){
          e.preventDefault();
          if(!currentUser){ alertMsg('请先登录'); return; }
          if(!currentClubId){ alertMsg('未选择俱乐部'); return; }
          if(currentClubApplyPending){
            alertMsg('你已经提交过申请，请等待审核');
            return;
          }
          const clubDetailCloseBtn = document.querySelector('.club-detail-close-modal');
          if(clubDetailCloseBtn){
            clubDetailCloseBtn.onclick = function(){
              hide(byId('clubDetailModal'));
              document.body.style.overflow = 'auto';
            };
          }

          const submitBtn = applyForm.querySelector('button[type="submit"]');
          const old = submitBtn ? submitBtn.textContent : '';
          if(submitBtn){ submitBtn.disabled = true; submitBtn.textContent = '发送中...'; }
          const msgInput = byId('applyMessage');
          const msg = msgInput ? (msgInput.value || '').trim() : '';

          if(!msg){
            alertMsg('请填写申请理由');
            if(msgInput) msgInput.focus();
            if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
            return;
          }

          const body = new URLSearchParams();
          body.append('clubId', currentClubId);
          body.append('applyMessage', msg);

          jsonFetch(c + '/club/join', {
            method:'POST',
            headers:{'Content-Type':'application/x-www-form-urlencoded;charset=UTF-8'},
            body
          })
                  .then(res => {
                    if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
                    if(res.success){
                      currentClubApplyPending = true;

                      const submitBtn2 = applyForm.querySelector('button[type="submit"]');
                      if(submitBtn2){
                        submitBtn2.textContent = '已申请，等待审核';
                        submitBtn2.disabled = true;
                        submitBtn2.classList.add('disabled');
                      }

                      alertMsg('申请已提交');
                      applyForm.reset();
                      hide(byId('clubDetailModal'));
                      document.body.style.overflow = 'auto';
                    }
                    else { alertMsg(res.error || res.msg || '申请失败'); }
                  }).catch(() => { if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; } alertMsg('网络错误，请稍后重试'); });
        });
      }
    }

    function bindCreateClub(){
      const openCreateBtn = byId('createClubBtn');
      if(openCreateBtn){
        openCreateBtn.onclick = function(){
          if(!currentUser){
            alertMsg('请先登录');
            return;
          }

          if(currentUser.clubId != null || currentUser.playerType != 0){
            alertMsg('只有普通用户才能创建俱乐部');
            return;
          }

          show(byId('createClubModal'));
          document.body.style.overflow = 'hidden';
        };
      }

      const form = cloneReplace(byId('createClubForm'));
      if(!form) return;

      const avatarInput = form.querySelector('#clubAvatar');
      const avatarPreview = form.querySelector('#avatarPreview');
      const avatarDisplay = form.querySelector('#avatarDisplay');
      const removeAvatarBtn = form.querySelector('#removeAvatarBtn');
      const defaultAvatar = form.querySelector('.club-create-default-avatar');
      const avatarError = form.querySelector('#avatarError');

      function hideCreateAvatarError(){
        if(avatarError){
          avatarError.textContent = '';
          avatarError.classList.add('hidden');
        }
      }

      function showCreateAvatarError(msg){
        if(avatarError){
          avatarError.textContent = msg || '';
          avatarError.classList.remove('hidden');
        } else {
          alertMsg(msg || '头像选择失败');
        }
      }

      function resetCreateAvatar(){
        createAvatarFile = null;
        if(avatarInput) avatarInput.value = '';
        if(avatarDisplay){
          avatarDisplay.src = '';
          avatarDisplay.style.display = 'none';
        }
        if(defaultAvatar) defaultAvatar.style.display = 'flex';
        if(removeAvatarBtn) removeAvatarBtn.style.display = 'none';
        hideCreateAvatarError();
      }

      function previewCreateAvatar(file){
        if(!file) return;
        const validTypes = ['image/jpeg','image/png','image/gif','image/webp'];
        if(validTypes.indexOf(file.type) === -1){
          showCreateAvatarError('不支持的文件格式，请选择 JPG、PNG、GIF 或 WEBP 图片');
          if(avatarInput) avatarInput.value = '';
          createAvatarFile = null;
          return;
        }
        const maxSize = 2 * 1024 * 1024;
        if(file.size > maxSize){
          showCreateAvatarError('图片大小不能超过 2MB');
          if(avatarInput) avatarInput.value = '';
          createAvatarFile = null;
          return;
        }
        hideCreateAvatarError();
        createAvatarFile = file;
        const reader = new FileReader();
        reader.onload = function(ev){
          if(avatarDisplay){
            avatarDisplay.src = ev.target.result;
            avatarDisplay.style.display = 'block';
          }
          if(defaultAvatar) defaultAvatar.style.display = 'none';
          if(removeAvatarBtn) removeAvatarBtn.style.display = 'inline-flex';
        };
        reader.readAsDataURL(file);
      }

      if(avatarPreview && avatarInput){
        avatarPreview.addEventListener('click', function(){ avatarInput.click(); });
      }
      if(avatarInput){
        avatarInput.addEventListener('change', function(){ previewCreateAvatar(this.files && this.files[0] ? this.files[0] : null); });
      }
      if(removeAvatarBtn){
        removeAvatarBtn.addEventListener('click', function(e){ e.preventDefault(); e.stopPropagation(); resetCreateAvatar(); });
      }
      const closeBtn = document.querySelector('.club-create-close-modal');
      if(closeBtn){ closeBtn.onclick = function(){ hide(byId('createClubModal')); document.body.style.overflow = 'auto'; form.reset(); resetCreateAvatar(); }; }

      form.addEventListener('submit', function(e){
        e.preventDefault();
        if(!currentUser){ alertMsg('请先登录'); return; }

        if(currentUser.clubId != null || currentUser.playerType != 0){
          alertMsg('只有普通用户才能创建俱乐部');
          return;
        }

        const clubName = (form.querySelector('#clubName')||{}).value?.trim();
        const clubIntro = (form.querySelector('#clubIntro')||{}).value?.trim();
        if(!clubName || !clubIntro){ alertMsg('请完整填写俱乐部信息'); return; }
        const submitBtn = form.querySelector('button[type="submit"]');
        const old = submitBtn ? submitBtn.textContent : '';
        if(submitBtn){ submitBtn.disabled = true; submitBtn.textContent = '创建中...'; }
        const fd = new FormData();
        fd.append('clubName', clubName); fd.append('clubIntro', clubIntro); if(createAvatarFile) fd.append('clubAvatar', createAvatarFile);
        fetch(c + '/club/create', { method:'POST', body: fd }).then(r => r.json()).then(res => {
          if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
          if(res.success){ alertMsg('创建成功'); form.reset(); resetCreateAvatar(); hide(byId('createClubModal')); document.body.style.overflow = 'auto'; loadCurrentUser().then(loadClubList); }
          else { alertMsg(res.error || res.msg || '创建失败'); }
        }).catch(() => { if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; } alertMsg('网络错误，请稍后重试'); });
      });
    }

    function loadClubMembers(clubId){
      const grid = byId('fightersGrid');
      if(!grid) return;

      grid.innerHTML = '<div style="text-align:center;color:#666;padding:20px;">加载中...</div>';

      jsonFetch(c + '/club/members?clubId=' + encodeURIComponent(clubId)).then(res => {
        if(!res.success){
          grid.innerHTML = '<div style="text-align:center;color:#666;padding:20px;">成员加载失败</div>';
          return;
        }

        const list = res.data || [];
        if(!list.length){
          grid.innerHTML = '<div style="text-align:center;color:#666;padding:20px;">暂无成员</div>';
          return;
        }

        grid.innerHTML = '';

        list.forEach(user => {
          const item = document.createElement('div');
          item.className = 'fighter-item';

          const fighterId = user.userId || user.id;
          const fighterName = user.nickname || user.username || ('用户' + (fighterId || ''));

          item.textContent = fighterName;
          item.dataset.userId = String(fighterId || '');
          item.dataset.fighterName = fighterName;

          item.addEventListener('click', function(){
            if(!currentClubIsAdmin){
              return;
            }

            const oldSelected = grid.querySelector('.fighter-item.selected');
            if(oldSelected){
              oldSelected.classList.remove('selected');
            }

            item.classList.add('selected');

            if(typeof window.openFighterManagement === 'function'){
              window.openFighterManagement({
                userId: fighterId,
                fighterName: fighterName,
                username: user.username || '',
                nickname: user.nickname || ''
              });
            }
          });

          grid.appendChild(item);
        });
      }).catch(() => {
        grid.innerHTML = '<div style="text-align:center;color:#666;padding:20px;">成员加载失败</div>';
      });
    }
    window.loadClubMembersGlobal = loadClubMembers;
    window.getCurrentClubIdGlobal = function(){
      return currentClubId;
    };

    function bindClubManagement(){
      const btn = cloneReplace(byId('clubManagementBtn'));
      if(btn){
        btn.addEventListener('click', function(){
          loadCurrentUser().then(user => {
            if(!user){ alertMsg('请先登录'); return; }
            const clubId = user.clubId || user.clubid;
            if(!clubId){ alertMsg('你还没有加入俱乐部'); return; }
            currentClubId = clubId;
            text(byId('currentClubTitle'), '我的俱乐部');
            loadClubMembers(clubId);
            const quitBtn = byId('quitClubBtn');
            const editBtnEl = byId('editInfoBtn');
            const manageBtnEl = byId('manageApplicationsBtn');
            if(quitBtn) quitBtn.style.display = 'none';
            if(editBtnEl) editBtnEl.style.display = 'none';
            if(manageBtnEl) manageBtnEl.style.display = 'none';
            jsonFetch(c + '/club/detail?clubId=' + encodeURIComponent(clubId)).then(res => {
              if(res.success && res.data){
                text(byId('currentClubTitle'), res.data.clubName || '我的俱乐部');
                const userId = String(user.id || user.userId || user.uid || '').trim();
                const adminId = String(res.data.adminId || res.data.adminid || '').trim();
                const playerType = String(user.playerType || user.playertype || '').trim();
                const isAdmin = !!userId && !!adminId && userId === adminId && playerType === '2';

                currentClubIsAdmin = isAdmin;

                if(quitBtn) quitBtn.style.display = isAdmin ? 'none' : 'inline-block';
                if(editBtnEl) editBtnEl.style.display = isAdmin ? 'inline-block' : 'none';
                if(manageBtnEl) manageBtnEl.style.display = isAdmin ? 'inline-block' : 'none';
              } else {
                currentClubIsAdmin = false;
                if(quitBtn) quitBtn.style.display = 'inline-block';
              }
            }).catch(()=>{
              currentClubIsAdmin = false;
              if(quitBtn) quitBtn.style.display = 'inline-block';
            });
            show(byId('clubManagementModal')); document.body.style.overflow = 'hidden';
          });
        });
      }
      const quitBtn = cloneReplace(byId('quitClubBtn'));
      if(quitBtn){
        quitBtn.addEventListener('click', function(){
          if(!currentClubId){ alertMsg('未找到俱乐部'); return; }
          if(!confirm('确定退出当前俱乐部吗？')) return;
          const body = new URLSearchParams(); body.append('clubId', currentClubId);
          jsonFetch(c + '/club/quit', { method:'POST', headers:{'Content-Type':'application/x-www-form-urlencoded;charset=UTF-8'}, body })
                  .then(res => {
                    if(res.success){ alertMsg('已退出俱乐部'); hide(byId('clubManagementModal')); document.body.style.overflow = 'auto'; loadCurrentUser().then(loadClubList); }
                    else { alertMsg(res.error || res.msg || '退出失败'); }
                  }).catch(() => alertMsg('网络错误，请稍后重试'));
        });
      }
      const editBtn = cloneReplace(byId('editInfoBtn'));
      if(editBtn){
        editBtn.addEventListener('click', function(){
          if(!currentClubId){ alertMsg('未找到俱乐部'); return; }
          jsonFetch(c + '/club/detail?clubId=' + encodeURIComponent(currentClubId)).then(res => {
            if(!(res.success && res.data)){ alertMsg(res.error || res.msg || '加载俱乐部信息失败'); return; }
            const club = res.data;
            const modal = byId('clubEditModal');
            const form = cloneReplace(byId('clubEditForm'));
            if(!form){ alertMsg('未找到编辑表单'); return; }
            const nameInput = form.querySelector('#editClubName');
            const introInput = form.querySelector('#editClubIntro');
            const charCount = form.querySelector('#editCharCount');
            const avatarInput = form.querySelector('#clubAvatarInput');
            const avatarPreview = form.querySelector('#clubAvatarPreview');
            const defaultAvatar = c + '/images/default_club.png';
            editAvatarFile = null;

            function renderAvatar(src){
              if(!avatarPreview) return;
              let url = defaultAvatar;
              if(src){
                if(/^data:image\//i.test(src) || /^blob:/i.test(src) || /^https?:\/\//i.test(src)) url = src;
                else url = fileUrl(src);
              }
              avatarPreview.innerHTML = '<img src="' + url + '" alt="俱乐部头像预览" style="width:100%;height:100%;object-fit:cover;border-radius:50%;">';
              const img = avatarPreview.querySelector('img');
              if(img){ img.onerror = function(){ this.onerror = null; this.src = defaultAvatar; }; }
            }

            if(nameInput) nameInput.value = club.clubName || '';
            if(introInput) introInput.value = club.description || club.clubIntro || '';
            if(charCount) charCount.textContent = (introInput && introInput.value ? introInput.value.length : 0);
            renderAvatar(club.avatar);

            if(avatarPreview && avatarInput){
              avatarPreview.addEventListener('click', function(){ avatarInput.click(); });
            }
            if(introInput && charCount){
              introInput.addEventListener('input', function(){
                if(this.value.length > 999) this.value = this.value.substring(0, 999);
                charCount.textContent = this.value.length;
              });
            }
            if(avatarInput){
              avatarInput.addEventListener('change', function(){
                const file = this.files && this.files[0] ? this.files[0] : null;
                if(!file) return;
                if(!file.type || file.type.indexOf('image/') !== 0){ alertMsg('请选择图片文件'); this.value = ''; return; }
                if(file.size > 2 * 1024 * 1024){ alertMsg('图片大小不能超过2MB'); this.value = ''; return; }
                editAvatarFile = file;
                const reader = new FileReader();
                reader.onload = function(e){ renderAvatar(e.target.result); };
                reader.readAsDataURL(file);
              });
            }

            form.addEventListener('submit', function(e){
              e.preventDefault();
              const clubName = nameInput && nameInput.value ? nameInput.value.trim() : '';
              const clubIntro = introInput && introInput.value ? introInput.value.trim() : '';
              if(!clubName){ alertMsg('请输入俱乐部名称'); if(nameInput) nameInput.focus(); return; }
              if(!clubIntro){ alertMsg('请输入俱乐部简介'); if(introInput) introInput.focus(); return; }
              const submitBtn = form.querySelector('button[type="submit"]');
              const old = submitBtn ? submitBtn.textContent : '';
              if(submitBtn){ submitBtn.disabled = true; submitBtn.textContent = '保存中...'; }
              const fd = new FormData();
              fd.append('clubId', currentClubId);
              fd.append('clubName', clubName);
              fd.append('clubIntro', clubIntro);
              if(editAvatarFile) fd.append('clubAvatar', editAvatarFile);
              fetch(c + '/club/update', { method:'POST', body: fd }).then(r => r.json()).then(res2 => {
                if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
                if(!(res2.success)){ alertMsg(res2.error || res2.msg || '编辑失败'); return; }
                alertMsg('编辑成功');
                hide(modal); document.body.style.overflow = 'auto';
                editAvatarFile = null;
                loadClubList();
                loadClubMembers(currentClubId);
                jsonFetch(c + '/club/detail?clubId=' + encodeURIComponent(currentClubId)).then(detailRes => {
                  if(detailRes.success && detailRes.data){
                    text(byId('currentClubTitle'), detailRes.data.clubName || '我的俱乐部');
                  }
                }).catch(()=>{});
              }).catch(() => {
                if(submitBtn){ submitBtn.disabled = false; submitBtn.textContent = old; }
                alertMsg('网络错误，请稍后重试');
              });
            });

            const closeBtn = modal ? modal.querySelector('.club-edit-close-modal') : null;
            if(closeBtn){
              closeBtn.onclick = function(){
                hide(modal);
                document.body.style.overflow = 'auto';
                editAvatarFile = null;
                if(avatarInput) avatarInput.value = '';
              };
            }
            if(modal) modal.setAttribute('data-club-id', currentClubId);
            show(modal); document.body.style.overflow = 'hidden';
          }).catch(() => alertMsg('加载俱乐部信息失败'));
        });
      }
      function loadApplications(clubId){
        const listBox = byId('applicationsList');
        const emptyBox = byId('noApplications');
        if(!listBox || !emptyBox) return;
        listBox.innerHTML = '<div style="padding:20px;text-align:center;color:#999;">加载中...</div>';
        emptyBox.style.display = 'none';
        listBox.style.display = 'block';
        jsonFetch(c + '/club/apply/list?clubId=' + encodeURIComponent(clubId)).then(res => {
          if(!res.success){
            listBox.innerHTML = '';
            listBox.style.display = 'none';
            emptyBox.style.display = 'block';
            emptyBox.innerHTML = '<p>' + escapeHtml(res.error || res.msg || '加载申请失败') + '</p>';
            return;
          }
          const arr = Array.isArray(res.data) ? res.data : [];
          if(!arr.length){
            listBox.innerHTML = '';
            listBox.style.display = 'none';
            emptyBox.style.display = 'block';
            emptyBox.innerHTML = '<p>暂无申请信息</p>';
            return;
          }
          emptyBox.style.display = 'none';
          listBox.style.display = 'block';
          listBox.innerHTML = '';
          arr.forEach(item => {
            const applyId = item.applyId || item.id || '';
            const userId = item.userId || item.id || '';
            const nickname = item.nickname || item.username || ('用户' + userId);
            const details = item.applyMessage || '该用户没有填写申请信息';
            const avatar = item.avatar ? fileUrl(item.avatar) : (c + '/images/default_club.png');
            const div = document.createElement('div');
            div.className = 'application-item';
            div.innerHTML = ''
                    + '<div class="application-info">'
                    +   '<div style="display:flex;align-items:center;gap:12px;margin-bottom:10px;">'
                    +     '<img src="' + avatar + '" style="width:48px;height:48px;border-radius:50%;object-fit:cover;flex-shrink:0;" onerror="this.onerror=null;this.src=\'' + c + '/images/default_club.png\'">'
                    +     '<div>'
                    +       '<div class="application-id">申请用户ID: ' + escapeHtml(userId) + '</div>'
                    +       '<div class="application-nickname">昵称: ' + escapeHtml(nickname) + '</div>'
                    +     '</div>'
                    +   '</div>'
                    +   '<div class="application-details">申请信息: ' + escapeHtml(details) + '</div>'
                    + '</div>'
                    + '<div class="application-actions">'
                    +   '<button type="button" class="btn-approve" data-id="' + escapeHtml(applyId) + '">同意</button>'
                    +   '<button type="button" class="btn-reject" data-id="' + escapeHtml(applyId) + '">拒绝</button>'
                    + '</div>';
            listBox.appendChild(div);
          });
          bindApplicationActionButtons(clubId);
        }).catch(() => {
          listBox.innerHTML = '';
          listBox.style.display = 'none';
          emptyBox.style.display = 'block';
          emptyBox.innerHTML = '<p>加载申请失败</p>';
        });
      }

      function bindApplicationActionButtons(clubId){
        const approveBtns = document.querySelectorAll('#applicationsList .btn-approve');
        const rejectBtns = document.querySelectorAll('#applicationsList .btn-reject');
        approveBtns.forEach(btn => {
          btn.onclick = function(){
            const applyId = this.getAttribute('data-id');
            handleApplication(clubId, applyId, 'approve');
          };
        });
        rejectBtns.forEach(btn => {
          btn.onclick = function(){
            const applyId = this.getAttribute('data-id');
            handleApplication(clubId, applyId, 'reject');
          };
        });
      }

      function handleApplication(clubId, applyId, action){
        const url = action === 'approve' ? '/club/apply/approve' : '/club/apply/reject';
        const txt = action === 'approve' ? '同意' : '拒绝';
        fetch(c + url, {
          method:'POST',
          headers:{'Content-Type':'application/x-www-form-urlencoded;charset=UTF-8'},
          body:'applyId=' + encodeURIComponent(applyId)
        }).then(r => r.json()).then(res => {
          if(!res.success){ alertMsg(res.error || res.msg || (txt + '失败')); return; }
          alertMsg(txt + '成功');
          loadApplications(clubId);
          loadClubMembers(clubId);
        }).catch(() => alertMsg('网络错误，请稍后重试'));
      }

      const manageModal = byId('manageApplicationsModal');
      const manageCloseBtn = manageModal ? manageModal.querySelector('.club-manageappli-close-modal') : null;
      if(manageCloseBtn){
        manageCloseBtn.onclick = function(){
          hide(manageModal);
          document.body.style.overflow = 'auto';
        };
      }
      if(manageModal){
        manageModal.onclick = function(e){
          if(e.target === manageModal){
            hide(manageModal);
            document.body.style.overflow = 'auto';
          }
        };
      }
      const manageBtn = cloneReplace(byId('manageApplicationsBtn'));
      if(manageBtn){
        manageBtn.addEventListener('click', function(){
          if(!currentClubId){ alertMsg('未找到俱乐部'); return; }
          loadApplications(currentClubId);
          show(manageModal);
          document.body.style.overflow = 'hidden';
        });
      }
    }

    document.addEventListener('DOMContentLoaded', function(){
      bindLogin();
      bindRegister();
      bindPersonalCenter();
      bindSecurity();
      bindWallet();
      bindClubList();
      bindCreateClub();
      bindClubManagement();
      loadCurrentUser();
      loadClubList();
    });
  })();
</script>
</html>