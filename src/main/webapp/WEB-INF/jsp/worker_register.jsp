<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>入驻工人申请 | 装修帮办服务平台</title>
    <%@include file="common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            background-color: rgba(0,0,0,0.5);
            margin-top: 50px;
            color: white;
            text-align: center;
        }
        form{
            margin: 0 auto;
        }
        .work-type{
            position:fixed;
            width:700px;
            padding:20px;
            margin-left:11%;
            background:#fff;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            top:180px;
            z-index: 5;
            display:none;
        }
        .work-type p{
            display:inline-block;
            font-size:16px;
            padding:10px;
            cursor:pointer;
        }
        @media screen and (min-width: 660px) and (max-width: 990px) {
            .work-type{
                width:70%;
                margin-left:6%;
                top:30%;
            }
            .work-type p{
                font-size:14px;
                padding:6px 6px 6px 0;
            }
        }
        @media screen and (min-width: 280px) and (max-width: 660px) {
            .work-type{
                padding:10px;
                top:15%;
                width:90%;
                margin-left:-2.5%;
            }
            .work-type p{
                font-size:14px;
                padding:6px 6px 6px 0;
            }
        }
    </style>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerregisterbgi.png');background-repeat: no-repeat;height: 750px ">
        <div class="container">
            <div class="work-type row">
                <button type="button" class="close">X</button>
                <p>施工队</p>
                <p>设计师</p>
                <p>监理</p></br>
                <p>水电工</p>
                <p>瓦工</p>
                <p>木工</p>
                <p>腻子工</p>
                <p>油漆工</p>
                <p>防水工</p>
                <p>学徒工</p></br>
                <p>石材安装</p>
                <p>拆墙开槽</p>
                <p>集成吊顶</p>
                <p>集成墙板</p>
                <p>壁纸壁布</p>
                <p>成品家具</p>
                <p>定制家具</p>
                <p>木门安装</p>
                <p>橱柜安装</p>
                <p>软包硬包</p>
                <p>五金挂件</p>
                <p>灯饰灯具</p>
                <p>卫浴洁具</p>
                <p>窗帘安装</p>
                <p>地板安装</p>
                <p>瓷砖美缝</p></br>
                <p>家具补漆</p>
                <p>开荒保洁</p>
                <p>租车送货</p>
                <p>厨卫电器</p>
                <p>空调安装</p>
                <p>新风系统</p>
                <p>净水系统</p>
                <p>安防系统</p>
                <p>智能家居</p>
                <p>玻璃安装</p>
                <p>铁艺制作</p>
                <p>更换窗纱</p>
                <p>栏杆护栏</p>
                <p>暖通设备</p>
                <p>广告招牌</p></br>
                <p>包立管</p>
                <p>搬运工</p>
                <p>晾衣架</p>
                <p>背景墙</p>
                <p>硅藻泥</p>
                <p>淋浴房</p>
                <p>防盗门</p>
                <p>防盗网</p>
                <p>铝门窗</p>
                <p>遮阳棚</p>
                <p>阳光房</p>
                <p>卷闸门</p>
                <p>铜艺门</p></br>
                <p>家政服务</p>
                <p>开锁解锁</p>
                <p>水钻开孔</p>
                <p>空调清洗</p>
                <p>烟机清洗</p>
                <p>甲醛治理</p>
            </div>
            <div class="row clearfix">
                <div class="col-md-8 col-md-offset-2 column">
                    <div class="jumbotron">
                        <h2 style="color: white">平台工人信息录入申请</h2>
                        <form class="bs-example bs-example-form" role="form"
                              action="${pageContext.request.contextPath}/w/register" method="post">
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
                                <span class="input-group-addon">工种</span>
                                <input type="text" class="form-control" placeholder="" name="jobId" readonly>
                                <%--<select name="jobId" class="form-control">--%>
                                    <%--<c:set var="jobs" value="${jobsList}"/>--%>
                                    <%--<c:forEach var="job" items="${jobs}">--%>
                                        <%--<option value="${job.id}">${job.des}</option>--%>
                                    <%--</c:forEach>--%>
                                <%--</select>--%>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <input type="text" class="form-control" placeholder="请输入手机验证码" name="telcode">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button" id="codebtn">验证码</button>
                                </span>
                            </div>
                            <div id="loc" class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">工作地址：</span>
                                <input type="text" id="loction"  class="form-control" placeholder="请输入地址" name="location" onmouseup="getChangeCity()">
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

<%@include file="common/footer.jsp"%>
</body>
<%@include file="common/script.jsp"%>
<script type="text/javascript">
    $(function () {
        workerregister.detail.init();
    });
    function getChangeCity() {
        var loc=$("#city").text();
        $("input[name='location']").val(loc.toString());
    }
    $(function(){
        $("input[name='jobId']").click(function(){
            $(".work-type").show();
        })
        $(".close").click(function(){
            $(".work-type").hide();
        })
        $(".work-type p").click(function(){
            $("input[name='jobId']").val($(this).text());
            $(".work-type").hide();
        })
    })
</script>
</html>