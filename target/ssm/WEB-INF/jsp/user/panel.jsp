<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="userPanel" style="border:1px solid #ccc; padding:10px; margin:10px;">
    <!-- 登录注册区域 -->
    <div id="loginRegisterDiv">
        <h3>登录</h3>
        <input type="text" id="loginUsername" placeholder="用户名"/><br/>
        <input type="password" id="loginPassword" placeholder="密码"/><br/>
        <button onclick="login()">登录</button>
        <button onclick="showRegister()">注册</button>
    </div>

    <!-- 注册表单（初始隐藏） -->
    <div id="registerDiv" style="display:none;">
        <h3>注册</h3>
        <input type="text" id="regUsername" placeholder="用户名"/><br/>
        <input type="password" id="regPassword" placeholder="密码"/><br/>
        <input type="text" id="regNickname" placeholder="昵称"/><br/>
        <button onclick="register()">提交注册</button>
        <button onclick="showLogin()">返回登录</button>
    </div>

    <!-- 用户信息区域（初始隐藏） -->
    <div id="userInfoDiv" style="display:none;">
        <h3>欢迎, <span id="displayNickname"></span></h3>
        <img id="displayAvatar" src="" alt="头像" style="width:50px;height:50px;"/><br/>
        <p>邮箱: <span id="displayEmail"></span></p>
        <p>手机: <span id="displayPhone"></span></p>
        <p>性别: <span id="displayGender"></span></p>
        <p>个人描述: <span id="displayDescription"></span></p>
        <h4>修改信息</h4>
        <input type="text" id="editNickname" placeholder="昵称"/><br/>
        <input type="text" id="editAvatar" placeholder="头像URL"/><br/>
        <input type="text" id="editEmail" placeholder="邮箱"/><br/>
        <input type="text" id="editPhone" placeholder="手机"/><br/>
        <select id="editGender">
            <option value="0">未知</option>
            <option value="1">男</option>
            <option value="2">女</option>
        </select><br/>
        <textarea id="editDescription" placeholder="个人描述"></textarea><br/>
        <button onclick="updateProfile()">保存修改</button>
        <button onclick="logout()">退出登录</button>
    </div>
</div>

<script>
    window.onload = function() {
        // 注意上下文路径改为 ssm_war
        fetch('/ssm_war/user/current')
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showUserInfo(data.data);
                } else {
                    showLogin();
                }
            });
    };

    function showLogin() {
        document.getElementById('loginRegisterDiv').style.display = 'block';
        document.getElementById('registerDiv').style.display = 'none';
        document.getElementById('userInfoDiv').style.display = 'none';
    }

    function showRegister() {
        document.getElementById('loginRegisterDiv').style.display = 'none';
        document.getElementById('registerDiv').style.display = 'block';
        document.getElementById('userInfoDiv').style.display = 'none';
    }

    function showUserInfo(user) {
        document.getElementById('loginRegisterDiv').style.display = 'none';
        document.getElementById('registerDiv').style.display = 'none';
        document.getElementById('userInfoDiv').style.display = 'block';

        document.getElementById('displayNickname').innerText = user.nickname || '';
        document.getElementById('displayAvatar').src = user.avatar || '';
        document.getElementById('displayEmail').innerText = user.email || '';
        document.getElementById('displayPhone').innerText = user.phone || '';
        let genderText = '未知';
        if (user.gender === 1) genderText = '男';
        else if (user.gender === 2) genderText = '女';
        document.getElementById('displayGender').innerText = genderText;
        document.getElementById('displayDescription').innerText = user.description || '';

        // 填充修改表单
        document.getElementById('editNickname').value = user.nickname || '';
        document.getElementById('editAvatar').value = user.avatar || '';
        document.getElementById('editEmail').value = user.email || '';
        document.getElementById('editPhone').value = user.phone || '';
        document.getElementById('editGender').value = user.gender || 0;
        document.getElementById('editDescription').value = user.description || '';
    }

    function login() {
        let username = document.getElementById('loginUsername').value;
        let password = document.getElementById('loginPassword').value;
        let formData = new URLSearchParams();
        formData.append('username', username);
        formData.append('password', password);

        fetch('/ssm_war/user/login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showUserInfo(data.data);
                } else {
                    alert(data.error);
                }
            });
    }

    function register() {
        let username = document.getElementById('regUsername').value;
        let password = document.getElementById('regPassword').value;
        let nickname = document.getElementById('regNickname').value;
        let formData = new URLSearchParams();
        formData.append('username', username);
        formData.append('password', password);
        formData.append('nickname', nickname);

        fetch('/ssm_war/user/register', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('注册成功，请登录');
                    showLogin();
                } else {
                    alert(data.error);
                }
            });
    }

    function logout() {
        fetch('/ssm_war/user/logout')
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    showLogin();
                }
            });
    }

    function updateProfile() {
        let formData = new URLSearchParams();
        formData.append('nickname', document.getElementById('editNickname').value);
        formData.append('avatar', document.getElementById('editAvatar').value);
        formData.append('email', document.getElementById('editEmail').value);
        formData.append('phone', document.getElementById('editPhone').value);
        formData.append('gender', document.getElementById('editGender').value);
        formData.append('description', document.getElementById('editDescription').value);

        fetch('/ssm_war/user/updateProfile', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('修改成功');
                    // 重新获取最新用户信息
                    fetch('/ssm_war/user/current')
                        .then(res => res.json())
                        .then(data => {
                            if (data.success) showUserInfo(data.data);
                        });
                } else {
                    alert(data.error);
                }
            });
    }
</script>