package com.zxbangban.dao;

import com.zxbangban.entity.Comment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Repository
public interface CommentDao {
   int newComment(@Param("comment")Comment comment);
   List<Comment> queryAllComment();
   List<Comment> queryCommentByWid(@Param("workerId")long workerId);
   List<Comment> queryReplyByWid(@Param("workerId")long workerId);

}
