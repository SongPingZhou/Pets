<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rightClass.jsp' starting page</title>
    
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
     <div class="area_l con_l">
		<div class="product-sort">
			<h2>商品分类</h2>
			<div class="sort-con">
				<div class="sort-list">
					<!-- <h3><span class="f_l icon01"></span><a href="women.jsp" class="f_l">女装</a></h3> -->
						 <c:forEach items="${list}" var="li" >
							<dl>
								<dt class="current"><span class="f_l arrow"></span><a href="MeowStarPeoperServlet?index=${li.id}" class="f_l">${li.productCategoryName}</a></dt>
								<dd>
									   <c:forEach items="${list}" var="pro">
										<c:if test="${li.id == pro.parentId}">
										<a href="MeowStarPeoperServlet?index=${pro.parentId}&productcateid=${pro.id}"><span>·</span>${pro.productCategoryName}</a>
										</c:if>
									</c:forEach>
								</dd> 
							</dl>
						</c:forEach>  
				</div>
			</div><!--sort-con end-->
			<div class="sort-btn"></div>
		</div><!--product-sort end-->
		
		<div class="blank10"></div>
		
		<c:if test="${userid ne null}">
				<div class="liulan">
					<div class="liulan_t"><h3 class="f_l">你最近浏览的商品</h3><a class="f_r clearRec" href="javascript:void(0)">清空</a></div>
					<div class="liulan_product">
						<ul>
						 <c:forEach items="${selectLately}" var="selectLately">
							<li class="clearfix">
								<a href="/Pets/ParticularsServlet?id=${selectLately.productid}&position=3"><img src="Img/${selectLately.productpic.picUrl}" class="p_img" alt="${selectLately.product.productName}" width="68" height="68" /></a>
								<span><a href="/Pets/ParticularsServlet?id=${selectLately.productid}&position=3" class="red">${selectLately.product.productName}</a></span><span class="yellow">${selectLately.product.sellPrice}</span><span></span>
							</li>
				     	</c:forEach> 
						</ul>	
					</div>
				</div><!--liulan end-->
			</c:if>
	</div><!--left end-->
  </body>
</html>
