<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<title>密码修改</title>
<script type="text/javascript">
function datetime() {
	 var now = new Date();
	 document.getElementById("time").value = now.getFullYear() + "-"
	 + (now.getMonth() + 1) + "-" + now.getDate();
	 /* document.getElementById("time").value += " " + now.getHours() + ":"
	 + now.getMinutes() + ":" + now.getSeconds(); */
	 }
	 window.setInterval("datetime()", 1000);
</script>

</head>
<body style="background-color: rgba(255, 255, 255, 0)">
	<div class="container">


		<div class="row clearfix">
			<div class="col-md-12 column">
				<h3>添加员工</h3>
				<div class="panel  panel-info">

					<div class="panel-body">
						<div class="col-md-12 column">
							<form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath }/insertAdmin.action">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">账号：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="id" name="id"
											style="width: 200px;" />
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">使用名：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="username"
											name="username" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">密码：</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="password"
											name="password" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">入职时间：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="time" name="admin_time" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">状态：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="admin_state"
											name="admin_state" style="width: 200px;" value="在职" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-default" style="background-color: #75bdff;">添加</button>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="row clearfix"></div>
	</div>
</body>
</html>