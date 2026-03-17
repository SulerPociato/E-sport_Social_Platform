package com.soecode.lyf.service;

import com.soecode.lyf.entity.Club;

import java.util.List;

public interface ClubService {

    List<Club> getList();

    Club getById(long clubId);

    boolean addClub(Club club);

    boolean updateClub(Club club);

    boolean deleteClub(long clubId);
}