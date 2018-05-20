<!DOCTYPE HTML>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" %>
    <meta charset="UTF-8">
    <title>长治装修帮办家博会_长治装修帮办家博会门票</title>
    <%--<meta name="keywords" content="长治装修帮办家博会_长治装修帮办家博会门票"/>--%>
    <%--<meta name="description" content="长治装修帮办家博会_长治装修帮办家博会门票"/>--%>
    <%--<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>--%>
    <%--<script src="../../../resources/js/jiabohui/jb.js" type="text/javascript"></script>--%>
</head>
<body>
<%@include file="../common/head.jsp"%>
<%@include file="../common/header.jsp"%>
<link href="../../../resources/css/jiabohui/base.css" rel="stylesheet" type="text/css"/>
<link href="../../../resources/css/jiabohui/ticket.css" rel="stylesheet" type="text/css"/>
<link href="../../../resources/css/jiabohui/explosive.css" rel="stylesheet" type="text/css"/>
<link href="../../../resources/css/jiabohui/supplier_activity.css" rel="stylesheet" type="text/css"/>
<link href="../../../resources/css/jiabohui/supplier_activity1.css" rel="stylesheet" type="text/css"/>
<link href="../../../resources/css/jiabohui/coupon.css" rel="stylesheet" type="text/css">
<script src="../../../resources/js/jiabohui/jquery-1.10.2.min.js" type="text/javascript"></script>
<div style="background:#eee;">
    <div class="t_banner">
        <div class="t_banner_bg">
            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/banner.png" height="446" width="1920">
        </div>
        <div class="t_banner_in">
            <p class="top_title"></p>
            <p class="tic_time"></p>
            <p class="tic_org"></p>
            <div class="tic_login end" id="expo_home">
                <form role="form"  action="${pageContext.request.contextPath}/c/homeFair" method="post">
                <div class="tic_title">免费索票</div>
                <div class="tic_num">已有<em>${count}</em>人索票</div>
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
                <div class="tic_under"><p>温馨提示：索票成功后，我们的客服将通过021开头的上海电话与您联系，确认门票及展会资料。</p></div>
                </form>
            </div>
        </div>
    </div>
    <div class="t_main">
        <div class="t_nav_out">
            <ul class="clearfix" id="J_TopBar">
                <li id="J_EactNav1" class="J_EactNav" data-id="1" style="width:148px">活动亮点</li>
                <li id="J_EactNav2" class="J_EactNav" data-id="2" style="width:148px">电子优惠券</li>
                <li id="J_EactNav3" class="J_EactNav" data-id="3" style="width:148px">爆品预约</li>
                <li id="J_EactNav4" class="J_EactNav" data-id="4" style="width:148px">商户活动预约</li>
                <li id="J_EactNav5" class="J_EactNav" data-id="5" style="width:148px">合作品牌</li>
                <li id="J_EactNav6" class="J_EactNav" data-id="6" style="width:148px">采购指南</li>
                <li id="J_EactNav7" class="J_EactNav" data-id="7" style="width:148px">服务保障</li>
                <li id="J_EactNav8" class="J_EactNav" data-id="8" style="width:148.75px">家博介绍</li>
            </ul>
        </div>
        <div class="t_con">
            <!-- 活动亮点开始 -->
            <div class="activity" id="J_Eact1">
                <div class="t_hd">活动亮点</div>
            </div>
            <ul class="act_li clearfix">
                <li class="five">
                    <div class="act_img">
                        <img src="../../../resources/images/jbhimg/hdld01.png" alt="VIP返现"/></div>
                    <div class="bottom_div">
                        <p>单笔订单支付满1000元，凭VIP返现卡额外返100元现金。（单笔订单仅可使用一张VIP平台券）</p>
                    </div>
                </li>
                <li class="five">
                    <div class="act_img">
                        <img src="../../../resources/images/jbhimg/hdld02.png" alt="实物兑奖"/></div>
                    <div class="bottom_div">
                        <p>凭借家博会专用销售订单，即可领取家博会提供的精美礼品一份！（每笔订单仅限领取1份）</p>
                    </div>
                </li>
                <li class="five">
                    <div class="act_img">
                        <img src="../../../resources/images/jbhimg/hdld03.png" alt="爆品抢购"/></div>
                    <div class="bottom_div">
                        <p>各品类超值性价比商品提前预约，凭短信至现场购买。</p>
                    </div>
                </li>
                <li class="five">
                    <div class="act_img">
                        <img src="../../../resources/images/jbhimg/hdld04.png" alt="整点现金抽奖"/></div>
                    <div class="bottom_div">
                        <p>单笔订单支付金额满1000元即有机会参与500&mdash;4999元现金抽奖，同一商家重复下单仅参与一次。</p>
                    </div>
                </li>
                <li class="five">
                    <div class="act_img">
                        <img src="../../../resources/images/jbhimg/hdld05.png" alt="商家优惠券"/></div>
                    <div class="bottom_div">
                        <p>海量商家优惠券免费领取，家博会现场下单满额立减。</p>
                    </div>
                </li>
            </ul>
            <!-- 活动亮点结束 -->
            <ul class="hx-ad clearfix" style="margin-top:40px;display:none;">
                <li style="margin-left:0px;">
                    <a href="javascript:;">
                        <img src="https://img.hxjbcdn.com/3ce0306a-b38c-4e75-b74c-8509cc525482.png">
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="https://img.hxjbcdn.com/c87ee896-6520-4944-bf8f-1c91490b05c8.png">
                    </a>
                </li>
                <div class="clear"></div>
            </ul>
            <!-- 优惠券开始 -->
            <div class="t_sale" id="J_Eact2">
                <div class="t_hd"><a class="more-nav-coupon" href="${pageContext.request.contextPath}/coupons">抢优惠券&nbsp;<e class="more-nav"></e></a></div>
                <ul class="t_sale_li clearfix">
                    <li class="clearfix kitchen">
                        <div class="t_l fl">
                            <span>200<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满5000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p>王者陶瓷</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>184</e>张</div>
                    </li>
                    <li class="clearfix kitchen">
                        <div class="t_l fl">
                            <span>200<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满5000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p> 冠珠陶瓷</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>80</e>张</div>
                    </li>
                    <li class="clearfix fitment">
                        <div class="t_l fl">
                            <span>100<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满4000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p>宏陶陶瓷</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>75</e>张</div>
                    </li>
                    <li class="clearfix kitchen">
                        <div class="t_l fl">
                            <span>100<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满3000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p>平米瓷砖</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>63</e>张</div>
                    </li>
                    <li class="clearfix kitchen">
                        <div class="t_l fl">
                            <span>100<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满5000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p>罗马瓷砖</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>86</e>张</div>
                    </li>
                    <li class="clearfix kitchen">
                        <div class="t_l fl">
                            <span>100<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满3000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p> 东鹏瓷砖</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>40</e>张</div>
                    </li>
                    <li class="clearfix kitchen">
                        <div class="t_l fl">
                            <span>100<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满3000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p>郎宝陶瓷</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>78</e>张</div>
                    </li>
                    <li class="clearfix build">
                        <div class="t_l fl">
                            <span>300<b>¥</b> &nbsp;&nbsp;</span>
                            <i></i>
                            <em>支付满10000可用</em>
                        </div>
                        <div class="t_r fl">
                            <p>新罗马瓷砖</p>
                            <button class="J_GetCoupon">立即领取</button>
                        </div>
                        <div class="ling fr">已领<e>49</e>张</div>
                    </li>
                </ul>
            </div>
            <!-- 优惠券结束 -->
            <!-- 特惠预约 -->
            <!-- 特惠预约 -->
            <!-- 爆品预约 -->
            <div style="margin-top: 30px;" id="J_Eact3">
                <div class="t_hd">
                    <a class="more-nav-explosive" href="javascript:;">爆品预约&nbsp;<e class="more-nav"></e></a>
                </div>
            </div>
            <div class="t_con explosive_box">
                <!-- 厨房卫浴 -->
                <ul class="odds_li clearfix">
                    <!-- 从这循环 -->
                    <li class="B_GetCoupon" style="width: 31.6%;cursor: pointer;">
                        <div>
                            <a href="javascript:;;">
                                <img style="width: 100%;height: 200px;" src="../../../resources/images/jbhimg/ftdq.jpg" class="lazy goods_image"/></a>
                            <div class="odds_under">
                                <div class="small_img">
                                    <img src="../../../resources/images/jbhimg/ftdq_logo.jpg"/>
                                    <span class="show_goods_name">方太厨电 油烟机EM23TS+灶具FD2B</span>
                                </div>
                                <div class="price">
                                    <p><i>¥</i> 4480.00<e style="font-size:14px;"></e></p>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="price_box" style="float: right;margin-top: -60px;">
                            <button class="red_button" style="margin-right:20px;">立即预约</button>
                            <p style="margin:5px 0 0 0;">剩余 8 个 </p>
                        </div>
                    </li>
                    <!-- 循环结束 -->
                </ul>
            </div>
            <!-- 厨房卫浴 -->
            <!-- 爆品预约 -->
            <div class="content-in" id="J_Eact4">
                <div class="t_hd">
                    <a class="more-nav-supplier" href="javascript:;">商户活动预约&nbsp;<e class="more-nav"></e></a>
                </div>
                <ul class="explosive clearfix">
                    <div class="li-box">
                        <li class="S_GetCoupon">
                            <img class="lazy explosive-img" src="../../../resources/images/jbhimg/ftdq.jpg" alt=""/>
                            <div class="clearfix"></div>
                            <div class="under clearfix">
                                <div class="under-top clearfix">
                                    <div class="explosive-logo">
                                        <img src="../../../resources/images/jbhimg/ftdq_logo.jpg" alt=""/>
                                    </div>
                                    <div class="explosive-name">方太电器</div>
                                </div>
                                <div class="under-middle">
                                    <p>1.买就送:下单即送价值398元服务大礼包；购买蒸箱烤箱赠送价值300元蒸烤柜；两件套送价值199元刀具七件套；三件套加送价值880元汤奶锅两件套；四件套加送价值1280元双立人单锅；五件套以上加送价值3280元双立人套锅</p>
                                    <p>2.不满意就退:热水器享受180天舒适后悔权，180天内不舒服就退款</p>
                                </div>
                                <div class="under-bottom clearfix">
                                    <div class="stand">展位号:TA29</div>
                                    <div class="subscribe">
                                        <button class="subscribe-btn" style="height: 30px;">抢先预约</button>
                                        <span>2人已预约</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                </ul>
            </div>
            <!-- 合作品牌 -->
            <div class="work_hx" id="J_Eact5">
                <div class="t_hd">合作品牌</div>
                <div class="work_in">
                    <ul class="work_nav clearfix" id="tab_up">
                        <li class="work_now">推荐品牌</li>
                        <li>瓷砖</li>
                        <li>洁具</li>
                        <li>地板</li>
                        <li>橱柜</li>
                        <li>定制家居</li>
                        <li>家居</li>
                        <li>木门</li>
                        <li>吊顶</li>
                        <li>壁纸</li>
                        <li>窗帘</li>
                        <li>灯饰</li>
                        <li>其他</li>
                    </ul>
                    <div id="tab_down">
                        <ul class="work_con clearfix" style="display:block">
                            <li>
                                <a href="javascript:;">
                                <img src="../../../resources/images/jbhimg/hz_dpcz.jpg" width="150" alt="东鹏瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                <img src="../../../resources/images/jbhimg/hz_htcz.jpg" width="150" alt="宏陶陶瓷"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_dpcz.jpg" width="150" alt="东鹏瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_htcz.jpg" width="150" alt="宏陶陶瓷"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_shcz.jpg" width="150" alt="顺辉瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_wztc.jpg" width="150" alt="王者陶瓷"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jsym.jpg" width="150" alt="金丝玉玛瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jpyzcz.jpg" width="150" alt="金牌亚洲瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_knecz.jpg" width="150" alt="卡诺尔瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jymjcz.jpg" width="150" alt="金玉名家瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_lbtc.jpg" width="150" alt="朗博陶瓷"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_mgltc.jpg" width="150" alt="米格兰时尚陶瓷"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_nbecz.jpg" width="150" alt="诺贝尔瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_pmcz.jpg" width="150" alt="平米瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_wjjgz.jpg" width="150" alt="威俊精工砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_yncz.jpg" width="150" alt="依诺瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_lmdkcz.jpg" width="150" alt="罗曼缔克瓷砖"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_lmcz.jpg" width="150" alt="新罗马瓷砖"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_dpjj.jpg" width="150" alt="东鹏洁具"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_AOsms.jpg" width="150" alt="AO.史密斯"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_dwdb.jpg" width="150" alt="德威地板"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                <img src="../../../resources/images/jbhimg/hz_sydb.jpg" width="150" alt="世友地板"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_xmcg.jpg" width="150" alt="西姆橱柜"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jjl.jpg" width="150" alt="家家乐橱柜"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_hd.jpg" width="150" alt="华帝高端智能厨电"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_sej.jpg" width="150" alt="适而居定制家具"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_htjj.jpg" width="150" alt="红田定制家具"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_wydz.jpg" width="150" alt="维意定制"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jxdz.jpg" width="150" alt="匠芯定制"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_mgjj.jpg" width="150" alt="米柜家居"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_spzp.jpg" width="150" alt="尚品宅配"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_mfjs.jpg" width="150" alt="明峰家私"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_xgm.jpg" width="150" alt="西格玛木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_blnmn.jpg" width="150" alt="铂勒尼木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jmkx.jpg" width="150" alt="京门凯旋木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_zzth.jpg" width="150" alt="展志天华木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_gcmn.jpg" width="150" alt="古川木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_symm.jpg" width="150" alt="三意木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_sbmm.jpg" width="150" alt="尚邦木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_xwmm.jpg" width="150" alt="鑫旺木门"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_gsmm.jpg" width="150" alt="郭氏木门"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_opdd.jpg" width="150" alt="欧普吊顶"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_sdn.jpg" width="150" alt="圣蒂诺壁纸"/></a>
                            </li>
                        </ul>
                        <ul class="work_con clearfix">
                            <%--<li>--%>
                                <%--<a href="javascript:;">--%>
                                    <%--<img src="../../../resources/images/jbhimg/ftdq_logo.jpg" width="150" alt="方太"/></a>--%>
                            <%--</li>--%>
                        </ul>
                        <ul class="work_con clearfix">
                            <%--<li>--%>
                                <%--<a href="javascript:;">--%>
                                    <%--<img src="../../../resources/images/jbhimg/ftdq_logo.jpg" width="150" alt="方太"/></a>--%>
                            <%--</li>--%>
                        </ul>
                        <ul class="work_con clearfix">
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_blgy.jpg" width="150" alt="保利管业"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jngy.jpg" width="150" alt="金牛管业"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_yhfs.jpg" width="150" alt="雨虹防水"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_ykjsq.jpg" width="150" alt="优口净水器"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_shsc.jpg" width="150" alt="森海饰材"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_bcjc.jpg" width="150" alt="板川集成灶"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_mdjc.jpg" width="150" alt="美多集成灶"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_rsdq.jpg" width="150" alt="容声厨卫电器"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_rsd.jpg" width="150" alt="荣事达智能淋浴屏"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_mssj.jpg" width="150" alt="米素空间设计"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_cykjgdmc.jpg" width="150" alt="创意空间高端门窗"/></a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="../../../resources/images/jbhimg/hz_jsyh.jpg" width="150" alt="中国建设银行装修贷款"/></a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
            <!-- 合作品牌 -->
            <!-- 逛展指南 -->
            <div class="directory" id="J_Eact6">
                <div class="t_hd">采购指南</div>
                <div class="dir_img clearfix">
                    <ul>
                        <li>
                            <div class="img">
                                <img src="../../../resources/images/jbhimg/mfsp.jpg" alt="免费索票" width="90" height="90"/>
                            </div>
                            <div class="title">免费索票</div>
                            <div class="num">1</div>
                            <div class="content">通过客服电话确认，免费获取价值20元门票。</div>
                        </li>
                        <li>
                            <div class="img">
                                <img src="../../../resources/images/jbhimg/qwzg.jpg" alt="前往展馆" width="90" height="90"/>
                            </div>
                            <div class="title">前往展馆</div>
                            <div class="num">2</div>
                            <div class="content">长治市西环路北段123号(佰合园北侧，乘25、26路到佰合园下车十字路口往北200米)</div>
                        </li>
                        <li>
                            <div class="img">
                                <img src="../../../resources/images/jbhimg/xcgz.jpg" alt="现场逛展" width="90" height="90"/>
                            </div>
                            <div class="title">现场逛展</div>
                            <div class="num">3</div>
                            <div class="content">对照现场平面图，标记喜欢的品牌，按商家区域逛展。</div>
                        </li>
                        <li>
                            <div class="img">
                                <img src="../../../resources/images/jbhimg/xdfk.jpg" alt="下单付款" width="90" height="90"/>
                            </div>
                            <div class="title">下单付款</div>
                            <div class="num">4</div>
                            <div class="content">与商家协商好产品、价格，下单付款。</div>
                        </li>
                        <li>
                            <div class="img">
                                <img src="../../../resources/images/jbhimg/ddcj.jpg" alt="订单抽奖" width="90" height="90"/>
                            </div>
                            <div class="title">订单抽奖</div>
                            <div class="num">5</div>
                            <div class="content">订单符合抽奖条件，前往现场抽奖中心抽奖。</div>
                        </li>
                        <li>
                            <div class="img">
                                <img src="../../../resources/images/jbhimg/fwbz.jpg" alt="服务保障" width="90" height="90"/>
                            </div>
                            <div class="title">服务保障</div>
                            <div class="num">6</div>
                            <div class="content">现场出售商品均享受30天无理由换货服务。</div>
                        </li>
                        <li>
                            <div class="img">
                                <img src="../../../resources/images/jbhimg/gdhd.jpg" alt="更多活动" width="90" height="90"/>
                            </div>
                            <div class="title">更多活动</div>
                            <div class="num">7</div>
                            <div class="content">关注装修帮办官方微信，更多精彩活动等着您！</div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 逛展指南 -->
            <!-- 服务保障 -->
            <div class="tic_se" id="J_Eact7">
                <div class="t_hd">服务保障</div>
                <ul class="hx-service-li clearfix">
                    <li>
                        <img  src="../../../resources/images/jbhimg/pin.png">
                        <div class="li-p" style="margin-left:168px; margin-top:10px; width:132px;">
                            <p style="font-size:16px; color:#333;">品牌源头精选</p>
                            <span style="font-size:12px; color:#666; display:block; margin-top:8px;">我们对每一个参展品牌均严格审核，源头把关。</span>
                        </div>
                    </li>
                    <li>
                        <img src="../../../resources/images/jbhimg/jia.png">
                        <div class="li-p" style="margin-left:168px; margin-top:10px; width:132px;">
                            <p style="font-size:16px; color:#333;">全城价格保障</p>
                            <span style="font-size:12px; color:#666; display:block; margin-top:8px;">展会期间商品不高于同期门店价，差价三倍赔偿（最低赔1000元）。</span>
                        </div>
                    </li>
                    <li>
                        <img src="../../../resources/images/jbhimg/shou.png">
                        <div class="li-p" style="margin-left:168px; margin-top:10px; width:132px;">
                            <p style="font-size:16px; color:#333;">30天无理由退换</p>
                            <span style="font-size:12px; color:#666; display:block; margin-top:8px;">凭统一销售单，享30天无理由换货服务。</span>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 服务保障 -->
            <!-- 更多活动 -->
            <div class="more-act" style="margin-top:40px;display:none;">
                <div class="t_hd">更多活动</div>
                <div class="more-act-list" style="margin-top:20px;">
                    <ul class="more-list-bottom clearfix" style="margin-left: -30px">
                        <li>
                            <a href="javascript:;">
                                <img src="https://img.hxjbcdn.com/3eecc42e-5428-4f3f-a7c7-fa7ed7b86b42.jpg" width="380px" height="160px">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="https://img.hxjbcdn.com/c6108cfa-428b-4685-a327-cfedda5f17d5.jpg" width="380px" height="160px">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="https://img.hxjbcdn.com/e0a72084-2fbb-4584-ab2a-59548a33525f.jpg" width="380px" height="160px">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 更多活动 -->
            <!-- 家博介绍 -->
            <div class="my_hx" id="J_Eact8">
                <div class="t_hd">家博介绍</div>
                <div class="my_hx_con clearfix">
                    <div class="my_hx_l fl">
                        <p>装修帮办家博会，隶属于装修帮办服务平台网，是集家居建材、施工管理、家装设计等全产业链为一体的家装采购展销会，展会汇集上百家一线主材品牌、上千种特价产品、上百家优质施工队、几十家家装设计机构，提供5重全程服务保障，为中国城市居民提供一站式高品质装修服务。</p>
                        <p>装修是一辈子的事，我们全心服务每一个家！</p>
                        <ul class="my_hx_under clearfix">
                            <li>
                                <img  src="../../../resources/images/jbhimg/jbjs1.jpg" alt=""/>
                            </li>
                            <li>
                                <img   src="../../../resources/images/jbhimg/jbjs2.jpg" alt=""/>
                            </li>
                            <li style="margin-right:0px">
                                <img  src="../../../resources/images/jbhimg/jbjs3.jpg"  alt=""/>
                            </li>
                        </ul>
                    </div>
                    <div class="my_hx_r fr">
                        <img src="../../../resources/images/jbhimg/jbjsd.jpg" alt=""/>
                    </div>
                </div>
            </div>
            <!-- 家博介绍 -->

            <div class="gain" id="J_BotSmBar" style="background: url(../../../resources/images/jbhimg/hide.png) no-repeat; width: 100px; height: 160px; display: none;"></div>
            <%--<div class="get_tic2" id="J_BotBar" style="width: 100%;">
                <div class="get_in clearfix" style="background: url(http://www.51jiabo.com/assets/img/expo/show_bg.png?v20180205) no-repeat center;position: fixed;">
                    <div class="get_in_l_2 fl"></div>
                    <div class="get_in_r_qr_2 fr"></div>
                    <div style="width: 1200px; height: 130px; margin:0 auto;background: url(../../../resources/images/jbhimg/show_info.png) no-repeat center;position: relative;">
                        <div class="get_in_r_2 fl" id="expo_botbar">
                            <form  action="${pageContext.request.contextPath}/c/homeFair" method="post">
                            <div class="" style="width: 250px;margin-left: 0;position: fixed;">
                                <div  class="ipt_line" style="margin-bottom: 7px;">
                                    <div class="ipt-box">
                                        <input type="text" name="name" class="ipt_txt" placeholder="请输入您的姓名" />
                                    </div>
                                </div>
                                <div class="ipt_line" style="margin-bottom: 7px;">
                                    <div class="ipt-box">
                                        <input type="text" name="tel" placeholder="请输入您的手机" class="ipnt_txt" maxlength="11" id="reserve_mobile" style="height: 38px;font-size: 17px;">
                                    </div>
                                    <div class="test">
                                        <button class="btn btn-primary btn-yzm" type="button" id="">验证码</button>
                                    </div>
                                </div>

                            </div>
                            <div class="msg-box quick-msg-box" style="position: absolute;">
                                <div class="ipt_line">
                                    <div class="ipt-box">
                                        <input type="text" name="telcode" class="ipnt_txt2" placeholder="请输入验证码" id="reserve_code" style="height: 38px;font-size: 17px;">
                                    </div>
                                </div>
                                <div class="msg msg-error hide" id="J_MsgReserveSubmit">
                                    <div class="tic_btn">
                                        <button type="submit">免费索票</button>
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>
                        <span style="position: absolute;height: 70px;width: 190px;right: 80px;top: 41px;display: block;cursor: pointer;" >
                            <img src="../../../resources/images/jbhimg/ticket_btn.png"></span>
                    </div>
                    <div class="close fr" id="J_BotBarClose" style="background: url(../../../resources/images/jbhimg/close.png) no-repeat;height: 48px;width: 48px;top: -54px;right: 5px;"></div>
                </div>
            </div>--%>
        </div>
    </div>
    <div class="righ-nav">
        <div class="right-nav-box">
            <div class="right-nav-menu">
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
    <div class="right-line" style="width:3px; height: 100%;position: fixed; top:0; right:0;background:#bbbbbb; display:none;"></div>
    <!--弹框-->
    <!--领取优惠券成功-->
    <div class="sptk" style="display: none">
        <div class="jb-modal-blind"></div>
        <div class="jb-modal-primary" style="width: 500px; min-height:420px; margin-top: -291px; margin-left: -250px;">
            <div class="jb-modal-body">
                <div class="draw_box">
                    <div class="draw_hd">
                        <p>领取成功</p>
                    </div>
                    <div class="draw_in">
                        <%--<div class="draw_rule">--%>
                            <%--<b>活动规则：</b>--%>
                            <%--<span>仅限装修帮办家博会现场下单使用，单笔订单最多使用一张优惠券；</span>--%>
                            <%--<span>满减金额以展会现场实际支付金额为准；</span>--%>
                            <%--<span>凭优惠券短信至商家展位处下单，满足条件即可使用优惠券；</span>--%>
                        <%--</div>--%>
                        <div class="draw_date clearfix">
                            <div class="draw_date_l fl">使用日期：2018.05.12-2018.05.20</div>
                            <%--<div class="draw_date_r fr"><a href="http://www.51jiabo.com/zz/member/myCoupon">去用户中心查看已领的优惠券</a></div>--%>
                        </div>
                        <div class="draw_btn"><button onclick="hidetk(this);">确&nbsp;&nbsp;定</button></div>
                        <div class="remind">注：本券只能在展会现场使用，请及时关注！</div>
                    </div>
                </div>
            </div>
            <div class="jb-modal-footer"></div>
        </div>
    </div>
    <!--领取优惠券成功-->
</div>
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script src="../../../resources/js/jiabohui/placeholder.js" type="text/javascript"></script>
<script src="../../../resources/js/jiabohui/coupon.js" type="text/javascript" ></script>
<script>
    // 优惠券弹框 开始
    /*function submitInfo() {
        appointment.detail.validata();
        $(this).attr("disabled");
        var name=$("input[name=name]").val();
        var tel=$("input[name=tel]").val();
        $.ajax({
            url:"",
            data:{name:name,tel:tel},
            type:"POST",
            success:function () {
                $('.sptk').show();
                $("input[name=name]").val("");
                $("input[name=tel]").val("");
                $("input[name=telcode]").val("");
                $(this).removeAttr("disabled");
            }
        })
    }*/

    function closetk(o){
        $(o).parents('.tankuang').remove();
    }
    function hidetk(o){
        $(o).parents('.sptk').hide();
    }
    $(function () {
        appointment.detail.validata();
        if($("#jiabohui").attr("name")=="jiabohiu"){
            $('.sptk').show();
        }
        var yhq='<div class="tankuang"><div class="jb-modal-blind"></div><div class="jb-modal-primary" style="width: 570px; min-height: 400px; margin-top: -200px; margin-left: -285px;"><div class="jb-modal-body"><div class="boom2"><div class="boom-hd clearfix"><div class="brand-img fl"><img src="../../../resources/images/jbhimg/ftdq_logo.jpg"></div><div class="brand-name"><p style="height:32px;overflow:hidden"> 方太电器200元优惠券</p><span>支付满5000.00减200.00</span><em>使用时间:04.29-05.01 使用地址:CBD国际会展中心</em> </div></div><div class="inpt-box"><div class="txt"><label class="lab fl">手机：</label><input type="tel" class="int-txt fl" name="coupon_mobile" id="coupon_mobile" maxlength="11" placeholder="请输入手机号码" value=""><button class="btn btn-primary btn-yzm" type="button" id="codebtn">验证码</button></div><div class="txt"><label class="lab fl">验证码：</label><input type="text" class="int-txt2 fl code" name="coupon_code" id="coupon_code" maxlength="4" placeholder="请输入验证码"></div></div><div class="msg-box" style="margin:10px 0px 0px 110px;"><div class="msg msg-error hide" id="J_MsgCouponSubmit"><i></i><div class="msg-cnt"></div></div></div><button class="bomm-btn2">立即领取</button><i class="i">同时免费索票价值20元的华夏家博会门票</i><div class="right-down"><div class="draw_tips"><a href="javascript:;" ">已有账号？<br>登录领取更方便！</a></div></div><div class="special-zero-close" onclick="closetk(this);"></div></div>';
       /* $('.J_GetCoupon').click(function(){
            $('body').append(yhq);
        })*/
        var yhq1='<div class="tankuang"><div class="jb-modal-blind"></div><div class="jb-modal-primary" style="width: 900px; min-height: 460px; margin-top: -230px; margin-left: -450px;"><div class="jb-modal-body"><div class="boom3"><div class="boom3-l fl"><div class="boom3-img"><img src="../../../resources/images/jbhimg/ftdq.jpg"></div><h5></h5><div class="clear"></div><div class="prize clearfix"><p style="width: 83%;font-size:18px;color: black;">方太厨电 油烟机EM23TS+灶具FD2B</p><p style="width: 83%;color: #999;margin: 10px 0;">油烟机EM23TS+灶具FD2B</p><p class="fl">抢购价: <b>4480.00</b></p><span class="fr"> 剩余3个</span></div><div class="boom3-l-down" style="margin-top: 1rem;">线上预约锁定，凭短信至展会现场下单</div></div><div class="boom3-r fl" id="reserve_modal"><div class="boom3-r-hd">爆品预约</div><div class="boom3-input"><div class="boom3-input-in clearfix"><label class="lab2 fl">姓名：</label><input type="text" class="boom3-txt" name="reserve_name" id="reserve_name" maxlength="12" placeholder="请输入收件人姓名" value=""></div><div class="boom3-input-in clearfix"><label class="lab2 fl">手机：</label><input type="text" class="boom3-txt" name="reserve_mobile" id="reserve_mobile" maxlength="11" placeholder="请输入手机号码" value=""><button class="btn btn-primary btn-yzm" type="button" id="codebtn">验证码</button></div><div class="boom3-input-in clearfix"><label class="lab2 fl">验证码：</label><input type="text" class="boom3-txt2 fl code" name="reserve_code" id="reserve_code" maxlength="4" placeholder="请输入验证码"></div><div class="msg-box"><div class="msg msg-error hide" id="J_MsgReserveSubmit"><i></i><div class="msg-cnt"></div></div></div><input type="hidden" value="178726" name="source_id" id="source_id"><input type="hidden" name="reserve_ticket" id="reserve_ticket" value="1"><button class="boom3-btn">立即预约</button><span style="position: relative;top: 10px;left:10px; font-size: 14px;color: #999;"><p style="margin-top:10px;">√&nbsp;&nbsp;同时免费索票价值20元的华夏家博会门票</p><p style="margin-left: 1rem;">时间地点：04.29-05.01CBD国际会展中心</p></span></div></div><div class="special-zero-close" onclick="closetk(this)"></div></div>';
       /* $('.B_GetCoupon').click(function(){
            $('body').append(yhq1);
        })*/
    var yhq2='<div class="tankuang"><div class="jb-modal-blind"></div><div class="jb-modal-primary" style="width: 570px; min-height: 564px; margin-top: -282px; margin-left: -285px;"><div class="jb-modal-body"><div class="supplier-box" id="reserve_modal_8_0"><div class="close" onclick="closetk(this);"></div><div class="dialog-hd">商户活动预约</div><div class="dialog-box-in clearfix"><div class="dialog-left"><img src="../../../resources/images/jbhimg/ftdq_logo.jpg"></div><div class="dialog-right"><span class="zhan-num">展位号TA29</span><span class="hx-time">4.29-5.1  CBD国际会展中心</span></div><div class="clearfix"></div><em class="activity-tips-title">活动详情：</em><div class="activity-tips"><p>1<span style="color: rgb(0,0,0);">.</span><span style="color: rgb(226,80,65);">买就送</span><span style="color: rgb(85,57,130);">:</span><span style="color: rgb(0,0,0);">下单即送</span>价值398元服务大礼包；购买蒸箱烤箱赠送价值300元蒸烤柜；两件套送价值199元刀具七件套；三件套加送价值880元汤奶锅两件套；四件套加送价值1280元双立人单锅；五件套以上加送价值3280元双立人套锅</p><p>1<span style="color: rgb(0,0,0);">.</span><span style="color: rgb(226,80,65);">买就送</span><span style="color: rgb(85,57,130);">:</span><span style="color: rgb(0,0,0);">下单即送</span>价值398元服务大礼包；购买蒸箱烤箱赠送价值300元蒸烤柜；两件套送价值199元刀具七件套；三件套加送价值880元汤奶锅两件套；四件套加送价值1280元双立人单锅；五件套以上加送价值3280元双立人套锅</p><p>1<span style="color: rgb(0,0,0);">.</span><span style="color: rgb(226,80,65);">买就送</span><span style="color: rgb(85,57,130);">:</span><span style="color: rgb(0,0,0);">下单即送</span>价值398元服务大礼包；购买蒸箱烤箱赠送价值300元蒸烤柜；两件套送价值199元刀具七件套；三件套加送价值880元汤奶锅两件套；四件套加送价值1280元双立人单锅；五件套以上加送价值3280元双立人套锅</p><p>2<span style="color: rgb(0,0,0);">.</span><span style="color: rgb(226,80,65);">不满意就退</span><span style="color: rgb(71,85,119);">:</span>热水器享受180天舒适后悔权，<span style="color: rgb(226,80,65);">180天内不舒服就退款</span></p></div><div class="ipt-box"><input type="hidden" value="8" name="source_id" id="source_id"><input type="text" name="reserve_mobile" id="reserve_mobile" maxlength="11" class="ipt-txt" placeholder="请输入您的手机号码"><div class="msg-box"><div class="msg msg-error hide" id="J_MsgReserveSubmit"><i></i><div class="msg-cnt"></div></div></div><button class="ipt-btn" >立即预约</button><div class="ipt-bottom clearfix"><input name="reserve_checked" type="hidden" value="1" class="check-box" checked="checked"><span>√同时免费索取价值20元的家博会门票</span><em>线上预约，凭短信至现场商户展位参与活动享优惠</em></div></div></div></div></div></div></div>';
   /* $('.S_GetCoupon').click(function(){
        $('body').append(yhq2);
    })*/
    // 优惠券弹框 结束
})

</script>
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
</script>
<script type="text/javascript">
    $(document).ready(function () {
        // 活动亮点
        $('.act_li li').hover(function () {
            $(this).children('.bottom_div').css('display', 'block');
        }, function () {
            $(this).children('.bottom_div').css('display', 'none');
        });
        // 合作品牌
        $(document).ready(function () {
            $('#tab_up li').click(function (event) {
                $(this).addClass('work_now').siblings().removeClass('work_now');
                var num = $(this).index();
                $('#tab_down .work_con').eq(num).siblings('.work_con').hide();
                $('#tab_down .work_con').eq(num).show();
            });

            $('.work_con li a').hover(function () {
                $(this).children('.work_none').css('display', 'block');
            }, function () {
                $(this).children('.work_none').css('display', 'none');
            });
        });

        // 底导航
        var windowheight = $(window).height();
        $(window).scroll(function (event) {
            //每次都要获取被浏览器卷去的高
            var myTop = $(window).scrollTop();
            //console.log(myTop);
            var myTop = parseFloat($(window).scrollTop());
            //做判断是为了被卷去的高度大于浏览器的高度时火箭显示
            if (myTop > 500) {
                $('.get_tic2').show();
                var mark = $('.gain').css('display');
                if (mark != 'block') {
                    $("#J_BotBar .get_in").show();
                    $("#J_BotBar").css('width', '100%');
                }
            } else {
                $('.get_tic2,.gain').hide()
            }
        });

        $("#J_BotBarClose").on("click", function () {
            botBarCloseFlag = true;
            $("#J_BotBar .get_in").hide();
            $("#J_BotBar").animate({width: "0"});
            $(".gain").stop().animate({width: "182px"}).css('display', 'block');
        });

        $("#J_BotSmBar").on("click", function () {
            botBarCloseFlag = false;
            $("#J_BotBar .get_in").show();
            $("#J_BotBar").animate({width: "100%"});
            $("#J_BotSmBar").animate({width: "0"});
        });

        // $(".J_GetCoupon").on("click", function () {
        //     var _this = $(this);
        //     var srcld = 'coupon';
        //     base.getCoupon($(this).attr("data-id"), srcld, function () {
        //         // _this.removeClass('J_GetCoupon');
        //         _this.addClass('over');
        //         _this.html('已领取');
        //         // _this.removeAttr('data-id');
        //         // location.reload(); // 领取成功后执行的方法 需要调整
        //     });
        // });

        /**
         * 导航栏
         */
        var topBarOffsetTop = $("#J_TopBar").offset().top;
        var navCount = parseInt(8);
        $(".J_EactNav").on("click", function () {
            var idx = $(this).attr("data-id");
            $("html,body").animate({scrollTop: Math.round($("#J_Eact" + idx).offset().top - 200)}, 100);
        });

        window.onscroll = function () {
            var t = document.documentElement.scrollTop || document.body.scrollTop;

            // 头部导航栏
            if (t >= topBarOffsetTop) {
                $("#J_TopBar").addClass("move");

                for (var i = 1; i <= navCount; i++) {
                    var eactTop = Math.round($("#J_Eact" + i).offset().top - 200);

                    if (i != navCount) {
                        var next = i + 1;
                        var nextEactTop = Math.round($("#J_Eact" + next).offset().top - 200);

                        if (t >= eactTop && t < nextEactTop) {
                            $("#J_EactNav" + i).addClass("t_now").siblings().removeClass("t_now")
                        }
                    } else {
                        if (t >= eactTop) {
                            $("#J_EactNav" + i).addClass("t_now").siblings().removeClass("t_now")
                        }
                    }
                }
            } else {
                $("#J_TopBar").removeClass("move").find(".t_now").removeClass("t_now");
            }
        }
    });

    // $(".show_info").mouseover(function () {
    //     $(this).css("color", "red");
    //     $(this).css("cursor", "pointer");
    // });
    // $(".show_info").mouseleave(function () {
    //     $(this).css("color", "black");
    // });
</script>
