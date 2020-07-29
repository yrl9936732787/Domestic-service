<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
<meta charset="utf-8">
<title>Bootstrap 实例 - 嵌套列</title>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<base href="<%=basePath%>">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>Insert title here</title>

<script >
	function datetime() {
		 var now = new Date();
		 document.getElementById("comment_time").value = now.getFullYear() + "-"
		 + (now.getMonth() + 1) + "-" + now.getDate();
		 document.getElementById("comment_time").value += " " + now.getHours() + ":"
		 + now.getMinutes() + ":" + now.getSeconds();
		 }
		 window.setInterval("datetime()", 1000);
</script>
<script>
	function sub(){
		/* alert("预约成功!"); */
		if(confirm("提交评论成功！")){  
	        return true;  
	    }  
	   // return false; 
	}
	function openaa(id){
		$('#oid').val(id);
		$("#myModal").modal('show');
		console.log(id);
		
	}
	

</script>
</head>
<body style="width:80%; margin:0 auto;">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h1 class="panel-title" style="font-size: 20px">我的订单</h1>
		</div>
		<div class="panel-body">
			<div class="container">
			<c:forEach var="order" items="${order}" varStatus="status"> 
				<!-- 左对齐 -->
				<div class="media">
			 
					<div class="media-left">
						<a href="${pageContext.request.contextPath }/toFindAuntDetailOrder.action?auntid=${order.auntid}">
							<img src="${order.aunt_image}" class="media-object" style="width: 100px">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">合同对象：<c:out value="${order.aunt_name }"/></h4>
						<p>
						职务：<c:out value="${order.aunt_type }" />
						</p>
						<p>
						联系电话：<c:out value="${order.aunt_phone }"/>
						</p>
						<p>
						订单状态：<c:out value="${order.aunt_state }"/>
						</p>
						<p><c:if test="${order.aunt_state=='预约中'}">
						预约服务时间：<c:out value="${order.dangqian_work_begin }"/>至<c:out value="${order.dangqian_work_end }"/>
						</c:if></p>
						<p><c:if test="${order.aunt_state!='预约中'}">
						家政服务时间：<c:out value="${order.work_begin }"/>至<c:out value="${order.work_end }"/>
						</c:if></p>
						<p>
						<c:if test="${order.order_time!=null}">合同生成时间：<c:out value="${order.order_time }"/></c:if>
						</p>
						<div style="float: right;margin-right:250px;">
						<c:if test="${order.aunt_state=='预约中'}">等待系统生成合同中..</c:if>
						<c:if test="${order.aunt_state=='预约通过'}">
							<a href="${pageContext.request.contextPath }/toMyOrder_detail.action?oid=${order.oid}" class="btn btn-warning">点击签订合同</a>
							<a href="${pageContext.request.contextPath }/deleteOrder2.action?oid=${order.oid}" class="btn btn-default">取消预约</a>
						</c:if> 
						<c:if test="${order.aunt_state=='预约成功'}">
							<a href="${pageContext.request.contextPath }/toFindMyOrderDetail.action?oid=${order.oid}" class="btn btn-warning">查看合同</a> 
							<c:if test="${order.order_commentState==NULL}">
								<div class="btn btn-primary"  data-id="${order.oid}" onclick="openaa(${order.oid})">评价</div>
							</c:if>
							<c:if test="${order.order_commentState!=null}">
								<button class="btn btn-default" >已评论</button>
							</c:if>
						</c:if>
							
						</div>
					</div>
					  
				</div>
			<hr style="width:800px;">
				
				<!-- 点击评论弹出来的模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
								<form method="post" action="${pageContext.request.contextPath }/insertComment.action"> 
									<input type="hidden" value="" id="oid" name="oid">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
												&times;
											</button>			
										</div>
										<div class="modal-body">
											<table  width="80%" align="center">
												
												<tr>
													<td align="center" width="20%"><img src="${pageContext.request.contextPath}\images\m11.png" width="50px" ></td>
													<td align="center" width="20%"><img src="${pageContext.request.contextPath}\images\my8.png" width="50px" ></td>
													<td align="center" width="20%"><img src="${pageContext.request.contextPath}\images\m13.png" width="50px" ></td>
													<td align="center" width="20%"><img src="${pageContext.request.contextPath}\images\my3.png" width="50px" ></td>
													<td align="center" width="20%"><img src="${pageContext.request.contextPath}\images\m12.png" width="50px" ></td>
												</tr>
												<tr>
													<td align="center">极差</td>
													<td align="center">不满意</td>
													<td align="center">一般</td>
													<td align="center">满意</td>
													<td align="center">极满意</td>
												</tr>
												<tr>
													<td align="center"><input type="radio" name="comment_grade" id="comment_grade" value="极差" checked></td>
													<td align="center"><input type="radio" name="comment_grade" id="comment_grade" value="不满意" checked></td>
													<td align="center"><input type="radio" name="comment_grade" id="comment_grade" value="一般" checked></td>
													<td align="center"><input type="radio" name="comment_grade" id="comment_grade" value="满意" checked></td>
													<td align="center"><input type="radio" name="comment_grade" id="comment_grade" value="极满意" checked></td>
												</tr>
											</table>
											<table  width="80%" align="center">
												<tr>
													<td>
														<br><h4>请输入您的评价：</h4>
													</td>
												</tr>
												<tr>
													<td>
														<textarea class="form-control" id="comment_content" name="comment_content" style="height:200px;"></textarea>
													</td>
												</tr>
												<tr>
													<td>
														当前时间：<input type="text"  id="comment_time" name="comment_time" value="" 
																style="outline:none;border-style: solid;border-top-width: 0px;border-right-width: 0px;border-bottom-width: 0px;border-left-width: 0px;" />
													</td>
												</tr>
											</table>
										
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">关闭
											</button>
											<!-- onclick="shuaxin()" -->
											<button type="submit" class="btn btn-primary" > 
												提交评论
											</button>
										</div>
									</div><!-- /.modal-content -->
								  	</form>
								</div><!-- /.modal -->
								</div>
								
				</c:forEach>
			</div>
		</div>
	</div>
	

</body>
</html>
