<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>联系宠物之家</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<link href="../css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/info.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
</head>
<body>

	
<div class="content container">
	<div class="breadcrumbs"><a href="../index.jsp">首页</a><span>></span>联系宠物之家</div><!--breadcrumbs end-->
	<ul class="f_l reference">
		<li><a href="help/about.jsp">关于宠物之家</a></li>
		<li><a class="current" href="help/contact.jsp">联系宠物之家</a></li>
		<li><a href="help/job.jsp">加入宠物之家</a></li>
		<li><a href="sort.jsp">网站地图</a></li>
		<li><a href="help/complainting.jsp">投诉与建议</a></li>
		<li class="last"><a href="help/links.jsp">友情链接</a></li>
	</ul><!--reference end-->
	<div class="f_r reference-con">
		<h2 class="link_tit">联系宠物之家</h2>
		<div class="mar-left">
			<table width="100%" class="link_table">
				<tbody>
				<tr>
					<td>郑州云时代软件有限公司</td>
				</tr>
				<tr>
					<td>地　　址：新乡市红旗区小店镇经三路六号</td>
				</tr>
				<tr>
					<td>邮　　编：453006</td>
				</tr>
				<tr>
					<td>全国客服中心电话：15537889957</td>
				</tr>
				<tr>
					<td>客服邮箱：15537889957@163.com</a></td>
				</tr>
				<tr>
					<td>服务时间：周一至周日8：00至21：30（节假日不休息） </td>
				</tr>
				</tbody>
			</table>
		</div>
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
