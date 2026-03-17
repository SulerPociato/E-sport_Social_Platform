package com.soecode.lyf.service;

import java.util.List;

import com.soecode.lyf.entity.Club;
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
     * 根据用户名获取用户
     * @param username 用户名
     * @return 用户对象
     */
    User getByUsername(String username);

    List<User> getByClubId(long clubId);

    boolean addUser(User user);

    /**
     * 更新用户信息
     */
    boolean updateUser(User user);
//加入俱乐部
    boolean joinClub(long userId, long clubId);
//    退出俱乐部
    boolean quitClub(long userId);
    /**
     * 删除用户
     */
    boolean updatePlayerType(Long userId, Integer playerType);

    boolean deleteUser(long userId);
}