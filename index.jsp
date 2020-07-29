<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>家政服务登录界面</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<base href="<%=basePath%>">

<meta name="renderer" content="webkit">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link type="text/css" rel="stylesheet"
	href="http://static.liecdn.cn/css/2012/common.css?v=20200306134458" />
<link type="text/css" rel="stylesheet"
	href="http://static.liecdn.cn/css/2012/post-header.css?v=20200306134458" />
<link type="text/css" rel="stylesheet"
	href="http://static.liecdn.cn/css/2012/topbar.css?v=20200306134458" />
<link type="text/css" rel="stylesheet"
	href="http://static.liecdn.cn/css/2012/footer.css?v=20200306134458" />
<link type="text/css" rel="stylesheet"
	href="http://static.liecdn.cn/css/2012/validate.css?v=20200306134458">
<link type="text/css" rel="stylesheet"
	href="http://static.liecdn.cn/css/2012/other-header.css?v=20200306134458" />
<link type="text/css" rel="stylesheet"
	href="http://static.liecdn.cn/css/register/indexnew.css?v=20200306134458" />
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>

<style>
.e {
	width: 380px;
	height: 40px;
	background-color: #538cd0;
	font-size: 20px;
}
</style>
</head>
<body background="${pageContext.request.contextPath}\images\002.png"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
	<div
		style="font-size: 55px; font-color: #84a8c0; font-family: 华文彩云; text-align: center; margin-top: 50px;">家政服务系统</div>
	<form class="col-sm-4 form-horizontal" role="form"
		action="${basePath}user_login.action" method="post">

		<div
			style="margin-top: 100px; width: 400px; height: 800px; margin-left: 400px;">
			<div
				style="background: #FFF; color: #000; width: 500px; heigth: 400px;">
				<div style="width: 400px; margin-left: 30px;">
					<div class="form-group"
						style="padding-top: 50px; margin-left: 10px;">

						<div class="input-group" style="height: 50px">
							<span class="input-group-addon">账户</span> <input type="text" maxlength="20" 
								class="form-control" id="firstname" name="id"
								placeholder="账户/邮箱/电话" style="height: 50px">
						</div>
						<div class="input-group" style="margin-top: 20px; height: 50px">
							<span class="input-group-addon">密码</span> <input type="password" maxlength="20"
								class="form-control" id="lastname" name="password"
								placeholder="密码" style="height: 50px">
						</div>
					</div>

				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox"> 请记住我
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="submit" class="e">登录</button>
					</div>
					<div class="col-sm-offset-1 col-sm-10">
						<a class="w" onclick="window.open('register.jsp')">没有账号？立即注册</a>
					</div>
					<div class="col-sm-offset-1 col-sm-10">
						<a href="index2.jsp">管理员入口</a>
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>