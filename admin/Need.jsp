<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>快速预约处理</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	button{
		margin-top:2px;
		margin-right:1px;
	}
</style>
</head>
<body>

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">
			<table  width="100%" align="center" >
				<tr>
					<th  width="3%">编号</th>
					<th  width="7%">预约人</th>
					<th  width="7%">服务类型</th>
					<th  width="8%">联系电话</th>
					<th  width="10%">上门地址</th>
					<th  width="10%">额外需求</th>
					<th  width="5%">订单时间</th>
					<th  width="4%">状态</th>
					<th  width="15%">按钮</th>
				</tr>
			</table>
		</h3>
	</div>
	<div class="panel-body">
	<c:forEach var="need" items="${need}" varStatus="status"> 
		<table  width="100%" align="center"  >
				<tr>
					<td  width="3%"><c:out value="${need.id}"/></td>
					<td  width="7%"><c:out value="${need.need_username}"/></td>
					<td  width="7%"><c:out value="${need.need_type}"/></td>
					<td  width="8%"><c:out value="${need.need_phone}"/></td>
					<td  width="10%"><c:out value="${need.need_address}"/></td>
					<td  width="10%"><c:out value="${need.need_request}"/></td>
					<td  width="5%"><c:out value="${need.need_date}"/></td>
					<td  width="4%"><c:out value="${need.need_state}"/></td>
					<td  width="15%">
						<c:if test="${need.need_state=='待处理                 '}">
							<a href="${pageContext.request.contextPath }/updateNeed2.action?id=${need.id}" class="btn btn-danger">待处理</a>
							<a href="${pageContext.request.contextPath }/toupdateNeed4.action?id=${need.id}" class="btn btn-default" style="float:right;">备注</a>
							<a href="${pageContext.request.contextPath }/updateNeed3.action?id=${need.id}" class="btn btn-warning" >处理完毕</a>
						</c:if>
						<c:if test="${need.need_state=='处理中                 '}">
							<a href="${pageContext.request.contextPath }/toupdateNeed4.action?id=${need.id}" class="btn btn-default" style="float:right;">备注</a>
							<a href="${pageContext.request.contextPath }/updateNeed3.action?id=${need.id}" class="btn btn-warning" style="margin-left:73px;">处理完毕</a>
						</c:if>
						<c:if test="${need.need_state=='处理完毕                '}">&emsp;&emsp;&emsp;已处理订单</c:if>
					</td>
				</tr>
			</table>
			<hr>
		</c:forEach>
	</div>
</div>

</body>
</html>