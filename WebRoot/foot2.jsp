<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    

  </head>
  
  <body>
    <div class="service">
		<div class="cat_bg"></div>
		<div class="help_list clearfix">
			<dl>
				<dt>新手指南</dt>
				<dd><a href="help/index.jsp" target="_blank"><span>购物流程</span></a></dd>
				<dd><a href="help/account.jsp" target="_blank"><span>我的商城</span></a></dd>
				<dd><a href="help/common.jsp" target="_blank"><span>常见问题</span></a></dd>
				<dd><a href="register.jsp" target="_blank"><span>注册用户</span></a></dd>
				<dd><a href="forgot-password.jsp" target="_blank"><span>找回密码</span></a></dd>
			</dl>
			<dl>
				<dt>订单问题</dt>
				<dd><a href="help/order-status.jsp" target="_blank">订单状态</a></dd>
				<dd><a href="help/cancel-order.jsp" target="_blank">取消订单</a></dd>   
				<dd><a href="help/not-order.jsp" target="_blank">未达订单</a></dd> 
			</dl>
			<dl>
				<dt>会员积分</dt>
				<dd><a href="help/integral-rules.jsp" target="_blank">积分规则</a></dd>
				<dd><a href="help/integral.jsp" target="_blank">积分问题</a></dd> 
				<dd><a href="help/exchange-integral.jsp" target="_blank">积分兑换</a></dd>   
			</dl>
			<dl>
				<dt>如何付款/退款</dt>
				<dd><a href="help/payment.jsp" target="_blank">支付方式</a></dd>
				<dd><a href="help/wait-pay.jsp" target="_blank">支付等待</a></dd>
				<dd><a href="help/pay-issue.jsp" target="_blank">支付问题</a></dd>
				<dd><a href="help/refund.jsp" target="_blank">办理退款</a></dd>
				<dd><a href="help/invoice-system.jsp" target="_blank">发票制度</a></dd>        
			</dl>
			<dl>
				<dt>配送和收费</dt>
				<dd><a href="help/time-range.jsp" target="_blank">配送时间</a></dd> 
				<dd><a href="help/delivery-time.jsp" target="_blank">送达时间</a></dd> 
				<dd><a href="help/inspection-sign.jsp" target="_blank">验货与签收</a></dd> 
				<dd><a href="help/express.jsp" target="_blank">快递配送和收费</a></dd> 
				<dd><a href="help/ems.jsp" target="_blank">EMS配送和收费</a></dd>      
			</dl>
			<dl>
				<dt>售后服务</dt>
				<dd><a href="help/policy.jsp" target="_blank">退换货政策</a></dd>
				<dd><a href="help/apply-goods.jsp" target="_blank">如何办理退换货</a></dd>     
			</dl>
		</div>
	</div><!--service end-->
  </body>
</html>
