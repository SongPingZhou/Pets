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
<title>送达时间_配送和收费</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>送达时间
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
				<dd><a class="current" href="help/delivery-time.jsp"><span>送达时间</span></a></dd>
				<dd><a href="help/inspection-sign.jsp"><span>验货与签收</span></a></dd>
				<dd><a href="help/express.jsp"><span>快递配送和收费</span></a></dd>
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
					<dt>送达时间</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>
					<dt>一、配货发货时间</dt>
					<dd>1. 配货时间：正常情况下，<a href="../index.jsp">宠物之家</a>会在确认订单后的1个工作日内为您配货发货。</dd>
					<dd>2. 无货延迟：如出现您下单后无货，无法在1个工作日内发货的情况，我们的工作人员会第一时间通知到您，并征求您的意见延迟发货。</dd>
					<dd>3. EMS快递：由于邮政快递双休日是不进行发货的，您的货物会在下周一进行发货。</dd>
					<dt>二、各地区发货后到货时间</dt>
					<dd>
						<table width="100%" class="list-table a-c">
							<tbody>
								<tr>
									<td width="72" height="51">地区</td>
									<td width="117">快递公司送达时间<br />4008-111-111</td>
									<td width="117">EMS快递送达时间<br />11185</td>
									<td width="25" rowspan="18">&nbsp;</td>
									<td width="72">地区</td>
									<td width="117">快递公司送达时间<br />4008-111-111</td>
									<td width="117">EMS快递送达时间<br />11185</td>
								</tr>
								<tr>
									<td>上海</td>
									<td>1-2天</td>
									<td>NA</td>
									<td>黑龙江</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>北京</td>
									<td>1-2天</td>
									<td>3-4天</td>
									<td>内蒙古</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>广州</td>
									<td>1-2天</td>
									<td>3-4天</td>
									<td>湖南</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>江苏</td>
									<td>1-2天</td>
									<td>3-4天</td>
									<td>吉林</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>深圳</td>
									<td>1-2天</td>
									<td>3-4天</td>
									<td>江西</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>天津</td>
									<td>1-2天</td>
									<td>3-4天</td>
									<td>辽宁</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>浙江</td>
									<td>1-2天</td>
									<td>3-4天</td>
									<td>湖北</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>安徽</td>
									<td>2-3天</td>
									<td>3-4天</td>
									<td>宁夏</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>广东</td>
									<td>2-3天</td>
									<td>3-4天</td>
									<td>山东</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>河北</td>
									<td>2-3天</td>
									<td>3-4天</td>
									<td>山西</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>福建</td>
									<td>2-3天</td>
									<td>4-6天</td>
									<td>陕西</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>甘肃</td>
									<td>2-3天</td>
									<td>4-6天</td>
									<td>四川</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>广西</td>
									<td>2-3天</td>
									<td>4-6天</td>
									<td>云南</td>
									<td>2-3天</td>
									<td>4-6天</td>
								</tr>
								<tr>
									<td>贵州</td>
									<td>2-3天</td>
									<td>4-6天</td>
									<td>新疆</td>
									<td>3-4天</td>
									<td>6-7天</td>
								</tr>
								<tr>
									<td>海南</td>
									<td>2-3天</td>
									<td>4-6天</td>
									<td>青海</td>
									<td>无法送达</td>
									<td>6-7天</td>
								</tr>
								<tr>
									<td>河南</td>
									<td>2-3天</td>
									<td>4-6天</td>
									<td>西藏</td>
									<td>无法送达</td>
									<td>6-7天</td>
								</tr>
								<tr>
									<td>重庆</td>
									<td>2-3天</td>
									<td>4-6天</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</dd>
					<dd><b>个别地区：</b>以上时间为大致到货时间，部分村镇地区使用邮政快递的到货时间在此基础上延长1-2天。</dd>
					<dd><b class="red">友情提示：</b>当货物到达您当地的邮局或投递站而没有及时派送，请不要着急，可以拨打相应快递的客服热线进行咨询，以此来节约时间。</dd>
					<dt>三、货物未妥投</dt>
					<dd>1. 投递失败：由于地址无人接收，或无法联系收件人造成的投递失败。请您立即拨打快递的服务热线，以确认地址以及配送时间。</dd>
					<dd>2. 延迟投递：您的货物已经到达当地的邮局或配送点，但由于时间原因需延迟到第二天派件。请您再耐心等待一天。</dd>							
					<dd>3. 邮政快递：由于邮政快递双休日是不进行派件的，您的货物会在下周一进行派送。</dd>
					</dd>
				</dl>						
			</div>
		</div>
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
