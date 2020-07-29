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
<title>添加家政人员</title>

<script >
function updateAunt(){
    // 获取输入的用户名和密码
   
	var id = $("#id").val();
	var aunt_name = $("#aunt_name").val();
	var aunt_sex = $("#aunt_sex").val();
	var aunt_age = $("#aunt_age").val();
	var aunt_type = $("#aunt_type").val();
	var aunt_phone = $("#aunt_phone").val();
	var aunt_idcard = $("#aunt_idcard").val();
	var aunt_introduce = $("#aunt_introduce").val();
	var aunt_state = $("#aunt_state").val();
	
	$.ajax({
		url : "${pageContext.request.contextPath }/updateAunt.action",
		type : "post", 
		// data表示发送的数据
		data :JSON.stringify({
			id:id,
			aunt_name:aunt_name,
			aunt_sex:aunt_sex,
			aunt_age:aunt_age,
			aunt_type:aunt_type,
			aunt_phone:aunt_phone,
			aunt_idcard:aunt_idcard,
			aunt_introduce:aunt_introduce,
			aunt_state:aunt_state }),
		// 定义发送请求的数据格式为JSON字符串
		contentType : "application/json;charset=UTF-8",
		//定义回调响应的数据格式为JSON字符串,该属性可以省略
		dataType : "json",
		//成功响应的结果
		success : function(data){
			if(data){
				 var msg = "修改成功！";
			        if (confirm(msg)==true){
			        	 window.location.href="${pageContext.request.contextPath }/toAunt.action"
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
				<h3>编辑家政人员</h3>
				<div class="panel  panel-info">

					<div class="panel-body">
						<div class="col-md-12 column">
							<!--  <form class="form-horizontal" role="form"  method="post"> -->
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">ID:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="id"
											name="id" style="width: 200px;" disabled="disabled" value="${aunt.id}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">姓名：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="aunt_name"
											name="aunt_name" style="width: 200px;"  value="${aunt.aunt_name}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">性别：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="aunt_sex"
											name="aunt_sex" style="width: 200px;"  value="${aunt.aunt_sex}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">年龄：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="aunt_age" value="${aunt.aunt_age}"
											name="aunt_age" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">服务类型：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="aunt_type" value="${aunt.aunt_type}"
											name="aunt_type" style="width: 200px;" disabled="disabled" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">电话：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="aunt_phone" value="${aunt.aunt_phone}"
											name="aunt_phone" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">身份证：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="aunt_idcard" value="${aunt.aunt_idcard}"
											name="aunt_idcard" style="width: 200px;" disabled="disabled"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">介绍信息：</label>
									<div class="col-sm-10">
										<textarea type="text" class="form-control" id="aunt_introduce"
											name="aunt_introduce" style="width: 500px; height: 100px;">${aunt.aunt_introduce}</textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">状态：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="aunt_state" value="${aunt.aunt_state}"
											name="aunt_state" value="空闲" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button onclick="updateAunt()" class="btn btn-default" style="background-color: #75bdff;">修改</button>
										<a href="${pageContext.request.contextPath }/toAunt.action"  class="btn btn-default">返回</a>
									</div>
								</div>
							   <!-- </form> -->
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="row clearfix"></div>
	</div>
</body>
</html>