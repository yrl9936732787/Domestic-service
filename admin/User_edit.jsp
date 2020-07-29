<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" href="css/amazeui.min.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/app.css">
<style>
.admin-main {
	padding-top: 0px;
}
</style>
</head>
<body>

	<div class="am-cf admin-main">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-g">
					<form class="am-form am-form-horizontal"
						action="role/addroleSubmit.action" method="post"
						style="padding-top: 30px;">
						<input value="504" name="roleId" type="hidden">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								链接名称 </label>
							<div class="am-u-sm-9">
								<input id="roleName" required="" placeholder="请输入链接名称" value=""
									name="roleName" type="text"> <small id="helpRole">输入链接名称。</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								链接地址 </label>
							<div class="am-u-sm-9">
								<textarea rows="" cols="50" placeholder="请输入链接地址"
									name="roleDesc"></textarea>
								<small>输入链接地址。</small>
							</div>
						</div>
						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<input id="addRole" class="am-btn am-btn-success" value="提交"
									type="button">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
