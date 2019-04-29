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
<title>常见问题_新手指南</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>常见问题
	</div><!--breadcrumbs end-->
	<h2 class="title">帮助中心</h2>
	<div class="content_main clearfix">
		<div class="f_l c_l">
			<dl>
				<dt>新手指南</dt>
				<dd><a href="help/index.jsp"><span>购物流程</span></a></dd>
				<dd><a href="help/account.jsp"><span>个人中心</span></a></dd>
				<dd><a class="current" href="help/common.jsp"><span>常见问题</span></a></dd>
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
					<dt>常见问题</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>
					<dt>Q1.<a href="http://www.mailuke.com/">宠物之家</a>所售宠物都是打过疫苗的吗？</dt>
					<dd>答：都是打过疫苗的。</dd>
					<dt>Q2.购买的商品能开发票？</dt>
					<dd>答：<a href="http://www.mailuke.com/">宠物之家</a>每张订单均机打发票，此发票可用作单位报销凭证。发票会随包裹一同发出，发票金额含配送费金额。</dd>
					<dt>Q3.下单后何时可以收到宠物？</dt>
					<dd>答：在商品有现货的情况下江浙沪客户，下单后一般1-3天可收到（郊区县配送时间可能会更长一些）；
其它地区用户，将根据您的收货地址及所选择的配送方式而不同，一般到货时间在1-7天（极偏远地区配送时间可能会更长一些）；
如果商品处于预订或在途状态，那么还应加上调配货时间。</dd>
					<dt>Q4.快递费是多少？</dt>
					<dd>答：一般快递费在8-10块钱左右。超重按快递公司价格计算加费。</dd>
					<dt>Q5.下单时可以指定送货时间吗？</dt>
					<dd>答：可以，您下单时可以选择“只工作日送货(双休日、假日不用送)”、“工作日、双休日与假日均可送货”、“只双休日、假日送货(工作日不用送)”等时间类型，并选择是否提前电话确认。
另外，您还可以在订单备注里填写更具体的需求，我们会尽量满足您的要求。</dd>
					<dt>Q6.收货时发现问题可以拒收吗？</dt>
					<dd>答：在签收货物时如发现宠物有受伤或死亡，请直接拒收退回我公司，相关人员将为您重新安排发货。</dd>
					<dt>Q7.下单后，我能做什么？</dt>
					<dd>答：如果是在线支付方式，请您尽快完成付款，待付款被确认后我们会立即为您发货，
如果选择货到付款，您可以进入“个人中心”，在“我的订单”中找到您的订单，然后可随时查看订单处理状态，做好收货的准备。
在您成功购物后，您还可以发表商品评价，向其他用户分享您的宠物喂养经验。</dd>
					<dt>Q8.为什么我无法登陆商城？</dt>
					<dd>答：首先要检查您的用户名、密码是否正确，确认您的浏览器是否支持COOKIE。</dd>
					<dt>Q9.怎样咨询商品的详细信息？</dt>
					<dd>答：请您在该商品页面下方“买家问答”处进行提问，相关商品管理员会为您回复。</dd>
					<dt>Q10.订单付款后，如果长时间未收到货，我是否可以申请办理退款？</dt>
					<dd>答：致电客服中心15537889957，由客服人员为您申请办理退款事宜。</dd>
					<dt>Q11.如果我有问题或建议是否可以通过邮件向你们反馈？</dt>
					<dd>答：可以。受理建议或投诉的邮箱是：15537889957@163.com</dd>
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
