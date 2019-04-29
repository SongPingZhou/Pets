<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>快递配送和收费_配送和收费</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<link href="../css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/info.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
</head>
<body>
<jsp:include page="../head.jsp" />
<div class="content container">
	<div class="breadcrumbs">
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>快递配送和收费
	</div><!--breadcrumbs end-->
	<h2 class="title">帮助中心</h2>
	<div class="content_main clearfix">
		<div class="f_l c_l">
			<dl>
				<dt>新手指南</dt>
				<dd><a href="help/index.jsp"><span>购物流程</span></a></dd>
				<dd><a href="help/account.jsp"><span>个人中心</span></a></dd>
				<dd><a href="help/common.jsp"><span>常见问题</span></a></dd>
				<dd><a href="register.jsp"><span>注册用户</span></a></dd>
				<dd><a href="forgot-password.jsp"><span>找回密码</span></a></dd>
			</dl>
			<dl>
				<dt>订单问题</dt>
				<dd><a href="help/order-status.jsp"><span>订单状态</span></a></dd>
				<dd><a href="help/cancel-order.jsp"><span>取消订单</span></a></dd>
				<dd><a href="help/not-order.jsp"><span>未达订单</span></a></dd>
			</dl>
			<dl>
				<dt>会员积分</dt>
				<dd><a href="help/integral-rules.jsp"><span>积分规则</span></a></dd>
				<dd><a href="help/integral.jsp"><span>积分问题</span></a></dd>
				<dd><a href="help/exchange-integral.jsp"><span>积分兑换</span></a></dd>
			</dl>
			<dl>
				<dt>如何付款/退款</dt>
				<dd><a href="help/payment.jsp"><span>支付方式</span></a></dd>
				<dd><a href="help/wait-pay.jsp"><span>支付等待</span></a></dd>
				<dd><a href="help/pay-issue.jsp"><span>支付问题</span></a></dd>
				<dd><a href="help/refund.jsp"><span>办理退款</span></a></dd>
				<dd><a href="help/invoice-system.jsp"><span>发票制度</span></a></dd>
			</dl>
			<dl>
				<dt>配送和收费</dt>
				<dd><a href="help/time-range.jsp"><span>配送时间</span></a></dd>
				<dd><a href="help/delivery-time.jsp"><span>送达时间</span></a></dd>
				<dd><a href="help/inspection-sign.jsp"><span>验货与签收</span></a></dd>
				<dd><a class="current" href="help/express.jsp"><span>快递配送和收费</span></a></dd>
				<dd><a href="help/ems.jsp"><span>EMS配送和收费</span></a></dd>
			</dl>
			<dl>
				<dt>售后服务</dt>
				<dd><a href="help/policy.jsp"><span>退换货政策</span></a></dd>
				<dd><a href="help/apply-goods.jsp"><span>如何办理退换货</span></a></dd>
			</dl>
		</div><!--c_l end-->
		<div class="f_r c_r">
			<div class="help_r_t">
				<dl class="clearfix">
					<dt>快递配送和收费</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>					
					<dt>快递全国运费表 </dt>
					<dd>
						<table width="100%" class="list-table a-c">
							<tbody>
							<tr>
								<td width="105" height="28">地区划分</td>
								<td width="98">先款后货运费</td>
								<td width="155">货到付款运费+手续费</td>
							</tr>
							<tr>
								<td bgcolor="#eaf1dd" colspan="3">一区</td>
							</tr>
							<tr>
								<td>上海、浙江<br />江苏、安徽</td>
								<td>8元</td>
								<td>12元+2%商品总额</td>
							</tr>
							<tr>
								<td bgcolor="#eaf1dd" colspan="3">二区</td>
							</tr>
							<tr>
								<td>北京、天津<br />河北、山西<br />山东、辽宁<br />河南、陕西<br />江西、湖北<br />湖南、福建<br />广东</td>
								<td>14元</td>
								<td>20元+2%商品总额</td>
							</tr>
							<tr>
								<td bgcolor="#eaf1dd" colspan="3">三区</td>
							</tr>
							<tr>
								<td>吉林、宁夏<br />甘肃、四川<br />重庆、青海<br />贵州、广西<br />云南、海南<br />新疆、西藏<br />黑龙江、内蒙古</td>
								<td>16元</td>
								<td>20元+2%商品总额</td>
							</tr>
							</tbody>
						</table>
					</dd>
					<dd><span class="red"> 注：目前新疆货到付款是禁运。</span></dd>
					<dt>注：以下情况不能使用货到付款</dt>
					<dd>1. 在前一个货到付款订单未完成交易前，订单总金额在4000元以上的新订单将不能使用货到付款 。</dd>
					<dd>2. 货到付款成功交易过的顾客不受第一条限制 。</dd>
					<dd>3. 拒收过1次的不能使用"货到付款" 。</dd>
					<dd>4. 收件地址不是详细地址的不可选择货到付款 。</dd>
					<dd>5. 收件人与订单联系人不统一的不可选择货到付款。</dd>
					<dt>六、超重费用</dt>
					<dd>部分商品因为重量较大，超过快递公司的起重计价范围，因此配送时会被收取相应的超重费用，实际运费会在订单中由系统自动结算，结算时所依据的费率信息，因选择的快递公司不同，计算的方法和价格会有差别，具体的超重资费标准如下：</dd>
					<dt>快递公司：</dt>
					<dd>起重1kg，超重部分每1kg为单位计重，费用为</dd>
					<dd>一区（2元）：上海、浙江、江苏、安徽</dd>
					<dd>二区（10元）：北京、天津、河北、山西、山东、辽宁、河南、陕西、江西、湖北、湖南、福建、广东</dd>
					<dd>三区（14元）：内蒙古、吉林、黑龙江、宁夏、甘肃、四川、重庆、青海、贵州、广西、云南、海南、新疆、西藏</dd>
				</dl>						
			</div>
		</div><!--c_r end-->
	</div>
	<div class="content_bg mb-10"></div>
</div><!--content end-->
	 <div class="footer container">
	<jsp:include page="../foot2.jsp" />
	<jsp:include page="../foot1.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
<!-- index -->
<script type="text/javascript" src="js/index.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script> 	 	
</body>
</html>
