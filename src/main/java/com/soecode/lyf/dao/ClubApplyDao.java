package com.soecode.lyf.dao;

import com.soecode.lyf.entity.ClubApply;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClubApplyDao {

    int insert(ClubApply clubApply);

    ClubApply queryById(long applyId);

    ClubApply queryAnyPendingByUserId(long userId);

    List<ClubApply> queryPendingByClubId(long clubId);

    ClubApply queryPendingByClubIdAndUserId(@Param("clubId") long clubId, @Param("userId") long userId);

    int updateStatus(@Param("applyId") long applyId, @Param("status") int status);
}