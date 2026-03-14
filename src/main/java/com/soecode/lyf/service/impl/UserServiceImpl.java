package com.soecode.lyf.service.impl;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.soecode.lyf.dao.UserDao;
import com.soecode.lyf.entity.User;
import com.soecode.lyf.service.UserService;

@Service
public class UserServiceImpl implements UserService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserDao userDao;

    @Override
    public List<User> getList() {
        return userDao.queryAll();
    }

    @Override
    public User getById(long userId) {
        return userDao.queryById(userId);
    }

    @Override
    public User getByUsername(String username) {
        return userDao.queryByUsername(username);
    }

    @Override
    public boolean addUser(User user) {
        try {
            int result = userDao.insert(user);
            return result > 0;
        } catch (Exception e) {
            logger.error("添加用户异常: {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean updateUser(User user) {
        try {
            int result = userDao.update(user);
            return result > 0;
        } catch (Exception e) {
            logger.error("更新用户异常: {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean deleteUser(long userId) {
        try {
            int result = userDao.delete(userId);
            return result > 0;
        } catch (Exception e) {
            logger.error("删除用户异常: {}", e.getMessage());
            return false;
        }
    }
}