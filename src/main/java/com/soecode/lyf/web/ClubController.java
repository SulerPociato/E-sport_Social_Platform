package com.soecode.lyf.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soecode.lyf.service.ClubService;
import com.soecode.lyf.entity.Club;
@Controller
@RequestMapping("/club")
public class ClubController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ClubService clubService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Club> list = clubService.getList();
        model.addAttribute("list", list);
        return "club/list";
    }

    @RequestMapping(value = "/{clubId}/detail", method = RequestMethod.GET)
    public String detail(Long clubId, Model model) {
        if (clubId == null) {
            return "redirect:/club/list";
        }
        Club club = clubService.getById(clubId);
        if (club == null) {
            return "forward:/club/list";
        }
        model.addAttribute("club", club);
        return "club/detail";
    }

    //显示添加俱乐部页面
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddPage() {
        return "club/add";
    }

    //处理添加俱乐部请求
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(Club club) {
        try {
            boolean result = clubService.addClub(club);
            if (result) {
                return "redirect:/club/list";
            } else {
                return "redirect:/club/add?error=添加失败";
            }
        } catch (Exception e) {
            logger.error("添加俱乐部异常: {}", e.getMessage());
            return "redirect:/club/add?error=系统异常";
        }
    }

    //显示加入俱乐部页面
    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String showJoinPage(Long clubId, Model model) {
        if (clubId == null) {
            return "redirect:/club/list";
        }
        Club club = clubService.getById(clubId);
        if (club == null) {
            return "redirect:/club/list";
        }
        model.addAttribute("club", club);
        return "club/join";
    }

    //处理加入俱乐部请求
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String join(Long clubId, Long userId) {
        try {
            // 这里需要实现加入俱乐部的逻辑
            // 可以创建一个俱乐部成员表来存储成员关系
            logger.info("用户{}申请加入俱乐部{}", userId, clubId);
            return "redirect:/club/list?message=申请已提交";
        } catch (Exception e) {
            logger.error("加入俱乐部异常: {}", e.getMessage());
            return "redirect:/club/list?error=加入失败";
        }
    }
}