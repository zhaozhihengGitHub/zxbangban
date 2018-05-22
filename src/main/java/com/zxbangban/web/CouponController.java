package com.zxbangban.web;

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

import java.util.List;

@Controller
public class CouponController {
    @Autowired
    private CouponService couponService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value ="/thomeFair")
    public String thomeFair(Model model){
        List<Coupon> ceramicTitles = couponService.queryAllCoupons(1);
        List<Coupon> cupboards = couponService.queryAllCoupons(3);
        List<Coupon> funitures = couponService.queryAllCoupons(4);
        List<Coupon> woodenDoors = couponService.queryAllCoupons(6);
        List<Coupon> sanitaryAppliances = couponService.queryAllCoupons(7);
        List<Coupon> others = couponService.queryAllCoupons(8);
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
        List<Coupon> ceramicTitles = couponService.queryAllCoupons(1);
        List<Coupon> cupboards = couponService.queryAllCoupons(3);
        List<Coupon> funitures = couponService.queryAllCoupons(4);
        List<Coupon> woodenDoors = couponService.queryAllCoupons(6);
        List<Coupon> sanitaryAppliances = couponService.queryAllCoupons(7);
        List<Coupon> others = couponService.queryAllCoupons(8);
        int count = customerService.queryByprority();
        model.addAttribute("ceramicTitles",ceramicTitles);
        model.addAttribute("cupboards",cupboards);
        model.addAttribute("funitures",funitures);
        model.addAttribute("woodenDoors",woodenDoors);
        model.addAttribute("sanitaryAppliances",sanitaryAppliances);
        model.addAttribute("others",others);
        model.addAttribute("count",count);
        return "jiabohui/homeFair";
    }

}
