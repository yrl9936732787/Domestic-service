<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
<title>查看评论</title>
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
				<strong class="am-text-primary am-text-lg">客户评论反馈服务信息</strong><small></small>
			</div>
		</div>

		<hr>

		<div class="am-g">			
				<form class="form-inline" method="post" action="${pageContext.request.contextPath }/toComment.action">
				
					<table width="80%">
					<tr>
						<td>
							家政id：<input type="text"  placeholder="请输入id" id="aid" value="${aid}" name="aid"> 
						</td>
						<td>
							家政姓名：<input type="text"  placeholder="请输入姓名" id="aid_name" value="${aid_name}" name="aid_name"> 
						</td>
						<td >
							满意度：<input type="text"  placeholder="极差/不满意/一般/满意/极满意" id="comment_grade" value="${comment_grade}" name="comment_grade"
									style="width:200px" > 
						</td>
						<td >
							<button class="btn btn-info" type="submit" style="margin-left:10px">搜索</button>
						
						</td>
					</tr>
					</table>
				
				</form>
		</div>
		
		 <div class="am-g">
			<div class="am-u-sm-12">
				<!-- <form class="am-form"> -->
					<table class="am-table am-table-striped am-table-hover table-main">
						<thead>
							<tr>
								<th class="table-id">家政ID</th>
								<th class="table-name">家政名</th>
								<th class="table-id">用户ID</th>
								<th class="table-name">用户名</th>
								<th class="table-phone">评论等级</th>
								<th class="table-adr">评论时间</th>
								<th class="table-adr" width="200px">评论内容</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="comment" items="${page.rows}" varStatus="status">
								<tr>
									<td><c:out value="${comment.aid }" /></td>
									<td><c:out value="${comment.aid_name }" /></td>
									<td><c:out value="${comment.uid }" /></td>
									<td><c:out value="${comment.uid_name }" /></td>
									<td><c:out value="${comment.comment_grade }" /></td>
									<td><c:out value="${comment.comment_time }" /></td>
									<td><c:out value="${comment.comment_content }" /></td>
									<td><a href="${pageContext.request.contextPath }/deleteComment.action?id=${comment.id}"
										class="btn btn-danger" >删除 </a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr>
				<!-- </form>
				 -->
				<div class="col-md-12 text-right">
					<navigationTag:page
						url="${pageContext.request.contextPath }/toComment.action" />
				</div>
			</div>

		</div> 
	</div>

</body>
</html>