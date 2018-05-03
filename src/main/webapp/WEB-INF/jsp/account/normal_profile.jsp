<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/9
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp"%>
<html>
<head>
    <title>装修帮办|你的个人资料</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .headimg{
            background-color: #cccccc;
        }
        .jumbotron div{
            margin-top:10px;
            font-size: 20px;
        }
        .user input{
            width:150px;
            height:34px;
            background:#fff;
            padding:0 10px;
            border: none;
            font-size: 16px;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 col-sm-12 col-xs-12 column">
                <ul class="nav nav-pills nav-justified" style="">
                    <li><a href="${pageContext.request.contextPath}/my-account/center">会员账号</a></li>
                    <li  class="active"><a href="${pageContext.request.contextPath}/my-account/profile">我的信息</a></li>
                    <li><a href="#">订单信息</a></li>
                    <li><a href="#">协议与合同</a></li>
                    <li><a href="#">服务</a></li>
                </ul>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <h2>我的信息</h2>
                    <ol class="nav nav-tabs">
                        <li class="active"><a href="${pageContext.request.contextPath}/my-account/profile">会员资料</a></li>
                        <li><a href="#">联系人信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/my-account/profile-workerinfo">工人信息</a></li>
                    </ol>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 column">
                <div class="jumbotron">
                        <img src="${userinfo.headImgUrl}" class="img-circle img-responsive headimg"/>
                        <%--<span class="text-center">
                            <button type="button" class="btn btn-link" onclick="ei(this)" value="${userinfo.userId}">修改头像</button>
                        </span>--%>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-12 column">
                <div class="jumbotron">
                    <div>
                        <h3 style="margin-bottom: 0">姓名：${userProfile.name}</h3>
                    </div>
                    <div>
                        <span class="user" id="${userinfo.telphone}">手机号：<input type="text" readonly value="${userinfo.telphone}"> </span>
                        <button class="btn btn-primary updateTel" style="  position:relative;top:-4px;">修改</button>
                        <button class="btn btn-primary saveTel" style="  position:relative;top:-4px;">保存</button>
                    </div>
                    <div>
                        <span class="user" >会员生日：${sydate}</span>
                    </div>
                    <div>
                        <span class="user">会员等级：${userinfo.memberLevel} 级</span>
                    </div>
                    <div>
                        <span>${userProfile.memberShip}</span>
                    </div>
                    <div >
                        <span>${userProfile.projectAddresses}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>

</body>
<%@include file="../common/script.jsp"%>
<script>
    $(function(){
        $('.updateTel').click(function () {
            $(this).parent().find('input').removeAttr('readonly').css({"border":"1px solid #ccc"});
        })
        $('.saveTel').click(function () {
            var oTel= $(this).parent().find('span').attr('id');
            var $tel=$(this).parent().find('input');
            var nTel= $tel.val();
            var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
            if (nTel.length === 0) {
                $tel.val("");
                $tel.attr("placeholder","请输入手机号");
            } else if (!($telRegular.test(nTel))) {
                $tel.val("");
                $tel.attr("placeholder", "手机号输入有误！");
            } else {
                $.ajax({
                    url:"${pageContext.request.contextPath}/my-account/updateTel",
                    data:{"oldTel":oTel,"newTel":nTel},
                    type:"post",
                    success:function (data) {
                        if(data=="0"){alert("修改失败！");}
                        if(data=="1"){alert("修改成功！");}
                        if(data=="2"){ $tel.val(oTel); alert("手机号已存在");}
                    }
                });
                $tel.attr('readonly','true').css({"border":"0"});
            }
        })
    })

</script>
</html>
