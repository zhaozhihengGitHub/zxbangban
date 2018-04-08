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
                        <form  action="" method="post" style="text-align: left"  name="form" onSubmit="return beforeSubmit(this);">
                            <div class="col-md-6 aas">
                                <h4 class="inline" >姓名：</h4><input type="text" name="name" placeholder="尚师傅"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >年龄：</h4><input type="number" name="age"  placeholder="20"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >工龄：</h4><input type="number" name="workingyears" placeholder="20"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >手机号：</h4><input type="tel"  name="tel" placeholder="13586859987"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >出身工种：</h4><input type="text" name="originwork" placeholder="工长"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >综合评分：</h4><input type="number"  placeholder="" value="1.0" readonly/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >浏览量：</h4><input type="number"  placeholder="" value="158" readonly/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >星级：</h4><input type="number"  placeholder="2" value="2" readonly/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >籍贯：</h4><input type="text" name="jiguan" placeholder="山西长治"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >擅长风格：</h4><input type="text" name="rstyle"  placeholder="田园，中式，欧式"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >施工队人数：</h4><input type="number" name="number"  placeholder="2"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >同时接单数：</h4><input type="number" name="singularNumber" placeholder="6"/>
                            </div>
                            <div class="col-md-6 aas">
                                <h4 class="inline" >现工程地址：</h4><input type="text" name="address" placeholder="山西长治"/>
                            </div>
                            <div class="col-md-6 aas">
                            <h4 class="inline" >施工状态：</h4><select name="construction-state">
                            <option value="已完成">已完成</option><option value="可预约">可预约</option></select>
                            </div>
                            <div class="col-md-12 aas">
                                <h4 class="inline" >团队描述：</h4> <textarea name="teamDescription" id="" cols="" rows="" placeholder="例如：古典文学常见论文一词，谓交谈辞章或交流思想。当代，论文常用来指进行各个学术领域的研究和描述学术研究成果的文章，简称之为论文。"></textarea>
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
</script>
</html>