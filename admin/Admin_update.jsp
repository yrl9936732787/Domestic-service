<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
<title>管理员修改</title>

<script >
function updateAdmin(){
    // 获取输入的用户名和密码
   
	var id = $("#id").val();
	var username = $("#username").val();
	var password = $("#password").val();
	var admin_time = $("#admin_time").val();
	var admin_state = $("#admin_state").val();

	$.ajax({
		url : "${pageContext.request.contextPath }/updateAdmin.action",
		type : "post", 
		// data表示发送的数据
		data :JSON.stringify({id:id,username:username,password:password,admin_time:admin_time,admin_state:admin_state}),
		// 定义发送请求的数据格式为JSON字符串
		contentType : "application/json;charset=UTF-8",
		//定义回调响应的数据格式为JSON字符串,该属性可以省略
		dataType : "json",
		//成功响应的结果
		success : function(data){
			if(data){
				 var msg = "修改成功！";
			        if (confirm(msg)==true){
			        	 window.location.href="${pageContext.request.contextPath }/toAdmin.action"
					}
				
			}
			 
			}
		})
	};
	
</script>

</head>
<body style="background-color: rgba(255, 255, 255, 0)">
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<h3>修改员工信息</h3>
				<div class="panel  panel-info">

					<div class="panel-body">
						<div class="col-md-12 column">
							 <form class="form-horizontal" role="form"  method="post">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">ID:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="id"
											name="id" style="width: 200px;" disabled="disabled" value="${hadmin.id}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">员工号:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="username"
											name="username" style="width: 200px;" disabled="disabled" value="${hadmin.username}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">入职时间:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="admin_time"
											name="admin_time" style="width: 200px;" disabled="disabled" value="${hadmin.admin_time}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">ID:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="admin_state"
											name="admin_state" style="width: 200px;"  value="${hadmin.admin_state}"/>
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button onclick="updateAdmin()" class="btn btn-default" style="background-color: #75bdff;">修改</button>
										<a href="admin/Admin.jsp"  class="btn btn-default">返回</a>
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