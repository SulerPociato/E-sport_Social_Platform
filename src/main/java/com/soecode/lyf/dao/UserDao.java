package com.soecode.lyf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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