<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>入驻工人申请 | 装修帮办服务平台</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0">
    <%@include file="../common/head.jsp"%>
    <STYLE type="text/css">
        .jumbotron{
            margin-top: 50px;
            text-align: center;
        }
        .work-info-input{
            padding-left:10px;
            padding-right:10px;
        }
        form{
            margin: 0 auto;
        }
        .aas {
            padding:0 10px;
        }
        .aas h4{
            display: inline-block;
            width:35%;
            font-size:14px;
            line-height: 30px;
        }
        .aas input{
            height:28px;
            width:65%;
        }
        input::-webkit-outer-spin-button,input::-webkit-inner-spin-button{
           -webkit-appearance: none !important;
        }
        .aas select{
            height:30px;
            width:65%;
        }
        .aas textarea{
            width:100%;
            height:150px;
            text-indent:2rem;
            font-size:14px;
            line-height:20px;
            padding:5px;
            resize: none;
        }
        .btn-submit{
            margin-top:20px;
            margin-bottom:20px;
            margin-left:20px;
        }
        @media screen and (max-width:660px) {
            .btn-submit{
                margin-left:10px;
                margin-top:10px;
                margin-bottom:10px;
            }
            .inline{
                display: block;
            }
            .aas h4{
                line-height: 15px;
            }
        }
        .input-group{
            width:100%;
        }
        .aas .input-group .select{
            width:65%;
        }
        .aas .input-group #citys{
            margin-left:35%;
        }
        .aas .input-group #areas{
            margin-left:35%;
        }
        .floatr{
            float:right;
            margin-top:5px;
        }
    </STYLE>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerregisterbgi.png');background-repeat: no-repeat;min-height: 100px ">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 col-md-offset-2 column work-info-input">
                    <div class="jumbotron row" style="padding:0 10px;margin-bottom:30px;">
                        <h2 style="color: black">工人信息修改</h2><br/>
                        <form  action="${pageContext.request.contextPath}/my-account/update-workerinfo" method="post" style="text-align: left"  name="form" onSubmit="return beforeSubmit(this);">
                            <input type="hidden" name="workerId" value="${workerInfo.workerId}">
                            <div class="col-md-6 aas">
                                <h4 class="inline" >姓名：</h4><input type="text" name="name" value="${workerInfo.name}" placeholder="尚师傅"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >年龄：</h4><input type="number" name="age" value="${workerProfile.age}" placeholder="20"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >工龄：</h4><input type="number" name="jobYear" value="${workerInfo.jobYear}" placeholder="20"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >手机号：</h4><input type="tel"  name="tel" value="${workerInfo.tel}" placeholder="13333333333" disabled/>
                            </div>
                            <div class="col-md-6 aas">
                                <c:forTokens items="设计师,施工队,水电工,防水工,瓦工,木工,腻子工,集成吊顶,定制家具,石材安装,壁纸壁布,木门安装,
 油漆工,监理,卫浴洁具,灯饰灯具,窗帘安装,学徒工,搬运工,家政服务,租车送货,地板安装,a,a,瓷砖美缝,包立管,拆墙开槽,成品家具,a,a,集成墙板,a,橱柜安装,软包硬包,五金挂件,家具补漆,
 开荒保洁,厨卫电器,空调安装,新风系统,净水系统,安防系统,智能家居,玻璃安装,铁艺制作,更换窗纱,栏杆护栏,暖通设备,广告招牌,晾衣架,背景墙,硅藻泥,淋浴房,防盗门,防盗网,铝门窗,
 遮阳棚,阳光房,卷闸门,铜艺门,开锁解锁,水钻开孔,空调清洗,烟机清洗,甲醛治理" delims="," var="item" varStatus="status" >
                                    <c:if test="${workerInfo.jobId==status.count}">
                                        <h4 class="inline" >出身工种：</h4><input type="text" name="originwork" value="${item}" placeholder="工长" disabled/>
                                    </c:if>
                                </c:forTokens>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >综合评分：</h4><input type="overAllRating"  value="${workerInfo.overAllRating}" disabled/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >浏览量：</h4><input type="homePV"  placeholder="" value="${workerProfile.homePV}" disabled/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >星级：</h4><input type="starEvaluated"  placeholder="2" value="${workerProfile.starEvaluated}" disabled/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >籍贯：</h4><input type="text" name="address" placeholder="山西长治" value="${workerInfo.address}"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >擅长风格：</h4><input type="text" name="style"  placeholder="田园，中式，欧式" value="${workerInfo.style}"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >施工队人数：</h4><input type="number" name="teamCount"  placeholder="2" value="${workerInfo.teamCount}"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >同时接单数：</h4><input type="number" name="ordersCount" placeholder="6" value="${workerInfo.ordersCount}"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >施工状态：</h4><select name="state">
                                <c:if test="${workerInfo.state==true}"><option value="true" selected="selected">施工中</option><option value="false" >可预约</option></c:if>
                                <c:if test="${workerInfo.state==false}"><option value="false" selected="selected">可预约</option><option value="true" >施工中</option></c:if>
                                </select>
                            </div>
                            <div class="col-md-6 aas" id="location">
                                <h4 class="inline" >现工程地址：</h4><input type="text" name="location" placeholder="山西长治" value="${workerInfo.location}"/>
                            </div>

                            <div class="col-md-12 aas">
                                <h4 class="inline" >团队描述：</h4> <textarea name="teamDesc" id="" cols="" rows=""  placeholder="例如：古典文学常见论文一词，谓交谈辞章或交流思想。当代，论文常用来指进行各个学术领域的研究和描述学术研究成果的文章，简称之为论文。">${workerInfo.teamDesc}</textarea>
                            </div>

                            <input type="submit" value="提交" class="btn btn-success btn-lg btn-submit">
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
    $(function(){
        var clientWidth = document.body.clientWidth || document.documentElement.clientWidth;
//        if(clientWidth <= 600){
//            $("#textarea").attr("cols",27);
//            $("#textarea").attr("rows",8);
//        }
    })
    function  beforeSubmit(form) {
        if(form.name.value==''){
            alert('姓名不能为空！');
            form.name.focus();
            return false;
        }
        if(form.age.value==''){
            alert('年龄不能为空！');
            form.age.focus();
            return false;
        }
        if(form.workingyears.value==''){
            alert('工龄不能为空！');
            form.workingyears.focus();
            return false;
        }
        if(form.tel.value==''){
            alert('手机号不能为空！');
            form.tel.focus();
            return false;
        }else if(form.tel.value.length!=11){
            alert('请输入正确的手机号！');
            form.tel.focus();
            return false;
        }
        if(form.originwork.value==''){
            alert('出身工种不能为空！');
            form.originwork.focus();
            return false;
        }
        if(form.jiguan.value==''){
            alert('籍贯不能为空！');
            form.jiguan.focus();
            return false;
        }
        if(form.rstyle.value==''){
            alert('擅长风格不能为空！');
            form.rstyle.focus();
            return false;
        }
        if(form.number.value==''){
            alert('施工队人数不能为空！');
            form.number.focus();
            return false;
        }
        if(form.singularNumber.value==''){
            alert('同时接单数不能为空！');
            form.singularNumber.focus();
            return false;
        }
        if(form.address.value==''){
            alert('现工程地址不能为空！');
            form.address.focus();
            return false;
        }
        if(form.teamDescription.value==''){
            alert('团队描述不能为空！');
            form.teamDescription.focus();
            return false;
        }
    }
    function editloc(param) {
        var $i = $(param);
        flag = $($i).val();
        $($($i).parent()).html("<div><div class='input-group'>" +
            "<h3 style='font-size:14px;display:inline-block;width:35%;'>"+"现工程地址："+"</h3>"+
            "<select class='select' id='provinces' name='province_code' onchange='getCitys()'>"+

            "</select>"+

            "<select class='select' id='citys' name='city_code' onchange='getAreas()'>"+
            "</select>"+

            "<select class='select' id='areas' name='area_code'>"+

            "</select>" +
            "<span class='floatr'><button type='button' class='btn btn-default' onclick='l()'>保存</button>" +
            "</span>" +
            "</div></div>");
        $.ajax({
            type: 'get',
            url: "/worker-console/queryProvinceAll",
            datatype: 'jsonp',
            success: function (data) {
                var result = eval('(' + data + ')');
                for (var i = 0; i < result.length; i++) {
                    $('#provinces').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载省失败");
            }
        });
    }
    /*加载市下拉选*/
    function getCitys() {
        var id = $("#provinces").val();
        $("#citys").empty();
        $("#areas").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryCityByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                $('#citys').append("<option value='' selected='selected' >" + '--请选择--' + "</option>");
                $('#areas').append("<option value='' selected='selected' >" + '--请选择--' + "</option>");
                for (var i = 0; i < result.length; i++) {
                    $('#citys').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载市失败");
            }
        });
    } ;
    /*加载地区下拉选*/
    function getAreas() {
        var id = $("#citys").val();
        $("#areas").empty();
        $.ajax({
            type: "post",
            url: "/worker-console/queryAreaByCode",
            datatype: 'jsonp',
            data: {"id": id},
            success: function (data) {
                var result = eval('(' + data + ')');
                $('#areas').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                for (var i = 0; i < result.length; i++) {
                    $('#areas').append("<option value='" + result[i].code + "' >" + result[i].name + "</option>");
                }
            },
            error: function () {
                alert("加载区失败");
            }
        });
    };
    function l() {
        var procode=$('#provinces').find("option:selected").text();
        var cityCode=$("#citys").find("option:selected").text();
        var areaCode=$('#areas').find("option:selected").text();
        var loc=procode+cityCode+areaCode;
        $('#location').html("<h4 class='inline'>现工程地址：</h4>"+"<input type='text' name='location' onfocus='editloc(this)' readonly value="+loc+" />")
    };
    $(function(){
        $("input[name='location']").focus(function(){
            editloc(this);
        })
    })
</script>
</html>