package com.zxbangban.entity;

public class PageBean {
    //起始索引
    private int startIndex=0;
    //一页显示的数据
    private int pageSize=50;
    //当前页
    private int pageNumber=1;
    //总记录数
    private int totalRecoed;
    //总页数
    private int totalPage;

    public PageBean() {
    }

    public PageBean(int startIndex, int pageSize, int pageNumber, int totalRecoed, int totalPage) {
        this.startIndex = startIndex;
        this.pageSize = pageSize;
        this.pageNumber = pageNumber;
        this.totalRecoed = totalRecoed;
        this.totalPage = totalPage;
    }

    public int getStartIndex() {
        return startIndex=(pageNumber-1)*pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getTotalRecoed() {
        return totalRecoed;
    }

    public void setTotalRecoed(int totalRecoed) {
        this.totalRecoed = totalRecoed;
    }

    public int getTotalPage() {
        return totalPage=(totalRecoed%pageSize == 0?totalRecoed/pageSize:totalRecoed/pageSize+1);
    }
}
