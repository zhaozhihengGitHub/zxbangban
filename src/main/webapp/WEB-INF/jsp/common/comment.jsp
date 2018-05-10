<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="${pageContext.request.contextPath}/resources/css/comment.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.0.min.js"></script>

<div class="commentAll">
    <!--评论区域 begin-->
    <div class="reviewArea clearfix">
        <textarea class="content comment-input" placeholder="来说几句吧..." onkeyup="keyUP(this)"></textarea>
        <a href="javascript:;" class="plBtn">评论</a>
    </div>
    <!--评论区域 end-->
    <!--回复区域 begin-->
    <div class="comment-show">
    <c:forEach var="comment" items="${comments}" varStatus="stat" >
        <div class="comment-show-con clearfix">
            <c:if test="${comment.commentType==true}" >
            <div class="comment-show-con-img pull-left"><img src=${comment.headImg} alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">${comment.username} </a>
                    <span class="my-pl-con">${comment.contents}</span>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">${comment.time}</span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left" id="${comment.commentId}">回复</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div>
            </c:if>
            <c:if test="${comment.commentType==false}" >
                <div class="comment-show-con-list pull-left clearfix" style="background: #eee;padding:0 5px;">
                    <div class="pl-text clearfix">
                        <a href="#" class="comment-size-name">${comment.username} </a>
                        <span class="my-pl-con">${comment.contents}</span>
                    </div>
                    <div class="date-dz">
                        <span class="date-dz-left pull-left comment-time">${comment.time}</span>
                    </div>
                    <div class="hf-list-con"></div>
                </div>
            </c:if>
        </div>
    </c:forEach>
    <!--回复区域 end-->
</div>
</div>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
    $(function () {
        var commentId=parseInt(Math.random()*10000);
        var $cookie = $.cookie("uid");
        var $headImg = $.cookie("headimg");
        if($cookie==null){
            $cookie='id'+parseInt(Math.random()*1000000);
        }
        if($headImg==undefined){
            $headImg= "${pageContext.request.contextPath}/resources/images/header-img-comment_03.png";
        }
<!--点击评论创建评论条-->
    $('.commentAll').on('click','.plBtn',function(){
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oSize = $(this).parent().find('.comment-input').val();

        //发送参数到后台
        $.ajax({
            url:"${pageContext.request.contextPath}/newComment",
            type:"POST",
            data:{headImg:$headImg,contents:oSize,username:$cookie,time:now,commentType:true,commentId:commentId},
            dataType:"json",
            success:function (data) {
                alert("评论成功！");
            }
        });
        //动态创建评论模块
        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src='+$headImg+' alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">'+$cookie+' : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left" id='+commentId+'>回复</a></div> </div><div class="hf-list-con"></div></div> </div>';
        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
            $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
            $(this).parents().find('.comment-input').prop('value','').siblings('pre').find('span').text('');
        }
    });

<!--点击回复动态创建回复块-->

    $('.comment-show').on('click','.pl-hf',function(){
        //获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@'+fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
        //显示回复
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
<!--评论回复块创建-->
    $('.comment-show').on('click','.hf-pl',function(){
        var commentId=$(this).parents('.comment-show-con-list').find('.pl-hf').attr('id');
        var oThis = $(this);
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oHfVal = $(this).parent().find('.hf-input').val();
        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var oAllVal = '回复@'+oHfName;
        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

        }else {
                var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">'+$cookie+'  </a><span class="my-pl-con">'+oHfVal+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span>  </div></div>';
                oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();

                $.ajax({
                    url:"${pageContext.request.contextPath}/newComment",
                    type:"POST",
                    data:{headImg:$headImg,contents:oHfVal,username:$cookie,time:now,commentType:false,commentId:commentId},
                    dataType:"json",
                    success:function (data) {
                        alert("评论成功！");
                    }
                });
            /*});*/
        }
    });
<%--<!--删除评论块-->
<script type="text/javascript">
    $('.commentAll').on('click','.removeBlock',function(){
        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
        if(oT.siblings('.all-pl-con').length >= 1){
            oT.remove();
        }else {
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
            oT.remove();
        }
        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

    })
</script>--%>
<%--<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })--%>
})

</script>

