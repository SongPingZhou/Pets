<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>精品推荐</title>
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<link href="css/base.css" rel="stylesheet" type="text/css" />
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
  </head>
  
  <body>
    	<jsp:include page="head.jsp" /><!-- 头部 -->
		<div class="content container">
			<table>
				<tr>
					<td><br/></td>
					<td><br/></td>
				</tr>
				<tr>
					<c:if test="${snews.name eq null}">
						<td style="text-align:left;">亲！没有上一篇了</td>
					</c:if>
					<c:if test="${snews.name ne null}">
						<td style="text-align:left;"> <a href="UserServlet?method=NewsServlet&nid=${snews.nid}">上一篇:${snews.name} </a></td>
					</c:if>
					
					<c:if test="${xnews.name eq null}">
						<td style="text-align:right;">亲！没有下一篇了</td>
					</c:if>
					<c:if test="${xnews.name ne null}">
						<td style="text-align:right;"><a href="UserServlet?method=NewsServlet&nid=${xnews.nid}">下一篇:${xnews.name}</a></td>
					</c:if>
				</tr>
				<tr>
					<td><br/></td>
					<td><br/></td>
				</tr>
				<tr>
					<td>
						<a href="ParticularsServlet?id=${getById.product.id}&position=3">
			    			<img src='Img/${getById.productpic.picUrl}'/>
			    		</a>
		    		</td> 
					<td  align="center">
						<span>${getById.name}</span> 
						<br/><br/><br/> 
			    		<div>${getById.details}</div>
					</td>
				</tr>
				<tr>
					<td><br/></td>
					<td><br/></td>
				</tr>
			</table>
		</div>								
    	<div class="footer container"><!-- 尾部 -->
			<jsp:include page="foot2.jsp" />
			<jsp:include page="foot1.jsp" />
		</div>
  </body>
</html>
