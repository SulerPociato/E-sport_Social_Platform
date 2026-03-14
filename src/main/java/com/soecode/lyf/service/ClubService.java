package com.soecode.lyf.service;

import java.util.List;

import com.soecode.lyf.entity.Club;

public interface ClubService {

    /**
     * 获取所有俱乐部列表
     */
    List<Club> getList();

    /**
     * 根据俱乐部ID获取俱乐部信息
     */
    Club getById(long clubId);


    Club getById(Long clubId);

    /**
     * 添加俱乐部
     */
    boolean addClub(Club club);

    /**
     * 更新俱乐部信息
     */
    boolean updateClub(Club club);

    /**
     * 删除俱乐部
     */
    boolean deleteClub(long clubId);
}