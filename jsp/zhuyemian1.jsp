<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>家政主页</title>

<script type="text/javascript">
function loginout(){
	if(confirm("确认退出")){
		window.location.href="<%=basePath%>loginout.action"
	}
	
}

</script>

</head>
<body>

	<div class="container " >
		<div class="row">
			<div class="col-sm-4">
				<h2>关于我们</h2>
				<h5>我们有着最专业的培训</h5>
				<div class="fakeimg">
					<img src="${pageContext.request.contextPath}\images\009.png"
						style="height: 200px; margin-left: 20px;"> <img
						src="${pageContext.request.contextPath}\images\010.png"
						style="height: 200px; margin-left: 30px;">
				</div>
				
				<hr class="hidden-sm hidden-md hidden-lg">
			</div>
			<div class="col-sm-8">
				<h2 style="text-align: center;">家政服务</h2>
				<h5 style="text-align: center;">全方位的服务，让您生活无忧</h5>
				<hr>
				<div>
					<img src="${pageContext.request.contextPath}\images\011.png"
						style="width: 750px;">
				</div>
				<div>
					<img src="${pageContext.request.contextPath}\images\012.png"
						style="width: 800px; margin-top: 30px;">
				</div>
				<hr>

				<br>

			</div>
		</div>
	</div>



	<div class="row">
		<h1 style="text-align: center;">优秀阿姨墙</h1>
		<div style="margin-top: 20px;">
			<h4 style="text-align: center;">勤奋&nbsp&nbsp尽职&nbsp&nbsp友善&nbsp&nbsp安分</h4>
			<hr
				style="align: center; width: 500px; background-color: #337ab7; border: none; height: 1px;">
			<hr>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}\images\bm01.png"
					alt="通用的占位符缩略图">
				<div class="caption">
					<h3>刘阿姨</h3>
					<p>52岁 / 江苏 / 10年工龄</p>
					<p>擅长：新生儿的护理、月子餐的调配、剖腹产产后护理； 资质：持有高级母婴保健师职业培训证书</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}\auntImages\bm03.png"
					alt="通用的占位符缩略图">
				<div class="caption">
					<h3>韩阿姨</h3>
					<p>42岁 / 江苏 / 9年工龄</p>
					<p>擅长：新生儿的护理、月子餐的调配、新生儿的疾病防治、催乳； 资质：持有高级催乳师职业培训证书；
						持有高级母婴保健师职业培训证书</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}\auntImages\bm04.png"
					alt="通用的占位符缩略图">
				<div class="caption">
					<h3>毛阿姨</h3>
					<p>50岁 / 江苏 / 10年工龄</p>
					<p>擅长：新生儿的护理、月子餐的调配、催乳； 资质：持有高级催乳师职业培训证书； 持有高级母婴保健师职业培训证书</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}\auntImages\bm006.png"
					alt="通用的占位符缩略图">
				<div class="caption">
					<h3>朱先生</h3>
					<p>43岁 / 江苏 / 8年工龄</p>
					<p>擅长：新生儿的护理、月子餐的调配、早教； 资质：持有高级母婴保健师职业培训证书</p>
				</div>
			</div>
		</div>
	</div>


</body>
</html>