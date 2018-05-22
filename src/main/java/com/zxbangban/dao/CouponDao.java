package com.zxbangban.dao;

import com.zxbangban.entity.Coupon;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CouponDao {
    List<Coupon> queryAllCoupons(@Param("mid")Integer mid);
    int updateReceiveCount(@Param("id")long id,@Param("count")long count);
    int addCoupon(@Param("coupon")Coupon coupon);
}
