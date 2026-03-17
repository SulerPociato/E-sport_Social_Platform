package com.soecode.lyf.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soecode.lyf.entity.Club;
import com.soecode.lyf.dao.ClubDao;
import com.soecode.lyf.service.ClubService;

import java.util.List;

@Service
public class ClubServiceImpl implements ClubService {
    private static final Logger logger = LoggerFactory.getLogger(ClubServiceImpl.class);

    @Autowired
    private ClubDao ClubDao;


    @Override
    public List<Club> getList() {
        return ClubDao.queryAll();
    }

    @Override
    public Club getById(long clubId) {
        return ClubDao.queryById(clubId);
    }



    @Override
    public boolean addClub(Club club) {
        try {
            int result = ClubDao.insert(club);
            return result > 0;
        } catch (Exception e) {
            logger.error("添加俱乐部异常: {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean updateClub(Club club) {
        try {
            int result = ClubDao.update(club);
            return result > 0;
        } catch (Exception e) {
            logger.error("更新俱乐部异常: {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean deleteClub(long clubId) {
        try {
            int result = ClubDao.delete(clubId);
            return result > 0;
        } catch (Exception e) {
            logger.error("删除俱乐部异常: {}", e.getMessage());
            return false;
        }
    }
}