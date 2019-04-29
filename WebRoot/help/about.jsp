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
<title>关于宠物之家</title>
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
	<div class="breadcrumbs"><a href="../index.jsp">首页</a><span>></span>关于宠物之家</div><!--breadcrumbs end-->
	<ul class="f_l reference">
		<li><a class="current" href="about.jsp">个人中心</a></li>
		<li><a href="contact.jsp">联系宠物之家</a></li>
		<li><a href="job.jsp">加入宠物之家</a></li>
		<li><a href="../sort.jsp">网站地图</a></li>
		<li><a href="complainting.jsp">投诉与建议</a></li>
		<li class="last"><a href="links.jsp">友情链接</a></li>
	</ul>
	<div class="f_r reference-con">
		<h2 class="tit">关于宠物之家</h2>
		<p>宠物之家</a>位于中国河南新乡市为了扩展业务，开发研制的电子商务网站。主要经营宠物猫、宠物龟、宠物狗、宠物鼠等。自2009年开始创办至今，我们已经建立起了完善的系统和客户资源，为广大消费者提供优质、安全、稳定、方便和快捷的网上购物方式，使越来越多的网上购物达人找到网上购物的乐趣。</p>
		<h3>锁定目标 勇往直前</h3>
		<p>打造中国互联网电子商务销量和服务第一位为目标，让广大消费者买的安全、放心、轻松、方便并且享受售后保障服务。</p>
		<h3>真心交流 服务大家</h3>
		<p>为了保障消费者的个人权益我们为您提供了多种支付方式和货到付款方式。让您更放心的购买我们的宠物。您有任何建议我们客服为第一时间通知帮您解决问题。</p>
		<h3>用户体验 以人为本</h3>
		<p>宠物之家提供了灵活多样的商品展示空间，消费者查询、购物都将不受时间和地域的限制。依托现在强大的物流配送体系，消费者充分享受了“足不出户，坐享其成”的便捷。</p>
		<p>宠物之家为消费者提供机打发票、售后服务等举措，宠物之家通过不断优化的服务引领网络零售市场，为中国电子商务行业树立了诚信经营的标杆。</p>
	</div>
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
