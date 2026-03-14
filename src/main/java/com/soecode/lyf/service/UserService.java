package com.soecode.lyf.service;

import java.util.List;
import com.soecode.lyf.entity.User;

public interface UserService {

    List<User> getList();

    User getById(long userId);

    // 新增
    User getByUsername(String username);

    boolean addUser(User user);

    boolean updateUser(User user);

    boolean deleteUser(long userId);

    /**
     * 根据用户名获取用户
     * @param username 用户名
     * @return 用户对象
     */
    User getByUsername(String username);
}