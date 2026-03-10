package com.soecode.lyf.service;

import java.util.List;

import com.soecode.lyf.entity.User;

public interface UserService {

    /**
     * 获取所有用户列表
     */
    List<User> getList();

    /**
     * 根据用户ID获取用户信息
     */
    User getById(long userId);

    /**
     * 添加用户
     */
    boolean addUser(User user);

    /**
     * 更新用户信息
     */
    boolean updateUser(User user);

    /**
     * 删除用户
     */
    boolean deleteUser(long userId);
}