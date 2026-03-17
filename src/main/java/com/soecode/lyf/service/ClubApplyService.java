package com.soecode.lyf.service;

import com.soecode.lyf.entity.ClubApply;

import java.util.List;

public interface ClubApplyService {

    boolean addApply(ClubApply clubApply);

    ClubApply getById(long applyId);

    List<ClubApply> getPendingByClubId(long clubId);

    ClubApply getPendingByClubIdAndUserId(long clubId, long userId);

    ClubApply getAnyPendingByUserId(long userId);

    boolean updateStatus(long applyId, int status);
}