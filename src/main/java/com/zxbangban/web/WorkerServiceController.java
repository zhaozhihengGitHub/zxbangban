package com.zxbangban.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zxbangban.entity.*;
import com.zxbangban.entity.WorkerDetail;
import com.zxbangban.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/worker-console")
@SessionAttributes({"uid", "auth","jobs"})
public class WorkerServiceController {
    @Autowired
    private WorkerService workerService;

    @Autowired
    private WorkerInfoService workerInfoService;

    @Autowired
    private WorkerProfileService workerProfileService;

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private AliyunMNService aliyunMNService;

    @Autowired
    private AliyunOSService aliyunOSService;

    @Autowired
    private JobsService jobsService;

    @RequestMapping(value = "/home",method = RequestMethod.GET, produces = "text/html;charset=utf8")
    public String home(@SessionAttribute("uid") String uid,@RequestParam("j") String j,@RequestParam("pageNumber")Integer pageNumber,Model model) {
        try{
            UserInfo userInfo = userInfoService.queryByUsername(uid);
            Integer roleId = userInfo.getRoleId();
            if (roleId.equals(5) || roleId.equals(7) || roleId.equals(8)) {
                PageBean pageBean = new PageBean();
                pageBean.setPageNumber(pageNumber);
                List<Worker> workers = workerService.queryWorkersByJob(j,pageBean);
                int count;
                if(j.equals("ALL")){
                    count = workerInfoService.countWorkers();
                    model.addAttribute("jobId","ALL");
                }else {
                    count = workerInfoService.countWorkersByJobName(j);
                    model.addAttribute("jobId",j);
                }
                pageBean.setTotalRecoed(count);
                List<Jobs> jobsList = jobsService.getJobs();
                model.addAttribute("pageBean",pageBean);
                model.addAttribute("jobs",jobsList);
                model.addAttribute("workers", workers);

                return "account/worker_service_home";
            } else {
                model.addAttribute("msg", "权限等级不够!");
                return "account/worker_service_home";
            }
        }catch (NullPointerException e){
            e.printStackTrace();
            return "signin";
        }


    }

    /*@RequestMapping(value = "/wlistPage",method = RequestMethod.GET, produces = "text/html;charset=utf8")
    public String wlistPage(@RequestParam("j") String j,@RequestParam("pageNumber")Integer pageNumber,Model model) {
        try{
                PageBean pageBean = new PageBean();
                pageBean.setPageNumber(pageNumber);
                List<Worker> workers = workerService.queryWorkersByJob(j,pageBean);
                int count;
                if(j.equals("ALL")){
                    count = workerInfoService.countWorkers();
                }else {
                    count = workerInfoService.countWorkersByJobName(j);
                }
                pageBean.setTotalRecoed(count);
                List<Jobs> jobsList = jobsService.getJobs();
                model.addAttribute("pageBean",pageBean);
                model.addAttribute("jobs",jobsList);
                model.addAttribute("workers", workers);
                return "account/worker_service_home";
        }catch (NullPointerException e){
            e.printStackTrace();
            return "signin";
        }


    }*/

    @RequestMapping(value = "/notification", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String notification(@RequestParam("wid") long wid) {
        WorkerInfo workerInfo = workerInfoService.queryWorkerByWorkerId(wid);
        String tel = workerInfo.getTel();
        boolean cert = workerInfo.isCertificated();
        System.out.println(wid + "; "+ tel +"; "+ cert);
        if (tel.length() == 11) {
            if(cert){
                return aliyunMNService.SMSNotification(5,tel);
            }
                return aliyunMNService.SMSNotification(2,tel);

        } else {
            return "failure";
        }

    }

    @RequestMapping(value = "/byPhone",method = RequestMethod.POST)
    public String byPhone(@SessionAttribute("jobs")List<Jobs> jobsList,@RequestParam("tel")String tel,Model model){
        try {
            List<WorkerInfo> workers = workerInfoService.queryByTel(tel);
            model.addAttribute("count","");
            model.addAttribute("jobs",jobsList);
            model.addAttribute("workers", workers);
            model.addAttribute("tel",tel);
            return "account/worker_service_home";
        }catch (Exception e){
            e.printStackTrace();
            return "signin";
        }

    }

    @RequestMapping(value = "/byWorkername",method = RequestMethod.POST)
    public String byWorkername(@SessionAttribute("jobs")List<Jobs> jobsList,@RequestParam("workerName")String workerName,Model model){
        try {
            System.out.println(workerName);
            List<WorkerInfo> workers = workerInfoService.queryByWorkerName(workerName);
            model.addAttribute("count","");
            model.addAttribute("jobs",jobsList);
            model.addAttribute("workers", workers);
            model.addAttribute("workerName",workerName);
            return "account/worker_service_home";
        }catch (Exception e){
            e.printStackTrace();
            return "signin";
        }

    }

    @RequestMapping(value = "/changeStateTrue",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String changeStateTrue(@RequestParam("wid") long wid){
        System.out.println(wid);
        int result = workerInfoService.changeStateTrue(wid);
        System.out.println("2");
        return String.valueOf(result);
    }

    @RequestMapping(value = "/changeStateFalse",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String changeStateFalse(@RequestParam("wid") long wid){
        int result = workerInfoService.changeStateFalse(wid);
        return String.valueOf(result);
    }

    @RequestMapping(value = "/banned", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String banned(@RequestParam("wid") long wid) {
        int r = workerInfoService.updateIsNotShow(wid);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/unbanned", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String unbanned(@RequestParam("wid") long wid) {
        int r = workerInfoService.updateIsShow(wid);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/del",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String delete(@RequestParam("wid") long wid){
        int result1 = workerInfoService.deleteWorkerInfo(wid);
        int result2 = workerProfileService.deleteWorkerProfile(wid);
        return String.valueOf(result1);
    }

    @RequestMapping(value = "/detail", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String manager(@RequestParam("wid") long wid) {
        WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(wid);
        WorkerProfile workerProfile = workerProfileService.queryDetailByWorkerId(wid);
        WorkerDetail workerDetail;
        if (workerProfile == null) {
            workerProfileService.updateNewView(new WorkerProfile(wid, 1));
            workerProfile = workerProfileService.queryDetailByWorkerId(wid);
        }
        workerDetail = new WorkerDetail(workerInfo, workerProfile);
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(workerDetail);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return "0";
        }

    }

    /**
     * 根据工人id修改工人姓名
     * @param wid 工人id
     * @param name 姓名
     */
    @RequestMapping(value = "/edit-name",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editName(@RequestParam("wid") long wid, @RequestParam("name")String name){
        int r = workerInfoService.editName(wid,name);
        return String.valueOf(r);
    }
    /**
     * 根据工人id修改现所在地
     * @param wid 工人id
     * @param location 现所在地
     */
    @RequestMapping(value = "/edit-location",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editLocation(@RequestParam("wid") long wid, @RequestParam("location")String location){
       int r = workerInfoService.editLocation(wid,location);
        return String.valueOf(r);
    }
    /**
     * 根据工人id修改籍贯
     * @param wid 工人id
     * @param address 籍贯
     */
    @RequestMapping(value = "/edit-address",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editAddress(@RequestParam("wid") long wid, @RequestParam("address")String address){
        int r = workerInfoService.editAddress(wid,address);
        return String.valueOf(r);
    }

    /**
     * 根据工人id修改工人实名认证状态
     * @param wid 工人id
     * @param auth 实名认证状态
     */
    @RequestMapping(value = "/edit-auth",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editAuth(@RequestParam("wid") long wid, @RequestParam("auth")boolean auth){
        int r = workerInfoService.editAuth(wid,auth);
        return String.valueOf(r);
    }

    /**
     * 根据工人id修改工人平台认证状态
     * @param wid 工人id
     * @param cert 认证状态
     */
    @RequestMapping(value = "/edit-cert",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editCert(@RequestParam("wid") long wid, @RequestParam("cert")boolean cert){
        int r = workerInfoService.editCert(wid,cert);
        return String.valueOf(r);
    }

    /**
     * 根据工人id修改工人头像
     * @param wid 工人id
     * @param file 姓名
     */
    @RequestMapping(value = "/wid={wid}/edit-headimg",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    public String edithImg(@PathVariable("wid") long wid,@RequestParam("oldFile")String oldFile, @RequestParam(value = "file")MultipartFile file){

        String imgname = aliyunOSService.updateHeadImages(wid,file,oldFile);
        String imgurl = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + imgname + "?x-oss-process=style/headimg";
        workerInfoService.editheadimg(wid,imgurl);
        return "redirect:/worker-console/home?j=ALL";
    }
    /**
     * 后台修改工人头像
     * @param wid 工人id
     * @param file 姓名
     */
    @RequestMapping(value = "/wid={wid}/edit-himg",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    public String edithImg(@PathVariable("wid") long wid, @RequestParam(value = "file")MultipartFile file){
       WorkerInfo workerInfo= workerInfoService.queryWorkerByWorkerId(wid);
        String oldFile=workerInfo.getHeadImgUrl();
        String imgname = aliyunOSService.updateHeadImages(wid,file,oldFile);
        String imgurl = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + imgname + "?x-oss-process=style/headimg";
        workerInfoService.editheadimg(wid,imgurl);
        return "redirect:/worker-console/home?j=ALL";
    }

    /**
     * 根据工人id修改工人平台担保金
     * @param wid 工人id
     * @param deposit 担保金
     */
    @RequestMapping(value = "/edit-deposit",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editDeposit(@RequestParam("wid") long wid, @RequestParam("deposit")BigDecimal deposit){
        int r = workerProfileService.editDeposit(wid,deposit);
        return String.valueOf(r);
    }

    /**
     * 根据工人id修改工人工程考察
     * @param wid 工人id
     * @param pr 工程考察
     */
    @RequestMapping(value = "/edit-pr",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editLevel(@RequestParam("wid") long wid, @RequestParam("pr")boolean pr){
        int r = workerInfoService.editPR(wid,pr);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/edit-weighted",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String updateWeight(@RequestParam("wid") long wid,@RequestParam("weighted") double weighted){
        int r = workerProfileService.updateWeightedByWorkerId(wid,weighted);
        int r1 = workerInfoService.updateOARating(wid);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/wid={wid}/edit-programimg",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    public String editProgramImg(@PathVariable("wid") long wid, @RequestParam MultipartFile[] files){
        WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(wid);
        String imgUrl = workerInfo.getProjectImgUrl();
        StringBuilder stringBuilder;
        if(imgUrl == null){
            imgUrl = "";
        }
        stringBuilder = new StringBuilder(imgUrl);
        for(MultipartFile item : files){
            String name = aliyunOSService.updateProjectImages(wid,item);
            String url = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + name + "?x-oss-process=style/Cut_picture";
            stringBuilder.append(";").append(url);
        }
        int result = workerInfoService.editPorjectImg(wid,stringBuilder.toString());
        return "redirect:/worker-console/home?j=ALL";
    }


    /*
    * 跳转至工人添加工程描述
    *
    * */
    @RequestMapping(value = "addDec",method = RequestMethod.GET)
    public String addDec(@RequestParam long wid,Model model){
        model.addAttribute("wid",wid);
        return "account_support/addworkerdec";
    }

    /*
    * 跳转至工人信息页面
    *local,date,area,price,mode,state
    * */
    @RequestMapping(value = "saveDes",method = RequestMethod.POST)
    public String saveDec(@RequestParam long wid,@RequestParam String local,@RequestParam String start,@RequestParam String end,@RequestParam String area,@RequestParam String price
            ,@RequestParam String mode,@RequestParam String state, Model model){
        try{
            WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(wid);
            StringBuilder projectDes=new StringBuilder();
            String start1=start.replaceAll("-","/");
            String end1=end.replaceAll("-","/");
            String date=start1+"-"+end1;
            projectDes.append(local).append(";").append(area).append(";").append(price).append(";").append(mode).append(";").append(state).append(";").append(date).append(";");
            int r=workerInfoService.saveDes(wid,workerInfo.getProjectDes()+projectDes.toString());
            return "redirect:/my-account/profile-workerinfo";
        }catch (Exception e){
            return "common/errorpage";
        }
    }

    /*
   * 跳转至工人信息页面
   *
   * */
    @RequestMapping(value = "editDes",method = RequestMethod.POST)
    @ResponseBody
    public String editDes(@RequestParam long wid,@RequestParam String str,Model model){
        try{
            WorkerInfo workerInfo=workerInfoService.queryWorkerByWorkerId(wid);
            String projectDes=workerInfo.getProjectDes().replaceAll(str,"");
            System.out.println(projectDes);
            int i=workerInfoService.saveDes(wid,projectDes);
            return String.valueOf(i);
        }catch (Exception e){
            return "common/errorpage";
        }
    }
    /*
    * 跳转至工人上传图片页面
    * */
    @RequestMapping(value = "uploadpic",method = RequestMethod.GET)
    public String uploadpic(@RequestParam long wid,Model model){
        model.addAttribute("wid",wid);
        return "account_support/addworkerpic";
    }
    /*
       * 工人上传图片
       * */
    @RequestMapping(value = "/wid={wid}/upload-programimg",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    public String uploadProgramImg(@PathVariable("wid") long wid, @RequestParam MultipartFile[] files,@RequestParam("imgName") String imgName){
        try{
        WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(wid);
        String imgUrl = workerInfo.getProjectImgUrl();
        StringBuilder stringBuilder;
        if(imgUrl == null){
            imgUrl = "";
        }
        stringBuilder = new StringBuilder(imgUrl);
        for(MultipartFile item : files){
            String name = aliyunOSService.updateProjectImages(wid,item);
            String url =name+"-"+imgName;
            stringBuilder.append(";").append(url);
        }
        int result = workerInfoService.editPorjectImg(wid,stringBuilder.toString());
        return "redirect:/my-account/profile-workerinfo";
    }catch (Exception e){
            return "redirect:/my-account/profile-workerinfo";
    }
    }

    /*
       * 跳转至工人删除图片页面
       * */
    @RequestMapping(value = "deletepic",method = RequestMethod.POST)
    @ResponseBody
    public String deletePic(@RequestParam String fileName,@RequestParam long wid){
        try{
            System.out.println(fileName);
            WorkerInfo workerInfo=workerInfoService.queryDetailByWorkerId(wid);
            String projectImg=workerInfo.getProjectImgUrl().replace(fileName,"");
            workerInfoService.updateProjectImg(wid,projectImg);
            if (fileName.contains("https://zxbangban.oss-cn-beijing.aliyuncs.com/")) {
                fileName = fileName.replace(";https://zxbangban.oss-cn-beijing.aliyuncs.com/", "").replace("?x-oss-process=style/Cut_picture", "");
            }
            aliyunOSService.deleteProjectImage(fileName);
            return "1";
        }catch (Exception e){
            return "0";
        }

    }

    @RequestMapping(value = "queryProvinceAll",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String queryProvinceAll(){
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            List<Province> prolist= workerInfoService.queryProvinceAll();
            return objectMapper.writeValueAsString(prolist);
        }catch (Exception e){
            return "common/errorpage";
        }
    }

    @RequestMapping(value = "queryCityByCode",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String queryCityByProvinceCode(@RequestParam("id") String id){
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            List<City> cityList= workerInfoService.queryCityByProvinceCode(id);
            return objectMapper.writeValueAsString(cityList);
        }catch (Exception e){
            return "common/errorpage";
        }
    }

    @RequestMapping(value = "queryAreaByCode",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String queryTownByCityCode(@RequestParam("id") String id){
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            List<Town> areaList= workerInfoService.queryTownByCityCode(id);
            return objectMapper.writeValueAsString(areaList);
        }catch (Exception e){
            return "common/errorpage";
        }
    }

}
