<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="navigationTag" uri="http://navigationTag.com/common/"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<title>招聘信息</title>
</head>
<body style="background-color: rgba(255, 255, 255, 0);width:80%; margin:0 auto;">
	<div class="container">


		<div class="row clearfix">
			<div class="col-md-12 column">
				
				<div class="panel  panel-info">

					<div class="panel-body">
						<table width="80%">
						<tr>
							<td align="center">
								<h2>家政服务公司招聘信息</h2>
							</td>
						</tr>
						<tr>
							<td>
								<p>公司简介：</p>
								<p>&emsp;&emsp;家政服务公司是专业从事家政室内清洁服务的企业。公司拥有完善的管理体质和高素质的管理队伍。是规范化、技能化、专业化的员工模式的新型家政服务公司。</p>
								<p>因公司发展需要，面向社会诚聘：室内清洁工。</p><br><br>
								<div class="col-md-10 column">
								<p>招聘条件：</p>
								<p>1.男女不限，年龄20-45周岁，初中及以上学历，五官端正；</p>
								<p>2.需有良好的语言表达能力、交际能力、应变能力和学习能力，能吃苦耐劳 认真负责 细心</p>
								<p>3.身体健康，无传染病，无残疾，无身孕，无不良习惯，无不良行为。</p>
								<p>4.具备本人有效证件（身份证等证件）。</p>
								<p>5.需邮箱投递简历，面试请自带笔纸<br><br>
								<p>薪酬福利：</p>
								<p>日工作x小时，每月x天休息，月基本工资5000元以上，按日算工资，入职即享受五险一金，加班按劳动法另计。</p>
								<p>公司联系电话：0772-000000</p>
								<p>公司邮箱：000000@qq.com</p>
								<p>公司地址：广西省桂林市xx街xx路</p>
								</div>
								<div class="col-md-2 column">
									<img alt="" src="${pageContext.request.contextPath}\images\010.png">
								</div>
							</td>
						</tr>
						
						</table>
						
						
						
					</div>

				</div>
			</div>
		</div>
		<div class="row clearfix"></div>
	</div>
</body>
</html>