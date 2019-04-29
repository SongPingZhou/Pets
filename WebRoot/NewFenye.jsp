<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宠物旗舰店</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/category.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
<body>
<jsp:include page="head.jsp" />

<div class="content container">
	<div class="breadcrumbs"><a href="IndexServlet">首页</a><span>></span>导购新闻</div><!--breadcrumbs end-->
	<jsp:include page="rightClass.jsp" />
	
	<div class="area_r con_r">
		<div class="f_l sort_brand_l">
	</div>
	
		<div class="filter-last"><div></div></div>
		
		<div class="blank10"></div>
		
		<div class="category">
			<div class="arrangement">
				<h1 class="f_l arrangement_m">所有推荐：</h1>
				
				<div class="f_r arrangement_b">
				</div><!--arrangement_b end-->
			</div><!--arrangement end-->
			<div class="StyleListProduct">
				<ul class="clearfix">
				<c:forEach items="${selectNews}" var="n">
					<li>
						<a class="p_photo" href="UserServlet?method=NewsServlet&nid=${n.nid}" title="${n.name}"><img alt="${n.product.productName}" src="Img/${n.productpic.picUrl}" lazyload="Img/${n.productpic.picUrl}" width="150" height="205" class="load_img pic" /> </a>						
						<br />
						<div class="p_name"><a href="UserServlet?method=NewsServlet&nid=${n.nid}">${n.name}</span></div>
						<div class="preview"><p class="pic">Img/${n.productpic.picUrl}</p></div>
					</li>
				</c:forEach>
				</ul>
			</div><!--StyleListProduct end-->
			
			<div class="pop_arrow" id="pop_ico" style="display:none"></div>
			<div id="pop_detail" style="position:absolute"></div>
				
			<div class="bottom_page">		
			</div><!--bottom_page end-->	
		</div><!--category end-->
	</div><!--right end-->
	
	<div class="clear mb-10"></div>
	
</div><!--content end-->
	
<div class="footer container">

	<jsp:include page="foot1.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
<!-- category -->
<script type="text/javascript" src="js/category.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script>
</body>
</html>