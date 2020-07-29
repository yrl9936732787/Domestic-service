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
<title>预约备注修改</title>

<script >
function updatebeizhu(){
    // 获取输入的用户名和密码
    var id = $("#id").val();
	var need_beizhu = $("#need_beizhu").val();
	var need_address = $("#need_address").val();
	var need_request = $("#need_request").val();
	var need_phone = $("#need_phone").val();

	$.ajax({
		url : "${pageContext.request.contextPath }/updateNeed4.action",
		type : "post", 
		// data表示发送的数据
		data :JSON.stringify({ 
								id:id,
								need_beizhu:need_beizhu,
								need_address:need_address,
								need_request:need_request,
								need_phone:need_phone
							}),
		// 定义发送请求的数据格式为JSON字符串
		contentType : "application/json;charset=UTF-8",
		//定义回调响应的数据格式为JSON字符串,该属性可以省略
		dataType : "json",
		//成功响应的结果
		success : function(data){
			if(data){
				 
			        if (data == 1){
			        	console.log("ok");
			        	var msg = "添加备注成功！";
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
				<h3>需求表：</h3>
				<div class="panel  panel-info">

					<div class="panel-body">
						<div class="col-md-12 column">
							 <form class="form-horizontal" role="form"  method="post">
							 	<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">编号:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="id"
											name="id" style="width: 200px;" disabled="disabled" value="${sessionScope.need.id}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">预约人:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="need_username"
											name="need_username" style="width: 200px;" disabled="disabled" value="${sessionScope.need.need_username}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">服务类型:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="need_type"
											name="need_type" style="width: 200px;" disabled="disabled" value="${sessionScope.need.need_type}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">联系电话:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="need_phone"
											name="need_phone" style="width: 200px;"  value="${sessionScope.need.need_phone}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">上门地址:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="need_address"
											name="need_address" style="width: 200px;"  value="${sessionScope.need.need_address}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">额外需求:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="need_request"
											name="need_request" style="width: 200px;"  value="${sessionScope.need.need_request}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">管理员备注:</label>
									<div class="col-sm-10">
										<textarea type="text" class="form-control"
											id="need_beizhu" name="need_beizhu"
											style="width: 500px; height: 200px;">${sessionScope.need.need_beizhu}</textarea>
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button onclick="updatebeizhu()" class="btn btn-default" style="background-color: #75bdff;">修改</button>
										<a href="toNeed.action"  class="btn btn-default">返回</a>
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