<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>
<meta name="renderer" content="webkit">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>


<style type="text/css">
#NavTop2 {
	width: 140px;
	height: 370px;
	margin-top: 50px;
	position: fixed;
	right: 0px;
	bottom: 0px;
	z-index: 10; /*固定位置,右浮动，距上150px*/
}
</style>
<script type="text/javascript">
function loginout(){
	if(confirm("确认退出")){
		window.location.href="<%=basePath%>loginout.action"
	}
	
}


</script>






</head>
<body style="background-repet: no-repeet; background-color: #ffffff; background-size: 100% 100%; background-attachment: fixed;">

	<!-- 左边悬浮窗 -->
	<div id="NavTop2">
		<div id="NavCon2">
			<a target="_blank"
				href="http://wpa.qq.com/msgrd?v=3&uin=993673287&site=qq&menu=yes"><img
				border="0" src="http://wpa.qq.com/pa?p=2:993673287:53"
				alt="点击这里给我发消息" title="点击这里给我发消息" style="margin-left: 20px;" /></a>
		</div>
	</div>


	<div >
		<div >
			<nav class="navbar navbar-default navbar-static-top"
				role="navigation" style="background-color:#ffffff;position:fixed;width:100%;">
			<div class="container-fluid" >
				<div class="navbar-header">
					<a class="navbar-brand" style="font-size: 30px;">家政服务系统管理</a>
				</div>
				<div>
					<ul class="nav navbar-nav">
						<li class="active"><a href="jsp/zhuyemian1.jsp" target="table">网站首页</a></li>
						<li><a href="toFindAunt.action" target="table">服务展示</a></li>
						<li><a href="toNewActive.action" target="table">最新动态</a></li>
						<li><a href="jsp/HandupMessage.jsp" target="table">加入我们</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> 个人中心 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="jsp/Information.jsp" target="table">我的信息</a></li>
								<li><a href="jsp/PasUpdate.jsp" target="table">修改密码</a></li>
								<li><a href="toMyHetong2.action" target="table">我的订单</a></li>
								<!-- <li><a href="jsp/MyComment.jsp" target="table">我的评论</a></li> -->
							</ul></li>
						<li style="margin-left: 250px;"><a>欢迎回来，【${sessionScope.huser.username}】</a></li>
						<li><a>|</a></li>
						<li><a onclick="loginout()">退出</a></li>
					</ul>
				</div>
			</div>
			</nav>
			
			
			
			<!-- 最顶栏的轮播图片 -->
	<!-- class="jumbotron text-center" -->
		<div id="myCarousel" class="carousel slide" style="width:100%;">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active" style="height: 350px;">
					<img src="${pageContext.request.contextPath}\images\004.png"
						alt="First slide" width="100%" >
				</div>
				<div class="item" style="height: 350px;">
					<img src="${pageContext.request.contextPath}\images\005.png"
						alt="Second slide" width="100%">
				</div>
				<div class="item" style="height: 350px;">
					<img src="${pageContext.request.contextPath}\images\006.png"
						alt="Third slide" width="100%">
				</div>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		
			
		<nav class="navbar navbar-inverse" style="background-color:#ffa55a;border:0;margin-top:10px;">
		<div class="container-fluid">
		</div>
		</nav>	
			
			
			
			
			
			
			<div  style="text-align:center;">
				<iframe src="jsp/zhuyemian1.jsp" name="table" frameborder="0" width="100%" scrolling="auto" align="middle" 
					id="table"  onload="this.height=iFrame1.document.body.scrollHeight"
					style="min-height:1400px;height:100%;"> </iframe>
			</div>

			
			<div style="height:200px;background-color:#c3c3c3">
			</div>
		</div>
	</div>



	<nav class="navbar navbar-default navbar-fixed-bottom"
		role="navigation" style="width: 260px">
	<ul class="nav navbar-nav">
		<li class="dropdown"><a href="#"
			class="dropdown-toggle btn btn-warning" data-toggle="dropdown"
			style="width: 260px"> 快速预约 <b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li>
					<div id="NavTop" >	
						<form action="${basePath}insertNeed.action" method="post">
							<div id="NavCon" style="border: 5px solid #f0f0f0;">
								<!-- <img src="images/banner.png" class="banner"> -->
								<div class="form-group">
									<h5>&nbsp&nbsp&nbsp请输入您的需求：</h5>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="月嫂" checked>月嫂
										</label> <label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="保姆">保姆
										</label> <label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="育儿嫂">育儿嫂
										</label> </label> <label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="清洁工">清洁工
										</label>
									</div>
								</div>
								<input type="text" class="form-control" id="need_username"
									name="need_username" placeholder="请输入您的姓名"
									style="width: 260px; margin-left: 15px;" required> <input
									type="text" class="form-control" id="need_phone"
									name="need_phone" placeholder="请输入您的手机号"
									style="width: 260px; margin-left: 15px; margin-top: 5px;" required>
								<textarea type="text" class="form-control" id="need_address"
									name="need_address" placeholder="请输入详情地址精确到小区"
									style="width: 260px; margin-left: 15px; margin-top: 5px;" required></textarea>
								<textarea type="text" class="form-control" id="need_request"
									name="need_request" placeholder="其余要求：如上门服务时间或日期等"
									style="width: 260px; margin-left: 15px; margin-top: 5px;" required></textarea>
								<button type="submit" class="btn btn-warning"
									style="width: 260px; margin-left: 15px; margin-top: 5px; height: 40px;">马上预约</button>
								<!--   <img src="images/top.png" class="bottom"> -->
							</div>
						</form>
					</div>
				</li>
			</ul></li>
	</ul>
	</nav>



</body>

</html>

