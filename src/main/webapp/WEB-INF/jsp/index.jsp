<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>8889游戏</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <div class="login-left">
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
        <div class="login-right">
          <div class="center-btn-con">
            <a href="javascript:void(0);" id="personalCenterBtn" class="center-btn">
              <img src="/images/intro.svg" alt="个人中心" class="btn-icon">
              <span class="btn-text">个人中心</span>
            </a>
            <a href="javascript:void(0);" id="securityCenterBtn" class="center-btn">
              <img src="/images/password.svg" alt="修改密码" class="btn-icon">
              <span class="btn-text">修改密码</span>
            </a>
            <a href="javascript:void(0);" id="walletBtn" class="center-btn">
              <img src="/images/cash.svg" alt="我的钱包" class="btn-icon">
              <span class="btn-text">我的钱包</span>
            </a>
            <a href="javascript:void(0);" id="clubManagementBtn" class="center-btn">
              <img src="/images/club.svg" alt="俱乐部管理" class="btn-icon">
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
  <div id="clubDetailModal" class="club-modal">
    <div class="club-modal-content">
      <!-- 关闭按钮（右上角叉号） -->
      <span class="club-close-modal">&times;</span>

      <!-- 弹窗主体内容 -->
      <div class="club-modal-body">
        <!-- 俱乐部头像 -->
        <div class="club-avatar-container">
          <img id="detailClubAvatar" src="" alt="" class="club-avatar">
        </div>

        <!-- 俱乐部名称 -->
        <h2 id="detailClubName" class="club-name"></h2>

        <!-- 俱乐部简介 -->
        <div class="club-intro-container">
          <h3>俱乐部简介</h3>
          <p id="detailClubIntro" class="club-intro"></p>
        </div>

        <!-- 申请加入表单 -->
        <form id="clubApplyForm" class="club-apply-form">
          <div class="from-grop-apply">
            <label for="applyMessage">请填写验证信息</label>
            <textarea
                    id="applyMessage"
                    name="applyMessage"
                    rows="4"
                    placeholder="请简单介绍自己，并说明申请加入的理由..."
                    required></textarea>
          </div>

          <!-- 发送按钮 -->
          <div class="apply-actions">
            <button type="submit" class="apply-btn">发送申请</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 创建俱乐部弹窗 -->
  <div id="createClubModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>创建俱乐部</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <form id="createClubForm">
          <!-- 头像上传区域 -->
          <div class="form-group avatar-upload-group">
            <label>俱乐部头像</label>
            <div class="avatar-upload-container">
              <div class="avatar-preview" id="avatarPreview">
                <!-- 默认头像图标 -->
                <div class="default-avatar">
                  <svg width="60" height="60" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 12C14.21 12 16 10.21 16 8C16 5.79 14.21 4 12 4C9.79 4 8 5.79 8 8C8 10.21 9.79 12 12 12Z" stroke="#666" stroke-width="1.5"/>
                    <path d="M6 20V19C6 16.79 7.79 15 10 15H14C16.21 15 18 16.79 18 19V20" stroke="#666" stroke-width="1.5"/>
                    <circle cx="12" cy="12" r="10" stroke="#666" stroke-width="1.5"/>
                  </svg>
                  <span>点击上传头像</span>
                </div>
                <!-- 选择的图片会在这里显示 -->
                <img id="avatarDisplay" src="" alt="头像预览" style="display: none;">
              </div>
              <div class="avatar-controls">
                <input type="file" id="clubAvatar" name="clubAvatar" accept="image/jpeg,image/png,image/gif,image/webp" style="display: none;">
                <button type="button" id="removeAvatarBtn" class="btn-remove" style="display: none;">移除</button>
              </div>
              <div class="avatar-hint">
                支持 JPG、PNG、GIF、WEBP 格式，大小不超过 2MB,建议尺寸 200x200 像素
              </div>
              <div class="avatar-error hidden" id="avatarError"></div>
            </div>
          </div>

          <div class="form-group-club">
            <label for="clubName">俱乐部名称 *</label>
            <input type="text" id="clubName" name="clubName" placeholder="请输入俱乐部名称" required>
          </div>
          <div class="form-group-club">
            <label for="clubIntro">俱乐部简介 *</label>
            <textarea id="clubIntro" name="clubIntro" rows="4" placeholder="请简单描述您的俱乐部（例如：宗旨、活动等）" required></textarea>
          </div>
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">创建</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 发布订单弹窗 -->
  <div id="postOrderModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>发布订单</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <form id="postOrderForm">
          <!-- 订单类型 -->
          <div class="form-group-club">
            <label for="orderType">订单类型</label>
            <select id="orderType" name="orderType" class="form-input" required>
              <option value="">请选择订单类型</option>
              <option value="job">求职订单</option>
              <option value="bounty">悬赏订单</option>
            </select>
          </div>

          <!-- 游戏名称 -->
          <div class="form-group-club">
            <label for="gameName">游戏名称</label>
            <input type="text" id="gameName" name="gameName" placeholder="请输入游戏名称" required>
          </div>

          <!-- 订单金额 -->
          <div class="form-group-club">
            <label for="orderAmount">订单金额</label>
            <input type="number" id="orderAmount" name="orderAmount" placeholder="请输入金额" min="0" step="0.01" required>
          </div>

          <!-- 订单详情 -->
          <div class="form-group-club">
            <label for="orderDetails">订单详情</label>
            <textarea id="orderDetails" name="orderDetails" rows="5" placeholder="请详细描述订单内容..." maxlength="999" required></textarea>
            <div class="char-count">
              <span id="charCount">0</span>/999
            </div>
          </div>

          <!-- 提交按钮 -->
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">递交订单</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 管理订单弹窗 -->
  <div id="manageOrderModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2 id="manageOrderTitle">订单管理</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">

        <!-- 订单编辑表单 -->
        <form id="manageOrderForm" class="club-apply-form">
          <!-- 订单类型 -->
          <div class="from-grop-apply">
            <label for="manageOrderType">订单类型</label>
            <select id="manageOrderType" name="manageOrderType" class="form-input" required>
              <option value="job">求职订单</option>
              <option value="bounty">悬赏订单</option>
            </select>
          </div>

          <!-- 游戏名称 -->
          <div class="from-grop-apply">
            <label for="manageGameName">游戏名称</label>
            <input type="text" id="manageGameName" name="manageGameName" class="form-input" required>
          </div>

          <!-- 订单金额 -->
          <div class="from-grop-apply">
            <label for="manageOrderAmount">订单金额</label>
            <input type="number" id="manageOrderAmount" name="manageOrderAmount" class="form-input" min="0" step="0.01" required>
          </div>

          <!-- 订单详情 -->
          <div class="from-grop-apply">
            <label for="manageOrderDetails">订单详情</label>
            <textarea
                    id="manageOrderDetails"
                    name="manageOrderDetails"
                    rows="5"
                    class="form-input"
                    maxlength="999"
                    required></textarea>
            <div class="char-count">
              <span id="manageCharCount">0</span>/999
            </div>
          </div>

          <!-- 操作按钮 -->
          <div class="apply-actions">
            <button type="submit" class="apply-btn">提交修改</button>
            <button type="button" id="deleteOrderBtn" class="apply-btn delete-btn">删除订单</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 个人中心弹窗 -->
  <div id="personalCenterModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>个人中心</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <form id="personalCenterForm">
          <!-- 头像上传 -->
          <div class="form-group-club">
            <label for="personalAvatar">用户头像</label>
            <div class="avatar-upload-container">
              <div class="avatar-preview" id="personalAvatarPreview">
                <!-- 默认头像图标 -->
                <div class="default-avatar">
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
              <div class="avatar-controls">
                <input type="file" id="personalAvatarInput" name="personalAvatar" accept="image/jpeg,image/png,image/gif,image/webp" style="display: none;">
                <button type="button" id="removePersonalAvatarBtn" class="btn-remove" style="display: none;">移除</button>
              </div>
              <div class="avatar-hint">
                支持 JPG、PNG、GIF、WEBP 格式，大小不超过 2MB,建议尺寸 200x200 像素
              </div>
              <div class="avatar-error hidden" id="personalAvatarError"></div>
            </div>
          </div>

          <!-- 姓名 -->
          <div class="form-group-club">
            <label for="personalName">姓名</label>
            <input type="text" id="personalName" name="personalName" placeholder="请输入您的姓名" required>
          </div>

          <!-- 个人简介 -->
          <div class="form-group-club">
            <label for="personalIntro">个人简介</label>
            <textarea id="personalIntro" name="personalIntro" rows="4" placeholder="请简单介绍一下自己..." maxlength="200" required></textarea>
            <div class="char-count">
              <span id="personalCharCount">0</span>/200
            </div>
          </div>

          <!-- 完成修改按钮 -->
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">完成修改</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 钱包充值弹窗 -->
  <div id="walletModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>我的钱包</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <!-- 余额显示 -->
        <div class="wallet-balance">
          <div class="balance-label">我的余额</div>
          <div class="balance-amount">¥ 0.00</div>
        </div>

        <form id="walletForm">
          <!-- 充值金额选择 -->
          <div class="form-group-club">
            <label for="rechargeAmount">充值金额</label>
            <div class="amount-options">
              <button type="button" class="amount-option" data-amount="6">6元</button>
              <button type="button" class="amount-option" data-amount="30">30元</button>
              <button type="button" class="amount-option" data-amount="98">98元</button>
              <button type="button" class="amount-option" data-amount="198">198元</button>
              <button type="button" class="amount-option" data-amount="328">328元</button>
              <button type="button" class="amount-option" data-amount="648">648元</button>
            </div>
            <div class="custom-amount">
              <input type="number" id="customAmount" name="customAmount" placeholder="自定义金额" min="1" step="0.01">
            </div>
          </div>

          <!-- 支付方式选择 -->
          <div class="form-group-club">
            <label for="paymentMethod">支付方式</label>
            <select id="paymentMethod" name="paymentMethod" class="form-input" required>
              <option value="">请选择支付方式</option>
              <option value="wechat">微信支付</option>
              <option value="alipay">支付宝支付</option>
            </select>
          </div>

          <!-- 确认充值按钮 -->
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">确认充值</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 修改密码弹窗 -->
  <div id="securityCenterModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2></h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body modal-body-center">
        <div class="security-center-header">
          <h3 class="security-title">设置密码</h3>
          <p class="security-subtitle">请设置强度较高的密码</p>
        </div>

        <div class="form-group-club security-form-group">
          <input type="password" id="newPassword" placeholder="请输入密码" class="text-align-left">
        </div>

        <div class="form-group-club security-form-group">
          <input type="password" id="confirmPassword" placeholder="请再次输入密码" class="text-align-left">
        </div>

        <div class="password-requirements-container">
          <div class="password-requirement password-requirement-item">
            <div class="requirement-indicator" id="lengthIndicator"></div>
            <span class="requirement-text">密码由8-15位数字、字母或符号组成</span>
          </div>
          <div class="password-requirement password-requirement-item">
            <div class="requirement-indicator" id="matchIndicator"></div>
            <span class="requirement-text">两次输入密码需保持一致</span>
          </div>
        </div>

        <div class="form-actions security-form-actions">
          <button type="button" id="confirmPasswordBtn" class="btn btn-primary btn-full-width" disabled>确认修改</button>
        </div>
      </div>
    </div>
  </div>
  <!-- 用户注册弹窗 -->
  <div id="registerModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>用户注册</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <form id="registerForm">
          <!-- 账号 -->
          <div class="form-group-club">
            <label for="registerAccount">账号</label>
            <input type="text" id="registerAccount" name="registerAccount" placeholder="请输入账号" required>
          </div>

          <!-- 密码 -->
          <div class="form-group-club">
            <label for="registerPassword">密码</label>
            <input type="password" id="registerPassword" name="registerPassword" placeholder="请输入密码" required>
          </div>

          <!-- 姓名 -->
          <div class="form-group-club">
            <label for="registerName">姓名</label>
            <input type="text" id="registerName" name="registerName" placeholder="请输入真实姓名" required>
          </div>

          <!-- 身份证号 -->
          <div class="form-group-club">
            <label for="registerIdCard">身份证号</label>
            <input type="text" id="registerIdCard" name="registerIdCard" placeholder="请输入身份证号码" required maxlength="18">
          </div>

          <!-- 创建按钮 -->
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">创建账户</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 俱乐部管理弹窗 -->
  <div id="clubManagementModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>俱乐部管理</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <div class="club-management-container">
          <div class="fighters-grid-container">
            <h3 class="fighters-title">默认俱乐部</h3>
            <div class="fighters-grid-wrapper">
              <div class="fighters-grid" id="fightersGrid">
                <!-- 打手列表将通过JavaScript动态生成 -->
              </div>
            </div>
          </div>
          <div class="management-actions">
            <button type="button" id="editInfoBtn" class="btn btn-secondary">编辑信息</button>
            <button type="button" id="manageApplicationsBtn" class="btn btn-primary">管理申请</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 打手管理弹窗 -->
  <div id="fighterManagementModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2 id="fighterManagementTitle">打手管理</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <div class="fighter-management-container">
          <div class="fighter-info-header">
            <h3 id="fighterNameDisplay">打手姓名</h3>
          </div>

          <!-- 订单信息表格 -->
          <div class="fighter-orders-section">
            <h4>已完成订单</h4>
            <div class="orders-table-container">
              <table class="orders-table">
                <thead>
                <tr>
                  <th>订单编号</th>
                  <th>游戏名称</th>
                  <th>订单类型</th>
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
          <div class="fighter-management-actions">
            <button type="button" id="removeFighterBtn" class="btn btn-danger">移除打手</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 确认移除弹窗 -->
  <div id="confirmRemoveModal" class="modal">
    <div class="modal-content confirm-modal">
      <div class="modal-header">
        <h2>确认移除</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <div class="confirm-message">
          <p id="confirmRemoveText">确定要移除该打手吗？此操作不可撤销。</p>
        </div>
        <div class="confirm-actions">
          <button type="button" id="confirmYesBtn" class="btn btn-danger">Yes</button>
          <button type="button" id="confirmNoBtn" class="btn btn-secondary">No</button>
        </div>
      </div>
    </div>
  </div>
  <!-- 俱乐部信息编辑弹窗 -->
  <div id="clubEditModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>编辑俱乐部信息</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <form id="clubEditForm" class="club-apply-form">
          <!-- 俱乐部头像 -->
          <div class="avatar-upload-group">
            <label>俱乐部头像</label>
            <div class="avatar-upload-container">
              <div class="avatar-preview" id="clubAvatarPreview">
                <div class="default-avatar">
                  <span>点击上传头像</span>
                </div>
              </div>
              <input type="file" id="clubAvatarInput" accept="image/*" style="display: none;">
              <button type="button" id="uploadAvatarBtn" class="btn btn-secondary">选择头像</button>
            </div>
          </div>

          <!-- 俱乐部名称 -->
          <div class="form-group-club">
            <label for="editClubName">俱乐部名称</label>
            <input type="text" id="editClubName" name="clubName" placeholder="请输入俱乐部名称" required>
          </div>

          <!-- 俱乐部简介 -->
          <div class="form-group-club">
            <label for="editClubIntro">俱乐部简介</label>
            <textarea id="editClubIntro" name="clubIntro" rows="5" placeholder="请详细描述俱乐部简介..." maxlength="999" required></textarea>
            <div class="char-count">
              <span id="editCharCount">0</span>/999
            </div>
          </div>

          <!-- 提交按钮 -->
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">完成编辑</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- 编辑成功提示弹窗 -->
  <div id="editSuccessModal" class="modal">
    <div class="modal-content confirm-modal">
      <div class="modal-header">
        <h2>编辑成功</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <div class="confirm-message">
          <p>俱乐部信息编辑成功！</p>
        </div>
        <div class="confirm-actions">
          <button type="button" id="editSuccessOkBtn" class="btn btn-primary">确定</button>
        </div>
      </div>
    </div>
  </div>
  <!-- 管理申请弹窗 -->
  <div id="manageApplicationsModal" class="modal">
    <div class="modal-content">
      <div class="modal-header">
        <h2>管理申请</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <div class="applications-container">
          <h3>申请列表</h3>
          <div class="applications-list" id="applicationsList">
            <!-- 申请信息将通过JavaScript动态生成 -->
          </div>
          <div class="no-applications" id="noApplications" style="display: none;">
            <p>暂无申请信息</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 申请处理成功提示弹窗 -->
  <div id="applicationSuccessModal" class="modal">
    <div class="modal-content confirm-modal">
      <div class="modal-header">
        <h2 id="applicationSuccessTitle">操作成功</h2>
        <span class="close-modal">&times;</span>
      </div>
      <div class="modal-body">
        <div class="confirm-message">
          <p id="applicationSuccessText">操作成功！</p>
        </div>
        <div class="confirm-actions">
          <button type="button" id="applicationSuccessOkBtn" class="btn btn-primary">确定</button>
        </div>
      </div>
    </div>
  </div>



</div>
<!-- 中部搜索栏 -->
<div class="search-container">
  <div class="search-box">
    <input type="text" class="search-input" placeholder="搜索俱乐部、游戏或订单...">
    <button class="search-btn">搜索</button>
  </div>
</div>




<script>
  // 俱乐部详情弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取弹窗元素
    const clubDetailModal = document.getElementById('clubDetailModal');
    const closeClubDetailBtn = document.querySelector('.club-close-modal');
    const clubApplyForm = document.getElementById('clubApplyForm');

    // 获取显示俱乐部信息的元素
    const detailClubName = document.getElementById('detailClubName');
    const detailClubIntro = document.getElementById('detailClubIntro');
    const detailClubAvatar = document.getElementById('detailClubAvatar');

    // 获取所有俱乐部列表项
    const clubItems = document.querySelectorAll('.club-item');

    // 为每个俱乐部列表项添加点击事件
    clubItems.forEach(item => {
      item.addEventListener('click', function() {
        console.log('俱乐部被点击了:', this.getAttribute('data-name'));

        // 获取俱乐部信息
        const clubName = this.getAttribute('data-name');
        const clubIntro = this.getAttribute('data-intro');
        const clubAvatar = this.getAttribute('data-avatar');

        // 设置弹窗内容
        detailClubName.textContent = clubName;
        detailClubIntro.textContent = clubIntro;

        // 设置头像（如果提供了头像URL）
        if (clubAvatar && clubAvatar !== '') {
          detailClubAvatar.src = clubAvatar;
          detailClubAvatar.style.display = 'block';

          // 添加图片加载失败事件处理
          detailClubAvatar.onerror = function() {
            // 图片加载失败时显示默认图片
            this.src = '/images/default_club.png';
            console.log('头像图片加载失败，已使用默认图片');
          };

          // 添加图片加载成功事件处理
          detailClubAvatar.onload = function() {
            console.log('头像图片加载成功');
          };
        } else {
          // 使用默认头像
          detailClubAvatar.src = '/images/default_club.png';
          detailClubAvatar.style.display = 'block';
          detailClubAvatar.parentElement.style.background = 'none';
        }

        // 显示弹窗
        clubDetailModal.style.display = 'flex';
        document.body.style.overflow = 'hidden'; // 防止背景滚动

        // 重置表单
        document.getElementById('applyMessage').value = '';
      });
    });

    // 关闭俱乐部详情弹窗
    closeClubDetailBtn.addEventListener('click', function() {
      clubDetailModal.style.display = 'none';
      document.body.style.overflow = 'auto';
    });

    // 阻止点击弹窗外部关闭
    window.addEventListener('click', function(event) {
      if (event.target === clubDetailModal) {
        // 点击遮罩层不关闭，只能通过×关闭
        // 这里不执行任何操作
      }
    });

    // 处理申请表单提交
    clubApplyForm.addEventListener('submit', function(event) {
      event.preventDefault();

      const applyMessage = document.getElementById('applyMessage').value.trim();

      if (!applyMessage) {
        alert('请填写验证信息！');
        document.getElementById('applyMessage').focus();
        return;
      }

      // 显示加载状态
      const submitBtn = this.querySelector('.apply-btn');
      const originalText = submitBtn.textContent;
      submitBtn.textContent = '发送中...';
      submitBtn.disabled = true;

      // 模拟发送请求
      setTimeout(() => {
        // 恢复按钮状态
        submitBtn.textContent = originalText;
        submitBtn.disabled = false;

        // 使用系统alert提示发送成功
        alert('申请已发送！\n您的申请已成功提交，请等待俱乐部管理员审核。');

        // 关闭详情弹窗
        clubDetailModal.style.display = 'none';
        document.body.style.overflow = 'auto';

        // 重置表单
        this.reset();
      }, 1000);
    });

    // 按ESC键关闭弹窗
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape' && clubDetailModal.style.display === 'flex') {
        clubDetailModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      }
    });
  });

  // 创建俱乐部弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const createClubBtn = document.getElementById('createClubBtn');
    const modal = document.getElementById('createClubModal');
    const closeModalBtn = document.querySelector('.close-modal');
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
    if (createClubBtn && modal) {
      createClubBtn.addEventListener('click', function() {
        console.log('创建俱乐部按钮被点击');
        modal.style.display = 'flex';
        // 重置表单状态
        resetAvatar();
      });
    }

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
        const submitBtn = document.querySelector('.btn-primary');
        const originalText = submitBtn.textContent;
        submitBtn.textContent = '创建中...';
        submitBtn.disabled = true;

        // 模拟网络请求延迟
        setTimeout(() => {
          // 恢复按钮状态
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;

          // 模拟成功响应
          alert(`俱乐部"${clubName}"创建成功！`);

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
    const closeModalBtn = clubManagementModal?.querySelector('.close-modal');
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
    const closeFighterModalBtn = fighterManagementModal?.querySelector('.close-modal');
    const removeFighterBtn = document.getElementById('removeFighterBtn');
    const confirmRemoveModal = document.getElementById('confirmRemoveModal');
    const closeConfirmModalBtn = confirmRemoveModal?.querySelector('.close-modal');
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
    window.openFighterManagement = function(fighterName) {
      currentFighter = fighterName;

      // 设置弹窗标题
      const title = document.getElementById('fighterManagementTitle');
      const nameDisplay = document.getElementById('fighterNameDisplay');

      if (title) title.textContent = '打手管理 - ' + fighterName;
      if (nameDisplay) nameDisplay.textContent = fighterName;

      // 生成订单表格
      generateFighterOrders(fighterName);

      // 显示弹窗
      if (fighterManagementModal) {
        fighterManagementModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      }
    };

    // 2. 生成打手订单表格
    function generateFighterOrders(fighterName) {
      const ordersTable = document.getElementById('fighterOrdersTable');
      if (!ordersTable) return;

      ordersTable.innerHTML = '';

      const orders = fighterOrdersData[fighterName] || [];

      if (orders.length === 0) {
        const emptyRow = document.createElement('tr');
        emptyRow.innerHTML = '<td colspan="5" style="text-align: center; color: #999; padding: 40px;">暂无完成订单</td>';
        ordersTable.appendChild(emptyRow);
        return;
      }

      orders.forEach(order => {
        const row = document.createElement('tr');
        row.innerHTML = `
        <td>${order.id}</td>
        <td>${order.game}</td>
        <td>${order.type}</td>
        <td>${order.amount}</td>
        <td>${order.time}</td>
      `;
        ordersTable.appendChild(row);
      });
    }

    // 3. 关闭打手管理弹窗
    function closeFighterManagementModal() {
      if (fighterManagementModal) {
        fighterManagementModal.style.display = 'none';
        document.body.style.overflow = 'auto';
        currentFighter = null;
      }
    }

    // 4. 关闭按钮事件
    if (closeFighterModalBtn) {
      closeFighterModalBtn.addEventListener('click', closeFighterManagementModal);
    }

    // 5. 点击弹窗外部关闭
    fighterManagementModal?.addEventListener('click', function(event) {
      if (event.target === fighterManagementModal) {
        closeFighterManagementModal();
      }
    });

    // 6. 移除打手按钮点击事件
    if (removeFighterBtn) {
      removeFighterBtn.addEventListener('click', function() {
        if (!currentFighter) {
          alert('请先选择打手');
          return;
        }

        // 设置确认文本
        const confirmText = document.getElementById('confirmRemoveText');
        if (confirmText) {
          confirmText.textContent = `确定要移除打手"${currentFighter}"吗？此操作不可撤销。`;
        }

        // 显示确认弹窗
        if (confirmRemoveModal) {
          confirmRemoveModal.style.display = 'flex';
        }
      });
    }

    // 7. 确认移除弹窗功能
    function closeConfirmRemoveModal() {
      if (confirmRemoveModal) {
        confirmRemoveModal.style.display = 'none';
      }
    }

    // 8. 确认弹窗关闭按钮
    if (closeConfirmModalBtn) {
      closeConfirmModalBtn.addEventListener('click', closeConfirmRemoveModal);
    }

    // 9. 点击确认弹窗外部关闭
    confirmRemoveModal?.addEventListener('click', function(event) {
      if (event.target === confirmRemoveModal) {
        closeConfirmRemoveModal();
      }
    });

    // 10. Yes按钮点击事件
    if (confirmYesBtn) {
      confirmYesBtn.addEventListener('click', function() {
        if (currentFighter) {
          // 模拟移除操作
          setTimeout(() => {
            alert(`打手"${currentFighter}"移除成功！`);

            // 关闭所有弹窗
            closeConfirmRemoveModal();
            closeFighterManagementModal();

            // 这里可以添加实际的移除逻辑
            console.log('打手移除成功:', currentFighter);
          }, 500);
        }
      });
    }

    // 11. No按钮点击事件
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

  // 俱乐部信息编辑功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const clubEditModal = document.getElementById('clubEditModal');
    const closeClubEditBtn = clubEditModal?.querySelector('.close-modal');
    const clubEditForm = document.getElementById('clubEditForm');
    const clubAvatarInput = document.getElementById('clubAvatarInput');
    const clubAvatarPreview = document.getElementById('clubAvatarPreview');
    const uploadAvatarBtn = document.getElementById('uploadAvatarBtn');
    const editClubIntro = document.getElementById('editClubIntro');
    const editCharCount = document.getElementById('editCharCount');
    const editSuccessModal = document.getElementById('editSuccessModal');
    const closeEditSuccessBtn = editSuccessModal?.querySelector('.close-modal');
    const editSuccessOkBtn = document.getElementById('editSuccessOkBtn');

    // 模拟当前俱乐部信息
    let currentClubInfo = {
      name: '默认俱乐部',
      intro: '这是一个专业的电竞俱乐部，致力于培养优秀的电竞选手。我们提供全方位的培训和支持，帮助选手实现电竞梦想。',
      avatar: '/images/default-club.png'
    };

    // 当前选择的头像文件
    let selectedAvatarFile = null;

    // 1. 打开俱乐部信息编辑弹窗
    window.openClubEditModal = function() {
      // 设置表单默认值
      document.getElementById('editClubName').value = currentClubInfo.name;
      document.getElementById('editClubIntro').value = currentClubInfo.intro;
      editCharCount.textContent = currentClubInfo.intro.length;

      // 设置头像预览
      resetAvatarPreview();

      // 显示弹窗
      if (clubEditModal) {
        clubEditModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      }
    };

    // 2. 重置头像预览
    function resetAvatarPreview() {
      if (clubAvatarPreview) {
        clubAvatarPreview.innerHTML = `
        <div class="default-avatar">
          <span>点击上传头像</span>
        </div>
      `;

        // 添加点击事件
        clubAvatarPreview.addEventListener('click', triggerAvatarInput);
      }
      selectedAvatarFile = null;
    }

    // 3. 触发头像文件选择
    function triggerAvatarInput() {
      if (clubAvatarInput) {
        clubAvatarInput.click();
      }
    }

    // 4. 头像文件选择事件
    if (clubAvatarInput) {
      clubAvatarInput.addEventListener('change', function(event) {
        const file = event.target.files[0];
        if (file) {
          handleAvatarSelection(file);
        }
      });
    }

    // 5. 处理头像选择
    function handleAvatarSelection(file) {
      if (!file.type.startsWith('image/')) {
        alert('请选择图片文件');
        return;
      }

      if (file.size > 5 * 1024 * 1024) { // 5MB限制
        alert('图片大小不能超过5MB');
        return;
      }

      selectedAvatarFile = file;

      // 显示预览
      const reader = new FileReader();
      reader.onload = function(e) {
        if (clubAvatarPreview) {
          clubAvatarPreview.innerHTML = `<img src="${e.target.result}" alt="俱乐部头像预览">`;
          clubAvatarPreview.removeEventListener('click', triggerAvatarInput);
        }
      };
      reader.readAsDataURL(file);
    }

    // 6. 上传头像按钮事件
    if (uploadAvatarBtn) {
      uploadAvatarBtn.addEventListener('click', triggerAvatarInput);
    }

    // 7. 字符计数功能
    if (editClubIntro && editCharCount) {
      editClubIntro.addEventListener('input', function() {
        const currentLength = this.value.length;
        editCharCount.textContent = currentLength;

        // 如果超过限制，截断文本
        if (currentLength > 999) {
          this.value = this.value.substring(0, 999);
          editCharCount.textContent = 999;
        }
      });
    }

    // 8. 关闭俱乐部编辑弹窗
    function closeClubEditModal() {
      if (clubEditModal) {
        clubEditModal.style.display = 'none';
        document.body.style.overflow = 'auto';

        // 重置表单
        clubEditForm.reset();
        resetAvatarPreview();
      }
    }

    // 9. 关闭按钮事件
    if (closeClubEditBtn) {
      closeClubEditBtn.addEventListener('click', closeClubEditModal);
    }

    // 10. 点击弹窗外部关闭
    clubEditModal?.addEventListener('click', function(event) {
      if (event.target === clubEditModal) {
        closeClubEditModal();
      }
    });

    // 11. 表单提交事件
    if (clubEditForm) {
      clubEditForm.addEventListener('submit', function(event) {
        event.preventDefault();

        // 获取表单数据
        const clubName = document.getElementById('editClubName').value.trim();
        const clubIntro = document.getElementById('editClubIntro').value.trim();

        // 表单验证
        let isValid = true;

        // 验证俱乐部名称
        if (!clubName) {
          isValid = false;
          alert('请输入俱乐部名称');
          document.getElementById('editClubName').focus();
          return;
        }

        // 验证俱乐部简介
        if (!clubIntro) {
          isValid = false;
          alert('请输入俱乐部简介');
          document.getElementById('editClubIntro').focus();
          return;
        }

        if (!isValid) return;

        // 显示加载状态
        const submitBtn = clubEditForm.querySelector('.btn-primary');
        const originalText = submitBtn.textContent;
        submitBtn.textContent = '保存中...';
        submitBtn.disabled = true;

        // 模拟网络请求延迟
        setTimeout(() => {
          // 更新俱乐部信息
          currentClubInfo.name = clubName;
          currentClubInfo.intro = clubIntro;

          // 如果有新头像，更新头像信息
          if (selectedAvatarFile) {
            currentClubInfo.avatar = URL.createObjectURL(selectedAvatarFile);
          }

          // 恢复按钮状态
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;

          // 关闭编辑弹窗
          closeClubEditModal();

          // 显示成功提示
          showEditSuccessModal();

          console.log('俱乐部信息更新成功:', currentClubInfo);
        }, 1000);
      });
    }

    // 12. 显示编辑成功提示
    function showEditSuccessModal() {
      if (editSuccessModal) {
        editSuccessModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      }
    }

    // 13. 关闭成功提示弹窗
    function closeEditSuccessModal() {
      if (editSuccessModal) {
        editSuccessModal.style.display = 'none';
        document.body.style.overflow = 'auto';
      }
    }

    // 14. 成功提示弹窗关闭按钮
    if (closeEditSuccessBtn) {
      closeEditSuccessBtn.addEventListener('click', closeEditSuccessModal);
    }

    // 15. 成功提示弹窗确定按钮
    if (editSuccessOkBtn) {
      editSuccessOkBtn.addEventListener('click', closeEditSuccessModal);
    }

    // 16. 点击成功提示弹窗外部关闭
    editSuccessModal?.addEventListener('click', function(event) {
      if (event.target === editSuccessModal) {
        closeEditSuccessModal();
      }
    });

    // 17. 按ESC键关闭弹窗
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape') {
        if (clubEditModal && clubEditModal.style.display === 'flex') {
          closeClubEditModal();
        }
        if (editSuccessModal && editSuccessModal.style.display === 'flex') {
          closeEditSuccessModal();
        }
      }
    });
  });

  // 管理申请功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const manageApplicationsModal = document.getElementById('manageApplicationsModal');
    const closeApplicationsBtn = manageApplicationsModal?.querySelector('.close-modal');
    const applicationsList = document.getElementById('applicationsList');
    const noApplications = document.getElementById('noApplications');
    const applicationSuccessModal = document.getElementById('applicationSuccessModal');
    const closeApplicationSuccessBtn = applicationSuccessModal?.querySelector('.close-modal');
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

        applicationItem.innerHTML = `
        <div class="application-info">
          <div class="application-id">申请人ID: ${application.id}</div>
          <div class="application-nickname">昵称: ${application.nickname}</div>
          <div class="application-details">
            <span class="details-truncated" title="${application.details}">申请详细: ${truncatedDetails}</span>
            <div class="details-full">${application.details}</div>
          </div>
        </div>
        <div class="application-actions">
          <button type="button" class="btn-approve" data-id="${application.id}">同意</button>
          <button type="button" class="btn-reject" data-id="${application.id}">拒绝</button>
        </div>
      `;

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

        // 显示成功提示
        showApplicationSuccessModal(action, application.nickname);

        // 重新生成申请列表
        generateApplicationsList();

        console.log((action === 'approve' ? '同意' : '拒绝') + '申请成功:', application);
      }, 500);
    }

    // 5. 显示申请处理成功提示
    function showApplicationSuccessModal(action, nickname) {
      if (applicationSuccessTitle && applicationSuccessText) {
        if (action === 'approve') {
          applicationSuccessTitle.textContent = '同意申请成功';
          applicationSuccessText.textContent = `已同意"${nickname}"的加入申请！`;
        } else {
          applicationSuccessTitle.textContent = '拒绝申请成功';
          applicationSuccessText.textContent = `已拒绝"${nickname}"的加入申请。`;
        }
      }

      if (applicationSuccessModal) {
        applicationSuccessModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
      }
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
    const closeOrderModalBtn = document.querySelector('#postOrderModal .close-modal');
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
    const closeManageOrderBtn = document.querySelector('#manageOrderModal .close-modal');
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
        manageOrderTitle.textContent = '管理订单 - ' + this.textContent.trim();
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
        const currentOrder = document.querySelector(`.order-item[data-id="${currentOrderId}"]`);
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
          const currentOrder = document.querySelector(`.order-item[data-id="${currentOrderId}"]`);
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
    const closePersonalModalBtn = document.querySelector('#personalCenterModal .close-modal');
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
    const closeWalletModalBtn = document.querySelector('#walletModal .close-modal');
    const walletForm = document.getElementById('walletForm');
    const amountOptions = document.querySelectorAll('.amount-option');
    const customAmountInput = document.getElementById('customAmount');
    const balanceAmount = document.querySelector('.balance-amount');

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
        const submitBtn = this.querySelector('.btn-primary');
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

  // 用户注册弹窗功能
  document.addEventListener('DOMContentLoaded', function() {
    // 获取DOM元素
    const registerBtn = document.getElementById('registerBtn');
    const registerModal = document.getElementById('registerModal');
    const closeRegisterModalBtn = document.querySelector('#registerModal .close-modal');
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
    const closeSecurityModalBtn = document.querySelector('#securityCenterModal .close-modal');
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
        indicator.style.backgroundColor = '#007bff';
        indicator.style.borderColor = '#007bff';
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
  * {
    margin: 0;
    padding: 0;
  }
  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url('/images/background.png'); /* 替换为您的背景图片路径 */
    background-size: cover; /* 背景图片覆盖整个页面 */
    background-position: center; /* 背景图片居中 */
    background-repeat: no-repeat; /* 不重复背景图片 */
    background-attachment: fixed; /* 背景图片固定不滚动 */
    color: #ffffff;
  }
  .container {
    margin: 0 auto;
    padding: 20px;
  }
  .main-content {
    display: grid;
    grid-template-columns: 1fr 2fr 1fr;
    position: relative;
    gap: 20px;
    margin: 10px 80px;
    padding: 10px 10px;
  }
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
  .club-card:hover {
    transform: translate3d(5px, 5px, 0);
    box-shadow: 0 15px 40px rgba(0,0,0,0.3);
  }
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
  .club-features {
    list-style: none;
    display: grid;
    grid-template-columns: 1fr;
    gap: 20px; /* 适中网格间距 */
    flex-grow: 1;
    overflow-y: auto;
  }
  /* Webkit browsers (Chrome, Safari) */
  .club-features::-webkit-scrollbar {
    display: none;
  }
  .club-card-name {
    font-size: 1.2rem; /* 适中字体大小 */
    font-weight: bold;
    margin-top: 2%;
  }
  .club-card-intro {
    font-size: 0.8rem; /* 适中字体大小 */
    margin-top: 2%;
    color: #007bff;
  }
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
    border-radius: 25px;
    border-radius: 0 16px 16px 16px;
    border: 5px solid #000000; /* 使用简写属性 */
    background-color: #000000;
  }
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
  /* 搜索框容器 */
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
  /* 搜索输入框 */
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

  .club-search-input::placeholder {
    color: #888888;
    font-size: 0.8rem;
  }
  /* 搜索按钮 */
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

  .club-search-btn:hover {
    font-weight: bold;
    background-color: #FEDE00;
    color: #000000;
    border-color: #000;
    border-radius: 0px 16px 16px 16px;
    border: 5px solid #FEDE00; /* 使用简写属性 */
    cursor: pointer;

  }

  .club-btn-con {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-shrink: 0;
    margin-top: 0%;
    margin-bottom: 0%;
  }
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
  .order-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 40px rgba(0,0,0,0.3);
  }
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
  .order-features {
    list-style: none;
    display: grid;
    grid-template-columns: 1fr;
    gap: 20px;
    flex-grow: 1;
    overflow-y: auto;
  }
  .order-features::-webkit-scrollbar {
    display: none;
  }
  .order-card-name {
    font-size: 1.2rem;
    font-weight: bold;
    margin-top: 2%;
  }
  .order-card-intro {
    font-size: 0.8rem;
    margin-top: 2%;
    color: #007bff;
  }
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
    border-radius: 25px;
    border-radius: 0 16px 16px 16px;
    border: 5px solid #000000;
    background-color: #000000;
  }
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
  /* 订单搜索框容器 */
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
  /* 订单搜索输入框 */
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

  .order-search-input::placeholder {
    color: #888888;
    font-size: 0.8rem;
  }
  /* 订单搜索按钮 */
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

  .order-search-btn:hover {
    font-weight: bold;
    background-color: #FEDE00;
    color: #000000;
    border-color: #000;
    border-radius: 0 16px 16px 16px;
    border: 5px solid #FEDE00;
    cursor: pointer;
  }

  .order-btn-con {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-shrink: 0;
    margin-top: 0%;
    margin-bottom: 0%;
  }
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

  .admin-card {
    background: #222222;
    border-radius: 0 16px 16px 16px;
    border: 5px solid #000000; /* 使用简写属性 */
    padding: 20px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    height: 480px;
    min-width: 600px;
  }
  .admin-card:hover {
    transform: translate3d(5px, 5px, 0);
    box-shadow: 0 15px 40px rgba(0,0,0,0.3);
  }
  .admin-card h1 {
    color: #ffffff;
    margin-bottom: 3%;
    margin-left: 2%;
    font-size: 1.8rem;
    font-weight: bold;
    text-align: left;
  }
  .admin-card-2{
    display: flex;
    justify-content: flex-start;
    gap: 20px;
    height: 280px;
    padding: 10px 10px;
  }
  .login-left{
    flex: 1.5;
    border-right: 2px solid rgba(0, 0, 0, 0.4);
    padding-right: 2%;
    padding-left: 2%;
  }

  .form-group{
    margin-bottom: 2%;
  }
  .form-label-1{
    color: #007bff;
    font-size: 1rem;
    font-weight: bold;
    text-align: left;
  }
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
  .form-input:focus{
    outline: none;
  }
  .remember-me{
    margin-bottom: 10px;
    margin-top: 5px;
    display: flex;
    align-items: center;

  }
  .remember-me input[type="checkbox"] {
    width: 20px;
    height: 20px;
    vertical-align: middle;
    cursor: pointer;
    accent-color: #000000;
  }
  .remember-me input[type="checkbox"]:checked {
    background-color: #000000;
    color: #ffffff;
  }

  .remember-label{
    font-size: 1rem;
    margin-left: 5px;
  }
  .login-btn-con{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 12%;
  }
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
  .login-btn:hover {
    font-weight: bold;
    transform: scale(1.05);
    background-color: #FEDE00;
    color: #000000;
    border-color: #000;
    border-radius: 0 16px 16px 16px;
    border: 5px solid #000000; /* 使用简写属性 */
    cursor: pointer;
  }
  .register{
    flex: 1;
    display: flex;
    height: 8%;
    margin-top: 4.5%;
    margin-left: -5%;
  }
  .register-link{
    font-size: 0.9rem;
    color: #007bff;
    text-decoration: none;
  }
  .register-link:hover {
    text-decoration: underline;
  }
  .search-container {
    display: flex;
    justify-content: center;
    margin-top: 30px;
  }
  .search-box {
    display: flex;
    width: 60%;
    max-width: 600px;
  }
  .search-input {
    flex: 1;
    padding: 12px 20px;
    border: none;
    border-radius: 25px 0 0 25px;
    font-size: 1rem;
    outline: none;
  }
  .search-btn {
    padding: 12px 30px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border: none;
    border-radius: 0 25px 25px 0;
    font-size: 1rem;
    font-weight: bold;
    cursor: pointer;
    transition: all 0.3s ease;
  }
  .search-btn:hover {
    background: linear-gradient(135deg, #764ba2 0%, #667eea 100%);
  }


  /* 主容器样式 */
  .login-right {
    flex: 1;
    background-color: #222222;
  }
  /* 按钮容器 */
  .center-btn-con {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    width: 20%;
    margin-left: 5%;
    column-gap: 50%;  /* 水平间隙 */
    row-gap: 30px;     /* 垂直间隙 */
  }
  /* 按钮样式 */
  .center-btn {
    width: 100%;
    height: 90%;
    padding-top: 10%;
    padding-bottom: 10%;
    padding-left: 20%;
    padding-right: 20%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: #000000;
    border-radius: 12px;
    text-decoration: none;
    color: white;
    transition: all 0.3s ease;
    border: none;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  }
  /* 按钮悬停效果 */
  .center-btn:hover {
    transform: translateY(-5px);
  }
  /* 图标样式 */
  .btn-icon {
    width: 60px;
    height: 60px;
    margin-bottom: 12px;
    filter: brightness(0) invert(1); /* 将图标变为白色 */
  }
  /* 文字样式 */
  .btn-text {
    font-size: 0.9rem;
    font-weight: 600;
    text-align: center;
    font-family: 'PingFang SC', 'Microsoft YaHei', sans-serif;
  }





  /* 弹窗遮罩层样式 */
  .modal {
    display: none; /* 默认隐藏 */
    position: fixed;
    z-index: 1000;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* 半透明黑色背景 */
    justify-content: center;
    align-items: center;
  }

  /* 弹窗内容框样式 */
  .modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border-radius: 8px;
    width: 90%;
    max-width: 500px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    animation: modalopen 0.3s;
  }

  @keyframes modalopen {
    from { opacity: 0; transform: translateY(-20px);}
    to { opacity: 1; transform: translateY(0);}
  }

  /* 弹窗头部 */
  .modal-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px 24px;
    border-bottom: 1px solid #eee;
  }
  .modal-header h2 {
    margin: 0;
    font-size: 1.5rem;
    color: #333;
  }
  .close-modal {
    color: #aaa;
    font-size: 28px;
    font-weight: bold;
    cursor: pointer;
    line-height: 1;
  }
  .close-modal:hover,
  .close-modal:focus {
    color: #000;
    text-decoration: none;
  }

  /* 弹窗主体 */
  .modal-body {
    padding: 24px;
  }

  /* 表单样式 */
  .form-group-club {
    margin-bottom: 20px;
  }
  .form-group-club label {
    display: block;
    margin-bottom: 8px;
    margin-left: 0;
    font-weight: 600;
    color: #555;
    text-align: left; /* 将标签文字改为左对齐 */
  }

  /* 钱包对话框中的标签特殊样式 */
  #walletModal .form-group-club label {
    margin-left: 0;
    padding-left: 0;
  }
  .form-group-club input[type="text"],
  .form-group-club textarea {
    width: 100%;
    padding: 10px 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1rem;
    box-sizing: border-box; /* 确保宽度包含padding */
    resize: none;
  }
  .form-group-club input[type="text"],
  .form-group-club input[type="password"],
  .form-group-club textarea {
    width: 100%; /* 保持100%宽度，但容器已居中 */
    max-width: 400px; /* 可以设置最大宽度，使其不会太宽 */
    padding: 10px 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1rem;
    box-sizing: border-box;
    margin: 0 auto; /* 使输入框在容器内水平居中 */
    display: block; /* 使 margin:auto 生效 */
    outline: none;
  }

  /* 表单按钮区 */
  .form-actions {
    display: flex;
    justify-content: center;
  }

  /* 选择框样式 */
  .form-group-club select {
    width: 100%;
    max-width: 400px;
    padding: 10px 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1rem;
    box-sizing: border-box;
    margin: 0 auto;
    display: block;
    outline: none;
    background-color: white;
    cursor: pointer;
  }

  .form-group-club select:focus {
    border-color: #667eea;
    box-shadow: 0 0 0 2px rgba(102, 126, 234, 0.2);
  }

  /* 字符计数器样式 */
  .char-count {
    text-align: right;
    font-size: 0.875rem;
    color: #666;
    margin-top: 5px;
  }

  .char-count.warning {
    color: #ff6b6b;
  }

  /* 数字输入框样式 */
  .form-group-club input[type="number"] {
    width: 100%;
    max-width: 400px;
    padding: 10px 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1rem;
    box-sizing: border-box;
    margin: 0 auto;
    display: block;
    outline: none;
  }

  .form-group-club input[type="number"]:focus {
    border-color: #667eea;
    box-shadow: 0 0 0 2px rgba(102, 126, 234, 0.2);
    gap: 12px;
    margin-top: 30px;
  }
  .btn {
    padding: 10px 24px;
    border: none;
    border-radius: 4px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.2s;
  }
  .btn-primary {
    padding: 12px 40px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
  }
  .btn-primary:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
  }
  .btn-secondary {
    background-color: #f0f0f0;
    color: #333;
  }
  .btn-secondary:hover {
    background-color: #e0e0e0;
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

  .avatar-upload-group {
    text-align: center; /* 使标签文字居中 */
  }

  .avatar-upload-container {
    margin-top: 8px;
    display: flex;
    flex-direction: column;
    align-items: center; /* 使子元素水平居中 */
  }
  .avatar-preview {
    width: 120px;
    height: 120px;
    border: 2px dashed #ccc;
    border-radius: 8px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center; /* 确保内部元素居中 */
    cursor: pointer;
    overflow: hidden;
    margin: 0 auto 12px; /* 上下居中，左右自动（水平居中） */
    background-color: #f9f9f9;
    transition: border-color 0.3s;
  }

  .avatar-preview:hover {
    border-color: #4A90E2;
    background-color: #f0f7ff;
  }

  .avatar-preview .default-avatar {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 8px;
    color: #666;
  }

  .avatar-preview .default-avatar span {
    font-size: 0.85rem;
    text-align: center;
    max-width: 100px;
  }

  .avatar-preview img {
    width: 100%
  }

  /* 打手管理弹窗样式 */
  .fighter-management-container {
    max-width: 800px;
    margin: 0 auto;
  }

  .fighter-info-header {
    text-align: center;
    margin-bottom: 20px;
    padding-bottom: 15px;
    border-bottom: 1px solid #eee;
  }

  .fighter-info-header h3 {
    font-size: 1.5rem;
    color: #333;
    margin: 0;
  }

  .fighter-orders-section {
    margin-bottom: 30px;
  }

  .fighter-orders-section h4 {
    font-size: 1.2rem;
    color: #555;
    margin-bottom: 15px;
    text-align: center;
  }

  .orders-table-container {
    max-height: 300px;
    overflow-y: auto;
    border: 1px solid #ddd;
    border-radius: 8px;
    background: #f9f9f9;
  }

  .orders-table {
    width: 100%;
    border-collapse: collapse;
    background: white;
  }

  .orders-table th,
  .orders-table td {
    padding: 12px 15px;
    text-align: center;
    border-bottom: 1px solid #eee;
  }

  .orders-table th {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    font-weight: 600;
    position: sticky;
    top: 0;
    z-index: 1;
  }

  .orders-table tr:hover {
    background-color: #f5f5f5;
  }

  .orders-table tr:last-child td {
    border-bottom: none;
  }

  .fighter-management-actions {
    text-align: center;
    padding-top: 20px;
    border-top: 1px solid #eee;
  }

  .btn-danger {
    background: linear-gradient(135deg, #ff6b6b 0%, #ee5a52 100%);
    color: white;
    border: none;
    border-radius: 25px;
    padding: 12px 30px;
    font-size: 16px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(255, 107, 107, 0.3);
  }

  .btn-danger:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(255, 107, 107, 0.4);
  }

  /* 确认弹窗样式 */
  .confirm-modal {
    max-width: 400px;
  }

  .confirm-message {
    text-align: center;
    margin-bottom: 25px;
  }

  .confirm-message p {
    font-size: 1.1rem;
    color: #555;
    line-height: 1.5;
  }

  .confirm-actions {
    display: flex;
    justify-content: center;
    gap: 20px;
  }

  .confirm-actions .btn {
    min-width: 80px;
  }

  /* 管理申请弹窗样式 */
  .applications-container {
    max-width: 600px;
    margin: 0 auto;
  }

  .applications-container h3 {
    text-align: center;
    font-size: 1.3rem;
    color: #333;
    margin-bottom: 20px;
    padding-bottom: 10px;
    border-bottom: 1px solid #eee;
  }

  .applications-list {
    max-height: 400px;
    overflow-y: auto;
    border: 1px solid #ddd;
    border-radius: 8px;
    background: #f9f9f9;
  }

  .application-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 20px;
    border-bottom: 1px solid #eee;
    background: white;
    transition: background-color 0.3s ease;
  }

  .application-item:last-child {
    border-bottom: none;
  }

  .application-item:hover {
    background-color: #f5f5f5;
  }

  .application-info {
    flex: 1;
    display: flex;
    flex-direction: column;
    gap: 8px;
  }

  .application-id {
    font-weight: 600;
    color: #333;
    font-size: 1rem;
  }

  .application-nickname {
    color: #666;
    font-size: 0.95rem;
  }

  .application-details {
    color: #888;
    font-size: 0.9rem;
    line-height: 1.4;
    position: relative;
  }

  .details-truncated {
    display: inline-block;
    max-width: 200px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    cursor: help;
  }

  .details-full {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    background: #333;
    color: white;
    padding: 8px 12px;
    border-radius: 4px;
    font-size: 0.85rem;
    white-space: normal;
    width: 250px;
    z-index: 1000;
    box-shadow: 0 2px 8px rgba(0,0,0,0.3);
  }

  .details-truncated:hover + .details-full {
    display: block;
  }

  .application-actions {
    display: flex;
    gap: 10px;
    margin-left: 20px;
  }

  .btn-approve {
    background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
    color: white;
    border: none;
    border-radius: 20px;
    padding: 8px 16px;
    font-size: 0.9rem;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 2px 8px rgba(40, 167, 69, 0.3);
  }

  .btn-approve:hover {
    transform: scale(1.05);
    box-shadow: 0 3px 12px rgba(40, 167, 69, 0.4);
  }

  .btn-reject {
    background: linear-gradient(135deg, #dc3545 0%, #c82333 100%);
    color: white;
    border: none;
    border-radius: 20px;
    padding: 8px 16px;
    font-size: 0.9rem;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 2px 8px rgba(220, 53, 69, 0.3);
  }

  .btn-reject:hover {
    transform: scale(1.05);
    box-shadow: 0 3px 12px rgba(220, 53, 69, 0.4);
  }

  .no-applications {
    text-align: center;
    padding: 40px 20px;
    color: #999;
    font-size: 1.1rem;
  }

  .no-applications p {
    margin: 0;
  }

  /* 打手网格样式增强 */
  .fighter-item {
    cursor: pointer;
    transition: all 0.3s ease;
  }

  .fighter-item:hover {
    transform: scale(1.05);
    background-color: #f0f7ff;
  }

  .fighter-item.selected {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);

    height: 100%;
    object-fit: cover;
    border-radius: 6px;
  }

  .avatar-controls {
    display: flex;
    gap: 10px;
    margin-bottom: 8px;
    justify-content: center; /* 使按钮居中 */
  }

  .btn-upload {
    display: inline-block;
    padding: 8px 16px;
    background-color: #4A90E2;
    color: white;
    border-radius: 4px;
    cursor: pointer;
    font-size: 0.9rem;
    transition: background-color 0.2s;
  }

  .btn-upload:hover {
    background-color: #3a7bc8;
  }

  .btn-remove {
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

  .btn-remove:hover {
    background-color: #e0e0e0;
    color: #333;
  }

  .avatar-hint {
    font-size: 0.8rem;
    color: #888;
    line-height: 1.4;
    margin-bottom: 4px;
    text-align: center; /* 使提示文字居中 */
  }

  .avatar-error {
    font-size: 0.85rem;
    color: #e74c3c;
    margin-top: 4px;
    padding: 6px 10px;
    background-color: #fdf0f0;
    border-radius: 4px;
    border-left: 3px solid #e74c3c;
  }
  .club-features li.club-item:hover::before {
    opacity: 1;
  }

  /* 俱乐部详情弹窗样式 */
  .club-modal {
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

  .club-modal-content {
    background-color: #fff;
    border-radius: 12px;
    width: 90%;
    max-width: 500px;
    max-height: 90vh;
    overflow-y: auto;
    position: relative;
    animation: modalopen 0.3s;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
  }

  .club-close-modal {
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
  .club-close-modal:hover,
  .club-close-modal:focus {
    color: #000;
    text-decoration: none;
  }



  .club-modal-body {
    padding: 30px;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
  }

  /* 俱乐部头像样式 */
  .club-avatar-container {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    overflow: hidden;
    border: 4px solid #fff;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    /* 移除固定背景色，让图片正常显示 */
    background: transparent;
  }

  .club-avatar {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  /* 俱乐部名称样式 */
  .club-name {
    font-size: 24px;
    font-weight: 600;
    color: #333;
    margin-bottom: 20px;
    text-align: center;
    width: 100%;
  }

  /* 俱乐部简介样式 */
  .club-intro-container {
    width: 100%;
    margin-bottom: 30px;
    text-align: center;
  }

  .club-intro-container h3 {
    font-size: 18px;
    font-weight: 500;
    color: #666;
    margin-bottom: 10px;
    text-align: center;
  }

  .club-intro {
    font-size: 16px;
    line-height: 1.6;
    color: #555;
    padding: 15px;
    background-color: #f9f9f9;
    border-radius: 8px;
    text-align: left;
    max-height: 200px;
    overflow-y: auto;
  }

  /* 申请表单样式 */
  .club-apply-form {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  .from-grop-apply {
    width: 100%;
    margin-bottom: 25px;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  .from-grop-apply label {
    display: block;
    font-size: 16px;
    font-weight: 500;
    color: #333;
    margin-bottom: 10px;
    text-align: center;
    width: 100%;
  }

  .from-grop-apply textarea {
    width: 100%;
    max-width: 400px;
    padding: 12px 15px;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    font-size: 16px;
    font-family: inherit;
    resize: vertical;
    min-height: 100px;
    transition: all 0.3s ease;
    box-sizing: border-box;
  }

  .from-grop-apply textarea:focus {
    outline: none;
    border-color: #4A90E2;
    box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.1);
  }

  /* 发送按钮样式 */
  .apply-actions {
    width: 100%;
    display: flex;
    justify-content: center;
    margin-top: 10px;
  }

  .apply-btn {
    padding: 12px 40px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
  }

  .apply-btn:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
  }

  /* 管理订单表单样式 */
  .from-grop-apply input[type="text"],
  .from-grop-apply input[type="number"],
  .from-grop-apply select {
    width: 100%;
    max-width: 400px;
    padding: 12px 15px;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    font-size: 16px;
    box-sizing: border-box;
    transition: all 0.3s ease;
    outline: none;
  }

  .from-grop-apply input[type="text"]:focus,
  .from-grop-apply input[type="number"]:focus,
  .from-grop-apply select:focus {
    border-color: #4A90E2;
    box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.1);
  }

  .from-grop-apply select {
    background-color: white;
    cursor: pointer;
  }

  /* 管理订单按钮区域 */
  .apply-actions {
    width: 100%;
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 10px;
  }

  /* 删除按钮样式 */
  .delete-btn {
    background: linear-gradient(135deg, #ff6b6b 0%, #ee5a52 100%) !important;
    box-shadow: 0 4px 15px rgba(255, 107, 107, 0.3) !important;
  }

  .delete-btn:hover {
    transform: scale(1.05) !important;
    box-shadow: 0 6px 20px rgba(255, 107, 107, 0.4) !important;
  }

  /* 订单项点击样式 */
  .order-item {
    cursor: pointer;
    transition: all 0.3s ease;
  }

  .order-item:hover {
    background-color: #f5f5f5;
    transform: translateY(-1px);
  }

  /* 钱包余额样式 */
  .wallet-balance {
    text-align: center;
    margin-bottom: 30px;
    padding: 20px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    border-radius: 12px;
    color: white;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
  }

  .balance-label {
    font-size: 1rem;
    opacity: 0.9;
    margin-bottom: 8px;
  }

  .balance-amount {
    font-size: 2.5rem;
    font-weight: bold;
    line-height: 1;
  }

  /* 充值金额选项样式 */
  .amount-options {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 12px;
    margin-bottom: 15px;
  }

  .amount-option {
    padding: 12px 8px;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    background: white;
    cursor: pointer;
    font-size: 0.95rem;
    font-weight: 500;
    transition: all 0.3s ease;
    text-align: center;
  }

  .amount-option:hover {
    border-color: #667eea;
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(102, 126, 234, 0.2);
  }

  .amount-option.active {
    border-color: #667eea;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
  }

  /* 自定义金额样式 */
  .custom-amount {
    margin-top: 10px;
  }

  .custom-amount input {
    width: 100%;
    min-width: 450px;
    padding: 12px 15px;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    font-size: 1rem;
    box-sizing: border-box;
    transition: all 0.3s ease;
    outline: none;
  }

  .custom-amount input:focus {
    border-color: #667eea;
    box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
  }

  /* 支付方式选择框样式 */
  #paymentMethod {
    width: 100%;
    max-width: 500px;
    padding: 12px 15px;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    font-size: 1rem;
    box-sizing: border-box;
    transition: all 0.3s ease;
    outline: none;
    background-color: white;
    cursor: pointer;
  }

  #paymentMethod:focus {
    border-color: #667eea;
    box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
  }

  /* 响应式设计 */
  @media (max-width: 768px) {
    .amount-options {
      grid-template-columns: repeat(2, 1fr);
    }

    .balance-amount {
      font-size: 2rem;
    }

    .wallet-balance {
      padding: 15px;
      margin-bottom: 20px;
    }
  }


  .apply-btn:active {
    transform: translateY(0);
  }

  /* 滚动条样式 */
  .club-modal-content::-webkit-scrollbar,
  .club-intro::-webkit-scrollbar {
    width: 6px;
  }

  .club-modal-content::-webkit-scrollbar-track,
  .club-intro::-webkit-scrollbar-track {
    background: #f1f1f1;
    border-radius: 3px;
  }

  .club-modal-content::-webkit-scrollbar-thumb,
  .club-intro::-webkit-scrollbar-thumb {
    background: #c1c1c1;
    border-radius: 3px;
  }

  .club-modal-content::-webkit-scrollbar-thumb:hover,
  .club-intro::-webkit-scrollbar-thumb:hover {
    background: #a1a1a1;
  }

  /* 动画 */
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



  .btn-remove:hover {
    background-color: #dc3545;
  }

  /* 修改密码样式 */
  .modal-body-center {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  .security-center-header {
    text-align: center;
    margin-bottom: 20px;
  }

  .security-title {
    font-size: 1.2rem;
    color: #333;
    margin-bottom: 8px;
  }

  .security-subtitle {
    font-size: 0.9rem;
    color: #666;
  }

  .security-form-group {
    width: 100%;
    max-width: 400px;
  }

  .text-align-left {
    text-align: left;
  }

  .password-requirements-container {
    width: 100%;
    max-width: 400px;
    margin-bottom: 20px;
  }

  .password-requirement-item {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
  }

  .requirement-indicator {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    border: 2px solid #ccc;
    margin-right: 10px;
    transition: all 0.3s ease;
  }

  .requirement-text {
    font-size: 0.9rem;
    color: #666;
    line-height: 50%;
  }

  .security-form-actions {
    width: 100%;
    max-width: 400px;
  }

  .btn-full-width {
    width: 100%;
  }

  .hidden {
    display: none;
  }

  /* 俱乐部管理弹窗样式 */
  .club-management-container {
    width: 100%;
    max-width: 600px;
    margin: 0 auto;
  }

  .fighters-grid-container {
    margin-bottom: 30px;
  }

  .fighters-title {
    font-size: 1.2rem;
    color: #333;
    margin-bottom: 15px;
    text-align: center;
  }

  .fighters-grid-wrapper {
    max-height: 300px;
    overflow-y: auto;
    border: 1px solid #e0e0e0;
    border-radius: 8px;
    padding: 15px;
    background-color: #f9f9f9;
  }

  .fighters-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 10px;
  }

  .fighter-item {
    padding: 12px 15px;
    background: white;
    border: 1px solid #ddd;
    border-radius: 6px;
    cursor: pointer;
    transition: all 0.3s ease;
    text-align: center;
    font-size: 0.9rem;
    color: #333;
  }

  .fighter-item:hover {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(102, 126, 234, 0.3);
  }

  .fighter-item.selected {
    background: linear-gradient(135deg, #4CAF50 0%, #45a049 100%);
    color: white;
    border-color: #4CAF50;
  }

  .management-actions {
    display: flex;
    justify-content: center;
    gap: 15px;
    margin-top: 20px;
  }

  .btn-secondary {
    padding: 12px 40px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
  }

  .btn-secondary:hover {
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
  }
</style>
</html>