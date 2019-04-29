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
<title>退换货政策_售后服务</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>退换货政策
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
				<dd><a href="help/express.jsp"><span>快递配送和收费</span></a></dd>
				<dd><a href="help/ems.jsp"><span>EMS配送和收费</span></a></dd>
			</dl>
			<dl>
				<dt>售后服务</dt>
				<dd><a class="current" href="help/policy.jsp"><span>退换货政策</span></a></dd>
				<dd><a href="help/apply-goods.jsp"><span>如何办理退换货</span></a></dd>
			</dl>
		</div><!--c_l end-->
		<div class="f_r c_r">
			<div class="help_r_t">
				<dl class="clearfix">
					<dt>退换货政策</dt>
				</dl>
			</div>
			<div class="help_r_t_m">
				<dl>					
					<dd><b>自您签收商品之日起7日之内，<a href="http://www.mailuke.com/">网上购物麦路客</a>将为您办理退换货服务，且寄回商品实际运费由我们承担（根据运单金额实报，最高报销金额为15元）。如需办理退换货业务，请您拨打客服电话（15901826010）咨询办理。</b></dd>
					<dt>详细说明：</dt>
					<dd>（1）、一张订单我们只为您提供一次退换货服务，为了确保您的权益，请考虑周全后与我们联系。</dd>
					<dd>（2）、请您确保退换货时，商品吊牌及各种包装完整。</dd>
					<dd>（3）、因您个人原因造成的商品损坏（如自行修改尺寸、洗涤、皮具打油、刺绣、长时间穿着等），不予退换。</dd>
					<dd>（4）、退换货发生时，请您选择普通快递将商品寄回给我们。您首次退换货时，寄回商品垫付的运费将由<a href="http://www.mailuke.com/">网上购物麦路客</a>承担（根据运单金额实报，最高报销金额为15元），换货的商品将免费为您配送。报销的运费将存入您个人中心 - 账户管理中，您可以进入“账户余额”进行查询。</dd>
					<dd>（5）、礼包或套装中的商品不可以部分退货，因退货后，原礼包或套装中商品将无法享受购买时优惠。</dd>
					<dd>（6）、特殊商品（如：与肌肤接触的内衣裤祙，我们指定的特殊商品）目前不提供试穿服务，非质量问题不予退换。
					<dd>（7）、如您购买时索要发票，一经退货请将发票随商品一同寄回，如发票丢失将无法办理退货。</dd>
					<dd>（8）、图片及信息仅供参照，因拍摄灯光及不同显示器色差等问题可能造成商品图片与实物有一定色差，一切以实物为准。</dd>
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
