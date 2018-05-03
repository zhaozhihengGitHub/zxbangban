package com.zxbangban.entity;

public class Comment {
    private long id;
    private long workerId;
    private String username;
    private  String headImg;
    private String contents;
    private String time;
    private boolean commentType;//true为评论，false为回复
    private long commentId;

    public Comment() {
    }

    public Comment(long id, long workerId, String username, String headImg, String contents, String time, boolean commentType, long commentId) {
        this.id = id;
        this.workerId = workerId;
        this.username = username;
        this.headImg = headImg;
        this.contents = contents;
        this.time = time;
        this.commentType = commentType;
        this.commentId = commentId;
    }

    public Comment(long workerId, String username, String headImg, String contents, String time, boolean commentType, long commentId) {
        this.workerId = workerId;
        this.username = username;
        this.headImg = headImg;
        this.contents = contents;
        this.time = time;
        this.commentType = commentType;
        this.commentId = commentId;
    }

    public Comment(long workerId, String username, String headImg, String contents, String time, boolean commentType) {
        this.workerId = workerId;
        this.username = username;
        this.headImg = headImg;
        this.contents = contents;
        this.time = time;
        this.commentType = commentType;
    }

    public Comment(long id, long workerId, String username, String headImg, String contents, String time, boolean commentType) {
        this.id = id;
        this.workerId = workerId;
        this.username = username;
        this.headImg = headImg;
        this.contents = contents;
        this.time = time;
        this.commentType = commentType;
    }

    public long getCommentId() {
        return commentId;
    }

    public void setCommentId(long commentId) {
        this.commentId = commentId;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getWorkerId() {
        return workerId;
    }

    public void setWorkerId(long workerId) {
        this.workerId = workerId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public boolean isCommentType() {
        return commentType;
    }

    public void setCommentType(boolean commentType) {
        this.commentType = commentType;
    }
}
