<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<html>
<head>
    <title>个人主页 | 装修帮办服务平台</title>
    <style>

        .comment-box{margin-top:110px;}
        @media screen and (min-width: 660px) and (max-width:990px){
            .comment-box{margin-top:160px;}
        }
        @media screen and (max-width: 660px){
            .comment-box{margin-top:0;}
        }
    </style>
    <%@include file="common/head.jsp" %>
    <link href="${pageContext.request.contextPath}/resources/css/comment.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="comment-box">
<div class="commentAll" style="border:0;margin-top:0;">
    <div class="comment-show">
    <c:forEach var="comment" items="${comments}" varStatus="stat" >
        <div class="comment-show-con clearfix">
            <c:if test="${comment.commentType==true}" >
            <div class="comment-show-con-img pull-left"><img src=${comment.headImg} alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">${comment.username} </a>
                    <span class="my-pl-con">${comment.contents}</span>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">${comment.time}</span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left" id="${comment.commentId}">回复</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div>
            </c:if>
            <c:if test="${comment.commentType==false}" >
                <div class="comment-show-con-list pull-left clearfix" style="background: #eee;padding:0 5px;">
                    <div class="pl-text clearfix">
                        <a href="#" class="comment-size-name">${comment.username} </a>
                        <span class="my-pl-con">${comment.contents}</span>
                    </div>
                    <div class="date-dz">
                        <span class="date-dz-left pull-left comment-time">${comment.time}</span>
                    </div>
                    <div class="hf-list-con"></div>
                </div>
            </c:if>
        </div>
    </c:forEach>
    <!--回复区域 end-->
</div>
</div>
<%@include file="common/footer.jsp" %>
</body>