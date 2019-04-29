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
<title>登陆页面</title>
</head>
<style>
#imga {
	background-image: url(../HouTai/Login/72.jpg);
	background-repeat: no-repeat;
	width: 1300px;
	padding-top: 100px;
	padding-left: 350px;
	font-size: 50px;
	color: yellowgreen;
}
</style>
<body>
	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		<div id="imga">欢迎来到后台管理</div>
	</div>
</body>
</html>
