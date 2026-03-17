package com.soecode.lyf.service.impl;

import com.soecode.lyf.dao.ClubApplyDao;
import com.soecode.lyf.entity.ClubApply;
import com.soecode.lyf.service.ClubApplyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClubApplyServiceImpl implements ClubApplyService {

    private static final Logger logger = LoggerFactory.getLogger(ClubApplyServiceImpl.class);

    @Autowired
    private ClubApplyDao clubApplyDao;

    @Override
    public boolean addApply(ClubApply clubApply) {
        try {
            int r = clubApplyDao.insert(clubApply);
            return r > 0;
        } catch (Exception e) {
            logger.error("新增俱乐部申请异常", e);
            return false;
        }
    }

    @Override
    public ClubApply getById(long applyId) {
        return clubApplyDao.queryById(applyId);
    }

    @Override
    public List<ClubApply> getPendingByClubId(long clubId) {
        return clubApplyDao.queryPendingByClubId(clubId);
    }

    @Override
    public ClubApply getPendingByClubIdAndUserId(long clubId, long userId) {
        return clubApplyDao.queryPendingByClubIdAndUserId(clubId, userId);
    }

    @Override
    public ClubApply getAnyPendingByUserId(long userId) {
        return clubApplyDao.queryAnyPendingByUserId(userId);
    }

    @Override
    public boolean updateStatus(long applyId, int status) {
        try {
            int r = clubApplyDao.updateStatus(applyId, status);
            return r > 0;
        } catch (Exception e) {
            logger.error("更新俱乐部申请状态异常", e);
            return false;
        }
    }
}