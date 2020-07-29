<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="navigationTag" uri="http://navigationTag.com/common/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看客户</title>
	<link rel="stylesheet" href="css/amazeui.min.css" />
	<link rel="stylesheet" href="css/admin.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>



<style>
.myModal-header {
	padding: 8px 10px 8px 20px;
	background-color: #00bcd4;
	border: 0px;
	height: 40px;
}

.myModal-body {
	padding: 30px 40px 30px 40px;
	background-color: #FFFFFF;
	border-left: 1px solid #007DCF;
	border-right: 1px solid #007DCF;
}

.myModal-footer {
	background-color: #FFFFFF;
	border: 1px solid #007DCF;
	border-top: none;
	padding: 0px 15px 30px 15px;
}
</style>



</head>
<body>

	<div class="admin-content-body">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">客户信息</strong><small></small>
			</div>
		</div>

		<hr>

		<div class="am-g">

			<!-- 
				添加功能 
				-->
			<div class="am-u-sm-12 am-u-md-6">
				<div class="am-btn-toolbar">
					<div class="am-btn-group am-btn-group-xs">
						<button type="button" class="am-btn am-btn-default"
							data-toggle="modal" data-target="#myModal">
							<span class="am-icon-plus"></span> 添加客户
						</button>
					</div>
				</div>
			</div>
			<!-- 添加功能模态框 -->
			<div>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 600px; height: 670px; margin-left: 20%; margin-top: 50px;">					
					<div class="modal-content">
						<div class="modal-header myModal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title myModal-header-font" id="myModalLabel"
								style="font-size: 18px;">添加信息</h4>
						</div>
						
						<form method="post" action="${pageContext.request.contextPath }/User_add.action">
						<div>
						<div class="modal-body myModal-body">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">账号：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="id"
										name="id" style="width: 200px;" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">密码：</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="password"
										name="password" style="width: 200px;" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">姓名：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="username"
										name="username" style="width: 200px;" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">性别：</label>
								<div class="col-sm-10">
									<select id="model-select-trans_old" name="usersex" style="width: 60px;"
										class="form-control myModal-input myModal-header-font myModal-select">
										<option id="usersex" value="女">女</option>
										<option id="usersex" value="男">男</option>
									</select>
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">电话：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="userphone"
										name="userphone" style="width: 200px;" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">地址：</label>
								<div class="col-sm-10">
									<textarea type="text" class="form-control" id="useraddress"
										name="useraddress" style="width: 300px"></textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">介绍：</label>
								<div class="col-sm-10">
									<textarea type="text" class="form-control" id="userintroduction"
										name="userintroduction" style="width: 300px; height: 100px;"></textarea>
								</div>
							</div>
							<br>
							
						</div>

						<div class="modal-footer myModal-footer">
							<br>
							<br>
							<button type="button" class="btn btn-default" data-dismiss="modal"
								style="float: right; margin-right: 180px; width: 60px; height: 34px; padding: 1px; color: white; background-color: #1E253F; border: 0px">取消
							</button>
							<button type="submit" id="addTask" class="btn btn-primary"
								style="float: left; margin-left: 180px; width: 60px; height: 34px; padding: 1px">确定
							</button>
						</div>
						
						</div>
						</form>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			</div>


			<div class="am-u-sm-12 am-u-md-3"></div>
			<div class="am-u-sm-12 am-u-md-3">
				<form class="form-inline" method="post"
					action="${pageContext.request.contextPath }/toUser.action">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field" placeholder="请输入用户账号"
							id="id" value="${id}" name="id"> <span
							class="am-input-group-btn">
							<button class="am-btn am-btn-default" type="submit">搜索</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		<div class="am-g">
			<div class="am-u-sm-12">
				<!-- <form class="am-form"> -->
					<table class="am-table am-table-striped am-table-hover table-main">
						<thead>
							<tr>
								<th class="table-id">ID</th>
								<th class="table-title">姓名</th>
								<th class="table-sex">性别</th>
								<th class="table-adr">电话</th>
								<th class="table-intro">地址</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="huser" items="${page.rows}" varStatus="status">
								<tr>
									<td><c:out value="${huser.id }" /></td>
									<td><c:out value="${huser.username }" /></td>
									<td><c:out value="${huser.usersex }" /></td>
									<td><c:out value="${huser.userphone }" /></td>
									<td><c:out value="${huser.useraddress }" /></td>
									<%-- <td><a href="${pageContext.request.contextPath }/toUpdateUser.action?id=${huser.id}"
										class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary" >
										<span class="am-icon-pencil-square-o"></span>编辑 </a></td> --%>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr>
				<!-- </form>
				 -->
				<div class="col-md-12 text-right">
					<navigationTag:page
						url="${pageContext.request.contextPath }/toUser.action" />
				</div>
			</div>

		</div>
	</div>

</body>
</html>