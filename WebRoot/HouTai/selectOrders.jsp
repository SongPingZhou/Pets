<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<style>
.layui-input-inline .layui-input {
	width: 100px;
}
</style>

<body>
	<form class="layui-form" id="form2" name="form2"
		lay-filter="formTestFilter" method="post">
		<br />
		<div class="layui-input-inline">
			<label class="layui-form-label">下单时间：</label> <input type="text"
				id="OrderDate" name="OrderDate" value="${orders.orderDate}"
				class="layui-input">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label"> 客户名称：</label> <input type="text"
				id="username" name="username" value="${orders.user.username}"
				class="layui-input">
		</div>
		<br /><br />
		<div class="layui-input-inline">
			<label class="layui-form-label"> 客户电话：</label> <input type="text"
				id="tel" name="tel" value="${orders.address.tel}"
				class="layui-input">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label"> 商品名称：</label> <input type="text"
				id="productName" name="productName" value="${orders.product.productName}"
				class="layui-input">
		</div>
		<br /><br />
		<div class="layui-input-inline">
			<label class="layui-form-label">总金额:</label> <input type="text"
				id="TotalMoney" name="TotalMoney" class="layui-input"
				value="${orders.totalMoney}">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">订单状态:</label> <input type="text"
				id="Status" name="Status" class="layui-input"
				value="${orders.status}">
		</div>
		<br />
		<br />
		<div class="layui-input-inline">
			<label class="layui-form-label"> 快递公司名:</label> <input type="text"
				id="ShipName" name="ShipName" class="layui-input"
				value="${orders.shipName}">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">快递单号:</label> <input type="text"
				id="ShipNum" name="ShipNum" class="layui-input"
				value="${orders.shipNum}">
		</div>
		<br /> <br />
		<div class="layui-input-inline">
			<label class="layui-form-label">快递时间:</label> <input type="text"
				id="ShipDate" name="ShipDate" class="layui-input"
				value="${orders.shipDate}">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">国家:</label> <input type="text"
				id="ShipCountry" name="ShipCountry" class="layui-input"
				value="${orders.shipCountry}">
		</div>
		<br /> <br />
		<div class="layui-input-inline">
			<label class="layui-form-label">省份:</label> <input type="text"
				id="ShipProvince" name="ShipProvince" class="layui-input"
				value="${orders.shipProvince}">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">城市:</label> <input type="text"
				id="ShipCity" name="ShipCity" class="layui-input"
				value="${orders.shipCity}">
		</div>
		<br /> <br />
		<div class="layui-input-inline">
			<label class="layui-form-label"> 县区:</label> <input type="text"
				id="ShipTown" name="ShipTown" class="layui-input"
				value="${orders.shipTown}">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">详细地址</label> <input type="text"
				id="ShipAddress" name="ShipAddress" class="layui-input"
				value="${orders.shipAddress}">
		</div>
		<br />
		<br />
		<div class="layui-input-inline">
			<label class="layui-form-label"> 邮编:</label> <input type="text"
				id="ShipPostCode" name="ShipPostCode" class="layui-input"
				value="${orders.shipPostCode}">
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">拓展:</label> <input type="text"
				id="Ext2" name="Ext2" class="layui-input" value="${orders.ext2}">
		</div>
		<br /> <br />
	</form>
</body>
</html>
