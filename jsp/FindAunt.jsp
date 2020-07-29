<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="navigationTag" uri="http://navigationTag.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>寻找阿姨</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<base href="<%=basePath%>">
<!-- <script type="text/javascript" language="javascript">
function toDetail(){
	window.location.href="http://www.baidu.com"; 
}
</script> -->
</head>
<body style="width:80%; margin:0 auto;">
	<div class="row clearfix" >
		<div class="panel-body">
			<div class="panel panel-default" style="width:95%;margin:0 auto;">
				<div class="panel-body">
					<form class="form-inline" method="post"
						action="${pageContext.request.contextPath }/toFindAuntByName.action">
						<div class="form-group">
							<label for="UserName">家政人员姓名</label> <input type="text"
								class="form-control" id="aunt_name" value="${aunt_name}"
								name="aunt_name" />
						</div>
						<button type="submit" class="btn btn-primary">查询</button>
						<br>
					</form>
				</div>
				<div class="panel-body" >
					<form class="form-inline" method="post"
						action="${pageContext.request.contextPath }/toFindAuntByType.action">
						选择： <label class="radio-inline"><input type="radio"
							name="aunt_type" id="aunt_type" value="保姆" checked>保姆 </label> <label
							class="radio-inline"> <input type="radio"
							name="aunt_type" id="aunt_type" value="育儿嫂">育儿嫂
						</label> <label class="radio-inline"> <input type="radio"
							name="aunt_type" id="aunt_type" value="月嫂">月嫂
						</label><label class="radio-inline"> <input type="radio"
							name="aunt_type" id="aunt_type" value="清洁工">清洁工
						</label>
						<button type="submit" class="btn btn-primary"
							style="margin-left: 20px;">选择</button>
					</form>
				</div>
			</div>
			<div  class="col-md-12 column" style="margin-top:10px;">			 
					<c:forEach var="aunt" items="${page.rows}" varStatus="status">
						<div class=" col-sm-3 col-md-3">
							<div class="thumbnail">
								<div style="height: 280px;">
									<img src="${aunt.image}" alt="缩略图" width="100%" height="100%">
								</div>
								<div class="caption">
									<h3>
										<c:out value="${aunt.aunt_name }" />
									</h3>
									<p>
										类型：
										<c:out value="${aunt.aunt_type }" />
									</p>
									<p>
										年龄：
										<c:out value="${aunt.aunt_age }" />
									</p>
									<p>
										介绍：
										<c:out value="${aunt.aunt_introduce }" />
									</p>
									<div>
										<a href="${pageContext.request.contextPath }/toFindAuntDetail.action?id=${aunt.id}" class="btn btn-primary">详情
										</a>
									</div>
								</div>

							</div>
						</div>
					</c:forEach>
			</div>
		</div>
			<div class="col-md-12 text-right">
					  <navigationTag:page
						url="${pageContext.request.contextPath }/toFindAunt.action" />  
			</div>
	</div>

</body>
</html>