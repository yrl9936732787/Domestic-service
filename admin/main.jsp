<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png" />
<link rel="icon" type="image/png" href="../assets/img/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>管理员首页</title>
<meta name="keywords" content="简单实用,响应式,后台管理,系统,HTML5网站模板" />
<meta name="description"
	content="简单实用响应式后台管理系统HTML5网站模板下载。一套通用型bootstrap后台管理系统HTML网站模板，使用最新HTML5+CSS3技术，采用响应式布局设计，自适应手机移动端，用户体验友好。" />
<meta name="author" content="php中文网（www.php.cn）" />
<meta name="copyright" content="php中文网（www.php.cn）" />

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />
<script type="text/javascript" src="jquery-1.9.1.min.js"></script>

<!-- Bootstrap core CSS     -->
<link href="css/bootstrap.min.css" rel="stylesheet" />

<!--  Material Dashboard CSS    -->
<link href="css/material-dashboard.css" rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="css/demo.css" rel="stylesheet" />

<!--     Fonts and icons     -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href='css/2d7207a20f294df196f3a53cae8a0def.css' rel='stylesheet'
	type='text/css'>
<script type="text/javascript">
function admin_loginout(){
	if(confirm("确认退出")){
		window.location.href="<%=basePath%>admin_loginout.action"
	}
	
}

</script>
</head>
<body>

	<div class="wrapper">

		<div class="sidebar" data-color="blue"
			data-image="../assets/img/sidebar-1.jpg">
			<!--
		        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

		        Tip 2: you can also add an image using data-image tag
		    -->

			<div class="logo">
				<a class="simple-text"> 家政管理后台 </a>
			</div>

			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="active"><a target="right">
							<p>员工管理</p>
					</a></li>
					<li><a href="admin/Admin_add.jsp" target="right" >
							<p>添加员工</p>
					</a></li>
					<li><a href="toAdmin.action" target="right">
							<p>查看员工</p>
					</a></li>
					<li><a href="toAunt.action" target="right">
							<p>家政人员管理</p>
					</a></li>

					<li class="active"><a target="right">
							<p>客户管理</p>
					</a></li>
					<li><a href="toUser.action" target="right">
							<p>客户信息管理</p>
					</a></li>
					<li><a href="toNeed.action" target="right">
							<p>客户快速预约信息</p>
					</a></li>
					<li class="active"><a href="toOrder.action" target="right">
							<p>合同管理</p>
					</a></li>
					<li class="active"><a href="toComment.action" target="right">
							<p>留言评价</p>
					</a></li>
					

				</ul>
			</div>

		</div>

		<div class="main-panel">
			<nav class="navbar navbar-transparent navbar-absolute"
				style="background-color: #fff;">
			<div class="container-fluid">

				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="dropdown-toggle" data-toggle="dropdown"> <i
								class="material-icons">账号：${hadmin.id}</i>
						</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown"> <i class="material-icons">${hadmin.username}</i>
						</a></li>
						<li class="dropdown"><a onclick="admin_loginout()"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="material-icons">退出</i>
						</a></li>

					</ul>


				</div>
			</div>
			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="row" style="margin-top: -15px;">

						<iframe src="admin/welcome.jsp" width="100%" height="1000px"
							name="right" style="border: none;"></iframe>


					</div>
				</div>


			</div>
		</div>
	</div>
</body>


</html>
