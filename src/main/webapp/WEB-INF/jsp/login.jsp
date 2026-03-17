<%--
  Created by IntelliJ IDEA.
  User: 24789
  Date: 2026/3/11
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/head.jsp"%>
<html lang="zh-CN">
<head>
    <title>登录 - 游戏陪玩平台</title>
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
        }
        .login-container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            padding: 40px;
        }
        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .login-header h1 {
            color: #667eea;
            font-size: 2rem;
            margin-bottom: 10px;
        }
        .login-header p {
            color: #666;
            font-size: 0.9rem;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 500;
        }
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e1e5e9;
            border-radius: 10px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }
        .form-control:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
        .btn-login {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s ease;
        }
        .btn-login:hover {
            transform: translateY(-2px);
        }
        .login-footer {
            text-align: center;
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #e1e5e9;
        }
        .login-footer a {
            color: #667eea;
            text-decoration: none;
            font-size: 0.9rem;
        }
        .login-footer a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: #e74c3c;
            font-size: 0.9rem;
            margin-top: 5px;
            display: none;
        }
        @media (max-width: 480px) {
            .login-container {
                margin: 20px;
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-header">
            <h1>欢迎回来</h1>
            <p>登录您的游戏陪玩平台账户</p>
        </div>
        
        <form id="loginForm" action="${basePath}" method="post">
            <div class="form-group">
                <label for="username">用户名</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" required>
                <div class="error-message" id="usernameError"></div>
            </div>
            
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required>
                <div class="error-message" id="passwordError"></div>
            </div>
            
            <button type="submit" class="btn-login">登录</button>
        </form>
        
        <div class="login-footer">
            <p>还没有账户？ <a href="${basePath}user/register">立即注册</a></p>
        </div>
    </div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // 简单的表单验证
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value;
            
            let isValid = true;
            
            // 重置错误信息
            document.querySelectorAll('.error-message').forEach(el => el.style.display = 'none');
            
            if (username === '') {
                document.getElementById('usernameError').textContent = '请输入用户名';
                document.getElementById('usernameError').style.display = 'block';
                isValid = false;
            }
            
            if (password === '') {
                document.getElementById('passwordError').textContent = '请输入密码';
                document.getElementById('passwordError').style.display = 'block';
                isValid = false;
            }
            
            if (isValid) {
                this.submit();
                alert('登录成功');
                message = "登录成功";
            }
        });
    </script>
</body>
</html>