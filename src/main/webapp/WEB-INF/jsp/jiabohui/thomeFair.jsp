<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp"%>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>公司动态 | 装修帮办服务平台</title>
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
            width: 220px;
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
        .mask input{
            width:100%;
            border:1px solid #ccc;
            height:40px;
            line-height:40px;
            margin-bottom:30px;
            border-radius:5px;
            text-indent:10px;
        }
        .mask button{
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
            width:10px;
            height:10px;
            top:10px;
            right:20px;
            font-size:28px;
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
            <form role="form" method="post">
                <div class="tic_title">免费索票</div>
                <div class="tic_num">已有<em>408</em>人索票</div>
                <div class="tic_input">
                    <label class="ipt-label">姓名：</label>
                    <div class="ipt-box">
                        <input type="text" name="name" class="ipt_txt" placeholder="请输入收件人姓名" id="reserve_name"/>
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
                <div class="tic_under"><p>温馨提示：索票成功后，我们的客服将与您电话联系，确认门票及展会资料。</p></div>
            </form>
        </div>
    </div>
    <div class="row">
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
    </div>
    <div class="row">
        <div class="t_con explosive_box">
            <h3  class="t_con_tit"><a href="javascript:;">抢优惠券</a></h3>
            <ul class="t_sale_li clearfix">
                <li class="clearfix kitchen">
                    <div class="t_l fl">
                        <span>200<b>¥</b> &nbsp;&nbsp;</span>
                        <i></i>
                        <em>支付满5000可用</em>
                    </div>
                    <div class="t_r fl">
                        <p>王者陶瓷</p>
                        <button class="J_GetCoupon tankg">立即领取</button>
                    </div>
                    <div class="ling fr">已领<e>184</e>张</div>
                </li>
                <li class="clearfix fitment">
                    <div class="t_l fl">
                        <span>100<b>¥</b> &nbsp;&nbsp;</span>
                        <i></i>
                        <em>支付满4000可用</em>
                    </div>
                    <div class="t_r fl">
                        <p>宏陶陶瓷</p>
                        <button class="J_GetCoupon tankg">立即领取</button>
                    </div>
                    <div class="ling fr">已领<e>75</e>张</div>
                </li>
                <li class="clearfix build">
                    <div class="t_l fl">
                        <span>300<b>¥</b> &nbsp;&nbsp;</span>
                        <i></i>
                        <em>支付满10000可用</em>
                    </div>
                    <div class="t_r fl">
                        <p>新罗马瓷砖</p>
                        <button class="J_GetCoupon tankg">立即领取</button>
                    </div>
                    <div class="ling fr">已领<e>49</e>张</div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="mask-box">
    <div class="mask">
        <p class="closebt">X</p>
        <form action="">
            <input type="text" placeholder="姓名">
            <input type="text" placeholder="手机">
            <button type="submit">确&nbsp;&nbsp;认</button>
        </form>
    </div>
</div>
<%@include file="../common/footer.jsp" %>
<script>
    $(function(){
        $(".tankg").click(function(){
            $(".mask-box").show();
        })
        $(".closebt").click(function(){
            $(".mask-box").hide();
        })
    })
</script>
</body>
<%@include file="../common/script.jsp" %>
