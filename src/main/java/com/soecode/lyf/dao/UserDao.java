package com.soecode.lyf.dao;

import java.util.List;

import com.soecode.lyf.entity.User;

public interface UserDao {

    /**
     * 查询所有用户
     */
    List<User> queryAll();

    /**
     * 根据用户ID查询用户
     */
    User queryById(long userId);

    /**
     * 根据用户名查询用户
     * @param username 用户名
     * @return 用户对象
     */
    User queryByUsername(String username);

    /**
     * 添加用户
     */
    int insert(User user);

    /**
     * 更新用户信息
     */
    int update(User user);

    /**
     * 删除用户
     */
    int delete(long userId);
}