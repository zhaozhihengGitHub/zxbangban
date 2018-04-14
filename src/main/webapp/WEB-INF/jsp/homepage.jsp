<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<html>
<head>
    <title>个人主页 | 装修帮办服务平台</title>
    <%@include file="common/head.jsp" %>

    <style type="text/css">
        .show{
            display: inline-block;
        }
        #mess{
            display: none;
        }
        .tip{
            width: 100%;
            background: #d5d5d2;
            box-shadow: 0 0 12px 5px #fff;
            padding:20px;
            margin-bottom:20px;
        }
        .row{
            margin:0;
            padding-left:0;
            padding-right:0;
        }
        dl{
            width:100%;
            font-size:16px
        }
        dl dd{
            border-top:1px dashed #ccc;
            font-size:14px;
            line-height: 40px;
        }
        dl dt{
            font-size:16px;
            line-height:50px;
        }
        .worker_desc{
            width:100%;
            height:auto;
            background: #fff;
            margin-top:10px;
            margin-bottom:10px;
            border:1px solid #ccc;
            -webkit-box-shadow: 0px  0px  12px  0px #000;
            -moz-box-shadow:0px  0px  12px  0px #000;
            box-shadow: 0px  0px  12px  0px #000;
        }
        .worker_desc li{
            color: #000;
        }
        .worker_desc li p{
            text-indent:2em;
            padding-left: 20px;
            color: #6c6c6c;
            font-size:16px;
        }
        .worker_desc li h3{
            padding-left:20px;
            color: #666;
        }
        .panel>.panel-body{
            text-align: inherit;
        }
        .xiaoqu{
            position: absolute;
            bottom:0;
            left:0;
            font-size:20px;
            color:#fff;
            width:95%;
            height:30px;
            line-height: 30px;
            text-align: center;
            background: rgba(0,0,0,.5);
            font-style:normal;
            margin-left:2%;
        }
        .aaaa{
            width: 100%;
            height: 42px;
            line-height: 42px;
            text-align: center;
            display: block;
            background-color: #ff4400;
            color: #fff;
            font-size: 14px;
        }
        .aaaa:hover{
            color:#fff ;
        }
        @media screen and (max-width:660px){
            .sm_ov .sm_dt{
                width:190%;
            }
            .sm_dt dt{
                font-size:14px;
            }
            .sm_dt dd{
                font-size:12px;
            }
            .col-md-3,.col-sm-3,.col-xs-3{
                padding-left:0;
                padding-right: 0;
            }
            .col-md-2,.col-sm-2,.col-xs-2{
                padding-left:0;
                padding-right: 0;
                font-size:14px ;
            }
            .sm_ul{
                width:100%;
                display: flex;
                flex-wrap: wrap;
            }
            .sm_ul li{
                float: left;
                flex: 1;
            }

            .sm_ov{
                width:100%;
                overflow: auto;
            }
            .sm_ov .sm_sc{
                width:280%;
            }
        }
        .worker_workinfo{
            background:#fff;
            margin:10px 0 10px;
            border-radius: 4px;
            -webkit-box-shadow:0px 0px 12px 0px #000;
            box-shadow: 0px 0px 12px 0px #000;
        }
        @media screen and (max-width:660px){
            .workerHomePageCard{
                font-size:16px;
            }
            .workerHomePageCard li{
                line-height: 28px;
            }
            .worker-introduction p{
                font-size:14px;
                line-height:22px;
            }
        }
    </style>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="page-wrapper"  style="background: #eee;">
    <div class="container-fluid" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerhomepagebgi.png');height: auto; ">
        <div class="container">
            <div style="margin-top: 40px">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-12 col-xs-12 column"  style="text-align: center">
                        <div class="" style="padding-bottom: 40px">
                            <img class="img-circle img-responsive worker-head-img" src=" ${workerinfo.headImgUrl}">
                        </div>
                    </div>

                    <div class="col-md-5 col-sm-6 col-xs-12 column">
                        <div>
                            <ul class="workerHomePageCard" style="padding-left: 0">

                                <li>
                                    <span>姓名：${workerinfo.name}</span>
                                    <c:choose>
                                        <c:when test="${workerinfo.authenticated}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Authenticated.png" data-toggle="tooltip"
                                                 title="已实名认证"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnAuthenticated.png" data-toggle="tooltip"
                                                 title="未实名认证"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${workerinfo.certificated}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Certificated.png" data-toggle="tooltip"
                                                 title="平台已认证"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnCertificated.png" data-toggle="tooltip"
                                                 title="平台未认证"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${workerinfo.pr}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_Review.png" data-toggle="tooltip"
                                                 title="工程已考察"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_UnReview.png" data-toggle="tooltip"
                                                 title="工程未考察"/>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li>
                                    年龄:<span class="" id="age">${workerProfile.age}岁</span>
                                </li>
                                <li>
                                    工龄:<span class="" id="jobyear">${workerinfo.jobYear}</span>
                                </li>
                                <li>
                                    籍贯:<span  id="address">${workerinfo.address}</span>
                                </li>
                                <li>
                                    擅长风格:<span  id="style">${workerinfo.style}</span>
                                </li>
                                <li>
                                    现工程地址:<span  id="location">${workerinfo.location}</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 column">
                        <div>
                            <ul class="workerHomePageCard">
                                <li>
                                    出身工种:
                                    <span id="jobId">
                                        <c:forTokens items="设计师,施工队,水电工,防水工,瓦工,木工,腻子工,集成吊顶,定制家具,石材安装,壁纸壁布,木门安装,
 油漆工,监理,卫浴洁具,灯饰灯具,窗帘安装,学徒工,搬运工,家政服务,租车送货,地板安装,a,a,瓷砖美缝,包立管,拆墙开槽,成品家具,a,a,集成墙板,a,橱柜安装,软包硬包,五金挂件,家具补漆,
 开荒保洁,厨卫电器,空调安装,新风系统,净水系统,安防系统,智能家居,玻璃安装,铁艺制作,更换窗纱,栏杆护栏,暖通设备,广告招牌,晾衣架,背景墙,硅藻泥,淋浴房,防盗门,防盗网,铝门窗,
 遮阳棚,阳光房,卷闸门,铜艺门,开锁解锁,水钻开孔,空调清洗,烟机清洗,甲醛治理" delims="," var="item" varStatus="status" >
                                            <c:if test="${workerinfo.jobId==status.count}">${item}</c:if>
                                        </c:forTokens>
                                    </span>

                                </li>
                                <li>
                                    <span>综合评分:<span class="" id="oARating">${workerinfo.overAllRating}</span></span>
                                </li>
                                <li>
                                    <span>浏览量：<span class="" id="pageview"></span><span class="glyphicon glyphicon-eye-open"></span> </span>
                                </li>
                                <li>
                                    星级：
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </li>
                                <c:choose>
                                        <c:when test="${workerinfo.state == true}">
                                            <li>
                                            施工状态:
                                            <span   style="color: red">
                                                    施工中
                                            </span>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li>
                                                施工状态:
                                            <span  style="color: #83d944">
                                                     可预约
                                            </span>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                    <li>
                                       <span>
                                            <c:choose>
                                                <c:when test="${workerinfo.jobId==2}">
                                                    <a href="/c/appoint/workerid=${workerinfo.workerId}/free" class="aaaa">
                                                        预约工长获取免费报价
                                                    </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <button class="btn btn-success" id="tellNum" type="button" >
                                                        获取手机号&nbsp;(--)
                                                    </button>
                                                </c:otherwise>
                                            </c:choose>
                                        </span>
                                    </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row" >
                        <div  id="mess"  class="col-md- col-sm-12 col-xs-12  column">
                            <span style="color: white;font-size: 21px ">工人手机号：${workerinfo.tel}</span><br/>
                            <span  style="color: red;font-size:20px"><br/><p style="text-indent:2em;line-height: 25px;" class="tip">
                            温馨提示：在选择平台工人给您提供服务时，过低的报价可能存在家装风险，为了您的装修资金、施工服务、售后服务得到保障，
                            可以选择通过平台签订<a>三方施工协议</a>，并通过平台进行约束，否则您在家装过程中出现的任何问题本平台不予保障！</p></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row worker_workinfo">
            <img src="/resources/images/worker/workinfo.png" width="100%">
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column worker_desc" style="padding-left:0;padding-right: 0;" >
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-titile">
                            业主预约信息:
                        </h3>
                    </div>
                    <div class="panel-body sm_ov">
                        <dl class="row sm_dt" >
                            <dt class="col-md-2 col-xs-2  col-sm-2" >业主</dt>
                            <dt class="col-md-4 col-xs-4 col-sm-4">小区</dt>
                            <dt class="col-md-3 col-xs-3 col-sm-3">手机号</dt>
                            <dt class="col-md-3 col-xs-3 col-sm-3">时间</dt>

                            <c:forEach var="customer" items="${customers}">
                                <c:set var="cust" scope="page" value="${customers}"></c:set>
                                <dd class="col-md-2 col-xs-2  col-sm-2">${customer.name}</dd>
                                <dd class="col-md-4 col-xs-4  col-sm-4">${customer.programAddress}</dd>
                                <dd class="col-md-3 col-xs-3  col-sm-3" class="telphone">${customer.telphone.substring(0,3)}****${customer.telphone.substring(7,11)}</dd>
                                <dd class="col-md-3 col-xs-3  col-sm-3">${customer.createTime.toLocaleString()}</dd>
                            </c:forEach>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="row clearfix">
                <div class="col-md-12 column worker_desc" style="padding-left:0;padding-right: 0;">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                         <h3 class="panel-titile">
                            工程订单案例:
                        </h3>
                    </div>
                    <div class="panel-body sm_ov">
                        <dl class="row sm_sc" >
                            <dt class="col-md-2 col-sm-2 col-xs-2">小区</dt>
                            <dt class="col-md-2 col-sm-2 col-xs-2">面积</dt>
                            <dt class="col-md-2 col-sm-2 col-xs-2">报价</dt>
                            <dt class="col-md-2 col-sm-2 col-xs-2">施工方式</dt>
                            <dt class="col-md-2 col-sm-2 col-xs-2">当前状态</dt>
                            <dt class="col-md-2 col-sm-2 col-xs-2">时间</dt>
                            <c:set var="workerDes" value="${workerinfo.projectDes.split(';')}"></c:set>
                            <c:forEach var="info"  items="${workerDes}">
                                <dd class="col-md-2 col-sm-2 col-xs-2">${info}</dd>
                            </c:forEach>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column worker_desc" style="padding-left:0;padding-right: 0;">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-titile">
                            工程案例展示:
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div id="projectimg">
                            <h4 class="loading">Loading</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp" %>
</body>
<%@include file="common/script.jsp" %>
<script type="text/javascript">
    $(function () {
        var $wid = "${workerinfo.workerId}";
        setTimeout(function () {
            homepagestate.detail.a($wid);
            homepagestate.detail.c($wid);
        },3000);
        $("[data-toggle='tooltip']").tooltip();
//        $(".sm_sc dd:nth-child(2n)").attr("class","col-xs-2");
//        $(".sm_sc dd:nth-child(3n)").attr("class","col-xs-1");
//        $(".sm_sc dd:nth-child(6n)").attr("class","col-xs-3");
    });
    $("#tellNum").click(function(){
        $("#mess").toggleClass("show");
    });
</script>
</html>