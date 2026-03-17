package com.soecode.lyf.web;

import com.soecode.lyf.dto.Result;
import com.soecode.lyf.entity.Club;
import com.soecode.lyf.entity.User;
import com.soecode.lyf.entity.ClubApply;
import com.soecode.lyf.service.ClubService;
import com.soecode.lyf.service.UserService;
import com.soecode.lyf.service.ClubApplyService;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/club")
public class ClubController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ClubService clubService;

    @Autowired
    private UserService userService;

    @Autowired
    private ClubApplyService clubApplyService;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Club> list = clubService.getList();
        model.addAttribute("list", list);
        return "club/list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddPage() {
        return "club/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(Club club) {
        try {
            boolean r = clubService.addClub(club);
            if (r) {
                return "redirect:/club/list";
            } else {
                return "redirect:/club/add?error=添加失败";
            }
        } catch (Exception e) {
            logger.error("添加俱乐部异常", e);
            return "redirect:/club/add?error=系统异常";
        }
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public Result create(String clubName,
                         String clubIntro,
                         @RequestParam(value = "clubAvatar", required = false) MultipartFile clubAvatar,
                         HttpServletRequest request,
                         HttpSession session) {
        try {
            Object o = session.getAttribute("user");
            if (!(o instanceof User)) {
                Result r = new Result();
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (clubName == null || clubName.trim().isEmpty()) {
                Result r = new Result();
                r.setSuccess(false);
                r.setError("俱乐部名称不能为空");
                return r;
            }

            if (clubIntro == null || clubIntro.trim().isEmpty()) {
                Result r = new Result();
                r.setSuccess(false);
                r.setError("俱乐部简介不能为空");
                return r;
            }

            User loginUser = (User) o;

            User dbUser = userService.getById(loginUser.getUserId());
            if (dbUser == null) {
                Result r = new Result();
                r.setSuccess(false);
                r.setError("用户不存在");
                return r;
            }

            if (dbUser.getClubId() != null) {
                Result r = new Result();
                r.setSuccess(false);
                r.setError("你已经加入俱乐部，不能重复创建");
                return r;
            }

            if (dbUser.getPlayerType() != null && dbUser.getPlayerType() != 0) {
                Result r = new Result();
                r.setSuccess(false);
                r.setError("只有普通用户才能创建俱乐部");
                return r;
            }
            Club c = new Club();
            c.setClubName(clubName.trim());
            c.setDescription(clubIntro.trim());
            c.setAdminId(loginUser.getUserId());

            if (clubAvatar != null && !clubAvatar.isEmpty()) {
                String avatarPath = saveClubAvatar(clubAvatar, request);
                if (avatarPath == null) {
                    Result r = new Result();
                    r.setSuccess(false);
                    r.setError("头像上传失败");
                    return r;
                }
                c.setAvatar(avatarPath);
            }

            boolean ok = clubService.addClub(c);

            Result r = new Result();
            if (ok) {
                Long newClubId = c.getClubId();

                if (newClubId != null) {
                    userService.joinClub(loginUser.getUserId(), newClubId);
                    userService.updatePlayerType(loginUser.getUserId(), 2);

                    User newUser = userService.getById(loginUser.getUserId());
                    if (newUser != null) {
                        newUser.setPassword(null);
                        session.setAttribute("user", newUser);
                    }
                }

                r.setSuccess(true);
                r.setData("创建成功");
            } else {
                r.setSuccess(false);
                r.setError("创建失败");
            }
            return r;
        } catch (Exception e) {
            logger.error("创建俱乐部异常", e);
            Result r = new Result();
            r.setSuccess(false);
            r.setError("系统异常");
            return r;
        }
    }

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

    @RequestMapping(value = "/join", method = RequestMethod.POST)
    @ResponseBody
    public Result join(@RequestParam("clubId") Long clubId,
                       @RequestParam(value = "applyMessage", required = false) String applyMessage,
                       HttpSession session) {
        Result r = new Result();
        try {
            User u = (User) session.getAttribute("user");
            if (u == null) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (clubId == null) {
                r.setSuccess(false);
                r.setError("俱乐部ID不能为空");
                return r;
            }

            Club club = clubService.getById(clubId);
            if (club == null) {
                r.setSuccess(false);
                r.setError("俱乐部不存在");
                return r;
            }

            User dbUser = userService.getById(u.getUserId());
            if (dbUser == null) {
                r.setSuccess(false);
                r.setError("用户不存在");
                return r;
            }

            if (dbUser.getClubId() != null && dbUser.getClubId() > 0) {
                r.setSuccess(false);
                r.setError("你已经加入俱乐部，不能重复申请");
                return r;
            }

            if (club.getAdminId() == dbUser.getUserId()) {
                r.setSuccess(false);
                r.setError("你已经是该俱乐部管理员");
                return r;
            }

            ClubApply anyPendingApply = clubApplyService.getAnyPendingByUserId(dbUser.getUserId());
            if (anyPendingApply != null) {
                r.setSuccess(false);
                if (anyPendingApply.getClubId() != null && anyPendingApply.getClubId().longValue() == clubId.longValue()) {
                    r.setError("你已经提交过申请，请等待审核");
                } else {
                    r.setError("你已经申请了其他俱乐部，请先等待审核结果");
                }
                return r;
            }


            ClubApply clubApply = new ClubApply();
            clubApply.setClubId(clubId);
            clubApply.setUserId(dbUser.getUserId());
            clubApply.setApplyMessage(applyMessage == null ? "" : applyMessage.trim());
            clubApply.setStatus(0);

            boolean ok = clubApplyService.addApply(clubApply);
            if (ok) {
                r.setSuccess(true);
                r.setData("申请已提交，请等待俱乐部管理员审核");
            } else {
                r.setSuccess(false);
                r.setError("申请提交失败");
            }
            return r;
        } catch (Exception e) {
            logger.error("申请加入俱乐部异常", e);
            r.setSuccess(false);
            r.setError("系统异常");
            return r;
        }
    }

    @RequestMapping(value = "/apply/list", method = RequestMethod.GET)
    @ResponseBody
    public Result applyList(@RequestParam("clubId") Long clubId,
                            HttpSession session) {
        Result r = new Result();
        try {
            User u = (User) session.getAttribute("user");
            if (u == null) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (clubId == null) {
                r.setSuccess(false);
                r.setError("俱乐部ID不能为空");
                return r;
            }

            Club club = clubService.getById(clubId);
            if (club == null) {
                r.setSuccess(false);
                r.setError("俱乐部不存在");
                return r;
            }

            if (club.getAdminId() != u.getUserId()) {
                r.setSuccess(false);
                r.setError("只有俱乐部管理员可以查看申请列表");
                return r;
            }

            List<ClubApply> list = clubApplyService.getPendingByClubId(clubId);
            r.setSuccess(true);
            r.setData(list);
            return r;
        } catch (Exception e) {
            logger.error("查询俱乐部申请列表异常", e);
            r.setSuccess(false);
            r.setError("系统异常");
            return r;
        }
    }
    @RequestMapping(value = "/apply/status", method = RequestMethod.GET)
    @ResponseBody
    public Result applyStatus(@RequestParam("clubId") Long clubId,
                              HttpSession session) {
        Result r = new Result();
        try {
            User u = (User) session.getAttribute("user");
            if (u == null) {
                r.setSuccess(true);
                r.setData(false);
                return r;
            }

            if (clubId == null) {
                r.setSuccess(false);
                r.setError("俱乐部ID不能为空");
                return r;
            }

            ClubApply apply = clubApplyService.getPendingByClubIdAndUserId(clubId, u.getUserId());
            r.setSuccess(true);
            r.setData(apply != null);
            return r;
        } catch (Exception e) {
            logger.error("查询申请状态异常", e);
            r.setSuccess(false);
            r.setError("系统异常");
            return r;
        }
    }

    @RequestMapping(value = "/apply/approve", method = RequestMethod.POST)
    @ResponseBody
    public Result approveApply(@RequestParam("applyId") Long applyId,
                               HttpSession session) {
        Result r = new Result();
        try {
            User u = (User) session.getAttribute("user");
            if (u == null) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (applyId == null) {
                r.setSuccess(false);
                r.setError("申请ID不能为空");
                return r;
            }

            ClubApply apply = clubApplyService.getById(applyId);
            if (apply == null) {
                r.setSuccess(false);
                r.setError("申请不存在");
                return r;
            }

            if (apply.getStatus() == null || apply.getStatus() != 0) {
                r.setSuccess(false);
                r.setError("该申请已处理");
                return r;
            }

            Club club = clubService.getById(apply.getClubId());
            if (club == null) {
                r.setSuccess(false);
                r.setError("俱乐部不存在");
                return r;
            }

            if (club.getAdminId() != u.getUserId()) {
                r.setSuccess(false);
                r.setError("只有俱乐部管理员可以审核申请");
                return r;
            }

            User applyUser = userService.getById(apply.getUserId());
            if (applyUser == null) {
                r.setSuccess(false);
                r.setError("申请用户不存在");
                return r;
            }

            if (applyUser.getClubId() != null && applyUser.getClubId() > 0) {
                clubApplyService.updateStatus(applyId, 2);
                r.setSuccess(false);
                r.setError("该用户已经加入其他俱乐部，已自动拒绝该申请");
                return r;
            }

            boolean joinOk = userService.joinClub(applyUser.getUserId(), apply.getClubId());
            if (!joinOk) {
                r.setSuccess(false);
                r.setError("同意申请失败，加入俱乐部失败");
                return r;
            }

            boolean typeOk = userService.updatePlayerType(applyUser.getUserId(), 1);
            if (!typeOk) {
                r.setSuccess(false);
                r.setError("同意申请失败，更新用户类型失败");
                return r;
            }

            boolean updateOk = clubApplyService.updateStatus(applyId, 1);
            if (!updateOk) {
                r.setSuccess(false);
                r.setError("申请状态更新失败");
                return r;
            }

            r.setSuccess(true);
            r.setData("已同意该申请");
            return r;
        } catch (Exception e) {
            logger.error("同意俱乐部申请异常", e);
            r.setSuccess(false);
            r.setError("系统异常");
            return r;
        }
    }

    @RequestMapping(value = "/apply/reject", method = RequestMethod.POST)
    @ResponseBody
    public Result rejectApply(@RequestParam("applyId") Long applyId,
                              HttpSession session) {
        Result r = new Result();
        try {
            User u = (User) session.getAttribute("user");
            if (u == null) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (applyId == null) {
                r.setSuccess(false);
                r.setError("申请ID不能为空");
                return r;
            }

            ClubApply apply = clubApplyService.getById(applyId);
            if (apply == null) {
                r.setSuccess(false);
                r.setError("申请不存在");
                return r;
            }

            if (apply.getStatus() == null || apply.getStatus() != 0) {
                r.setSuccess(false);
                r.setError("该申请已处理");
                return r;
            }

            Club club = clubService.getById(apply.getClubId());
            if (club == null) {
                r.setSuccess(false);
                r.setError("俱乐部不存在");
                return r;
            }

            if (club.getAdminId() != u.getUserId()) {
                r.setSuccess(false);
                r.setError("只有俱乐部管理员可以审核申请");
                return r;
            }

            boolean ok = clubApplyService.updateStatus(applyId, 2);
            if (ok) {
                r.setSuccess(true);
                r.setData("已拒绝该申请");
            } else {
                r.setSuccess(false);
                r.setError("拒绝失败");
            }
            return r;
        } catch (Exception e) {
            logger.error("拒绝俱乐部申请异常", e);
            r.setSuccess(false);
            r.setError("系统异常");
            return r;
        }
    }

    @RequestMapping(value = "/quit", method = RequestMethod.POST)
    @ResponseBody
    public Result quit(HttpSession session) {
        Result r = new Result();
        try {
            Object o = session.getAttribute("user");
            if (!(o instanceof User)) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            User u = (User) o;
            User dbUser = userService.getById(u.getUserId());
            if (dbUser == null) {
                r.setSuccess(false);
                r.setError("用户不存在");
                return r;
            }

            if (dbUser.getClubId() == null) {
                r.setSuccess(false);
                r.setError("你当前没有加入俱乐部");
                return r;
            }

            Club club = clubService.getById(dbUser.getClubId());
            if (club != null && dbUser.getUserId().equals(club.getAdminId())) {
                r.setSuccess(false);
                r.setError("俱乐部管理员不能直接退出俱乐部");
                return r;
            }

            boolean ok = userService.quitClub(dbUser.getUserId());
            if (ok) {
                boolean typeOk = userService.updatePlayerType(dbUser.getUserId(), 0);
                if (!typeOk) {
                    r.setSuccess(false);
                    r.setError("退出成功，但用户类型更新失败");
                    return r;
                }
                User newUser = userService.getById(dbUser.getUserId());
                if (newUser != null) {
                    newUser.setPassword(null);
                    session.setAttribute("user", newUser);
                }
                r.setSuccess(true);
                r.setData("已退出俱乐部");
            } else {
                r.setSuccess(false);
                r.setError("退出失败");
            }
        } catch (Exception e) {
            logger.error("退出俱乐部异常", e);
            r.setSuccess(false);
            r.setError("退出失败");
        }
        return r;
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public Result update(Long clubId,
                         String clubName,
                         String clubIntro,
                         @RequestParam(value = "clubAvatar", required = false) MultipartFile clubAvatar,
                         HttpServletRequest request,
                         HttpSession session) {
        Result r = new Result();
        try {
            Object o = session.getAttribute("user");
            if (!(o instanceof User)) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (clubId == null) {
                r.setSuccess(false);
                r.setError("俱乐部ID不能为空");
                return r;
            }

            if (clubName == null || clubName.trim().isEmpty()) {
                r.setSuccess(false);
                r.setError("俱乐部名称不能为空");
                return r;
            }

            if (clubIntro == null || clubIntro.trim().isEmpty()) {
                r.setSuccess(false);
                r.setError("俱乐部简介不能为空");
                return r;
            }

            User loginUser = (User) o;
            Club club = clubService.getById(clubId);
            if (club == null) {
                r.setSuccess(false);
                r.setError("俱乐部不存在");
                return r;
            }

            if (loginUser.getUserId() != club.getAdminId()) {
                r.setSuccess(false);
                r.setError("只有俱乐部管理员可以编辑");
                return r;
            }

            club.setClubName(clubName.trim());
            club.setDescription(clubIntro.trim());

            if (clubAvatar != null && !clubAvatar.isEmpty()) {
                String avatarPath = saveClubAvatar(clubAvatar, request);
                if (avatarPath == null) {
                    r.setSuccess(false);
                    r.setError("头像上传失败");
                    return r;
                }
                club.setAvatar(avatarPath);
            }

            boolean ok = clubService.updateClub(club);
            if (ok) {
                r.setSuccess(true);
                r.setData("编辑成功");
            } else {
                r.setSuccess(false);
                r.setError("编辑失败");
            }
        } catch (Exception e) {
            logger.error("编辑俱乐部异常", e);
            r.setSuccess(false);
            r.setError("系统异常");
        }
        return r;
    }

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    @ResponseBody
    public Result all() {
        Result r = new Result();
        try {
            List<Club> list = clubService.getList();
            r.setSuccess(true);
            r.setData(list);
        } catch (Exception e) {
            logger.error("查询俱乐部列表异常", e);
            r.setSuccess(false);
            r.setError("查询失败");
        }
        return r;
    }

    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    @ResponseBody
    public Result detail(Long clubId) {
        Result r = new Result();
        try {
            if (clubId == null) {
                r.setSuccess(false);
                r.setError("俱乐部ID不能为空");
                return r;
            }

            Club club = clubService.getById(clubId);
            if (club == null) {
                r.setSuccess(false);
                r.setError("俱乐部不存在");
                return r;
            }

            r.setSuccess(true);
            r.setData(club);
        } catch (Exception e) {
            logger.error("查询俱乐部详情异常", e);
            r.setSuccess(false);
            r.setError("查询失败");
        }
        return r;
    }

    @RequestMapping(value = "/members", method = RequestMethod.GET)
    @ResponseBody
    public Result members(Long clubId, HttpSession session) {
        Result r = new Result();
        try {
            Object o = session.getAttribute("user");
            if (!(o instanceof User)) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (clubId == null) {
                r.setSuccess(false);
                r.setError("俱乐部ID不能为空");
                return r;
            }

            List<User> list = userService.getByClubId(clubId);
            if (list != null) {
                for (User user : list) {
                    user.setPassword(null);
                }
            }

            r.setSuccess(true);
            r.setData(list);
        } catch (Exception e) {
            logger.error("查询俱乐部成员异常", e);
            r.setSuccess(false);
            r.setError("查询成员失败");
        }
        return r;
    }


    @RequestMapping(value = "/member/remove", method = RequestMethod.POST)
    @ResponseBody
    public Result removeMember(@RequestParam("userId") Long userId,
                               HttpSession session) {
        Result r = new Result();
        try {
            Object o = session.getAttribute("user");
            if (!(o instanceof User)) {
                r.setSuccess(false);
                r.setError("请先登录");
                return r;
            }

            if (userId == null) {
                r.setSuccess(false);
                r.setError("用户ID不能为空");
                return r;
            }

            User loginUser = (User) o;
            User dbLoginUser = userService.getById(loginUser.getUserId());
            if (dbLoginUser == null || dbLoginUser.getClubId() == null) {
                r.setSuccess(false);
                r.setError("你当前没有加入俱乐部");
                return r;
            }

            Club club = clubService.getById(dbLoginUser.getClubId());
            if (club == null) {
                r.setSuccess(false);
                r.setError("俱乐部不存在");
                return r;
            }

            if (club.getAdminId() != dbLoginUser.getUserId()) {
                r.setSuccess(false);
                r.setError("只有俱乐部管理员可以移除成员");
                return r;
            }

            User member = userService.getById(userId);
            if (member == null) {
                r.setSuccess(false);
                r.setError("成员不存在");
                return r;
            }

            if (member.getClubId() == null || member.getClubId().longValue() != club.getClubId()) {
                r.setSuccess(false);
                r.setError("该用户不属于当前俱乐部");
                return r;
            }

            if (member.getUserId().longValue() == club.getAdminId()) {
                r.setSuccess(false);
                r.setError("不能移除俱乐部管理员");
                return r;
            }

            boolean quitOk = userService.quitClub(member.getUserId());
            if (!quitOk) {
                r.setSuccess(false);
                r.setError("移除失败");
                return r;
            }

            boolean typeOk = userService.updatePlayerType(member.getUserId(), 0);
            if (!typeOk) {
                r.setSuccess(false);
                r.setError("移除成功，但用户类型更新失败");
                return r;
            }

            r.setSuccess(true);
            r.setData("移除成功");
            return r;
        } catch (Exception e) {
            logger.error("移除成员异常", e);
            r.setSuccess(false);
            r.setError("系统异常");
            return r;
        }
    }

    private String saveClubAvatar(MultipartFile file, HttpServletRequest request) {
        try {
            if (file == null || file.isEmpty()) {
                return null;
            }

            if (file.getSize() > 2 * 1024 * 1024) {
                return null;
            }

            String oldName = file.getOriginalFilename();
            String ext = getFileExt(oldName);
            if (ext == null) {
                return null;
            }

            ext = ext.toLowerCase();
            if (!".jpg".equals(ext) && !".jpeg".equals(ext) && !".png".equals(ext) && !".gif".equals(ext) && !".webp".equals(ext)) {
                return null;
            }

            String dirPath = "E:\\new\\E-sport_Social_Platform\\E-sport_Social_Platform\\E-sport_Social_Platform\\src\\main\\webapp\\upload\\club";
            File dir = new File(dirPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            String newFileName = UUID.randomUUID().toString().replace("-", "") + ext;
            File dest = new File(dir, newFileName);
            file.transferTo(dest);

            return request.getContextPath() + "/club/avatar?name=" + newFileName;
        } catch (Exception e) {
            logger.error("保存俱乐部头像失败", e);
            return null;
        }
    }

    @RequestMapping(value = "/avatar", method = RequestMethod.GET)
    public void avatar(String name, HttpServletResponse response) {
        FileInputStream fis = null;
        OutputStream os = null;
        try {
            if (name == null || name.trim().isEmpty()) {
                response.setStatus(404);
                return;
            }

            File file = new File("E:\\new\\E-sport_Social_Platform\\E-sport_Social_Platform\\E-sport_Social_Platform\\src\\main\\webapp\\upload\\club", name);
            if (!file.exists() || !file.isFile()) {
                response.setStatus(404);
                return;
            }

            String lowerName = name.toLowerCase();
            if (lowerName.endsWith(".png")) {
                response.setContentType("image/png");
            } else if (lowerName.endsWith(".gif")) {
                response.setContentType("image/gif");
            } else if (lowerName.endsWith(".webp")) {
                response.setContentType("image/webp");
            } else {
                response.setContentType("image/jpeg");
            }

            fis = new FileInputStream(file);
            os = response.getOutputStream();

            byte[] b = new byte[1024];
            int len;
            while ((len = fis.read(b)) != -1) {
                os.write(b, 0, len);
            }
            os.flush();
        } catch (Exception e) {
            logger.error("读取俱乐部头像失败", e);
            response.setStatus(500);
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
            } catch (Exception e) {
                logger.error("关闭文件输入流失败", e);
            }
            try {
                if (os != null) {
                    os.close();
                }
            } catch (Exception e) {
                logger.error("关闭输出流失败", e);
            }
        }
    }

    private String getFileExt(String fileName) {
        if (fileName == null) {
            return null;
        }
        int index = fileName.lastIndexOf(".");
        if (index == -1) {
            return null;
        }
        return fileName.substring(index);
    }
}