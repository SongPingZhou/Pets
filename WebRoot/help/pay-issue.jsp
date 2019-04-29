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
<title>支付问题_如何付款/退款</title>
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
		<a href="../index.jsp">首页</a><span>></span><a href="index.jsp">帮助中心</a><span>></span>支付问题
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
				<dd><a class="current" href="help/pay-issue.jsp"><span>支付问题</span></a></dd>
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
			<div class="help_r">
				<div class="help_r_t">
					<dl class="clearfix">
						<dt>支付问题</dt>
					</dl>
				</div>
				<div class="help_r_t_m">
					<dl>					
						<dt>1、网上支付的常见问题？</dt>
						<dd>（2）、银行卡的开通手续因各地银行政策不同，建议您在网上支付前拨打所在地银行电话，咨询该行可供网上支付的银行卡种类及开通手续。</dd>
						<dd>
						<table width="100%" class="list-table">
							<tbody>
								<tr bgcolor="#cdced3">
									<td width="97">
										<strong>银行名称</strong>
									</td>
									<td width="60">
										<strong>服务热线</strong>
									</td>
									<td width="82">
										<strong>银行名称</strong>
									</td>
									<td width="66">
										<strong>服务热线</strong>
									</td>
									<td width="77">
										<strong>银行名称</strong>
									</td>
									<td width="72">
										<strong>服务热线</strong>
									</td>
								</tr>
								<tr>
									<td>招商银行 </td>
									<td>95555</td>
									<td>中国银行</td>
									<td>95566</td>
									<td>交通银行</td>
									<td>95559</td>
								</tr>
								<tr bgcolor="#ffffcc">
									<td>中国工商银行 </td>
									<td>95588</td>
									<td>北京银行 </td>
									<td>010-96169</td>
									<td>光大银行</td>
									<td>95595</td>
								</tr>
								<tr>
									<td>中国建设银行</td>
									<td>95533</td>
									<td>中国农业银行</td>
									<td>95599</td>
									<td>深圳发展银行</td>
									<td>95501</td>
								</tr>
								<tr bgcolor="#ffffcc">
									<td>上海浦东发展银行</td>
									<td>95528</td>
									<td>广东发展银行</td>
									<td>95508</td>
									<td>中国邮政 </td>
									<td>11185</td>
								</tr>
								<tr>
									<td>民生银行 </td>
									<td>95568 </td>
									<td>华夏银行 </td>
									<td>95577</td>
									<td>中信银行 </td>
									<td>86668888</td>
								</tr>
							</tbody>
						</table>
						</dd>
						<dd>（3）、支付金额上限目前各银行对于网上支付均有一定金额的限制，由于各银行政策不同，建议您在申请网上支付功能时向银行咨询相关事宜。
						</dd>
						<dd>（4）、确认网上支付成功如果系统没有提示支付失败或成功，您可通过电话、ATM 、柜台或登录网上银行等各种方式查询银行卡余额，如果款项已被扣除，网上支付交易应该是成功的。如果出现信用卡超额透支、存折余额不足、意外断线等导致支付不成功，请您登录<a title="网上购物麦路客" href="http://www.mailuke.com/">http://www.mailuke.com/</a>“我的帐户”找到该订单，重新完成支付。订单生成后，您可以在24小时内完成支付。</dd>
						<dt>2.订单生成后我需要在多长时间内支付？</dt>
						<dd>网上支付： 支付方式为网上支付的订单我们会为您保留24小时，为确保订单的有效性，需要您在24小时内完成支付。</dd>
						<dt>3.无法正常进行网上银行支付？</dt>
						<dd>您在购物时无法正常进行网上银行支付，您可以按F5键刷新；如果仍然无法改善，建议您按以下步骤操作后重新下订单支付：点击IE菜单条中“工具”-- “Internet选项”-- 在常规中点击“删除cookies”和“删除文件”？点击“设置”--单选“每次访问此页时检查”—点击“确定”。</dd>
					</dl>						
				</div>
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