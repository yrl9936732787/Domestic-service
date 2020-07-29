<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>
<meta name="renderer" content="webkit">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>


</head>
<body>

	<div class="container">


		<div class="row clearfix">
			<div class="col-md-12 column">
				<h3>快速预约</h3>
				<div class="panel  panel-info">

					<div class="panel-body">
						<div class="col-md-12 column">
							<form class="form-horizontal" role="form" method="post"
								action="${pageContext.request.contextPath }/insertNeed.action">

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">选择需求：</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="月嫂" checked>月嫂
										</label> 
										<label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="保姆">保姆
										</label> 
										<label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="育儿嫂">育儿嫂
										</label>
										<label class="radio-inline"> <input type="radio"
											name="need_type" id="need_type" value="清洁工">清洁工
										</label>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">姓名：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control password"
											id="need_username" name="need_username" style="width: 150px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">联系电话：</label>
									<div class="col-sm-10">
										<input type="text" class="form-control password"
											id="need_phone" name="need_phone" style="width: 200px;" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">地址：</label>
									<div class="col-sm-10">
										<textarea type="text" class="form-control" id="need_address"
											name="need_address" placeholder="请输入详情地址精确到小区"
											style="width: 500px; height: 150px;"></textarea>

									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">其他要求：</label>
									<div class="col-sm-10">
										<textarea type="text" class="form-control" id="need_request"
											name="need_request" placeholder="其余要求：如上门服务时间或日期等"
											style="width: 500px; height: 150px;"></textarea>

									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-warning">立即预约</button>
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