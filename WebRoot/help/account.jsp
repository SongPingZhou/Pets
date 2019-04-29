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
<title>宠物之家_新手指南</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/favicon.ico" type="image/x-icon" />
<link href="../css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/info.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
</head>
<body>
<jsp:include page="../head.jsp" />


<div class="content container">
	<div class="breadcrumbs">
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>个人中心
	</div><!--breadcrumbs end-->
	<h2 class="title">帮助中心</h2>
	<div class="content_main clearfix">
		<div class="f_l c_l">
			<dl>
				<dt>新手指南</dt>
				<dd><a href="help/index.jsp"><span>购物流程</span></a></dd>
				<dd><a class="current" href="help/account.jsp"><span>个人中心</span></a></dd>
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
					<dt>个人中心</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>						
					<dt>“个人中心” 为您提供帐户管理、个人信息管理、推荐用户奖励积分、商品评论与问答等服务。 </dt>
					<dt>1.帐户管理</dt>
					<dd>我的订单：查询您的订单信息</dd>
					<dd>我的积分：查询您的积分信息。</dd>
					<dd>交易记录：查询您近日的订单信息和消费情况。</dd>	
					<dd>我的爱宠：收藏您自己感兴趣的宠物，方便日后选择。</dd>
					<dd>电子优惠券：购买特定宠物后得到含有部分抵用金，可以在这里面使用，并且还记录了您的抵用情况。</dd>				
					<dt>2.个人信息管理</dt>
					<dd>编辑个人信息：完善个人信息可获得<a class="current" href="account.jsp">宠物之家</a>10点积分，填写个人基本信息和个人选填信息。</dd>
					<dd>修改密码：修改您的原先密码。</dd>	
					<dd>修改送货信息：修改您的送货信息和添加您的送货信息。</dd>						
					<dt>3.推荐用户奖励积分</dt>
					<dd>邀请好友：亲爱的用户，您可以通过QQ、MSN、邮件等方式推荐好友到<a href="../index.jsp">宠物之家</a>，分享这种便捷的购买宠物的方式。
如果被推荐的好友在7天内成功注册为宠物之家会员，会员将获得10个积分奖励。</dd>
					<dt>4.商品评论与问答</dt>
					<dd>我的评论：您评论的商品详细信息。</dd>
					<dd>我的问答：宠物之家管理员为您解答的商品信息。</dd>
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
