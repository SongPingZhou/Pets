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
<title>积分问题_会员积分</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>积分问题
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
				<dd><a class="current" href="help/integral.jsp"><span>积分问题</span></a></dd>
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
					<dt>积分问题</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>					
					<dt>Q1. 积分性质</dt>
					<dd>答：注册成为宠物之家会员，购买商品就能获得相应的积分；</dd>
					<dt>Q2. 怎样才能成为商城会员？</dt>
					<dd>答：您只要注册并购买产品，即可成为会员。</dd>
					<dt>Q3. 什么是商城积分？</dt>
					<dd>答：积分是宠物之家推出的一项奖励政策，其运作的实质是以积分为基础，客户在积累一定数量的积分后，参与相关的积分活动。</dd>							
					<dt>Q4. 如何获得积分？ </dt>
					<dd>答：在宠物之家成功购物及参与相应活动即可获得积分。</dd>
					<dt>Q5. 货到付款能获得积分吗？ </dt>
					<dd>答：可以。只要购买相应商品就能积分。</dd>
					<dt>Q6. 购买积分换购商品还能有积分吗？</dt>
					<dd>答：购买积分换购商品时，支付部分（不包含运费）仍将按正常会员积分规则产生积分，在下次购物时可使用。</dd>							
					<dt>Q7. 如果没有足够的积分，还能购买积分换购商品吗？</dt>
					<dd>答：购买积分换购商品时，所需积分将自动扣除，若积分不足将无法购买，请选择其他积分适合的换购商品或非积分换购商品。</dd>							
					<dt>Q8. 积分换购商品和正常购买的商品有区别吗？</dt>
					<dd>答：有，积分兑换只是采用“现金+积分”的方式购买就能累积积分。全额积分兑换不能累积积分。</dd>
					<dt>Q9. 积分有效期。</dt>
					<dd>答：终身有效、只要你购买了商品积分就会不断累加。</dd>							
					<dt>Q10. 积分换购商品能否享受退换货服务？</dt>
					<dd>答：积分换购商品享受现行的退换货政策和保障。当积分换购商品发生整单退货和部分退货时，系统将自动退还相应的积分。</dd>
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
