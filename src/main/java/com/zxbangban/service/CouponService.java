package com.zxbangban.service;

import com.zxbangban.entity.Coupon;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CouponService {
    List<Coupon> queryAllCoupons(Integer mid);
    int updateReceiveCount(long id,long count);
    int addCoupon(Coupon coupon);
}
