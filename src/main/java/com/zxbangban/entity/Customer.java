package com.zxbangban.entity;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * Created by pingyr on 2017/7/15.
 */
@Repository
public class Customer {
    private long id;

    private String name;

    private String telphone;

    private String programAddress;

    private Integer priority;//类型：0代表业主预约1代表入场卷领取2代表优惠卷领取3代表主材预约4代表贷款申请5装修保

    private Date createTime;

    private String notes;

    private int count;



    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }

    public String getProgramAddress() {
        return programAddress;
    }

    public void setProgramAddress(String programAddress) {
        this.programAddress = programAddress;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Customer() {
    }

    public Customer(long id, String name, String telphone, String programAddress, Date createTime) {
        this.id = id;
        this.name = name;
        this.telphone = telphone;
        this.programAddress = programAddress;
        this.createTime = createTime;
    }

    public Customer(long id, String name, String telphone, String programAddress, Integer priority, Date createTime, String notes) {
        this.id = id;
        this.name = name;
        this.telphone = telphone;
        this.programAddress = programAddress;
        this.priority = priority;
        this.createTime = createTime;
        this.notes = notes;
    }

    public Customer(String name, String telphone, String programAddress, Date createTime, String notes) {
        this.name = name;
        this.telphone = telphone;
        this.programAddress = programAddress;
        this.createTime = createTime;
        this.notes = notes;
    }

    public Customer(String name, String telphone, String programAddress,
                    Integer priority, Date createTime, String notes) {
        this.name = name;
        this.telphone = telphone;
        this.programAddress = programAddress;
        this.priority = priority;
        this.createTime = createTime;
        this.notes = notes;
    }


    public Customer(String name, String telphone, String programAddress, Integer priority, Date createTime, String notes, int count) {
        this.name = name;
        this.telphone = telphone;
        this.programAddress = programAddress;
        this.priority = priority;
        this.createTime = createTime;
        this.notes = notes;
        this.count = count;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", telphone='" + telphone + '\'' +
                ", programAddress='" + programAddress + '\'' +
                ", priority=" + priority +
                ", createTime=" + createTime +
                ", notes='" + notes + '\'' +
                '}';
    }
}
