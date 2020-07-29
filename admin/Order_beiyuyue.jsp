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
<title>查询被预约</title>
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
<h4><a href="javascript:history.go(-1)">返回上一页</a></h4>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 >
         	当前家政人员【${order1.aunt_name}】
        </h3>
    </div>
     <div class="panel-body">
    	<%-- <div>当前预约时间段：${order.work_begin} 至 ${order.work_end}</div> --%>
    	<div>
			<h3>
				当前预约时间段：${order1.dangqian_work_begin}至${order1.dangqian_work_end}<br><br><br>
				已被预约时间段：<br>
				<c:forEach var="order" items="${order}" varStatus="status">
				<c:if test="${order.work_begin!=null}">
					<c:out value="${order.work_begin}" />至<c:out value="${order.work_end}" />
					<br>
				</c:if>
				</c:forEach>
			</h3>
		</div>
	</div> 
</div>
</body>
</html>