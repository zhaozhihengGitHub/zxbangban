package com.zxbangban.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zxbangban.entity.Coupon;
import com.zxbangban.entity.Customer;
import com.zxbangban.enums.MaterialType;
import com.zxbangban.service.CouponService;
import com.zxbangban.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CouponController {
    @Autowired
    private CouponService couponService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value ="/thomeFair")
    public String thomeFair(Model model){
        Integer a=0;
        Integer b=4;
        List<Coupon> ceramicTitles = couponService.queryAllCoupons(1,a,b);
        List<Coupon> cupboards = couponService.queryAllCoupons(3,a,b);
        List<Coupon> funitures = couponService.queryAllCoupons(4,a,b);
        List<Coupon> woodenDoors = couponService.queryAllCoupons(6,a,b);
        List<Coupon> sanitaryAppliances = couponService.queryAllCoupons(7,a,b);
        List<Coupon> others = couponService.queryAllCoupons(8,a,b);
        int count = customerService.queryByprority();
        model.addAttribute("ceramicTitles",ceramicTitles);
        model.addAttribute("cupboards",cupboards);
        model.addAttribute("funitures",funitures);
        model.addAttribute("woodenDoors",woodenDoors);
        model.addAttribute("sanitaryAppliances",sanitaryAppliances);
        model.addAttribute("others",others);
        model.addAttribute("count",count);
        return "jiabohui/thomeFair";
    }

    @RequestMapping(value ="/homeFair")
    public String homeFair(Model model){
        List<Coupon> coupons = couponService.queryCoupons();
        int count = customerService.queryByprority();
        model.addAttribute("coupons",coupons);
        model.addAttribute("count",count);
        return "jiabohui/homeFair";
    }

    /**
     *
     * @return 家博会
     */
    @RequestMapping("/coupons")
    public String coupons(Model model){
        Integer a=0;
        Integer b=100;
        List<Coupon> ceramicTitles = couponService.queryAllCoupons(1,a,b);
        List<Coupon> cupboards = couponService.queryAllCoupons(3,a,b);
        List<Coupon> funitures = couponService.queryAllCoupons(4,a,b);
        List<Coupon> woodenDoors = couponService.queryAllCoupons(6,a,b);
        List<Coupon> sanitaryAppliances = couponService.queryAllCoupons(7,a,b);
        List<Coupon> others = couponService.queryAllCoupons(8,a,b);
        int count = customerService.queryByprority();
        model.addAttribute("ceramicTitles",ceramicTitles);
        model.addAttribute("cupboards",cupboards);
        model.addAttribute("funitures",funitures);
        model.addAttribute("woodenDoors",woodenDoors);
        model.addAttribute("sanitaryAppliances",sanitaryAppliances);
        model.addAttribute("others",others);
        return "jiabohui/coupons";
    }
    
    @RequestMapping(value = "/queryCoupons",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String queryCoupons(@RequestParam("mid")Integer mid) throws JsonProcessingException {
        Integer a =0;
        Integer b =1000;
        List<Coupon> coupons = couponService.queryAllCoupons(mid, a, b);
        ObjectMapper objectMapper = new ObjectMapper();

        return objectMapper.writeValueAsString(coupons);
    }

}
