<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户注册 | 家政服务系统</title>
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

<script type="text/javascript">
	<script type = "text/javascript">
	function check() {

		var password = document.getElementById("password").value;
		var password1 = document.getElementById("password1").value;
		if (password != password1) {
			alert("密码不一样");
			document.form1.password.select();
			document.form1.password1.value = "";
			return false;
		}
	}
</script>
</head>
<body>

	<div class="panel-heading">
		<div
			style="font-size: 55px; font-color: #84a8c0; font-family: 华文彩云; text-align: center; margin-top: 50px;">家政服务系统</div>
		<hr>
	</div>

	<div class="col-md-8 column" style="margin-left: 300px;">
		<form class="form-horizontal" role="form"
			action="${basePath}user_register.action" method="post">
			<h2>用户注册</h2>

			<div class="phr-m-l">
				<hr>
				<div id="phregist" class="reg-body" style="display: block;">
					<div class="field">
						<label class="lb-phone">账&emsp;号：</label> <input id="phonenum"
							name="id" type="text" maxlength="11" autocomplete="off"
							class="regtext" style="float: left;" /> <span
							id="phonenum_cleanbtn" class="cleanbtn-phonenum"
							style="display: none;"></span> <span id="phonenumTip"
							style="float: left; margin-top: 10px;"></span>
					</div>
					<div class="field">
						<label class="lb-phone">用户名：</label> <input id="phonenum"
							name="username" type="text" maxlength="11" autocomplete="off"
							class="regtext" style="float: left;" /> <span
							id="phonenum_cleanbtn" class="cleanbtn-phonenum"
							style="display: none;"></span> <span id="phonenumTip"
							style="float: left; margin-top: 10px;"></span>
					</div>
					<div class="field">
						<label class="lb-phone">密&emsp;码：</label> <input id="password"
							name="password" type="password" class="regtext"
							style="float: left;" autocomplete="off" /> <span
							id="phpassword_cleanbtn" class="cleanbtn-phpassword"
							style="display: none;"></span> <span id="phpasswordTip"
							style="float: left; margin-top: 10px;"></span>
					</div>
					<div class="field">
						<label class="lb-phone">确认密码：</label> <input id="password1"
							name="password1" type="password" class="regtext" onclick="check()"
							style="float: left;" autocomplete="off" /> <span
							id="phpassword_cleanbtn" class="cleanbtn-phpassword"
							style="display: none;"></span> <span id="phpasswordTip"
							style="float: left; margin-top: 10px;"></span>
					</div>

					<div class="field fieldn">
						<span class="reg-btn"> <input type="submit"
							id="phreg_submit" value="立即注册" />
						</span> <span id="phaffirmTip"></span> <span id="submit-tip"></span>
					</div>
				</div>
			</div>
		</form>

		<div class="l-m-l">
			<img src="${pageContext.request.contextPath}\images\woman.jpg"
				width="250px" height="250px">
		</div>
	</div>

</body>

</html>

