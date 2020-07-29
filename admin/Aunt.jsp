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
<title>查看阿姨</title>
	<link rel="stylesheet" href="css/amazeui.min.css" />
	<link rel="stylesheet" href="css/admin.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<link href="/lbui/ui-lightness/jquery-ui-1.8.9.custom.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/common/js/message/jquery-ui-1.8.9.custom.min.js"></script>


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
#images{
		width: 50px;
		height: 60px;
	}
</style>



</head>
<body>

	<div class="admin-content-body">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">家政服务人员信息</strong><small></small>
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
							<span class="am-icon-plus"></span> 新增
						</button>
					</div>
				</div>
			</div>
			<!-- 添加功能模态框 -->
			<div>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 600px; height:970px; margin-left: 20%; margin-top: 50px;">					
					<div class="modal-content">
						<div class="modal-header myModal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title myModal-header-font" id="myModalLabel"
								style="font-size: 18px;">添加信息</h4>
						</div>						
						<form method="post" action="${pageContext.request.contextPath }/Aunt_add.action" enctype="multipart/form-data">
						<div>
						<div class="modal-body myModal-body">
							 <div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">头像：</label>
								<div class="col-sm-10">
									<input type="file"  name="file"  />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">姓名：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="aunt_name"
										name="aunt_name" style="width: 200px;" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">性别：</label>
								<div class="col-sm-10">
									<select id="model-select-trans_old" name="aunt_sex" style="width: 60px;"
										class="form-control myModal-input myModal-header-font myModal-select">
										<option id="aunt_sex" value="女">女</option>
										<option id="aunt_sex" value="男">男</option>
									</select>
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">年龄：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="aunt_age"
										name="aunt_age" style="width: 200px;" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">服务：</label>
								<div class="col-sm-10">
									<select id="model-select-trans_old" name="aunt_type" style="width: 100px;"
										class="form-control myModal-input myModal-header-font myModal-select">
										<option id="aunt_type" name="aunt_type" value="保姆">保姆</option>
										<option id="aunt_type" name="aunt_type" value="月嫂">月嫂</option>
										<option id="aunt_type" name="aunt_type" value="育儿嫂">育儿嫂</option>
										<option id="aunt_type" name="aunt_type" value="清洁工">清洁工</option>
									</select>
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">电话：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="aunt_phone"
										name="aunt_phone" style="width: 200px;" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">身份证：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="aunt_idcard"
										name="aunt_idcard" style="width: 200px;" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">介绍信息：</label>
								<div class="col-sm-10">
									<textarea type="text" class="form-control" id="aunt_introduce"
										name="aunt_introduce" style="width: 300px; height: 100px;"></textarea>
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">状态：</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="aunt_state"
										name="aunt_state" value="空闲" style="width: 200px;" />
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
					action="${pageContext.request.contextPath }/toAunt.action">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field" placeholder="请输入姓名" id="aunt_name" value="${aunt_name}" name="aunt_name"> 
							<span class="am-input-group-btn">
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
								<th class="table-image">头像</th>
								<th class="table-title">姓名</th>
								<th class="table-sex">性别</th>
								<th class="table-phone">年龄</th>
								<th class="table-adr">服务类型</th>
								<th class="table-adr">电话</th>
								<th class="table-adr">身份证</th>
								<th class="table-intro">状态</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="aunt" items="${page.rows}" varStatus="status">
								<tr>
									<td><c:out value="${aunt.id }" /></td>
								     <td><img src="${aunt.image}"  id="images"></td>
									<td><c:out value="${aunt.aunt_name }" /></td>
									<td><c:out value="${aunt.aunt_sex }" /></td>
									<td><c:out value="${aunt.aunt_age }" /></td>
									<td><c:out value="${aunt.aunt_type }" /></td>
									<td><c:out value="${aunt.aunt_phone }" /></td>
									<td><c:out value="${aunt.aunt_idcard }" /></td>
									<td><c:out value="${aunt.aunt_state }" /></td>
									<td><a href="${pageContext.request.contextPath }/toUpdateAunt.action?id=${aunt.id}"
										class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary" >
										<span class="am-icon-pencil-square-o"></span>编辑 </a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr>
				<!-- </form>
				 -->
				<div class="col-md-12 text-right">
					<navigationTag:page
						url="${pageContext.request.contextPath }/toAunt.action" />
				</div>
			</div>

		</div>
	</div>

</body>
</html>