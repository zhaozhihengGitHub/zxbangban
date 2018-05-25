package com.zxbangban.service.Impl;

import com.zxbangban.dao.CouponDao;
import com.zxbangban.entity.Coupon;
import com.zxbangban.service.CouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CouponServiceImpl implements CouponService {

    @Autowired
    private CouponDao couponDao;

    @Override
    public List<Coupon> queryAllCoupons(Integer mid,Integer a,Integer b) {
        return couponDao.queryAllCoupons(mid,a,b);
    }

    public List<Coupon> queryCoupons() {
        return couponDao.queryCoupons();
    }

    public int updateReceiveCount(long id,long count){
        int i=couponDao.updateReceiveCount(id,count);
        return i;
    }

    public int addCoupon(Coupon coupon){
        int i=couponDao.addCoupon(coupon);
        return i;
    }
}
