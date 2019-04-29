<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.ysd.config.*"%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.request.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>退款查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
	//获得初始化的AlipayClient
	AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
	
	//设置请求参数
	AlipayTradeFastpayRefundQueryRequest alipayRequest = new AlipayTradeFastpayRefundQueryRequest();
	
	//商户订单号，商户网站订单系统中唯一订单号
	String out_trade_no = new String(request.getParameter("WIDRQout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
	//支付宝交易号
	String trade_no = new String(request.getParameter("WIDRQtrade_no").getBytes("ISO-8859-1"),"UTF-8");
	//请二选一设置
	//请求退款接口时，传入的退款请求号，如果在退款请求时未传入，则该值为创建交易时的外部交易号，必填
	String out_request_no = new String(request.getParameter("WIDRQout_request_no").getBytes("ISO-8859-1"),"UTF-8");
	
	alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
			+"\"trade_no\":\""+ trade_no +"\","
			+"\"out_request_no\":\""+ out_request_no +"\"}");
	
	//请求
	String result = alipayClient.execute(alipayRequest).getBody();
	
	//输出
	out.println(result);
%>
  <body>
    This is my JSP page. <br>
  </body>
</html>
