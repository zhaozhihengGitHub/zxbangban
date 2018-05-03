package com.zxbangban.service;

import com.zxbangban.entity.Comment;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CommentService {

    int newComment(Comment comment);
    List<Comment> queryAllComment();
    List<Comment> queryCommentByWid(long worekerId);
    List<Comment> queryReplyByWid(long worekerId);
}
