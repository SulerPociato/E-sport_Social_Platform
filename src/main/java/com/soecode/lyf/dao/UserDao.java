package com.soecode.lyf.dao;

import java.util.List;
import com.soecode.lyf.entity.User;

public interface UserDao {

    List<User> queryAll();

    User queryById(long userId);

    // 新增
    User queryByUsername(String username);

    int insert(User user);

    int update(User user);

    int delete(long userId);

    /**
     * 根据用户名查询用户
     * @param username 用户名
     * @return 用户对象
     */
    User queryByUsername(String username);
}