<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/4
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装修保 | 装修帮办服务平台</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            background-color: rgba(0,0,0,0.5);
            margin-top:60px;
            color: white;
            text-align: center;
        }
        form{
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image:url(../../resources/images/loan_bg.jpg);background-repeat: no-repeat;height: 678px ">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 col-md-offset-2 column">
                    <div class="jumbotron">
                        <h2 style="color: white">装修保</h2>
                        <form class="bs-example bs-example-form" role="form" action="${pageContext.request.contextPath}/c/safeguard" method="post">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">姓名</span>
                                <input type="text" class="form-control" placeholder="请输入姓名" name="name">
                            </div>
                            <br>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">手机号</span>
                                <input type="tel" class="form-control" placeholder="请输入手机号码" name="tel">
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <input type="text" class="form-control" placeholder="请输入手机验证码" name="telcode">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button" id="codebtn">验证码</button>
                                </span>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">小区</span>
                                <input type="text" class="form-control" placeholder="请输入小区名称" name="address">
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">风格</span>
                                <select name="style"  class="form-control">
                                    <option value="田园风格">田园风格</option >
                                    <option value="现代简约">现代简约</option >
                                    <option value="欧式风格">欧式风格</option >
                                    <option value="中式风格">中式风格</option >
                                    <option value="地中海风格">地中海风格</option >
                                    <option value="其他风格">其他风格</option >
                                </select>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">面积</span>
                                <input type="text" class="form-control" placeholder="请输入您的房子的面积" name="area">
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">预算</span>
                                <select name="mode" class="form-control">
                                    <option value="基础装修">基础装修</option >
                                    <option value="半包">半包</option >
                                    <option value="大包">大包</option >
                                </select>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn btn-success btn-block">提交申请</button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script type="text/javascript">
     $(function () {
         workerregister.detail.init();
      });
</script>
</html>