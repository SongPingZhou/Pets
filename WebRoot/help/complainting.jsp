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
<title>投诉与建议</title>
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
	<div class="breadcrumbs"><a href="../index.jsp">首页</a><span>></span>投诉与建议</div><!--breadcrumbs end-->
	<ul class="f_l reference">
		<li><a href="help/about.jsp">关于宠物之家</a></li>
		<li><a href="help/contact.jsp">联系宠物之家</a></li>
		<li><a href="help/job.jsp">加入宠物之家</a></li>
		<li><a href="sort.jsp">网站地图</a></li>
		<li><a class="current" href="complainting.jsp">投诉与建议</a></li>
		<li class="last"><a href="links.jsp">友情链接</a></li>
	</ul><!--reference end-->
	<div class="f_r reference-con">
		<h2 class="link_tit">投诉与建议</h2>
		<form id="" action="" method="">
		<table width="100%" class="link_table">
			<tbody>
			<tr>
				<td width="100" align="right" >主 题：</td>
				<td><input  id="subject" name="subject" size="36" /></td>
			</tr>
			<tr>
				<td align="right" >姓 名：</td>
				<td><input  id="uname" name="uname" size="36" />&nbsp;</td>
			</tr>
			<tr>
				<td align="right" >电 话：</td>
				<td><input  id="phone" name="phone" size="36" />&nbsp;(请正确填写，以便我们能第一时间联系到您)</td>
			</tr>
			<tr>
				<td align="right" >E-mail：</td>
				<td><input  id="mail" name="mail" size="36" />&nbsp;(请正确填写，以便我们能第一时间联系到您)</td>
			</tr>
			<tr>
				<td align="right" >订单号：</td>
				<td><input  id="order" name="order" size="36" />&nbsp;(选填)</td>
			</tr>
			<tr>
				<td align="right" >来 自：</td>
				<td><input  id="comf" name="comf" size="36" />&nbsp;(选填，如：中国北京)</td>
			</tr>
			<tr>
				<td align="right"  valign="top" >反馈信息：</td>
				<td><textarea name="content"  style="width:398px; height: 123px"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td >您的意见将直接提交到客服经理的邮箱。</td>
			</tr>
			<tr>
				<td height="45" colspan="2" align="center" valign="middle"><input id="Submit" type="submit" class="link_button" value="提交信息"/></td>
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
