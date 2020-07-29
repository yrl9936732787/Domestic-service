<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>最新动态</title>
</head>
<body style="width:80%; margin:0 auto;">
	<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title"><a href="toNewActive.action">返回上一页</a></h3>
			</div>
			<div class="panel-body">
				<h2>${newActive.new_title}</h2><input type="hidden" id="id" name="id" value="${newActive.id}" />
				<p>${newActive.uid_name}&emsp;&emsp;${newActive.publish_time}</p>
				<hr>
				<p>${newActive.new_content}</p><hr>
				<form role="form" method="post" action="${pageContext.request.contextPath }/insertActiveReply.action?id=${newActive.id}">
				<textarea class="form-control" id="reply_content" name="reply_content"
							style="height: 100px;" placeholder="请输入您的评论"></textarea>
				<button type="submit" style="float:right;">评论</button>
				</form>
			</div>
			<hr>
			 <c:forEach var="newActiveReply" items="${newActiveReply}" varStatus="status"> 
			<div class="panel panel-default">
				<div class="panel-body">
					 <p>
					<c:out value="${newActiveReply.rid_name}" />&emsp;
					<c:out value="${newActiveReply.reply_time}" />&emsp;
					</p>
					<p><c:out value="${newActiveReply.reply_content}" /></p>
				</div>
			</div>
			</c:forEach>	 	
	</div>
</body>
</html>