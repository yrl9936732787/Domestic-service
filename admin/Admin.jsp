<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="navigationTag" uri="http://navigationTag.com/common/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看员工</title>
	<link rel="stylesheet" href="css/amazeui.min.css" />
	<link rel="stylesheet" href="css/admin.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<link href="/lbui/ui-lightness/jquery-ui-1.8.9.custom.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/common/js/message/jquery-ui-1.8.9.custom.min.js"></script>

</head>
<body>

	<div class="admin-content-body">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">员工信息</strong><small></small>
			</div>
		</div>
		<hr>
		
		<div class="am-g">
			<div class="am-u-sm-12">
					<table class="am-table am-table-striped am-table-hover table-main">
						<thead>
							<tr>
								<th class="table-id">ID</th>
								<th class="table-title">名称</th>
								<th class="table-time">入职时间</th>
								<th class="table-content">状态</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="hadmin" items="${page.rows}" varStatus="status">
							<tr>
								<td><c:out value="${hadmin.id }" /></td>
								<td><c:out value="${hadmin.username }" /></td>
								<td><c:out value="${hadmin.admin_time }" /></td>
								<td><c:out value="${hadmin.admin_state }" /></td>
								<td><a href="${pageContext.request.contextPath }/toUpdateAdmin.action?id=${hadmin.id}" 
								class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary" >编辑 </a></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<hr>
					<div class="col-md-12 text-right">
					<navigationTag:page url="${pageContext.request.contextPath }/toAdmin.action" />
				</div>
			</div>
		</div>
	</div>

</body>
</html>