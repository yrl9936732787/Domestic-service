<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>寻找阿姨</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<base href="<%=basePath%>">
<!-- <script>
	function sub(){
		/* alert("预约成功!"); */
		if(confirm("预约成功！")){  
	        return true;  
	    }  
	   // return false; 
	}
</script> -->





</head>
<body style="width:80%; margin:0 auto;">
	<div class="panel panel-default">
		<div class="panel-heading">
			<a href="jsp/FindAunt.jsp">>>返回上一页</a>
		</div>
		<div class="panel-body">
			<div class="container">
				<!-- 左对齐 -->
				<div class="media">
					<div class="media-left">
						<img src="${aunt.image}" class="media-object" style="width: 300px">
					</div>
					<div class="media-body">
						<h2 class="media-heading">${aunt.aunt_name}</h2>
						<p style="font-size: 20px;">性别：${aunt.aunt_sex}</p>
						<p style="font-size: 20px;">年龄：${aunt.aunt_age}</p>
						<p style="font-size: 20px;">服务类型：${aunt.aunt_type}</p>
						<p style="font-size: 20px;">目前状态：${aunt.aunt_state}</p>
						<div style="float: left">
							<p style="font-size: 20px;">咨询客服->><a target="_blank" 
							href="http://wpa.qq.com/msgrd?v=3&uin=993673287&site=qq&menu=yes">
								<img border="0" src="http://wpa.qq.com/pa?p=2:993673287:51"
								alt="点击这里给我发消息" title="点击这里给我发消息"  /></a></p>
							<form method="post" action="${pageContext.request.contextPath }/updateAunt_addOrder.action?id=${aunt.id}">
							<p ><table>
								<tr>
									<td style="font-size: 20px;">选择时间：</td>
									<td><input type="date"  class="form-control" id="dangqian_work_begin" 
											name="dangqian_work_begin" style="width: 150px;"
											value="" required /><td>
									<td>&emsp;--></td>
									<td><input type="date"  class="form-control" id="dangqian_work_end"
											name="dangqian_work_end" style="width: 150px;"
											value="" required /></td>
								</tr>
							</table></p>
							<p><button  type="submit" class="btn btn-warning" onClick="sub()"
								style="width: 130px; font-size: 20px">预约</button></p>
							</form>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<div class="panel-body">
			<div class="container">
				<!-- 左对齐 -->
				<div class="media">
					<div class="media-left">
						<p style="font-size: 20px;">已被预约时段：</p>
						<p>
							<c:forEach var="order" items="${order}" varStatus="status"> 
								<c:out value="${order.work_begin}" />至<c:out value="${order.work_end}" />&emsp;
							</c:forEach>
						</p>
					</div>
				</div>
				<hr>
				<div class="media">
					<div class="media-left">
						<p style="font-size: 20px;">个人介绍</p>
						<p>${aunt.aunt_introduce}</p>
					</div>
				</div>
				<hr>
				<div class="panel-body">
					<div class="media-left">
						<p style="font-size: 20px;">客户评价</p><br>
						<c:forEach var="comment" items="${comment}" varStatus="status"> 
						<div class="panel panel-default">
						    <div class="panel-body">
						        <p>
						        	<c:out value="${comment.uid_name}" />&emsp;
						        	<c:out value="${comment.comment_grade}" />&emsp;
						        	<c:out value="${comment.comment_time}" />&emsp;
						        </p>
						        <p><c:out value="${comment.comment_content}" /></p>
						    </div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>