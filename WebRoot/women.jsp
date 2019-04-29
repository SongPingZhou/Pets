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
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
body{color:#000;font-family:microsoft yahei;}

/* content */
div#content{width:700px;margin:40px auto 0 auto;}
div#content ul#itemContainer li{display:inline-block;margin:5px;zoom:1;*display:inline;}
div#content ul#itemContainer ll li img{vertical-align:bottom;width:125px;height:125px;}
.holder{margin:15px 0;text-align:center;}
.holder a{font-size:12px;cursor:pointer;margin:0 5px;color:#000;padding:2px 5px;}
.holder a:hover{background-color:#eee;color:#FF4242;}
.holder a.jp-previous{margin-right:15px;}
.holder a.jp-next{margin-left:15px;}
.holder a.jp-current, a.jp-current:hover{color:#FF4242;font-weight:bold;}
.holder a.jp-disabled, a.jp-disabled:hover{color:#eee;}
.holder a.jp-current, a.jp-current:hover,.holder a.jp-disabled, a.jp-disabled:hover{cursor:default;background:none;}
.holder span{margin:0 5px;}
</style>  
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/category.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.min.js"></script>

<script type="text/javascript" src="<%=path %>/js/fenye/jPages.js"></script>

<script type="text/javascript">
$(function() {
	$("div.holder").jPages({
		containerID: "itemContainer",
		previous: "←左",
		next: "右→",
		perPage: 20
	});
});
</script>

</head>
<body>
<jsp:include page="head.jsp" />

<div class="content container">
	<div class="breadcrumbs"><a href="index.jsp">首页</a><span>></span>喵星人</div><!--breadcrumbs end-->
	<jsp:include page="rightClass.jsp" />
	
	<div class="area_r con_r">
		<div class="f_l sort_brand_l">
	</div>
	
		<div class="filter-last"><div></div></div>
		
		<div class="blank10"></div>
		
		<div class="category">
			<div class="arrangement">
				<h3 class="f_l arrangement_t">排列方式：</h3>
				<ul class="f_l arrangement_m">
					<!-- <li><a href="#" ><span>销量</span></a></li> -->
					
					<c:if test="${index eq 0}">
						<li><a href="MeowStarPeoperServlet?index=${index}&time=1"><span>价格</span></a></li>
					</c:if>
					<c:if test="${index ne 0}">
						<li><a href="MeowStarPeoperServlet?index=${index}&time=3&productcateid=${productcateid}"><span>价格</span></a></li>
					</c:if>
					
					<li><a href="MeowStarPeoperServlet?index=${index}&time=2"><span>满意度</span></a></li>
					
					<c:if test="${index eq 0}">
						<li><a href="MeowStarPeoperServlet?index=0&time=2"><span>最新上架</span></a></li>
					</c:if>
					<c:if test="${index ne 0}">
						<li><a href="MeowStarPeoperServlet?index=${index}&time=1&productcateid=${productcateid}"><span>最新上架</span></a></li>
					</c:if>
				</ul>
				<div class="f_r arrangement_b">
				</div><!--arrangement_b end-->
			</div><!--arrangement end-->
			
			<div class="total">
			<p class="f_r yellow">共<b class="red">${fn:length(selectAllProdct)}</b>个商品</p></div><!--total end-->
			<div class="StyleListProduct defaults"  id="content">
					<ul class="clearfix" id="itemContainer">
						<c:forEach items="${selectAllProdct}" var="cat">
							<li>
								<a class="p_photo" title="${cat.productName}" href="/Pets/ParticularsServlet?id=${cat.id}&position=3"><img alt="${cat.productName}" src="Img/${cat.pro.picUrl}" lazyload="Img/${cat.pro.picUrl}" width="150" height="205" class="load_img pic" /></a>						
								<div class="p_name"><a href="/Pets/ParticularsServlet?id=${cat.id}&position=3">${cat.productName}</a></div>
								<div class="p_price"><del title="市场价">${cat.sellPrice}元</del><strong title="麦路客价">${cat.discountPrice}元</strong></div>
								<div class="preview"><p class="pic">Img/${cat.pro.picUrl}</p></div>
							</li>	
						</c:forEach>
					</ul>
				<div class="holder"></div>
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

<!-- <!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
category
<script type="text/javascript" src="js/category.js"></script>
online
<script type="text/javascript" src="js/online.js"></script> -->
</body>
</html>