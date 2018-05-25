<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" %>
    <meta charset="UTF-8">
    <title>长治装修帮办家博会_长治装修帮办家博会门票</title>
    <meta name="keywords" content="长治装修帮办家博会_长治装修帮办家博会门票"/>
    <meta name="description" content="长治装修帮办家博会_长治装修帮办家博会门票"/>
    <link href="../../../resources/css/jiabohui/base.css" rel="stylesheet" type="text/css"/>
    <link href="../../../resources/css/jiabohui/ticket.css" rel="stylesheet" type="text/css"/>
    <link href="../../../resources/css/jiabohui/coupons.css" rel="stylesheet" type="text/css"/>
    <link href="../../../resources/css/jiabohui/coupon.css" rel="stylesheet" type="text/css"/>
    <script src="../../../resources/js/jiabohui/jquery-1.10.2.min.js" type="text/javascript"></script>
</head>
<body>
<%@include file="../common/head.jsp"%>
<%@include file="../common/header.jsp"%>
<div class="container2">
    <div class="clear"></div>
    <div class="main clearfix">
        <div class="coupons" style="margin-top: 109px;">
            <div class="wrap">
                <div class="banner">
                    <img src="../../../resources/images/jbhimg/cbanner.png" height="400" width="1920">
                </div>
                <div class="wrap_in jb-w">
                    <div class="t_nav_out">
                        <div class="nav-box">
                            <ul class="clearfix" id="J_topBar">
                                <li class="J_EactNav" data-id="0">瓷砖</li>
                                <li class="J_EactNav" data-id="1">橱柜</li>
                                <li class="J_EactNav" data-id="2">木门</li>
                                <li class="J_EactNav" data-id="3">洁具卫浴</li>
                                <li class="J_EactNav" data-id="4">家具</li>
                                <li class="J_EactNav" data-id="5">其他</li>
                            </ul>
                        </div>
                    </div>
                    <div class="t_con">
                        <div class="cook nav-target" style="margin-top:30px;">
                            <div class="left_tit"><p>瓷砖</p></div>
                            <ul class="shop_coupons">
                                <c:forEach var="ceramicTitle" items="${ceramicTitles}" varStatus="vs">
                                <li>
                                    <div class="shop_coupons_left fl">
                                        <div class="shop_coupons_left_left fl">
                                            <p>${ceramicTitle.brandName}</p>
                                        </div>
                                        <div class="shop_coupons_left_right fl">
                                            <div class="fl">
                                                <span class="scr_money">¥</span>
                                            </div>
                                            <div class="fl" style="margin-top:-9px;margin-left:5px;">
                                                <span class="scr_num">${ceramicTitle.preferentialMoney}</span>
                                            </div>
                                            <div class="clear"></div>
                                            <div class="shop_coupons_bac">支付满 ${ceramicTitle.totalMoney} 可用</div>
                                            <div class="shop_coupons_num">
                                                已领 <span>${ceramicTitle.receiveCount}</span> 张
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    <button data-id="6245" class="getCoupon shop_coupons_right" id="${ceramicTitle.id}" onclick="recieve(this)">立即领取
                                    </button>
                                    <div class="clear"></div>
                                </li>
                                </c:forEach>
                                <div style="width: 277px;height: 70pxpx;margin: 55px auto;display: none;"
                                     class="coupon-none">
                                    <img src="../../../resources/images/jbhimg/none.png" alt="" style="width: 277px;height: 70pxpx;">
                                </div>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div class="cook nav-target" style="margin-top:30px;">
                            <div class="left_tit"><p>橱柜</p></div>
                            <ul class="shop_coupons">
                                <c:forEach var="cupboard" items="${cupboards}" varStatus="vs">
                                    <li>
                                        <div class="shop_coupons_left fl">
                                            <div class="shop_coupons_left_left fl">
                                                <p>${cupboard.brandName}</p>
                                            </div>
                                            <div class="shop_coupons_left_right fl">
                                                <div class="fl">
                                                    <span class="scr_money">¥</span>
                                                </div>
                                                <div class="fl" style="margin-top:-9px;margin-left:5px;">
                                                    <span class="scr_num">${cupboard.preferentialMoney}</span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="shop_coupons_bac">支付满 ${cupboard.totalMoney} 可用</div>
                                                <div class="shop_coupons_num">
                                                    已领 <span>${cupboard.receiveCount}</span> 张
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <button data-id="6245" class="getCoupon shop_coupons_right" id="${cupboard.id}" onclick="recieve(this)">立即领取
                                        </button>
                                        <div class="clear"></div>
                                    </li>
                                </c:forEach>
                                <div style="width: 277px;height: 70pxpx;margin: 55px auto;display: none;"
                                     class="coupon-none">
                                    <img src="../../../resources/images/jbhimg/none.png" alt="" style="width: 277px;height: 70pxpx;">
                                </div>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div class="cook nav-target" style="margin-top:30px;">
                            <div class="left_tit"><p>木门</p></div>
                            <ul class="shop_coupons">
                                <c:forEach var="woodenDoor" items="${woodenDoors}" varStatus="vs">
                                    <li>
                                        <div class="shop_coupons_left fl">
                                            <div class="shop_coupons_left_left fl">
                                                <p>${woodenDoor.brandName}</p>
                                            </div>
                                            <div class="shop_coupons_left_right fl">
                                                <div class="fl">
                                                    <span class="scr_money">¥</span>
                                                </div>
                                                <div class="fl" style="margin-top:-9px;margin-left:5px;">
                                                    <span class="scr_num">${woodenDoor.preferentialMoney}</span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="shop_coupons_bac">支付满 ${woodenDoor.totalMoney} 可用</div>
                                                <div class="shop_coupons_num">
                                                    已领 <span>${woodenDoor.receiveCount}</span> 张
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <button data-id="6245" class="getCoupon shop_coupons_right" id="${woodenDoor.id}" onclick="recieve(this)">立即领取
                                        </button>
                                        <div class="clear"></div>
                                    </li>
                                </c:forEach>
                                <div style="width: 277px;height: 70pxpx;margin: 55px auto;display: none;"
                                     class="coupon-none">
                                    <img src="../../../resources/images/jbhimg/none.png" alt="" style="width: 277px;height: 70pxpx;">
                                </div>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div class="cook nav-target" style="margin-top:30px;">
                            <div class="left_tit"><p>洁具卫浴</p></div>
                            <ul class="shop_coupons">
                                <c:forEach var="sanitaryAppliance" items="${sanitaryAppliances}" varStatus="vs">
                                    <li>
                                        <div class="shop_coupons_left fl">
                                            <div class="shop_coupons_left_left fl">
                                                <p>${sanitaryAppliance.brandName}</p>
                                            </div>
                                            <div class="shop_coupons_left_right fl">
                                                <div class="fl">
                                                    <span class="scr_money">¥</span>
                                                </div>
                                                <div class="fl" style="margin-top:-9px;margin-left:5px;">
                                                    <span class="scr_num">${sanitaryAppliance.preferentialMoney}</span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="shop_coupons_bac">支付满 ${sanitaryAppliance.totalMoney} 可用</div>
                                                <div class="shop_coupons_num">
                                                    已领 <span>${sanitaryAppliance.receiveCount}</span> 张
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <button data-id="6245" class="getCoupon shop_coupons_right" id="${sanitaryAppliance.id}" onclick="recieve(this)">立即领取
                                        </button>
                                        <div class="clear"></div>
                                    </li>
                                </c:forEach>
                                <div style="width: 277px;height: 70pxpx;margin: 55px auto;display: none;"
                                     class="coupon-none">
                                    <img src="../../../resources/images/jbhimg/none.png" alt="" style="width: 277px;height: 70pxpx;">
                                </div>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div class="cook nav-target" style="margin-top:30px;">
                            <div class="left_tit"><p>家具</p></div>
                            <ul class="shop_coupons">
                                <c:forEach var="funiture" items="${funitures}" varStatus="vs">
                                    <li>
                                        <div class="shop_coupons_left fl">
                                            <div class="shop_coupons_left_left fl">
                                                <p>${funiture.brandName}</p>
                                            </div>
                                            <div class="shop_coupons_left_right fl">
                                                <div class="fl">
                                                    <span class="scr_money">¥</span>
                                                </div>
                                                <div class="fl" style="margin-top:-9px;margin-left:5px;">
                                                    <span class="scr_num">${funiture.preferentialMoney}</span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="shop_coupons_bac">支付满 ${funiture.totalMoney} 可用</div>
                                                <div class="shop_coupons_num">
                                                    已领 <span>${funiture.receiveCount}</span> 张
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <button data-id="6245" class="getCoupon shop_coupons_right" id="${funiture.id}" onclick="recieve(this)">立即领取
                                        </button>
                                        <div class="clear"></div>
                                    </li>
                                </c:forEach>
                                <div style="width: 277px;height: 70pxpx;margin: 55px auto;display: none;"
                                     class="coupon-none">
                                    <img src="../../../resources/images/jbhimg/none.png" alt="" style="width: 277px;height: 70pxpx;">
                                </div>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div class="cook nav-target" style="margin-top:30px;">
                            <div class="left_tit"><p>其他</p></div>
                            <ul class="shop_coupons">
                                <c:forEach var="other" items="${others}" varStatus="vs">
                                    <li>
                                        <div class="shop_coupons_left fl">
                                            <div class="shop_coupons_left_left fl">
                                                <p>${other.brandName}</p>
                                            </div>
                                            <div class="shop_coupons_left_right fl">
                                                <div class="fl">
                                                    <span class="scr_money">¥</span>
                                                </div>
                                                <div class="fl" style="margin-top:-9px;margin-left:5px;">
                                                    <span class="scr_num">${other.preferentialMoney}</span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="shop_coupons_bac">支付满 ${other.totalMoney} 可用</div>
                                                <div class="shop_coupons_num">
                                                    已领 <span>${other.receiveCount}</span> 张
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <button data-id="6245" class="getCoupon shop_coupons_right" id="${other.id}" onclick="recieve(this)">立即领取
                                        </button>
                                        <div class="clear"></div>
                                    </li>
                                </c:forEach>
                                <div style="width: 277px;height: 70pxpx;margin: 55px auto;display: none;"
                                     class="coupon-none">
                                    <img src="../../../resources/images/jbhimg/none.png" alt="" style="width: 277px;height: 70pxpx;">
                                </div>
                                <div class="clear"></div>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="righ-nav">
        <div class="right-nav-box">
            <div class="right-nav-menu">
                <!--<a target="_blank" href="http://uchat.im-cc.com/webchat_new/static/html/index.html?ht=sh02&hastab=true">-->
                <!--<div class="qq"></div>-->
                <!--</a>-->
                <a href="#">
                    <div class="ticket"></div>
                </a>
                <a href="#">
                    <div class="coupon"></div>
                </a>
                <div class="go-top"></div>
            </div>
        </div>
    </div>
    <div class="right-line"
         style="width:3px; height: 100%;position: fixed; top:0; right:0;background:#bbbbbb; display:none;"></div>
    <%@include file="../common/footer.jsp" %>
    <%--<%@include file="../common/script.jsp" %>--%>
</div>
<script src="../../../resources/js/jiabohui/jquery.smint.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var h = $(window).height();
        $(window).scroll(function (event) {
            var s = $(window).scrollTop();
            if (s >= h) {
                $('.righ-nav').show();
                $('.right-line').show();
            } else {
                $('.righ-nav').hide();
                $('.right-line').hide();
            }
            ;
            $('.go-top').click(function (event) {
                $('html,body').stop().animate({'scrollTop': 0}, 500);
            });
        });
    });
    var scrollFlag = true;
    var navOffsetTop = 100;
    // 导航栏滚动事件
    $(window).load(function () {
        var navTarget = $(".nav-target");
        navOffsetTop = parseInt($(".nav-box").offset().top + 2);
        $("#J_TopBar").smint({
            top: navOffsetTop,
            scrollFun: function () {
                if (scrollFlag) {
                    var scrollTop = $(window).scrollTop();
                    var i = 0;
                    $.each(navTarget, function (index, value) {
                        var targetTop = $(value).offset().top;
                        if (Number(targetTop - 50) <= Number(scrollTop)) {
                            i = index;
                        }
                    });
                    if (Number(navOffsetTop) >= Number(scrollTop)) {
                        i = 0;
                    }
                    $("#J_TopBar li").removeClass("current");
                    $("#J_TopBar li").eq(i).addClass("current");
                }
            }
        });
        $(".J_EactNav").on("click", function () {
            var index = $(this).attr("data-id");
            window.scroll(0, parseFloat($(navTarget[index]).offset().top - 50));
        })
    });
//    $(".cook").each(function () {
//        var num = $(this).find('.shop_coupons li').length;
//        if (num == 0) {
//            $(this).find('.coupon-none').css('display', 'block');
//        }
//    });
    // 领取优惠券
    function closebt(){
        $('.mask-box').remove();
    }
    function recieve(param){
        var id=$(param).attr("id");
        var brandname=$(param).parent().find("p").text();
        var count=$(param).parent().find(".shop_coupons_num").find("span").text();
        //alert(id+brandname+count);
        var xx1='<div class="mask-box"><div class="mask"><p class="closebt" onclick="closebt();">x</p><form action="${pageContext.request.contextPath}/c/allCoupon" method="post"><h3>'+brandname+'</h3><input type="hidden" name="id" value='+id+'><input type="hidden" name="brandname" value='+brandname+'><input type="hidden" name="count" value='+ count +'><div class="tic_input"><div class="ipt-box"><input type="text" name="username" class="ipt_txt" placeholder="请输入姓名" id="reserve_name"/></div></div><div class="tic_input"><div class="ipt-box"><input type="text" name="telphone" class="ipt_txt short" placeholder="请输入手机号码" maxlength="11"/></div><div class="test"><button class="btn btn-primary btn-yzm" type="button" id="codebt"  onclick="sendCode()">验证码</button></div></div><div class="tic_input"><div class="ipt-box"><input type="text" id="a" name="tcode"  class="ipt_txt" placeholder="请输入验证码"/></div></div><p class="yhdec">优惠信息：装修帮办为您提供支付满<i>5000</i>减<i>200</i>的优惠券,可在各品牌专卖店或平台举办的团购活动中使用，详情咨询0355-8881777</p><button class="mask-btn" type="submit" onclick="return confirm()">确&nbsp;&nbsp;认</button></form></div>'
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
        var $telCodeTemp = $("input[name=tcode]").attr("id");
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
            $telCode.attr("placeholder", "请填写6位的手机验证码！");
            return false;
        }
    }
</script>
</body>
</html>
