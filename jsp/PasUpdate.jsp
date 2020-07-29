<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="navigationTag" uri="http://navigationTag.com/common/"%>
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
<script>
function updateUser1(){
    // 获取输入的用户名和密码
	var id = $("#id").val();
	var password = $("#password").val();
	$.ajax({
		url : "${pageContext.request.contextPath }/pasUpdate.action",
		type : "post", 
		// data表示发送的数据
		data :JSON.stringify({id:id,password:password}),
		// 定义发送请求的数据格式为JSON字符串
		contentType : "application/json;charset=UTF-8",
		//定义回调响应的数据格式为JSON字符串,该属性可以省略
		dataType : "json",
		//成功响应的结果
		success : function(data){
			if(data){
				$.messager.alert("修改成功");
  				 window.location.href="jsp/index.jsp";
			}
			 
			}
		})
	};
</script>
</head>
<body style="background-color: rgba(255, 255, 255, 0);width:80%; margin:0 auto;">
	<div class="container">


		<div class="row clearfix">
			<div class="col-md-12 column">
				<h3>修改密码</h3>
				<div class="panel  panel-info">

					<div class="panel-body">
						<div class="col-md-12 column">
							<form class="form-horizontal" role="form" method="post">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">账号：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="id" name="id"
											style="background-color: transparent; border: 0;"
											disabled="disabled" value="${huser.id}" />
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">新密码：</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="password"
											name="password" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">确定密码：</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="password"
											name="password" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button onclick="updateUser1()" class="btn btn-default"
											style="background-color: #75bdff;">点击修改</button>
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