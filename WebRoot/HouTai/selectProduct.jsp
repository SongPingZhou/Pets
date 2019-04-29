<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<style>
.layui-input-inline .layui-input {
	width: 100px;
}
</style>
<body>
	<center>
		<form class="layui-form" id="form2" name="form2"
			lay-filter="formTestFilter" method="post">
			<br />
			<br/>
			<br/>
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 宠物类别: </label> 
					<input type="text" id="CategoryId" name="CategoryId" value="${product.categoryId}" class="layui-input" readonly>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 名称: </label> 
					<input type="text" id="productName" name="productName" value="${product.productName}" class="layui-input" readonly>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 图片: </label> 
					<img style="width:100px;height:100px" id="picUrl" name="picUrl" src="Img/${product.picUrl}" >
				</div>
			</div>
			<br/>
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">进价: </label> 
					<input type="text" id="UnitPrice" name="UnitPrice" class="layui-input" value="${product.unitPrice}" readonly>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">销售价格: </label> 
					<input type="text" id="SellPrice" name="SellPrice" class="layui-input" value="${product.sellPrice}" readonly>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 打折后价格:</label> 
					<input type="text" 	id="DiscountPrice" name="DiscountPrice" class="layui-input" value="${product.discountPrice}" readonly>
				</div>
			</div>
			<br />
			<br />
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 上下架:</label>
					<c:if test="${product.quantityPerUnit eq 1}">
						<input type="text" id="QuantityPerUnit" name="QuantityPerUnit" class="layui-input" value="上架" readonly>
					</c:if>
					<c:if test="${product.quantityPerUnit ne 1}">
						<input type="text" id="QuantityPerUnit" name="QuantityPerUnit" class="layui-input" value="下架" readonly>
					</c:if>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">是否推介: </label> 
					<c:if test="${product.clicks eq 1}">
						<input type="text" id="clicks" name="clicks" class="layui-input" value="推介" readonly>
					</c:if>
					<c:if test="${product.clicks ne 1}">
						<input type="text" id="clicks" name="clicks" class="layui-input" value="不推介" readonly>
					</c:if>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">重量: </label> 
					<input type="text" id="weight" name="weight" class="layui-input" value="${product.weight}" readonly>
				</div>
			</div>
			<br/>
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 身高: </label> 
					<input type="text" id="Size" name="Size" class="layui-input" value="${product.size}" readonly>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> </label> 
					<label class="layui-form-label"> </label> 
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> </label> 
					<label class="layui-form-label"> </label> 
				</div>
			</div>
			<br/>
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 详细描叙:</label> 
					<textarea  id="Description" name="Description" style="width: 700px;height: 70px;" class="layui-input" readonly >${product.description}</textarea>
				</div>
			</div>
			<br />
		</form>
	</center>
</body>
</html>
