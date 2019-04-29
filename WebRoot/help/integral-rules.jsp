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
<title>积分规则_会员积分</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>积分规则
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
				<dd><a class="current" href="help/integral-rules.jsp"><span>积分规则</span></a></dd>
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
					<dt>积分规则</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>
					<dt>1. 积分的获取</dt>							
					<dd>(1)、除全额积分兑换获取商品以外，<a href="http://www.chongwuzhijia.com/">个人中心</a>所有商品积分和部分兑换积分的商品单价都为：&nbsp;&nbsp;(”商品单价”&nbsp;&nbsp;*&nbsp;&nbsp;“商品数量”)&nbsp;&nbsp;四舍五入后的整数。</dd>
					<dd>(2)、所有促销商品的积分按照商品积分获取规则计算，同上第一条。</dd>
					<dt>2. 积分的状态</dt>
					<dd>由于<a href="http://www.mailuke.com/">个人中心</a>承诺7天退换货，因此，积分的累积将在相关订单发货7天后开始计算。例如：某用户最后一张订单发货时间为2018年11月21日，则积分的累积将从7天以后，即2018年11月28日开始计算。</dd>
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
