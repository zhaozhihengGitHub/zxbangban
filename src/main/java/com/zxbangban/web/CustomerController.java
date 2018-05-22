package com.zxbangban.web;

import com.zxbangban.entity.Coupon;
import com.zxbangban.entity.Customer;
import com.zxbangban.entity.UserInfo;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by pingyr on 2017/7/14.
 */
@Controller
@RequestMapping("/c")
@SessionAttributes({"workerid"})
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private WorkerInfoService workerInfoService;

    @Autowired
    private AliyunMNService aliyunMNService;

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private CouponService couponService;


    /**
     * 顾客预约托管
     * @param name   顾客姓名
     * @param tel   顾客手机号
     * @param location  工程所在地
     * @param model   预约结果信息
     * @return 预约成功页面
     */
    @RequestMapping(value = "/free-appointment",method = RequestMethod.POST)
    public String freeAppointment(HttpServletRequest httpServletRequest, @RequestParam("name") String name, @RequestParam("tel") String tel,
                                  @RequestParam("location") String location,Model model, SessionStatus sessionStatus){
        String workerId = (String) httpServletRequest.getSession().getAttribute("workerid");
        Customer customer = new Customer(name,tel,location,0,new Date(),"");
        if(workerId != null){
            WorkerInfo workerInfo = workerInfoService.queryWorkerByWorkerId(Long.parseLong(workerId));
            customer.setNotes("预约[工号:" + workerId + ";姓名:"+workerInfo.getName() +
                   "]");
        }

        try{
            int result = customerService.newCustomer(customer);
            model.addAttribute("msg","预约成功！");
            aliyunMNService.SMSNotification(3,tel);
            UserInfo userInfo = userInfoService.queryByRoleId(8);
            String telphone = userInfo.getTelphone();
            aliyunMNService.SMSNotification(4,telphone);
            sessionStatus.setComplete();
            return "appointment/appointmentsuccess";
        }catch (Exception e){
            model.addAttribute("msg","预约失败！");
            return "appointment/appointmentsuccess";
        }

    }

    /*
    * 优惠卷
    * */
    @RequestMapping(value = "coupon",method = RequestMethod.POST)
    public String coupon(@RequestParam("id")long id,@RequestParam("brandname")String brandName,@RequestParam("count")long count,@RequestParam("username")String userName,@RequestParam("telphone")String telphpne){
        Customer customer = new Customer(userName,telphpne,"",2,new Date(),brandName);
        customerService.newCustomer(customer);
        long receive=count+1;
        couponService.updateReceiveCount(id,receive);
        return "redirect:/thomeFair";
    }

    @RequestMapping(value = "/appoint/workerid={workerid}/free")
    public String appointWorker(@PathVariable("workerid") String workerid,Model model){
        model.addAttribute("workerid",workerid);
        return "redirect:/appointment";
    }

    /*
        业主报价信息
     */
    @RequestMapping(value = "/quoted",method = RequestMethod.POST)
    public String customerQuoted(@RequestParam("adds") String name, @RequestParam("tel") String tel,
                                 @RequestParam("type") String type, @RequestParam("area") int area,Model model){
        try{
            Customer customer = new Customer(name,tel,"",0,new Date(),"");
            customer.setNotes("房屋面积：" + area + ";"+"户型:" + type+";");
            customerService.newCustomer(customer);
            model.addAttribute("area",area);
            return "redirect:/quoted/free";
        }catch (Exception e){
            model.addAttribute("msg","报价失败！");
            return "redirect:/home";
        }
    }

    /*
    * 业主报价信息保存
    *
    * */
    @RequestMapping(value = "/customersave",method = RequestMethod.POST)
    public String customerSave( @RequestParam("name") String name, @RequestParam("tel") String tel,
                                @RequestParam("location") String location,Model model){
        try{
            Customer customer = new Customer(name,tel,location,0,new Date(),"");
            customer.setNotes("房屋报价");
            customerService.newCustomer(customer);
            UserInfo userInfo = userInfoService.queryByRoleId(8);
            String telphone = userInfo.getTelphone();
            aliyunMNService.SMSNotification(4,telphone);
            model.addAttribute("msg","保存成功！");
            return "appointment/appointmentsuccess";
        }catch (Exception e){
            model.addAttribute("msg","保存失败！");
            return "appointment/appointmentsuccess";
        }
    }

    /*
    * 家博会入场卷
    *
    * */
    @RequestMapping(value = "/homeFair",method = RequestMethod.POST)
    public String homeFair(@RequestParam("name")String name,@RequestParam("tel")String tel,Model model){
        try {
            int count=customerService.queryByprority();
            if(count>0) {
                Customer customer = new Customer(name, tel, "山西长治", 1, new Date(), "家博会入场卷", count+1);
                customerService.newCustomer(customer);
                //aliyunMNService.SMSNotification(1,tel);
            }
            return "redirect:/homeFair";
        }catch (Exception e){
            e.printStackTrace();
            return "error";
        }
    }

    /*
    * 手机家博会入场卷
    *
    * */
    @RequestMapping(value = "/thomeFair",method = RequestMethod.POST)
    public String thomeFair(@RequestParam("name")String name,@RequestParam("tel")String tel,Model model){
        try {
            int count=customerService.queryByprority();
            if(count>0) {
                Customer customer = new Customer(name, tel, "山西长治", 1, new Date(), "家博会入场卷", count++);
                customerService.newCustomer(customer);
                //aliyunMNService.SMSNotification(1,tel);
            }
            return "redirect:/thomeFair";
        }catch (Exception e){
            e.printStackTrace();
            return "error";
        }
    }
}
