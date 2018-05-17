package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.util.Date;
@Repository
public class Coupon {
    private long id;
    private  String brandName;
    //private  String telphone;
    private String beginTime;
    private  String endTime;
    private  long totalMoney;
    private  long preferentialMoney;
    private long receiveCount;//领取数量
    private  Integer score;//优先级得分
    private  String area;
    private Date createTime;

    public Coupon() {
    }

    public Coupon(long id, String brandName, String beginTime, String endTime, long totalMoney, long preferentialMoney, long receiveCount, Integer score, String area, Date createTime) {
        this.id = id;
        this.brandName = brandName;
        this.beginTime = beginTime;
        this.endTime = endTime;
        this.totalMoney = totalMoney;
        this.preferentialMoney = preferentialMoney;
        this.receiveCount = receiveCount;
        this.score = score;
        this.area = area;
        this.createTime = createTime;
    }

    public Coupon(long id, String brandName, String beginTime, String endTime, long totalMoney, long preferentialMoney, long receiveCount, Integer score, Date createTime) {
        this.id = id;
        this.brandName = brandName;
        this.beginTime = beginTime;
        this.endTime = endTime;
        this.totalMoney = totalMoney;
        this.preferentialMoney = preferentialMoney;
        this.receiveCount = receiveCount;
        this.score = score;
        this.createTime = createTime;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public long getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(long totalMoney) {
        this.totalMoney = totalMoney;
    }

    public long getPreferentialMoney() {
        return preferentialMoney;
    }

    public void setPreferentialMoney(long preferentialMoney) {
        this.preferentialMoney = preferentialMoney;
    }

    public long getReceiveCount() {
        return receiveCount;
    }

    public void setReceiveCount(long receiveCount) {
        this.receiveCount = receiveCount;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
