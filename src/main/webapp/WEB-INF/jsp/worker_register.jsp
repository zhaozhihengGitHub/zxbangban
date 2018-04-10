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
            z-index: 999;
            display:none;
        }
        .work-type li{
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
            .work-type li{
                font-size:14px;
                padding:6px 6px 6px 0;
            }
        }
        @media screen and (min-width: 280px) and (max-width: 660px) {
            .work-type{
                padding:10px;
                top:15%;
                width:90%;
                margin-left:-3%;
            }
            .work-type li{
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
            <ul class="work-type row">
                <button type="button" class="close">X</button>
                <li value="2">施工队</li>
                <li value="1">设计师</li>
                <li value="14">监理</li></br>
                <li value="3">水电工</li>
                <li value="5">瓦工</li>
                <li value="6">木工</li>
                <li value="7">腻子工</li>
                <li value="13">油漆工</li>
                <li value="4">防水工</li>
                <li value="18">学徒工</li></br>
                <li value="10">石材安装</li>
                <li value="27">拆墙开槽</li>
                <li value="8">集成吊顶</li>
                <li value="31">集成墙板</li>
                <li value="11">壁纸壁布</li>
                <li value="32">成品家具</li>
                <li value="9">定制家具</li>
                <li value="12">木门安装</li>
                <li value="33">橱柜安装</li>
                <li value="34">软包硬包</li>
                <li value="35">五金挂件</li>
                <li value="16">灯饰灯具</li>
                <li value="15">卫浴洁具</li>
                <li value="17">窗帘安装</li>
                <li value="22">地板安装</li>
                <li value="25">瓷砖美缝</li></br>
                <li value="36">家具补漆</li>
                <li value="37">开荒保洁</li>
                <li value="21">租车送货</li>
                <li value="38">厨卫电器</li>
                <li value="39">空调安装</li>
                <li value="40">新风系统</li>
                <li value="41">净水系统</li>
                <li value="42">安防系统</li>
                <li value="43">智能家居</li>
                <li value="44">玻璃安装</li>
                <li value="45">铁艺制作</li>
                <li value="46">更换窗纱</li>
                <li value="47">栏杆护栏</li>
                <li value="48">暖通设备</li>
                <li value="49">广告招牌</li></br>
                <li value="26">包立管</li>
                <li value="19">搬运工</li>
                <li value="50">晾衣架</li>
                <li value="51">背景墙</li>
                <li value="52">硅藻泥</li>
                <li value="53">淋浴房</li>
                <li value="54">防盗门</li>
                <li value="55">防盗网</li>
                <li value="56">铝门窗</li>
                <li value="57">遮阳棚</li>
                <li value="58">阳光房</li>
                <li value="59">卷闸门</li>
                <li value="60">铜艺门</li></br>
                <li value="20">家政服务</li>
                <li value="61">开锁解锁</li>
                <li value="62">水钻开孔</li>
                <li value="63">空调清洗</li>
                <li value="64">烟机清洗</li>
                <li value="65">甲醛治理</li>
            </ul>
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
        $(".work-type li").click(function(){
            $("input[name='jobId']").val($(this).text());
            var valnumber=$(this).val();
            $(".work-type").hide();
        })
    })
</script>
</html>