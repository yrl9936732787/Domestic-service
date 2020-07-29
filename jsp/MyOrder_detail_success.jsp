<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>签订合同</title>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	
<style>
	input{
				outline: none;
                width: 150px;
                height: 30px;
                line-height: 30px;
                border-style: solid;
                border-top-width: 0px;
                border-right-width: 0px;
                border-bottom-width: 1px;
                border-left-width: 0px;
			
		}
　

        
</style>
</head>
<body style="width:80%; margin:0 auto;">
<table width="80%" align="center">
	<tr >
		<td colspan="2"><a href="javascript:history.go(-1)">>>返回上一页</a><br></td>
	</tr>
	<%-- <tr>
		<td colspan="2"><input type="hidden" id="oid" name="oid" value="${order.oid}" /></td>
	</tr> --%>
	<tr >
		<td align="center" colspan="2"><h1>合同协议</h1><br></td>
	</tr>
	<tr>
		<td colspan="2">
			<p><h3>甲方姓名（雇主）：${order.user_name}</h3></p>
			<p><h3>乙方姓名（雇员）：${order.aunt_name}</h3></p>
		</td>
	</tr>
 	<tr>
		<td colspan="2">
			<p><h4>&emsp;&emsp;为满足参与者需求，甲、乙双方在平等、自愿的基础上，经协商一致同意签订本合同。由乙方对甲方提供家政服务、甲方支付劳务费订立家政劳务合同： </h4></p>
			<p><h4>&emsp;&emsp;一、合同期限： 自家政人员工作之日起直至工作结束，结束工作后三个月内合同均有效，逾期无效。</h4></p>
			<p><h4>&emsp;&emsp;二、 由甲、乙双方商定以下乙方到甲方做家政的《上岗协议》  内容：${order.hetong_content}  
			乙方从${order.work_begin}起至${order.work_end}，自愿到甲方家工作，
			工作地址${order.user_address}，吃住全包，月休息俩天（不包括晚上，晚上必须在甲方家里），（注明：俩天假期必须通过双方协商后再定）,乙方可以把每个月休息日累计起来等到假期或者有事情的时候
			休息，乙方除了休息日外， 其他时间不能请假，影响雇主正常的生活。国定假日不可休息。工资${order.money}，每15天结清工资。 </h4></p>
			<p><h4>&emsp;&emsp;三、证件：1、乙方、甲方均出示的是本人正确身份证和有效证明。2、乙方出示有 效、真实的体检合格证明，体检内容要有：胸透正常、无心脏病、无高血压、肝功能正常、无各种传染病等。</h4></p>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<p><h4>四、乙方的义务和权利：<br>1、义务<br>自愿签定合同：<br>乙方愿意到甲方家为其做家政服务，自愿签订此合同。<br>提供有效内容,符合合同的体检证明；<br>完全依照双方订立的本合同内容的要求进行家政工作。 <br>2、财产和生命安全：<br>
			如属乙方不慎毁坏客户物品的，乙方应照价赔偿；乙方自身因没有（或没有要求甲方合理的）采用必要的安全的措施，而造成乙方或甲方生命及财产的损失，一切后果与甲方无关，乙方自己承担。乙方在带小孩的工作过程中，特别要注意安全，有意或无意造成孩子的伤或亡，一切后果有乙方负责；<br>
			乙方在工作期间内应当注意防火、防盗、防煤气中毒的恶性事件的发生，以保护自己和雇主的人身安全、财产安全和他人的人身、财产安全。如乙方疏忽或违规操作，而对甲方造成严重后果者，乙方在经济上要予以实际损失额赔偿给甲方，法律上应予以追究。<br>
			3、纪律<br>（1）乙方未经甲方的同意，不得使用甲方的电话、化妆品、衣物、家电用品等属甲方的东西；如有违反，乙方愿意以原物品的2倍赔偿给甲方；乙方不得未经甲方同意向他人泄露甲方的家庭人事情况、经济状况、家庭矛盾、工作或学习的内容和地址、电话号码、住址、身份及隐私等等的家庭信息；乙方不得搬弄是非。乙方如果有违反，愿意甲方向其追回全额的经济损失和予以1000元的赔偿金额；乙方未经甲方同意，任何时间不得带任何人进入甲方的住址和工作、学习的地点乙方如果有违反，愿意甲方向其追回全额的经济损失和予以1000元的赔偿金额；<br>
			（二）权利<br>1、乙方在工作期间应当爱护甲方的家庭财产，对贵重易碎、易损物品及危险动作的清洁，应当首先采取安全保护措施，也有权要求客户提供安全保护措施，方可小心进行清洁工作。 <br>2、乙方有权在双方约定的发薪时间，向甲方催讨当月的工资<br>（二）权利 <br>
			1、乙方在工作期间应当爱护甲方的家庭财产，对贵重易碎、易损物品及危险动作的清洁，应当首先采取安全保护措施，也有权要求客户提供安全保护措施，方可小心进行清洁工作。 <br>2、乙方有权在双方约定的发薪时间，向甲方催讨当月的工资</h4></p>
			<p><h4>五、甲方的权利和义务：<br>(一)义务 甲方在合同期间，乙方除了请假、矿工或损毁甲方物件及合同中约定款项，按合同照扣服务费外，不满意乙方服务可同乙方沟通、协调直至甲方可单方面立即终止本合同，但不可克扣乙方的服务费 ，甲方不得以乙方服务不到位为借口克扣甲方服务费，甲方如以此为由而克扣甲方服务费，则属甲方违约。甲方有责任对贵重的易碎物品或其他，在采取安全措施的情况下，指令乙方进行工作。<br>
			甲方有责任对其贵重的财、物实施严格的保管。<br>（二）权利<br>乙方在工作期间，对甲方家庭内的贵重物品，不得擅自触摸，更不得窃为己有。如触犯刑律的，甲方有权将配合公安局要求国家执法部门立案，并追加实际经济损失的2倍要求乙方予以赔偿。<br>
			甲方有权在乙方的工作内，在地点、时间不变的情况下，指令乙方的工作顺序、要求等方面的安排； <br>有权在任何时间终止本合同；有权了解乙方的家庭人员情况和乙方的社会关系；</h4></p>
			<p><h4>六、双方的违约责任<br>甲方、乙方双方，应遵守本合同订立的内容和要求，如有违反，也应以本合同订立的制约方法进行；<br>双方如遇到矛盾，应尽力协商和谦让；<br>如遇在本合同未详尽事宜，双方在予以协商；<br>双方有纠纷，协商不成或者单方无理由的情况下解除合同，可到甲方的所在地人民法院予以起诉，赔偿对方损失。</h4></p>
			<p><h4>七、此合同系双方自愿订立。一式俩份，甲、乙、各执一份。签名、或盖章有效。<br></h4></p>
		</td>
	</tr> 
	<tr>
		<td ><h4>甲方签名：${order.user_signature}</h4></td>
		<td ><h4>乙方签名：${order.aunt_signature}</h4></td>
	</tr>
	 <tr>
		<td><h4>身份证号码：${order.user_idcard}</h4></td>
		<td><h4>身份证号码：${order.aunt_idcard}</h4></td>
	</tr>
	<tr>
		<td><h4>联系电话：${order.user_phone}</h4></td>
		<td><h4>联系电话：${order.aunt_phone}</h4></td>
	</tr>
	<tr>
		<td><h4>签订日期：${order.user_signdate}</h4></td>
		<td><h4>签订日期：${order.aunt_signdate}</h4></td><br><br><br><br><br><br><br>
	</tr> 
	<tr>
		<td colspan="2" ><br><br><br><br><br><br><br></td>
	</tr>

</table>


</body>
</html>