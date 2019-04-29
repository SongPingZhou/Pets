<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>My JSP 'selectProductCategory.jsp' starting page</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>

</head>

<body>
	<center>
		<form class="layui-form" id="form2" name="form2"
			  method="post">
			<br />
			<br />
			<div class="layui-input-inline">
				宠物类别： <input type="text" id="productCategory" name="productCategory"
					value="${productCategory.productCategoryName}" class="layui-input" readonly>
			</div>
			<br /><br />
			<div class="layui-input-inline">
				父编号： 
				<c:if test="${productCategory.parentId eq 0}">
					<input type="text" id="ParentId" name="ParentId"
							value="顶层类" class="layui-input" readonly>
				</c:if>
				<c:if test="${productCategory.parentId ne 0}">
					<c:forEach items="${selectProductcategory}" var="category">
					<c:if test="${category.id eq productCategory.parentId}">
						<input type="text" id="ParentId" name="ParentId"
							value="${category.productCategoryName}" class="layui-input" readonly>
					</c:if>
				</c:forEach>
				</c:if>
			</div>
			<br />
		</form>
	</center>
</body>
</html>
