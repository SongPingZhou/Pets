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
<style>
.layui-input-inline .layui-input {
	width: 100px;
}
</style>
<center>
<form class="layui-form" id="form2" name="form2"
	lay-filter="formTestFilter" method="post">
	<br/>
	<div class="layui-input-inline">
		<label class="layui-form-label">商品类型：</label>
		 <input type="text" id="username" name="username"
			value="${selectProductStoreByid.productcategory.productCategoryName}"
			class="layui-input">
	</div>
	<div class="layui-input-inline">
		<label class="layui-form-label">宠物名称：</label>
		 <input type="text" id="username" name="username"
			value="${selectProductStoreByid.product.productName}" class="layui-input">
	</div>
	<br /><br/>
	<div class="layui-input-inline">
		<label class="layui-form-label">宠物身高：</label>
		 <input type="text" id="username" name="username"
			value="${selectProductStoreByid.product.size}" class="layui-input">
	</div>
	<div class="layui-input-inline">
		<label class="layui-form-label"></label>
		<img alt=""  style="width:100px;height: 100px; " src="Img/${selectProductStoreByid.productpic.picUrl}">
	</div>
	<br /><br/>
	<div class="layui-input-inline">
		<label class="layui-form-label">颜色：</label>
		 <input type="text" id="username" name="username"
			value="${selectProductStoreByid.productpic.color}" class="layui-input">
	</div>
	<div class="layui-input-inline">
		<label class="layui-form-label">库存量： </label>
		<input type="text" id="username" name="username"
			value="${selectProductStoreByid.quantityInStock}" class="layui-input">
	</div>
	<br /><br/>
</form>
</center>
</body>
</html>
