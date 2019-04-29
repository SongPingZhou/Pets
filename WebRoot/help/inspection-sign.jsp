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
<title>商品验货与签收_配送和收费</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>验货与签收
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
				<dd><a class="current" href="help/inspection-sign.jsp"><span>验货与签收</span></a></dd>
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
					<dt>验货与签收</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>
					<dt>注意事项：</dt>				
					<dd>（1）、快递送货上门订单，请您务必当面检查宠物，如出现伤亡，请您当场拒收。若订单中含有特惠品，请一并退回。一旦您确认签字，我们将无法为您办理退换或补发。款到发货订单，在未打开外包装前，可以当场全部拒收；如验货后发现上述问题，请与<a href="http://www.mailuke.com/">宠物之家</a>客服中心联系，客服电话：15901826010。</dd>
					<dd>（2）、快递送货上门订单送达时，您可以当场试穿，如不满意可当场拒收。</dd>
					<dd>（3）、内衣等贴身类商品不允许试穿，如您收下货物后，发现质量问题，可以联系客服中心为您办理退换货业务。</dd>
					<dd>（4）、款到快递的订单无法当场试穿，您可以在签收商品后进行试穿，如不满意可致客服中心办理退换货业务。</dd>
					<dd>（5）、如您在订购时选择了“需要发票”，请仔细检查发票是否随商品一起送到，如未收到发票，请与<a href="../index.jsp">宠物之家</a>客服中心联系为您补开发票。</dd>
					<dd>（6）、对于款到快递的订单，需要经订购人确认后才可以代收。</dd>
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
