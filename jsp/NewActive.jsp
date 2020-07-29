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
<body style="background-color: rgba(255, 255, 255, 0.6);width:80%; margin:0 auto;" >

	<!-- 按钮触发模态框 -->
	<button class="btn btn-primary btn-lg" data-toggle="modal"
		data-target="#myModal" style="margin-left: 30px; margin-top: 20px;">
		点击发布</button>
	<!-- 模态框（Modal） -->
	<form class="form-horizontal" role="form" method="post"
		action="${pageContext.request.contextPath }/insertActive.action">
		<div style="margin-top: 10px;">
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">
								<input type="text" id="new_title" name="new_title"
									placeholder="请输入您的标题" />
							</h4>
						</div>
						<div class="modal-body">
							<h4 class="modal-title" id="myModalLabel">
								<textarea type="text" id="new_content" name="new_content"
									placeholder="请输入您要发布的内容/要求/联系方式"
									style="width: 500px; height: 300px;"></textarea>
							</h4>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">提交更改</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
		</div>
	</form>



				<!-- 显示界面 -->
												
<c:forEach var="newActive" items="${newActive}" varStatus="status">
		<div class="panel panel-success" >
			<div class="panel-heading">
				<h2 class="panel-title"><c:out value="${newActive.new_title }" /></h2>
			</div>
			<div class="panel-body"><c:out value="${newActive.new_content }" /></div>
			<hr>
			<a >&emsp;发布人：<c:out value="${newActive.uid_name }" /></a>
			<a href="${pageContext.request.contextPath }/toFindNewActiveById.action?id=${newActive.id}" style="float:right;">>>点击进入&emsp;</a>			
		</div>
</c:forEach>
</body>
</html>