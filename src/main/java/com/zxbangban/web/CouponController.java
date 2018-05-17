package com.zxbangban.web;

import com.zxbangban.entity.Coupon;
import com.zxbangban.service.CouponService;
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

    @RequestMapping(value ="/thomeFair")
    public String thomeFair(Model model){
        List<Coupon> coupons = couponService.queryAllCoupons();
        model.addAttribute("coupons",coupons);
        return "jiabohui/thomeFair";
    }

}
