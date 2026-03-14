package com.soecode.lyf.dao;

import java.util.List;

import com.soecode.lyf.entity.Club;

public interface ClubDao {
    /**
     * 查询所有俱乐部
     */
    List<Club> queryAll();

    Club queryById(long clubId);

    /**
     * 添加俱乐部
     */
    int insert(Club club);

    /**
     * 更新俱乐部信息
     */
    int update(Club club);

    /**
     * 删除俱乐部
     */
    int delete(long clubId);
}