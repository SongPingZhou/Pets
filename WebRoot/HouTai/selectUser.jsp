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
<body>
	<form class="layui-form" id="form2" name="form2"
		lay-filter="formTestFilter" method="post">
		<br />
		<div class="layui-input-inline">
			<label class="layui-form-label">用户名：</label> <input type="text"
				id="username" name="username" value="${user.username}"
				class="layui-input">
		</div>
		<br /> <br />
		<div class="layui-input-inline">
			<label class="layui-form-label">密码：</label> <input type="text"
				id="userpassword" name="userpassword" value="${user.userpassword}"
				class="layui-input">
		</div>
		<br />
		<br />
		<div class="layui-input-inline">
			<label class="layui-form-label">Ext1：</label> <input type="text"
				id="Ext1" name="Ext1" class="layui-input" value="${user.ext1}">
		</div>
		<br /> <br />
		<div class="layui-input-inline">
			<label class="layui-form-label">Ext2：</label> <input type="text"
				id="Ext2" name="Ext2" class="layui-input" value="${user.ext2}">
		</div>
		<br /> <br />
	</form>
</body>
</html>
