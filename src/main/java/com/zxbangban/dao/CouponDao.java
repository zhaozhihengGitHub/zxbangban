package com.zxbangban.dao;

import com.zxbangban.entity.Coupon;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CouponDao {
    List<Coupon> queryAllCoupons();
    int updateReceiveCount(@Param("id")long id,@Param("count")long count);
}
