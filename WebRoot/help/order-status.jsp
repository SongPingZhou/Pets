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
<title>订单状态_订单问题</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>订单状态
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
				<dd><a class="current" href="help/order-status.jsp"><span>订单状态</span></a></dd>
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
					<dt>订单状态</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>
					<dt>1、在线付款</dt>
					<dd>（1）、订单生成，待付款<br />您所选择的宠物已经记录在订单详细中，该订单在等待您的付款后，即能为您配货。</dd>
					<dd>（2）、已付款， 配货中<br />您的付款已经被确认，正在为您配货，我们将在1个工作日内配货完毕，并给您发货。</dd>
					<dd>（3）、配货完成，待出库<br />您所订购的商品已经全部配齐，准备出库并发货。</dd>
					<dd>（4）、已出库，待发货<br />您所订购的商品已经记录并出库，即将等候快递公司前来收件，<a href="http://www.chongwuzjijia.com/">宠物之家</a>会在每天下午18～19点统一发货。偶然出现临时缺货情况，以及因邮政EMS周末不收件的情况，发货时间会有相应的延迟，请您耐心等待。</dd>
					<dd>（5）、已发货，待签收<br />快递公司已经收件，如果使用快递公司正常情况下货物预计会在1-4天左右送达，使用EMS快递的话会在2-6天左右送达。届时请确保您的电话畅通，以便客服或快递公司与您联系。快递员从收件到送至快递派发中心记录会稍有延迟，稍等2小时左右您就可以从快递公司网站内查询到您的宠物寄送状态。</dd>
					<dd>（6）、交易成功<br />此次交易已经圆满成功，希望能得到您的满意。</dd>
					<dt>2、货到付款</dt>
					<dd>（1）、订单生成，待确认<br />您所选择的商品已经记录在订单详细中，该订单在等待您的付款后，即能为您配货。快递公司会将商品直接送货上门，要先付款给快递员，然后开箱验货，如当场发现包裹有坏损或配件缺失，请立刻拨打·麦路客客服 15537889957 核实，立即给予处理答复。</dd>
					<dd>（2）、订单已确认，配货中<br />您的付款已经被确认，正在为您配货，我们将在1个工作日内配货完毕，并给您发货。</dd>
					<dd>（3）、配货完成，待出库<br />您所订购的商品已经全部配齐，准备出库并发货。</dd>
					<dd>（4）、已出库，待发货<br />您所订购的商品已经记录并出库，即将等候快递公司前来收件，<a href="http://www.chongwuzjijia.com/">网上购物麦路客</a>会在每天下午18～19点统一发货。偶然出现临时缺货情况，以及因邮政EMS周末不收件的情况，发货时间会有相应的延迟，请您耐心等待。</dd>
					<dd>（5）、已发货，待签收<br />快递公司已经收件，如果使用快递公司正常情况下货物预计会在1-4天左右送达，使用EMS快递的话会在2-6天左右送达。届时请确保您的电话畅通，以便客服或快递公司与您联系。快递员从收件到送至快递派发中心记录会稍有延迟，稍等2小时左右您就可以从快递公司网站内查询到您的商品寄送状态。</dd>
					<dd>（6）、交易成功<br />此次交易已经圆满成功，希望能得到您的满意。</dd>
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
