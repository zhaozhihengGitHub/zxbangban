package com.zxbangban.service.Impl;

import com.zxbangban.dao.CommentDao;
import com.zxbangban.entity.Comment;
import com.zxbangban.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CommentServiceImpl implements CommentService{
    @Autowired
    private CommentDao commentDao;

    public int newComment(Comment comment){ return  commentDao.newComment(comment);}
    public List<Comment> queryAllComment(){return  commentDao.queryAllComment();}
    public  List<Comment> queryCommentByWid(long worekerId){return commentDao.queryCommentByWid(worekerId);};
    public  List<Comment> queryReplyByWid(long worekerId){return commentDao.queryReplyByWid(worekerId);};
}
