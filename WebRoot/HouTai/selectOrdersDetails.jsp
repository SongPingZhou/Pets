<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'selectUser.jsp' starting page</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>


</head>
<body>
	<form class="layui-form" id="form2" name="form2"
		lay-filter="formTestFilter" method="post">
		<div class="layui-input-inline">
			所属订单： <input type="text" id="OrderId" name="OrderId"
				value="${ordersDetails.orderId}" class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			对应宠物的id： <input type="text" id="productId" name="productId"
				value="${ordersDetails.productId}" class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			购买价格 <input type="text" id="UnitPrice" name="UnitPrice"
				value="${ordersDetails.unitPrice}" class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			购买数量 <input type="text" id="Quantity" name="Quantity"
				class="layui-input" value="${ordersDetails.quantity}">
		</div>
		<br />
		<div class="layui-input-inline">
			颜色 <input type="text" id="Color" name="Color" class="layui-input"
				value="${ordersDetails.color}">
		</div>
		<br />
		<div class="layui-input-inline">
			留言 <input type="text" id="Remark" name="Remark" class="layui-input"
				value="${ordersDetails.remark}">
		</div>
		<br />
		<div class="layui-input-inline">
			拓展1 <input type="text" id="Ext1" name="Ext1" class="layui-input"
				value="${ordersDetails.ext1}">
		</div>
		<br />
</body>
</html>
