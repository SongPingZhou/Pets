<%@page import="com.ysd.mapper.OrdersDetailsMapper"%>
<%@page import="com.ysd.mapper.OrdersMapper"%>
<%@page import="com.ysd.util.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="com.ysd.config.*"%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.internal.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>电脑网站支付return_url</title>
    
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
/* *
 * 功能：支付宝服务器同步通知页面
 * 日期：2017-03-30
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。


 *************************页面功能说明*************************
 * 该页面仅做页面展示，业务逻辑处理请勿在该页面执行
 */
 
	//获取支付宝GET过来反馈信息
	Map<String,String> params = new HashMap<String,String>();
	Map<String,String[]> requestParams = request.getParameterMap();
	for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
		String name = (String) iter.next();
		String[] values = (String[]) requestParams.get(name);
		String valueStr = "";
		for (int i = 0; i < values.length; i++) {
			valueStr = (i == values.length - 1) ? valueStr + values[i]
					: valueStr + values[i] + ",";
		}
		//乱码解决，这段代码在出现乱码时使用
		valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
		params.put(name, valueStr);
	}
	
	boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

	//——请在这里编写您的程序（以下代码仅作参考）——
	if(signVerified == false) {
		SqlSession session2=MybatisUtil.getSession(true);
		OrdersMapper mapper= session2.getMapper(OrdersMapper.class);
		OrdersDetailsMapper mapperDetail = session2.getMapper(OrdersDetailsMapper.class);
		//改以快递单号
		String string=(String)request.getSession().getAttribute("dh");
		int i = mapperDetail.updateOrdersDetai("0",string);//修改订单的状态
		int orderid= mapperDetail.selectOrderByShipNum(string);
		int updateOrderByStuatus = mapper.updateOrderByStuatus(0, orderid);
		request.setAttribute("zhifu", 1);
		request.getRequestDispatcher("../core/cart.jsp").forward(request, response);
	}
	//——请在这里编写您的程序（以上代码仅作参考）——
%>
  <body>
  </body>
</html>
