<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/22
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${temp}</title>
    <%@include file="common/head.jsp"%>
    <style>
        .jumbotron{
            margin-top: 25%;
            margin-bottom: 15%;
            background:transparent;
        }
        @media screen and (min-width: 1200px) {
            .jumbotron{
                margin-top: 15%;
                margin-bottom: 15%;
                background:transparent;
            }
        }
        .jumbotron h1 {
            font-size: 30px;
        }
    </style>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="container-fluid"  style="background-image:url(../../resources/images/loan_bg.jpg);background-repeat: no-repeat;height: 450px ">
    <div class="jumbotron">
        <h1>${temp}</h1>
    </div>
</div>
<%@include file="common/footer.jsp"%>
</body>
<%@include file="common/script.jsp"%>
</html>

