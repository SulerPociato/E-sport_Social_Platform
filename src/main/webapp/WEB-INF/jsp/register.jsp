<%--
  Created by IntelliJ IDEA.
  User: 24789
  Date: 2026/3/11
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/head.jsp"%>

<html lang="zh-CN">
<head>
  <title>注册 - 游戏陪玩平台</title>
  <meta charset="UTF-8">
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
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }
    .register-container {
      background: white;
      border-radius: 20px;
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 500px;
      padding: 40px;
      position: relative;
    }
    .back-btn {
      position: absolute;
      top: 20px;
      left: 20px;
      background: none;
      border: none;
      font-size: 1.2rem;
      color: #667eea;
      cursor: pointer;
      padding: 5px;
    }
    .register-header {
      text-align: center;
      margin-bottom: 30px;
      margin-top: 10px;
    }
    .register-header h1 {
      color: #667eea;
      font-size: 2rem;
      margin-bottom: 10px;
    }
    .register-header p {
      color: #666;
      font-size: 0.9rem;
    }
    .form-group {
      margin-bottom: 20px;
      position: relative;
    }
    .form-group label {
      display: block;
      margin-bottom: 8px;
      color: #333;
      font-weight: 500;
      font-size: 0.9rem;
    }
    .form-control {
      width: 100%;
      padding: 12px 15px;
      border: 2px solid #e1e5e9;
      border-radius: 10px;
      font-size: 1rem;
      transition: all 0.3s ease;
    }
    .form-control:focus {
      outline: none;
      border-color: #667eea;
      box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
    }
    .form-control.error {
      border-color: #e74c3c;
    }
    .form-control.success {
      border-color: #28a745;
    }
    .input-group {
      display: flex;
      gap: 10px;
    }
    .input-group .form-control {
      flex: 1;
    }
    .captcha-btn {
      background: #667eea;
      color: white;
      border: none;
      border-radius: 8px;
      padding: 0 15px;
      cursor: pointer;
      font-size: 0.9rem;
      white-space: nowrap;
      transition: background 0.3s ease;
    }
    .captcha-btn:hover:not(:disabled) {
      background: #5a6fd8;
    }
    .captcha-btn:disabled {
      background: #ccc;
      cursor: not-allowed;
    }
    .checkbox-group {
      display: flex;
      align-items: flex-start;
      gap: 10px;
      margin-bottom: 20px;
    }
    .checkbox-group input[type="checkbox"] {
      margin-top: 3px;
    }
    .checkbox-group label {
      font-size: 0.9rem;
      color: #666;
      line-height: 1.4;
    }
    .checkbox-group a {
      color: #667eea;
      text-decoration: none;
    }
    .checkbox-group a:hover {
      text-decoration: underline;
    }
    .btn-register {
      width: 100%;
      padding: 14px;
      background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
      color: white;
      border: none;
      border-radius: 10px;
      font-size: 1rem;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s ease;
    }
    .btn-register:hover:not(:disabled) {
      transform: translateY(-2px);
      box-shadow: 0 5px 15px rgba(40, 167, 69, 0.3);
    }
    .btn-register:disabled {
      background: #ccc;
      cursor: not-allowed;
      transform: none;
    }
    .register-footer {
      text-align: center;
      margin-top: 25px;
      padding-top: 20px;
      border-top: 1px solid #e1e5e9;
    }
    .register-footer a {
      color: #667eea;
      text-decoration: none;
      font-weight: 500;
    }
    .register-footer a:hover {
      text-decoration: underline;
    }
    .error-message {
      color: #e74c3c;
      font-size: 0.8rem;
      margin-top: 5px;
      display: none;
    }
    .success-message {
      color: #28a745;
      font-size: 0.8rem;
      margin-top: 5px;
      display: none;
    }
    .password-strength {
      height: 4px;
      background: #e1e5e9;
      border-radius: 2px;
      margin-top: 8px;
      overflow: hidden;
    }
    .password-strength-bar {
      height: 100%;
      width: 0%;
      transition: all 0.3s ease;
    }
    .password-hint {
      font-size: 0.8rem;
      color: #666;
      margin-top: 5px;
    }
    .progress-steps {
      display: flex;
      justify-content: space-between;
      margin-bottom: 30px;
      position: relative;
    }
    .progress-steps:before {
      content: '';
      position: absolute;
      top: 15px;
      left: 0;
      right: 0;
      height: 2px;
      background: #e1e5e9;
      z-index: 1;
    }
    .step {
      display: flex;
      flex-direction: column;
      align-items: center;
      position: relative;
      z-index: 2;
    }
    .step-circle {
      width: 30px;
      height: 30px;
      border-radius: 50%;
      background: #e1e5e9;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 0.9rem;
      font-weight: bold;
      color: #666;
      margin-bottom: 8px;
      transition: all 0.3s ease;
    }
    .step.active .step-circle {
      background: #667eea;
      color: white;
    }
    .step-label {
      font-size: 0.8rem;
      color: #666;
    }
    .step.active .step-label {
      color: #667eea;
      font-weight: 500;
    }
    @media (max-width: 480px) {
      .register-container {
        padding: 30px 20px;
      }
      .input-group {
        flex-direction: column;
      }
    }
  </style>
</head>
<body>
  <div class="register-container">
    <button class="back-btn" onclick="window.history.back()">← 返回</button>
    
    <div class="register-header">
      <h1>创建账户</h1>
      <p>加入游戏陪玩平台，开启您的游戏之旅</p>
    </div>
    
    <!-- 进度指示器 -->
    <div class="progress-steps">
      <div class="step active">
        <div class="step-circle">1</div>
        <div class="step-label">基本信息</div>
      </div>
      <div class="step">
        <div class="step-circle">2</div>
        <div class="step-label">详细信息</div>
      </div>
      <div class="step">
        <div class="step-circle">3</div>
        <div class="step-label">完成</div>
      </div>
    </div>
    
    <form id="registerForm" action="${basePath}user/register" method="post">
      <!-- 基本信息 -->
      <div class="form-group">
        <label for="username">用户名 *</label>
        <input type="text" id="username" name="username" class="form-control" 
               placeholder="请输入3-20位字母、数字或下划线" required>
        <div class="error-message" id="usernameError"></div>
        <div class="success-message" id="usernameSuccess"></div>
      </div>
      
      <div class="form-group">
        <label for="password">密码 *</label>
        <input type="password" id="password" name="password" class="form-control" 
               placeholder="请输入6-20位密码" required>
        <div class="password-strength">
          <div class="password-strength-bar" id="passwordStrength"></div>
        </div>
        <div class="password-hint">密码应包含字母、数字，建议使用大小写混合</div>
        <div class="error-message" id="passwordError"></div>
      </div>
      
      <div class="form-group">
        <label for="confirmPassword">确认密码 *</label>
        <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" 
               placeholder="请再次输入密码" required>
        <div class="error-message" id="confirmPasswordError"></div>
      </div>
      

      
      <!-- 服务条款 -->
      <div class="checkbox-group">
        <input type="checkbox" id="agreeTerms" name="agreeTerms" required>
        <label for="agreeTerms">
          我已阅读并同意 <a href="#" onclick="showTerms()">《用户服务协议》</a> 和 
          <a href="#" onclick="showPrivacy()">《隐私政策》</a>
        </label>
      </div>
      
      <button type="submit" class="btn-register" id="registerBtn" disabled>注册账户</button>
    </form>
    
    <div class="register-footer">
      <p>已有账户？ <a href="${basePath}user/login">立即登录</a></p>
    </div>
  </div>

  <script>
    // 表单元素
    const form = document.getElementById('registerForm');
    const usernameInput = document.getElementById('username');
    const emailInput = document.getElementById('email');
    const phoneInput = document.getElementById('phone');
    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirmPassword');
    const captchaInput = document.getElementById('captcha');
    const agreeTermsCheckbox = document.getElementById('agreeTerms');
    const registerBtn = document.getElementById('registerBtn');
    const sendCaptchaBtn = document.getElementById('sendCaptcha');
    
    // 验证状态
    let validationState = {
      username: false,
      email: false,
      password: false,
      confirmPassword: false,
      captcha: false,
      terms: false
    };
    
    // 密码强度检测
    passwordInput.addEventListener('input', function() {
      const password = this.value;
      const strengthBar = document.getElementById('passwordStrength');
      let strength = 0;
      
      // 长度检查
      if (password.length >= 8) strength += 25;
      // 小写字母
      if (/[a-z]/.test(password)) strength += 25;
      // 大写字母
      if (/[A-Z]/.test(password)) strength += 25;
      // 数字
      if (/[0-9]/.test(password)) strength += 25;
      
      strengthBar.style.width = strength + '%';
      
      // 颜色设置
      if (strength < 50) {
        strengthBar.style.background = '#e74c3c';
      } else if (strength < 75) {
        strengthBar.style.background = '#f39c12';
      } else {
        strengthBar.style.background = '#28a745';
      }
      
      validatePassword();
      updateRegisterButton();
    });
    
    // 用户名验证
    usernameInput.addEventListener('blur', validateUsername);
    usernameInput.addEventListener('input', function() {
      clearValidation(this);
      updateRegisterButton();
    });
    
    // 邮箱验证
    emailInput.addEventListener('blur', validateEmail);
    emailInput.addEventListener('input', function() {
      clearValidation(this);
      updateRegisterButton();
    });
    
    // 手机号验证
    phoneInput.addEventListener('blur', validatePhone);
    phoneInput.addEventListener('input', function() {
      clearValidation(this);
    });
    
    // 确认密码验证
    confirmPasswordInput.addEventListener('input', validateConfirmPassword);
    
    // 验证码验证
    captchaInput.addEventListener('input', validateCaptcha);
    
    // 服务条款
    agreeTermsCheckbox.addEventListener('change', function() {
      validationState.terms = this.checked;
      updateRegisterButton();
    });
    
    // 发送验证码
    sendCaptchaBtn.addEventListener('click', sendCaptcha);
    
    // 表单提交
    form.addEventListener('submit', handleSubmit);
    
    // 验证函数
    function validateUsername() {
      const username = usernameInput.value.trim();
      const errorEl = document.getElementById('usernameError');
      const successEl = document.getElementById('usernameSuccess');
      
      clearValidation(usernameInput);
      
      if (username === '') {
        showError(usernameInput, errorEl, '请输入用户名');
        validationState.username = false;
      } else if (username.length < 3 || username.length > 20) {
        showError(usernameInput, errorEl, '用户名长度应为3-20位');
        validationState.username = false;
      } else if (!/^[a-zA-Z0-9_]+$/.test(username)) {
        showError(usernameInput, errorEl, '用户名只能包含字母、数字和下划线');
        validationState.username = false;
      } else {
        showSuccess(usernameInput, successEl, '用户名可用');
        validationState.username = true;
      }
    }
    
    function validateEmail() {
      const email = emailInput.value.trim();
      const errorEl = document.getElementById('emailError');
      const successEl = document.getElementById('emailSuccess');
      
      clearValidation(emailInput);
      
      if (email === '') {
        showError(emailInput, errorEl, '请输入邮箱地址');
        validationState.email = false;
      } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        showError(emailInput, errorEl, '请输入有效的邮箱地址');
        validationState.email = false;
      } else {
        showSuccess(emailInput, successEl, '邮箱格式正确');
        validationState.email = true;
      }
    }
    
    function validatePhone() {
      const phone = phoneInput.value.trim();
      const errorEl = document.getElementById('phoneError');
      
      if (phone === '') {
        clearValidation(phoneInput);
        return;
      }
      
      if (!/^1[3-9]\d{9}$/.test(phone)) {
        showError(phoneInput, errorEl, '请输入有效的手机号码');
      } else {
        clearValidation(phoneInput);
      }
    }
    
    function validatePassword() {
      const password = passwordInput.value;
      const errorEl = document.getElementById('passwordError');
      
      clearValidation(passwordInput);
      
      if (password === '') {
        validationState.password = false;
      } else if (password.length < 6) {
        showError(passwordInput, errorEl, '密码至少6位');
        validationState.password = false;
      } else if (!/[a-zA-Z]/.test(password) || !/[0-9]/.test(password)) {
        showError(passwordInput, errorEl, '密码应包含字母和数字');
        validationState.password = false;
      } else {
        validationState.password = true;
      }
      
      validateConfirmPassword();
    }
    
    function validateConfirmPassword() {
      const password = passwordInput.value;
      const confirmPassword = confirmPasswordInput.value;
      const errorEl = document.getElementById('confirmPasswordError');
      
      clearValidation(confirmPasswordInput);
      
      if (confirmPassword === '') {
        validationState.confirmPassword = false;
      } else if (password !== confirmPassword) {
        showError(confirmPasswordInput, errorEl, '两次输入的密码不一致');
        validationState.confirmPassword = false;
      } else {
        validationState.confirmPassword = true;
      }
    }
    
    function validateCaptcha() {
      const captcha = captchaInput.value.trim();
      validationState.captcha = captcha.length === 6;
      updateRegisterButton();
    }
    
    // 辅助函数
    function showError(input, errorEl, message) {
      input.classList.add('error');
      input.classList.remove('success');
      errorEl.textContent = message;
      errorEl.style.display = 'block';
    }
    
    function showSuccess(input, successEl, message) {
      input.classList.add('success');
      input.classList.remove('error');
      successEl.textContent = message;
      successEl.style.display = 'block';
    }
    
    function clearValidation(input) {
      input.classList.remove('error', 'success');
      const errorEl = input.parentElement.querySelector('.error-message');
      const successEl = input.parentElement.querySelector('.success-message');
      if (errorEl) errorEl.style.display = 'none';
      if (successEl) successEl.style.display = 'none';
    }
    
    function updateRegisterButton() {
      const isValid = Object.values(validationState).every(Boolean);
      registerBtn.disabled = !isValid;
    }
    
    // 发送验证码
    function sendCaptcha() {
      const email = emailInput.value.trim();
      
      if (!email) {
        alert('请先输入邮箱地址');
        return;
      }
      
      if (!validationState.email) {
        alert('请输入有效的邮箱地址');
        return;
      }
      
      // 模拟发送验证码
      sendCaptchaBtn.disabled = true;
      sendCaptchaBtn.textContent = '60秒后重试';
      
      let countdown = 60;
      const timer = setInterval(() => {
        countdown--;
        sendCaptchaBtn.textContent = countdown + '秒后重试';
        
        if (countdown <= 0) {
          clearInterval(timer);
          sendCaptchaBtn.disabled = false;
          sendCaptchaBtn.textContent = '发送验证码';
        }
      }, 1000);
      
      // 这里应该调用后端API发送验证码
      console.log('发送验证码到:', email);
    }
    
    // 表单提交
    function handleSubmit(e) {
      e.preventDefault();
      
      // 执行所有验证
      validateUsername();
      validateEmail();
      validatePassword();
      validateConfirmPassword();
      validateCaptcha();
      
      if (Object.values(validationState).every(Boolean)) {
        // 显示加载状态
        registerBtn.textContent = '注册中...';
        registerBtn.disabled = true;
        
        // 模拟注册过程
        setTimeout(() => {
          alert('注册成功！即将跳转到登录页面');
          window.location.href = '${basePath}user/login';
        }, 2000);
      } else {
        alert('请完善表单信息');
      }
    }
    
    // 服务条款弹窗（模拟）
    function showTerms() {
      alert('用户服务协议内容将在这里显示');
    }
    
    function showPrivacy() {
      alert('隐私政策内容将在这里显示');
    }
  </script>
</body>
</html>