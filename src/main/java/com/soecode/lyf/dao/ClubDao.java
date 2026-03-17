package com.soecode.lyf.dao;

import com.soecode.lyf.entity.Club;

import java.util.List;

public interface ClubDao {

    List<Club> queryAll();

    Club queryById(long clubId);

    int insert(Club club);

    int update(Club club);

    int delete(long clubId);
}