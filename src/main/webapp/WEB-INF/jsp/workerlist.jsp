<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/29
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>信息中心 | 装修帮办服务平台</title>
	<%@include file="common/head.jsp"%>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="page-wrapper"  style="background: #eee;">
	<div class="container">
		<div class="bbb worker">
			<ul>
				<li class="active" value="1">
					<div>
						<img src="../../resources/images/worker/b_sheji.jpg" alt="" />
					</div>

					<p>设计师</p>
				</li>
				<li value="2">
					<div>
						<img src="../../resources/images/worker/b_shigong.jpg" alt="" />
					</div>
					<p>施工队</p>
				</li>

			</ul>
			<ul>
				<li value="3">
					<div>
						<img src="../../resources/images/worker/b_shuidian.jpg" alt="" />
					</div>

					<p>水电工</p>
				</li>
				<li value="4">
					<div>
						<img src="http://www.gzbjfs.com/upload/image/20170615/1497490002375151.jpg" alt="" />
					</div>
					<p>防水工</p>
				</li>
				<li value="5">
					<div>
						<img src="../../resources/images/worker/b_cizhuan.jpg" alt="" /></div>
					<p>瓷砖工</p>
				</li>
				<li value="6">
					<div>
						<img src="../../resources/images/worker/b_mugong.jpg" alt="" /></div>
					<p>木工</p>
				</li>
				<%--<li value="7">--%>
					<%--<div>--%>
						<%--<img src="../../resources/images/worker/b_youqi.jpg" alt="" /></div>--%>
					<%--<p>油漆工</p>--%>
				<%--</li>--%>
				<li value="13">
					<div>
						<img src="../../resources/images/worker/b_youqi.jpg" alt="" /></div>
					<p>腻子工</p>
				</li>
			</ul>
			<ul>
				<li value="10">
					<div>
						<img src="../../resources/images/worker/b_shicai.jpg" alt="" />
					</div>
					<p>石材工</p>
				</li>
				<li value="8">
					<div>
						<img src="../../resources/images/worker/b_diaod.jpg" alt="" />
					</div>
					<p>吊顶工</p>
				</li>
				<li value="24">
					<div >
						<img src="../../resources/images/worker/b_jic.jpg" alt="" /></div>
					<p>集成墙吊顶</p>
				</li>
				<li value="9">
					<div>
						<img src="../../resources/images/worker/b_jiaj.jpg" alt="" /></div>
						<p>家具安装工</p>
				</li>
				<li value="11">
					<div >
						<img src="../../resources/images/worker/b_biz.jpg" alt="" /></div>
					<p>壁纸工</p>
				</li>
				<li value="12">
					<div>
						<img src="../../resources/images/worker/b_shin.jpg" alt="" /></div>
					<p>室内门安装工</p>
				</li>
				<li value="15">
					<div >
						<img src="../../resources/images/worker/b_weiy.jpg" alt="" /></div>
					<p>卫浴安装工</p>
				</li>
				<li value="16">
					<div>
						<img src="../../resources/images/worker/b_dengs.jpg" alt="" /></div>
					<p>灯饰安装工</p>
				</li>
				<li value="17">
					<div >
						<img src="../../resources/images/worker/b_chuanl.jpg" alt="" /></div>
					<p>窗帘安装工</p>
				</li>
				<li value="19">
					<div>
						<img src="../../resources/images/worker/b_bany.png" alt="" /></div>
					<p>搬运工</p>
				</li>
				<li value="20">
					<div>
						<img src="../../resources/images/worker/b_jiaz.jpg" alt="" /></div>
					<p>家政</p>
				</li>
				<li value="21">
					<div >
						<img src="../../resources/images/worker/b_songh.jpg" alt="" /></div>
					<p>送货工</p>
				</li>
				<li value="22">
					<div >
						<img src="../../resources/images/worker/b_mud.jpg" alt="" /></div>
					<p>木地板工</p>
				</li>
				<li value="23">
					<div>
						<img src="../../resources/images/worker/b_tuj.jpg" alt="" /></div>
					<p>土建工</p>
				</li>
				<li value="25">
					<div>
						<img src="../../resources/images/worker/b_meif.jpg" alt="" /></div>
					<p>美缝工</p>
				</li>
				<li value="26">
					<div >
						<img src="../../resources/images/worker/b_baol.png" alt="" /></div>
					<p>包立管</p>
				</li>
			</ul>
		</div>
		<div class="small_worker bbb ">
			<ul>
				<li value="2">
					<div class="worker-list worker-sgd"></div>
					<p>施工队</p>
				</li>
				<li value="1">
					<div class="worker-list worker-sjs"></div>
					<p>设计师</p>
				</li>
			</ul>
			<ul>
				<li value="3">
					<div class="worker-list worker-shuidian"></div>
					<p>水电工</p>
				</li>
				<li value="4">
					<div class="worker-list worker-fangshui"></div>
					<p>防水工</p>
				</li>
				<li value="5">
					<div class="worker-list worker-cizhuan"></div>
					<p>瓷砖工</p>
				</li>
				<li value="6">
					<div class="worker-list worker-mugong"></div>
					<p>木&nbsp;工</p>
				</li>
				<%--<li value="7">--%>
					<%--<div class="worker-list worker-youqi"></div>--%>
					<%--<p>油漆工</p>--%>
				<%--</li>--%>
				<li value="13">
					<div class="worker-list worker-nizigong"></div>
					<p>腻子工</p>
				</li>
			</ul>
			<ul>
				<li value="10">
					<div class="worker-list worker-shicai"></div>
					<p>石材工</p>
				</li>
				<li value="8">
					<div class="worker-list worker-diaoding"></div>
					<p>吊顶工</p>
				</li>
				<li value="24">
					<div class="worker-list worker-jicheng"></div>
					<p>集成墙吊顶</p>
				</li>
				<li value="9">
					<div class="worker-list worker-jiaju"></div>
					<p>家俱安装工</p>
				</li>
				<li value="11">
					<div class="worker-list worker-bizhi"></div>
					<p>壁纸工</p>
				</li>
				<%--<li value="12">--%>
					<%--<div class="worker-list worker-shinmen"></div>--%>
					<%--<p>室内门安装</p>--%>
				<%--</li>--%>
				<%--<li value="15">--%>
					<%--<div class="worker-list worker-weiyu"></div>--%>
					<%--<p>卫浴安装工</p>--%>
				<%--</li>--%>
				<li value="16">
					<div class="worker-list worker-dengs"></div>
					<p>灯饰安装工</p>
				</li>
				<li value="17">
					<div class="worker-list worker-chuanglian"></div>
					<p>窗帘安装工</p>
				</li>
				<li value="19">
					<div class="worker-list worker-banyungong"></div>
					<p>搬运工</p>
				</li>
				<li value="20">
					<div class="worker-list worker-jiazheng"></div>
					<p>家&nbsp;政</p>
				</li>
				<li value="21">
					<div class="worker-list worker-songhuo"></div>
					<p>送货工</p>
				</li>
				<li value="22">
					<div class="worker-list worker-mudi"></div>
					<p>木地板工</p>
				</li>
				<li value="23">
					<div class="worker-list worker-tujian"></div>
					<p>土建工</p>
				</li>
				<li value="25">
					<div class="worker-list worker-meifeng"></div>
					<p>美缝工</p>
				</li>
				<li value="26">
					<div class="worker-list worker-baolg"></div>
					<p>包立管</p>
				</li>
			</ul>
		</div>
		<div class="row clearfix">
			<div class="modal fade" id="modal-container-workers" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="container">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove"></span></button>
							<span id="workercardstitle">平台当前所有工人信息<font color="red"><非会员用户只能查看3个工人信息></非会员用户只能查看3个工人信息></font></span><span id="current-time"></span>
						</div>
						<div class="modal-body">
							<div class="row clearfix" id="showpanel">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
<%@include file="common/quoted.jsp"%>
</body>
<%@include file="common/script.jsp"%>
<script type="text/javascript">
    $(function () {
        workerlist.detail.showworkers();
        setInterval(Timer,1000);
        processQuoted.detail.init();
        processQuoted.detail.window();
    });

    function Timer() {
        var date = new Date();
        $("#current-time").text(date.toLocaleTimeString());
    };
</script>
</html>
