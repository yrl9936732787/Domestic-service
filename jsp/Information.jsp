<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="navigationTag" uri="http://navigationTag.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<title>个人信息修改</title>
<script>
	function updateUser() {
		// 获取输入的用户名和密码
		var id = $("#id").val();
		var username = $("#username").val();
		var usersex = $("#usersex").val();
		var userphone = $("#userphone").val();
		var useraddress = $("#useraddress").val();
		var userintroduction = $("#userintroduction").val();
		$.ajax({
			url : "${pageContext.request.contextPath }/inforUpdate.action",
			type : "post",
			// data表示发送的数据
			data : JSON.stringify({
				id : id,
				username : username,
				usersex : usersex,
				userphone : userphone,
				useraddress : useraddress,
				userintroduction : userintroduction
			}),
			// 定义发送请求的数据格式为JSON字符串
			contentType : "application/json;charset=UTF-8",
			//定义回调响应的数据格式为JSON字符串,该属性可以省略
			dataType : "json",
			//成功响应的结果
			success : function(data) {

				if (data == 1) {
					console.log("ok");
					//var msg = "修改成功！";
					alert("保存成功");
					// 					window.location.href = "jsp/Information.jsp";
				}

			}
		})
	};
</script>
</head>
<body style="background-color: rgba(255, 255, 255, 0);width:80%; margin:0 auto;" >
	<div class="container">


		<div class="row clearfix">
			<div class="col-md-12 column">
				<h3>亲爱的用户，请填写真实的信息</h3>
				<div class="panel  panel-info">

					<div class="panel-body">
						<div class="col-md-8 column">
							<div class="form-horizontal">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">账号：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="id" name="id"
											style="background-color: transparent; border: 0;width: 200px;"
											disabled="disabled" value="${sessionScope.huser.id}" />
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">*昵称：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="username"
											name="username" style="width: 200px;"
											value="${sessionScope.huser.username}" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">电话：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="userphone"
											name="userphone" style="width: 200px;"
											value="${sessionScope.huser.userphone}" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">性别：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="usersex"
											name="usersex" style="width: 50px;"
											value="${sessionScope.huser.usersex}" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">地址：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control password"
											id="useraddress" name="useraddress" style="width: 500px;"
											value="${sessionScope.huser.useraddress}" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">个人介绍：</label>
									<div class="col-sm-10">
										<textarea type="text" class="form-control"
											id="userintroduction" name="userintroduction"
											style="width: 500px; height: 200px;">${sessionScope.huser.userintroduction}</textarea>

									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button onclick="updateUser()" class="btn btn-default"
											style="background-color: #75bdff;">保存</button>
									</div>
								</div>
							
						</div>
						
						</div>
						<div class="col-md-4 column">
							<div style="margin-top:100px;">
							<img alt="" src="${pageContext.request.contextPath}\images\woman.jpg" >
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="row clearfix"></div>
	</div>
</body>
</html>