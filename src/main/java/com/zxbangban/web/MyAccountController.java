package com.zxbangban.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zxbangban.entity.*;
import com.zxbangban.enums.RolesAuth;
import com.zxbangban.service.*;
import com.zxbangban.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by pingyr on 2017/7/15.
 */
@Controller
@RequestMapping("/my-account")
@SessionAttributes({"uid", "headimg", "unionid","worker"})
public class MyAccountController {

    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private UserProfileService userProfileService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private WorkerInfoService workerInfoService;
    @Autowired
    private WorkerProfileService workerProfileService;
    @Autowired
    private AliyunOSService aliyunOSService;

    @RequestMapping(value = "/center")
    public String center(@SessionAttribute("uid") String uid, HttpServletRequest httpServletRequest, Model model) {
        Object unionId = httpServletRequest.getSession().getAttribute("unionid");
        if (unionId == null) {
            try {
                UserInfo userInfo = userInfoService.queryByUsername(uid);
                model.addAttribute("userinfo", userInfo);
                model.addAttribute("headimg", userInfo.getHeadImgUrl());
                Integer roleId = userInfo.getRoleId();

                //权限不同，访问不同
                if (roleId.equals(RolesAuth.rolesAuthOf(1).getRoleId())) {
                    return "account/normal_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(2).getRoleId())) {
                    return "account/normal_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(3).getRoleId())) {
                    return "account/normal_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(4).getRoleId())) {
                    return "account/service_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(6).getRoleId())) {
                    return "account/service_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(5).getRoleId())) {
                    return "account/service_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(8).getRoleId())) {
                    return "account/manager_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(9).getRoleId())) {
                    return "account/manager_home";
                } else if (roleId.equals(RolesAuth.rolesAuthOf(7).getRoleId())) {
                    return "account/manager_home";
                } else {
                    return "account/normal_home";
                }
            } catch (NullPointerException e) {
                return "signin";
            }
        } else {
            UserInfo userInfo = new UserInfo();
            String headImg = (String) httpServletRequest.getSession().getAttribute("headimg");
            try {
                userInfo.setUsername(URLDecoder.decode(uid, "UTF-8"));
                userInfo.setHeadImgUrl(URLDecoder.decode(headImg, "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

            model.addAttribute("userinfo", userInfo);
            return "account/normal_home";
        }
    }

    @RequestMapping(value = "/profile")
    public String profile(@SessionAttribute("uid") String uid, HttpServletRequest httpServletRequest, Model model) {
        Object unionId = httpServletRequest.getSession().getAttribute("unionid");
        if (unionId == null) {
            //非微信登录用户
            try {
                UserInfo userInfo = userInfoService.queryByUsername(uid);
                UserProfile userProfile = userProfileService.queryUserProfileByUID(userInfo.getUserId());
                if (userProfile == null) {
                    System.out.println("userprofile  is null");
                    userProfile = new UserProfile();
                    userProfile.setName(userInfo.getUsername());
                }
                String sydate = new SimpleDateFormat("yyyy-MM-dd").format(userInfo.getCreateTime());
                model.addAttribute("userProfile", userProfile);
                model.addAttribute("userinfo", userInfo);
                model.addAttribute("headimg", userInfo.getHeadImgUrl());
                model.addAttribute("sydate", sydate);
                return "account/normal_profile";
            } catch (NullPointerException e) {
                return "signin";
            }

        } else {
            UserInfo userInfo = new UserInfo();
            String headImg = (String) httpServletRequest.getSession().getAttribute("headimg");
            try {
                userInfo.setUsername(URLDecoder.decode(uid, "UTF-8"));
                userInfo.setHeadImgUrl(URLDecoder.decode(headImg, "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

            userInfo.setRoleId(1);
            model.addAttribute("userinfo", userInfo);
            return "account/normal_profile";
        }
    }

    @RequestMapping(value = "/profile-workerinfo")
    public String profile_workerInfo(@SessionAttribute("uid") String uid, HttpServletRequest httpServletRequest, Model model) {
        HttpSession httpSession = httpServletRequest.getSession();
        Object unionId = httpSession.getAttribute("unionid");
        if (unionId == null) {
            try {
                long workerId = 1;
                UserInfo userInfo = userInfoService.queryByUsername(uid);
                String tel = userInfo.getTelphone();
                List<WorkerInfo> list = workerInfoService.queryByTelphone(tel);
                List<Integer> jobs = new ArrayList<>();
                for (WorkerInfo worker : list) {
                    workerId = worker.getWorkerId();
                    jobs.add(worker.getJobId());
                }
                WorkerProfile workerProfile = workerProfileService.queryByWorkerId(workerId);
                model.addAttribute("jobs", jobs);
                model.addAttribute("worker", list.get(0));
                model.addAttribute("userinfo", userInfo);
                model.addAttribute("workerProfile", workerProfile);
                return "/account/normal_profile_workinfo";
            } catch (Exception e) {
                return "signin";
            }
        }
        return "/account/normal_profile_workinfo";
    }

    @RequestMapping(value = "/workerinfoByJobId", method = RequestMethod.POST)
    public String workerinfoByJobId(@SessionAttribute("uid") String uid, HttpServletRequest httpServletRequest, @RequestParam("jobId") Integer jobId, Model model) {
        HttpSession httpSession = httpServletRequest.getSession();
        Object unionId = httpSession.getAttribute("unionid");
        if (unionId == null) {
            try {
                long workerId = 1;
                UserInfo userInfo = userInfoService.queryByUsername(uid);
                String tel = userInfo.getTelphone();
                List<WorkerInfo> list = workerInfoService.queryByTelphone(tel);
                List<Integer> jobs = new ArrayList<>();
                for (WorkerInfo worker : list) {
                    jobs.add(worker.getJobId());
                    if (worker.getJobId().equals(jobId)) {
                        workerId = worker.getWorkerId();
                        model.addAttribute("worker", worker);
                    }
                }
                WorkerProfile workerProfile = workerProfileService.queryByWorkerId(workerId);
                model.addAttribute("jobs", jobs);
                model.addAttribute("userinfo", userInfo);
                model.addAttribute("workerProfile", workerProfile);
                return "/account/normal_profile_workinfo";
            } catch (Exception e) {
                return "signin";
            }
        }
        return "/account/normal_profile_workinfo";
    }


    @RequestMapping(value = "update-workerinfo")
    public String updateWorkerInfo(long workerId, String name, Integer age, Integer jobYear, String tel, String address, String style, Integer teamCount, Integer ordersCount, Boolean state, String location, String teamDesc) {
        try {
            WorkerInfo workerInfo = new WorkerInfo();
            workerInfo.setWorkerId(workerId);
            workerInfo.setJobYear(jobYear);
            workerInfo.setName(name);
            workerInfo.setTel(tel);
            workerInfo.setAddress(address);
            workerInfo.setStyle(style);
            workerInfo.setTeamCount(teamCount);
            workerInfo.setOrdersCount(ordersCount);
            workerInfo.setTeamDesc(teamDesc);
            workerInfo.setState(state);
            workerInfo.setLocation(location);
            workerInfoService.updateWorkerInfo(workerInfo);
            workerProfileService.updateAge(workerId, age);
            return "redirect:/my-account/profile-workerinfo";
        } catch (Exception e) {
            e.printStackTrace();
            return "/common/errorpage";
        }
    }

    @RequestMapping(value = "/editpassword")
    public String editPassword(@SessionAttribute("uid") String uid, @SessionAttribute("headimg") String headimg, Model model) {
        model.addAttribute("uid", uid);
        model.addAttribute("headimg", headimg);

        return "/account/changepassword";
    }

    @RequestMapping(value = "/updateTel", method = RequestMethod.POST)
    @ResponseBody
    public String updateTel(@RequestParam("oldTel") String oldTel, @RequestParam("newTel") String newTel) {
        try {
            UserInfo userInfo1 = userInfoService.queryByTelphone(newTel);
            if (userInfo1 == null) {
                UserInfo userInfo = userInfoService.queryByTelphone(oldTel);
                List<WorkerInfo> workerInfos = workerInfoService.queryByTel(oldTel);
                userInfoService.updateTelphone(newTel, userInfo.getUsername());
                for (WorkerInfo workerInfo : workerInfos) {
                    workerInfoService.updateTel(workerInfo.getWorkerId(), newTel);
                }
                return "1";
            } else {
                return "2";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }
    }

    @RequestMapping(value = "/editUserHeadimg")
    public String editUserHeadImg(@SessionAttribute("uid") String uid, @RequestParam("oldFile") String oldFile, @RequestParam("file") MultipartFile file) {
        try {
            //将阿里云中图片删除，保存新图片
            UserInfo userInfo = userInfoService.queryByUsername(uid);
            String headImgName = aliyunOSService.updateHeadImages(userInfo.getUserId(), file, oldFile);
            //更新数据库图片的地址
            String headImgUrl = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + headImgName + "?x-oss-process=style/headimg";
            userInfoService.updateHeadImg(uid, headImgUrl);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/my-account/center";
    }

    @RequestMapping(value = "/editheadimg")
    public String editHeadImg(@SessionAttribute("uid") String uid, @RequestParam("oldFile") String oldFile, @RequestParam(value = "file") MultipartFile file) {
        try {
            UserInfo userInfo = userInfoService.queryByUsername(uid);
            String tel = userInfo.getTelphone();
            List<WorkerInfo> list = workerInfoService.queryByTelphone(tel);
            String imgName = aliyunOSService.updateHeadImages(userInfo.getUserId(), file, oldFile);
            String url = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + imgName + "?x-oss-process=style/headimg";
            for (WorkerInfo workerInfo : list) {
                workerInfoService.editheadimg(workerInfo.getWorkerId(), url);
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return "redirect:/my-account/profile-workerinfo";
    }

    @RequestMapping(value = "/updatepassword", method = RequestMethod.POST)
    public String updatePassword(@SessionAttribute("uid") String uid, @RequestParam("oldpassword") String oldpassword, @RequestParam("repassword") String repassword, Model model) {
        UserInfo userInfo = userInfoService.queryByUsername(uid);
        String password = userInfo.getPassword();
        if (MD5Util.EncryptedByMD5(oldpassword).equals(password)) {
            int r = userInfoService.updatePassword(uid, MD5Util.EncryptedByMD5(repassword));
        } else {
            model.addAttribute("msg", "旧密码不正确");
            return "account/changepassword";
        }

        System.out.println("旧密码" + oldpassword + ";新密码" + repassword);
        return "redirect:/my-account/center";
    }

    //获取预约信息
    @RequestMapping(value = "/getappoint", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String getAppoint(@RequestParam("uid") String uid, @RequestParam("roleid") Integer roleid, Model model) {
        int i = roleid;
        String notes="";
        if (0 < i && i < 4) {
            String tel = userInfoService.queryTelByUsername(uid);
            List<WorkerInfo> workerInfo = workerInfoService.queryByTel(tel);
            if(workerInfo!=null&&workerInfo.size()>0) {
                notes = "预约[工号:" + workerInfo.get(0).getWorkerId() + ";姓名:" + workerInfo.get(0).getName() + "]";
            }
            List<Customer> list = customerService.queryByNotes(notes);
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                return objectMapper.writeValueAsString(list);
            } catch (JsonProcessingException e) {
                return "";
            }
        } else {
            return "";
        }
    }


    @RequestMapping(value = "/appoint", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String managerAppoint(@RequestParam("roleid") Integer roleid, @RequestParam("uid") String uid) {
        int i = roleid;
        if (3 < i && i < 10) {
            try {
            List<Customer> list = customerService.queryAll();
            ObjectMapper objectMapper = new ObjectMapper();
            return objectMapper.writeValueAsString(list);
            } catch (JsonProcessingException e) {
                return "";
            }
        } else {
            return "";
        }
    }

    @RequestMapping(value = "/program", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String managerProgram(@RequestParam("roleid") Integer roleid, @RequestParam("uid") String uid) {

        return "";
    }

    @RequestMapping(value = "/worker", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String managerWorker(@RequestParam("roleid") Integer roleId, @RequestParam("uid") String uid) {
        int i = roleId;
        if (3 < i && i < 10) {
            List<WorkerInfo> list = workerInfoService.queryNew();
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                return objectMapper.writeValueAsString(list);
            } catch (JsonProcessingException e) {
                return "";
            }
        } else {
            return "";
        }
    }
}
