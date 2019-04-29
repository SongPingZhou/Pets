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

<style>
.layui-input-inline .layui-input {
	width: 100px;
}
</style>
</head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectAddress.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form class="layui-form" id="form2" name="form2"
		lay-filter="formTestFilter" method="post">
		<br />
		<div class="layui-input-inline">
				<label class="layui-form-label">名&nbsp;&nbsp; &nbsp;称：</label> 
				<input type="text" id="OrderDate" name="OrderDate" value="${selectAddressByid.user.username}" class="layui-input">
		</div>
		<div class="layui-input-inline">
				<label class="layui-form-label"> 收货人：</label>
				<input type="text" id="username" name="username" value="${selectAddressByid.name}"class="layui-input">
		</div>
		<br /><br />
		<div class="layui-input-inline">
				<label class="layui-form-label"> 收货电话：</label> 
				<input type="text" id="tel" name="tel" value="${selectAddressByid.tel}" class="layui-input">
		</div>
		<div class="layui-input-inline">
				<label class="layui-form-label"> 所在城市：</label> 
				<input type="text" id="productName" name="productName" value="${selectAddressByid.province}" class="layui-input">
		</div>
		<br /><br />
		
		<div class="layui-input-inline">
				<label class="layui-form-label"> 邮编号码：</label> 
				<input type="text" id="productName" name="productName" value="${selectAddressByid.postcode}" class="layui-input">
		</div>
		<br /><br />
		<div class="layui-input-inline">
				<label class="layui-form-label"> 详细地址：</label> 
				<input type="text" id="productName" name="productName" style="width: 300px;height: 70px;" value="${selectAddressByid.address}" class="layui-input">
		</div>
		<br /> <br />
	</form>
  </body>
</html>
