package com.zxbangban.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zxbangban.entity.Comment;
import com.zxbangban.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping(value = "/newComment",method = RequestMethod.POST)
    @ResponseBody
    public String newComment(@RequestParam("headImg")String headImg, @RequestParam("contents")String contents, @RequestParam("username")String usernmae, @RequestParam("time")String time,@RequestParam("commentType")boolean commentType,@RequestParam("commentId")long commentId,HttpServletRequest request){
        Long workerId=(Long) request.getSession().getAttribute("workerId");
        Comment comment=new Comment(workerId,usernmae,headImg,contents,time,commentType,commentId);
        int i=commentService.newComment(comment);
        return "i";
    }

    @RequestMapping(value = "/queryReplyByWid",method = RequestMethod.GET)
    @ResponseBody
    public String queryReplyByWid(@RequestParam("workerId")long wid) throws JsonProcessingException {
        List<Comment> replyList=commentService.queryReplyByWid(wid);
        ObjectMapper objectMapper=new ObjectMapper();
        return objectMapper.writeValueAsString(replyList);
    }

    @RequestMapping(value = "/queryAllComments")
    public  String queryAllComments(Model model){
        List<Comment> comments=commentService.queryAllComment();
        model.addAttribute("comments",comments);
        return "comments";
    }

}
