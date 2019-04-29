<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/personal.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>

<script type="text/javascript" src="<%=path %>/js/user.js"></script>
</head>
<body>

<jsp:include page="../head.jsp" />
<div class="content container">
	<div class="breadcrumbs">
		<a href="index.jsp">首页</a><span>></span><a href="#">我的麦路客</a><span>></span>账户余额
	</div><!--breadcrumbs end-->
<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t coll_t">
				<h2>账户余额</h2>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m ">
				<div class="blank10"></div>
				<div class="coll yellow">您的账户余额： <strong class="red">0.00</strong> 元</div>
				<div class="blank20"></div>
				<div class="coll_m">
					<div class="coll_m_t"><h3>交易记录</h3></div>
					<table width="100%">
						<thead>
							<tr>
								<th>订单编号</th><th>收入 / 支出</th><th>付款方式</th><th>金额</th><th>说明</th><th>时间</th>
							</tr>
						</thead>
						<tbody>	
							<tr>
								<td colspan="6">暂时没有交易记录</td>
							</tr>
							<tr>
								<td><a href="#" class="blue">2010091947156</a></td>
								<td>收入</td>
								<td>支付宝</td>
								<td><span class="red">￥25.25元</span></td>
								<td>订单失败，退款</td>
								<td><span>2010-09-19 13:43:26</span></td>
							</tr>
							<tr bgcolor="#f7f7f7">
								<td><a href="#" class="blue">2010091947156</a></td>
								<td>支出</td>
								<td>货到付款</td>
								<td><span class="red">￥25.25元</span></td>
								<td>订单成功，付款</td>
								<td><span>2010-09-19 13:43:26</span></td>
							</tr>
						</tbody>
					</table>
				</div><!--coll_m end-->
			</div><!--comment end-->
		</div><!--personal_r_m end-->
		<div class="personal_r_b"></div>
	</div><!--personal_r end-->
	
	<div class="clear mb-10"></div>
	
</div><!--content end-->
	
<div class="footer container">
	<jsp:include page="../foot2.jsp" />
	<jsp:include page="../foot1.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="<%=path %>/js/lib.js"></script>
<!-- online -->
<script type="text/javascript" src="<%=path %>/js/online.js"></script>
</body>
</html>