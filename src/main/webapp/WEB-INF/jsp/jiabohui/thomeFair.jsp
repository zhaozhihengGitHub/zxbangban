<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="../common/tag.jsp"%>--%>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>优惠券领取 | 装修帮办家博会</title>
    <style>
        .fl{float:left;}
        .fr{float:right;}
        /*索票*/
        .ttic_login{
            max-width: 300px;
            box-sizing: border-box;
            font-size:14px;
            text-align:center;
            margin:0 auto;
        }
        .tic_title {
            line-height: 46px;
            font-size:26px;
            text-align: center;
            color: #d80c18;
        }
        button.btn-yzm{
            height:37px;
            width:90px;
            position:absolute;
            right:0;
            margin-top:0;
            font-size: 14px;
            line-height: 24px;
            background:#d80c18;
            outline: none;
        }
        .btn-primary {
            background-color: #d80c18;
            border-color: #d80c18;
            outline: none;
        }
        .btn-primary.active,.btn-primary:active,.btn-primary:focus,.btn-primary:hover,.open>.dropdown-toggle.btn-primary {
            background-color: #d80c18;
            border-color: #d80c18;
            opacity: .85;
            filter: alpha(opacity=85);
            outline: none;
        }
        .tic_input {
            height: 42px;
            border: #ccc solid 1px;
            color: #333;
            line-height: 42px;
            padding-left: 10px;
            box-sizing: border-box;
            margin-bottom: 15px;
            position: relative;
        }
        .tic_input.adr {
            height: 74px;
        }
        .tic_input.adr .jb_ph {
            line-height: 18px !important;
            margin-top: 10px;
        }
        .tic_input .adress {
            width: 220px;
            line-height: 18px;
            resize: none;
            height: 62px;
            outline: none;
            padding-top: 10px;
        }
        .tic_input .ipt-label {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            width: 60px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            float: left;
        }
        .tic_input .ipt-box {
            float: left;
        }
        .tic_input .ipt_txt {
            color: #333;
            outline: none;
            height: 38px;
            line-height: 38px;
            float: left;
            border: 0;
        }
        .tic_input .jb_ph {
            left: 0px !important;
        }
        .tic_input .short {
            width: 130px;
        }
        .tic_input .test {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            float: right;
            position: relative;
            top: 2px;
            right: 2px;
        }
        .tic_num {
            height: 25px;
            font-size: 14px;
            text-align: center;
        }
        .tic_num em {
            color: #b60c2e;
            display: inline;
            font-style:normal;
        }
        .tic_btn button {
            width:100%;
            height: 45px;
            color: #fff;
            line-height: 45px;
            text-align: center;
            background: #d80c18;
            border-radius: 4px;
            border: 0;
            margin:0 0 20px 0;
        }
        /*爆款*/
        .explosive_box{
            padding:15px 0;
            margin: 0 auto;
        }
        .t_con_tit{
            text-align:center;
        }
        .t_con_tit a{
            color:#333;
        }
        .explosive_box .odds_li{
            overflow: hidden;
            width: 100%;
            display: block;
            padding:0 15px;
        }
        .explosive_box li{
            padding:10px 5px;
            float: left;
            width:49%;
            margin-right:1%;
            display: block;
            margin-top: 10px;
            border:1px solid #ccc;
        }
        .explosive_box .odds_under{
            height:80px;
            padding-left: 5px;
            padding-right: 5px;
        }
        .explosive_box .small_img{
            height: 56px;
            padding-top: 12px;
        }
        .explosive_box .small_img img{
            height: 30px;
            width: 87px;
            display: block;
            text-align: center;
        }
        .explosive_box .small_img span{
            display: block;
            width:100%;
            text-align:center;
            line-height: 20px;
            height: 40px;
            font-size:12px;
        }
        .explosive_box .price{
            overflow:hidden;
        }
        .explosive_box .odds_under .price p i{
            font-style: normal;
            font-size: 18px;
        }
        .explosive_box .odds_under .price p{
            width:100%;
            text-align:center;
            color: #ce012e;
            font-size:18px;
            margin:0;
        }
        .explosive_box .price_box{
            width:100%;
            text-align:center;
        }
        .explosive_box .red_button{
            width: 100px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            border:none;
            background: #d80c18;
            color: #fff;
        }
        /*优惠券*/
        .t_sale_li{
            overflow: hidden;
            width: 100%;
            display: block;
            padding: 0 15px;
        }
        .t_sale_li {
            margin-top:10px;
        }
        .t_sale_li li {
            float: left;
            width: 49%;
            height: 80px;
            padding:5px 5px;
            background: #fff;
            box-sizing: border-box;
            border: 1px solid #000;
            position: relative;
        }
        .t_sale_li li:nth-child(4), .t_sale_li li:nth-child(8), .t_sale_li li:nth-child(12),
        .t_sale_li li:nth-child(16), .t_sale_li li:nth-child(18), .t_sale_li li:nth-child(22),
        .t_sale_li li:last-child {
            margin-right: 0px;
        }
        .t_sale_li li em {
            display: block;
            margin-top: 8px;
            font-style: normal;
            font-size: 12px;
        }
        .t_sale_li li span {
            display: inline-block;
            font-size:24px;
            height:24px;
            position: relative;
        }
        .t_sale_li li span b {
            font-size: 18px;
            width: 10px;
            height: 6px;
            position: absolute;
            bottom: 5px;
        }
        .t_sale_li li .t_r button {
            display: block;
            width: 70px;
            height: 20px;
            line-height: 20px;
            text-align: center;
            color: #fff;
            border-radius: 4px;
            margin-top:6px;
            margin-left:10px;
            border: medium none;
            font-size: 12px;
            float: right;
        }
        .t_l i {
            width: 1px;
            height: 66px;
            position: absolute;
            background: #eee;
            left:70px;
            top:0;
        }
        .t_r {
            width:90px;
            position: absolute;
            margin-top: 2px;
            right: 4px;
            top: 5px;
        }
        .t_r p {
            width: 70px;
            font-size: 12px;
            color: #666;
            padding: 0 5px;
            text-align: center;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            float: right;
        }
        .t_sale_li li .t_r button.over {
            background: #cccccc;
        }
        .ling {
            font-size: 12px;
            color: #999;
            margin-top: 6px;
            position: absolute;
            bottom: 2px;
            right: 7px;
        }
        .t_l em {
            color: #333;
            display: block;
            margin-top: -6px;
            float: left;
            font-size: 12px;
            text-align:left;
        }
        .t_l {
            position: relative;
            width:70px;
            text-align: center;
        }
        /*厨房卫浴*/
        .t_sale_li li.kitchen {
            border: #d0e4fd solid 2px;
        }
        .t_sale_li li.kitchen span {
            color: #2b86f4;
        }
        .t_sale_li li.kitchen .ling e {
            color: #2b86f4;
        }

        .t_sale_li li.kitchen .t_r button {
            background: #2b86f4;
        }
        /*地板门窗*/
        .t_sale_li li.floor {
            border: #c6e9eb solid 2px;
        }
        .t_sale_li li.floor span {
            color: #00c1ca;
        }
        .t_sale_li li.floor .ling e {
            color: #00c1ca;
        }
        .t_sale_li li.floor .t_r button {
            background: #00c1ca;
        }
        /*家具软装*/
        .t_sale_li li.fitment {
            border: #fdd1d0 solid 2px;
        }
        .t_sale_li li.fitment span {
            color: #d80c18;
        }
        .t_sale_li li.fitment .ling e {
            color: #d80c18;
        }
        .t_sale_li li.fitment .t_r button {
            background: #d80c18;
        }
        /*综合建材*/
        .t_sale_li li.build {
            border: #fccaeb solid 2px;
        }
        .t_sale_li li.build span {
            color: #d2389d;
        }
        .t_sale_li li.build .ling e {
            color: #d2389d;
        }
        .t_sale_li li.build .t_r button {
            background: #d2389d;
        }
        /*家用电器*/
        .t_sale_li li.electrical {
            border: #f4e2c6 solid 2px;
        }
        .t_sale_li li.electrical span {
            color: #ed8c00;
        }
        .t_sale_li li.electrical .ling e {
            color: #ed8c00;
        }
        .t_sale_li li.electrical .t_r button {
            background: #ed8c00;
        }
        /*弹框*/
        .mask-box{
            width:100%;
            height:100%;
            position: fixed;
            background:rgba(0,0,0,0.6);
            z-index:999;
            top:0;
            left:0;
        }
        .mask{
            position: relative;
            width:90%;
            padding:60px 20px;
            background:#fff;
            margin:0 auto;
            margin-top:25%;
        }
        .mask h3{
            font-size:20px;
            text-align:center;
            margin-bottom:30px;
            margin-top:0;
        }
        .mask button.mask-btn{
            background:#d80c18;
            width:100%;
            height:40px;
            line-height:40px;
            color:#fff;
            font-size:24px;
            border-radius:5px;
            border: medium none;
        }
        .closebt{
            position:absolute;
            width:20px;
            height:28px;
            top:10px;
            right:20px;
            font-size:28px;
        }
        .yhdec{
            width:100%;
            font-size:14px;
            margin-bottom:20px;
            color:#d80c18;
        }
        .yhdec i{
            font-style:normal;
        }
    </style>
    <script src="../../../resources/js/jquery-1.12.0.min.js"></script>
</head>
<body style="position:relative;">
<%@include file="../common/head.jsp"%>
<%@include file="../common/header.jsp"%>
<div class="container">
    <div class="row">
        <div class="ttic_login" id="expo_home">
            <form action="${pageContext.request.contextPath}/c/thomeFair" method="post">
                <div class="tic_title">家博会免费索票</div>
                <div class="tic_num">已有<em>408</em>人索票</div>
                <div class="tic_input">
                    <label class="ipt-label">姓名：</label>
                    <div class="ipt-box">
                        <input type="text" name="name" class="ipt_txt" placeholder="请输入姓名" id="reserve_name"/>
                    </div>
                </div>
                <div class="tic_input">
                    <label class="ipt-label">手机：</label>
                    <div class="ipt-box">
                        <input type="text" name="tel" class="ipt_txt short" placeholder="请输入手机号码" maxlength="11"/>
                    </div>
                    <div class="test">
                        <button class="btn btn-primary btn-yzm" type="button" id="codebtn">验证码</button>
                    </div>
                </div>
                <div class="tic_input">
                    <label class="ipt-label">验证码：</label>
                    <div class="ipt-box">
                        <input type="text" name="telcode"  class="ipt_txt" placeholder="请输入验证码"/>
                    </div>
                </div>
                <div class="msg-box">
                    <div class="msg msg-error hide">
                        <i></i>
                        <div class="msg-cnt"></div>
                    </div>
                </div>
                <div class="tic_btn">
                    <button type="submit" id="jiabohui" name="${jiabohui}" >免费索票</button>
                </div>
                <div class="tic_under"><p>温馨提示：索票成功后，我们的客服将使用0355-8881777电话与您联系，请保持电话畅通。</p></div>
            </form>
        </div>
    </div>
    <%--<div class="row">
        <div class="t_con explosive_box">
            <h3  class="t_con_tit"><a href="javascript:;">爆品预约</a></h3>
            <ul class="odds_li clearfix">
                <li>
                    <div>
                        <a href="javascript:;;">
                            <img src="../../../resources/images/jbhimg/ftdq.jpg" width="100%"/></a>
                        <div class="odds_under">
                            <div class="small_img">
                                <span class="show_goods_name">方太厨电 油烟机EM23TS+灶具FD2B</span>
                            </div>
                            <div class="price">
                                <p><i>¥</i><del>4480.00</del><e style="font-size:14px;"><i>¥</i>1899</e></p>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="price_box">
                        <button class="red_button tankg">立即预约</button>
                        <p style="margin:5px 0 0 0;">剩余 8 个 </p>
                    </div>
                </li>

            </ul>
        </div>
    </div>--%>
    <div class="row">
        <div class="t_con explosive_box">
            <h3  class="t_con_tit"><a href="javascript:;">抢优惠券</a></h3>
            <ul class="t_sale_li clearfix">
                <c:forEach var="coupon" items="${coupons}">
                    <li class="clearfix kitchen">
                        <div class="t_l fl">
                            <span>${coupon.preferentialMoney}<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满${coupon.totalMoney}可用</em>
                        </div>
                        <div class="t_r fl">
                            <p>${coupon.brandName}</p>
                            <button id="${coupon.id}" class="J_GetCoupon tankg" onclick="recieve(this)">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>${coupon.receiveCount}</e>张</div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

<%@include file="../common/footer.jsp" %>
<script>
    $(function () {
        appointment.detail.validata();
    })
    function closebt(){
        $('.mask-box').remove();
    }
    function recieve(param){
        var id=$(param).attr("id");
        var brandname=$(param).siblings("p").text();
        var count=$(param).parent().siblings(".fr").find("e").text();

        var xx='<div class="mask-box"><div class="mask"><p class="closebt" onclick="closebt();">x</p><form action="${pageContext.request.contextPath}/c/coupon" method="post"><h3>'+brandname+'</h3><input type="hidden" name="id" value="'+id+'"><input type="hidden" name="brandname" value="'+brandname+'"><input type="hidden" name="count" value="'+ count +'"><input type="text" name="username" placeholder="姓名"><input type="text" name="telphone" placeholder="手机"><p class="yhdec">优惠信息：装修帮办为您提供支付满<i>5000</i>减<i>200</i>的优惠券</p><button type="submit" onclick="return confirm()">确&nbsp;&nbsp;认</button></form></div></div>';


        var xx1='<div class="mask-box"><div class="mask"><p class="closebt" onclick="closebt();">x</p><form action="${pageContext.request.contextPath}/c/coupon" method="post"><h3>'+brandname+'</h3><input type="hidden" name="id" value='+id+'><input type="hidden" name="brandname" value='+brandname+'><input type="hidden" name="count" value='+ count +'><div class="tic_input"><div class="ipt-box"><input type="text" name="username" class="ipt_txt" placeholder="请输入姓名" id="reserve_name"/></div></div><div class="tic_input"><div class="ipt-box"><input type="text" name="telphone" class="ipt_txt short" placeholder="请输入手机号码" maxlength="11"/></div><div class="test"><button class="btn btn-primary btn-yzm" type="button" id="codebt"  onclick="sendCode()">验证码</button></div></div><div class="tic_input"><div class="ipt-box"><input type="text" id="a" name="tcode"  class="ipt_txt" placeholder="请输入验证码"/></div></div><p class="yhdec">优惠信息：装修帮办为您提供支付满<i>5000</i>减<i>200</i>的优惠券,可在各品牌专卖店或平台举办的团购活动中使用，详情咨询0355-8881777</p><button class="mask-btn" type="submit" onclick="return confirm()">确&nbsp;&nbsp;认</button></form></div>'
        $("body").append(xx1);
    }
    function confirm() {
        if (valiName() === false) {
            return false;
        }
        if (valiTel() === false) {
            return false;
        }
        if (valiTelCode() === false) {
            return false;
        }
        if(valiName() === true && valiTel() === true){
            alert("恭喜您！优惠券领取成功，稍后我们的客服会用0355-8881777电话与您联系，请保持电话畅通");
        }
    };

    function valiName() {
        var $name = $("input[name=username]");
        var $temp = $name.val();
        var $nameRegular = /^[\u4e00-\u9fa5\\w]+$/;
        if ($temp.length === 0) {
            $name.attr("placeholder", "名字不能为空！");
            return false;
        } else if ($temp.length < 2) {
            $name.val("");
            $name.attr("placeholder", "名字不能少于两个字");
            return false;
        } else if ($temp.length > 6) {
            $name.val("");
            $name.attr("placeholder", "名字太长了！");
            return false;
        } else if (!($nameRegular.test($temp))) {
            $name.val("");
            $name.attr("placeholder", "名字只可以是中文！");
            return false;
        } else {
            return true;
        }
    }
    function valiTel() {
        var $tel = $("input[name=telphone]");
        var $temp = $tel.val();
        var $telRegular = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
        if ($temp.length === 0) {
            $tel.val("");
            $tel.attr("placeholder","手机号还没写！");
            return false;
        } else if (!($telRegular.test($temp))) {
            $tel.val("");
            $tel.attr("placeholder", "手机号输入有误，请重新输入！");
            return false;
        } else {
            return true;
        }
    }

    function sendCode(){
        var telphone = $("input[name=telphone]").val();
        if (telphone.length > 0) {
            var count = 60;
            var $codeBtn = $("#codebt");
            $codeBtn.addClass("disabled");
            var timer = setInterval(function () {
                count = count - 1;
                $codeBtn.text(count + "秒后重发");
                if (count <= 0) {
                    $codeBtn.text("验证码");
                    $codeBtn.removeClass("disabled");
                    clearInterval(timer);
                }
            }, 1000)
            $.ajax({
                beforeSend: function () {
                    valiTel();
                },
                url: "/valitel/aliyunMNSValidate",
                data: {
                    "tel": telphone
                },
                type: "get",
                success: function (data) {
                    var $telCodeTemp = data;
                    $("input[name=tcode]").attr("id",$telCodeTemp);
                },
                error: function (xhr) {
                    alert(xhr.status + " " + xhr.statusText);
                }
            });
        }
    };
    function valiTelCode() {
        var $telCodeTemp=$("input[name=tcode]").attr("id");
        var $telCode = $("input[name=tcode]");
        if ($telCode.val() !== "" && $telCodeTemp !== "") {
            if ($telCode.val() === $telCodeTemp) {
                return true;
            } else {
                $telCode.val("");
                $telCode.attr("placeholder", "手机验证码不正确！");
                return false;
            }
        } else {
            $telCode.val("");
            $telCode.attr("placeholder","请填写6位的手机验证码！");
            return false;
        }
    }
</script>
</body>
<%@include file="../common/script.jsp" %>
