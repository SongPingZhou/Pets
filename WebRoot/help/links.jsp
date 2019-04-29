<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>友情链接</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<link href="../css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/info.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
</head>
<body>
<jsp:include page="../head.jsp" />
	
<div class="content container">
	<div class="breadcrumbs"><a href="../index.jsp">首页</a><span>></span>友情链接</div><!--breadcrumbs end-->
	<ul class="f_l reference">
		<li><a href="help/about.jsp">关于宠物之家</a></li>
		<li><a href="help/contact.jsp">联系宠物之家</a></li>
		<li><a href="help/job.jsp">加入宠物之家</a></li>
		<li><a href="sort.jsp">网站地图</a></li>
		<li><a href="help/complainting.jsp">投诉与建议</a></li>
		<li class="last"><a class="current" href="help/links.jsp">友情链接</a></li>
	</ul><!--reference end-->
	<div class="f_r reference-con">
		<h2 class="link_tit">友情链接</h2>
		<ul class="link_list clearfix">
			<li><a href="http://www.mailuke.com/" target="_blank">宠物之家</a></li>
		</ul>
		<h2 class="link_tit">申请友情链接</h2>
		<ul class="link_step">
			<li><strong>申请步骤：</strong></li>
			<li>
				<div class="f_l">1.</div>
				<div class="margin_l_12">请先在贵网站做好宠物之家的文字友情链接：<br />链接文字：宠物之家<br />链接地址：<a class="red" href="http://www.mailuke.com" target="_blank">http://www.mailuke.com</a></div>
			</li>
			<li>
				<div class="f_l">2.</div>
				<div class="margin_l_12">做好链接后，请在右侧填写申请信息。我们只接受申请文字友情链接。</div>
			</li>
			<li>
				<div class="f_l">3.</div>
				<div class="margin_l_12">已经开通我站友情链接且内容健康，符合本站友情链接要求的网站，经管理员审核后，可以显示在此友情链接页面。</div>
			</li>
		</ul>
		<form name="form1" method="post" action="" id="form1">
		<table class="link_table">
			<tbody>
			<tr>
				<td colspan="2"><strong>申请信息</strong></td>
			</tr>
			<tr>
				<td width="61">网站名称：</td>
				<td><input id="name" name="name" type="text" class="w247" /></td>
			</tr>
			<tr>
				<td>网&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
				<td><input id="url" name="url" type="text" class="w247" value="http://" /></td>
			</tr>
			<tr>
				<td>电子邮箱：</td>
				<td><input id="email" name="email" type="text" class="w247" /></td>
			</tr>
			<tr>
				<td valign="top">网站介绍：</td>
				<td><textarea id="intro" name="intro" cols="" rows="" class="w247h60"></textarea></td>
			</tr>
			<tr>
				<td height="45" colspan="2" align="center" valign="middle"><input type="submit" name="bttSubmit" value="提交申请" onclick="" id="bttSubmit" class="link_button" />
				</td>
			</tr>
			</tbody>
		</table>
		</form>
	</div><!--reference-con end-->
	<div class="clear mb-10"></div>
</div><!--content end-->
<div class="footer container">
	<jsp:include page="../foot2.jsp" />
	<jsp:include page="../foot1.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
<!-- index -->
<script type="text/javascript" src="js/index.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script> 		


</body>
</html>
