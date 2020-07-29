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
<title>查看订单</title>
	<link rel="stylesheet" href="css/amazeui.min.css" />
	<link rel="stylesheet" href="css/admin.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<link href="/lbui/ui-lightness/jquery-ui-1.8.9.custom.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/common/js/message/jquery-ui-1.8.9.custom.min.js"></script>

<style type="text/css">
#images{
		width: 50px;
		height: 60px;
	}
#aunt_name{
		float:left;
}
#uid{
	float:right;
}
</style>

</head>
<body >

	<div class="admin-content-body" >
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">查看订单</strong><small></small>
			</div>
		</div>
		<hr>
		
		<div class="am-g">
		<!-- <div class="am-u-sm-12 am-u-md-6"></div>
		<div class="am-u-sm-12 am-u-md-3"></div> -->
		<div >
				<form class="form-inline" method="post" action="${pageContext.request.contextPath }/toOrder.action">
					<table style="float:right;">
					<tr>
						<td style="width:150px;"><input type="text" class="am-form-field" placeholder="请输入家政姓名" id="aunt_name" value="${aunt_name}" name="aunt_name"></td>
						<td style="width:150px;"><input type="text" class="am-form-field" placeholder="请输入用户id" id="uid" value="${uid}" name="uid"></td> 					
						<td><span class="am-input-group-btn"><button class="am-btn am-btn-default" type="submit">搜索</button></span></td>
					</tr>
					</table>
				</form>
		</div>		
		<div class="am-g">
			<div class="am-u-sm-12">
					<table border="1" class="am-table am-table-striped am-table-hover table-main" style="background-color:#c1c1c1">
						<thead>
							<tr>
								<th  style="width:280px;">家政人员信息</th>
								<th style="width:120px;">客户合同信息</th>
								<th style="width:140px;">服务时间</th>
								<th style="width:100px;">价格</th>
								<th >订单状态</th>
								<th >合同生成时间</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="order" items="${page.rows}" varStatus="status">
							<tr>
								<td>
									<div class="col-xs-4"><img src="${order.aunt_image}"  id="images"></div>
									<div class="col-xs-8">
										姓名：<c:out value="${order.aunt_name }" /><br>
										类型：<c:out value="${order.aunt_type }" /><br>
										电话：<c:out value="${order.aunt_phone }" />
									</div>
								</td>
								<td>
									账户：<c:out value="${order.uid}" /><br>
									姓名：<c:out value="${order.user_name}" /><br>
									电话：<c:out value="${order.user_phone }" />
								</td>
								<td>
									<c:if test="${order.aunt_state!='预约中'}">
									开始：<c:out value="${order.work_begin}" /><br>
									结束：<c:out value="${order.work_end}" /><br>
									</c:if>
									<c:if test="${order.aunt_state=='预约中'}">
									预定时间：<br><c:out value="${order.dangqian_work_begin}" />至<br>
									<c:out value="${order.dangqian_work_end}" /><br>
									</c:if>
								</td>
								<td><c:out value="${order.money}" /></td>
								<td><c:out value="${order.aunt_state}" /></td>
								<td><c:out value="${order.order_time}" /></td>
								<td>
									<c:if test="${order.aunt_state=='预约中'}">
										<a href="${pageContext.request.contextPath }/toUpdate_creatOrder.action?oid=${order.oid}" class="btn btn-warning" >签订合同</a><br>
										<a href="${pageContext.request.contextPath }/deleteOrder.action?oid=${order.oid}" class="btn btn-warning">拒绝预约</a>
										<a href="${pageContext.request.contextPath }/findOrderByAuntid.action?oid=${order.oid}" class="btn btn-default" >已被预约时段</a>
									</c:if>
									<c:if test="${order.aunt_state=='预约通过'}">等待客户签订合同..</c:if>
									<c:if test="${order.aunt_state=='预约成功'}">
										<a href="${pageContext.request.contextPath }/toFindMyOrderDetail.action?oid=${order.oid}" class="btn btn-warning">查看合同</a>
									</c:if>
								</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<hr>
					<div class="col-md-12 text-right">
					<navigationTag:page url="${pageContext.request.contextPath }/toOrder.action" />
				</div>
			</div>
			
		</div>
	</div>
</div>



</body>
</html>