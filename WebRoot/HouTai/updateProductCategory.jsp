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

<title>宠物类别修改页面</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>
</head>
<script type="text/javascript">
function addst(id){
		var url="UpdateServlet?method=UpdateProductCategory&id="+id; 
		var data=$("#form2").serialize();
		$.post(url,data,function(res){//回调函数
			if(res.success)//success表示后端对我们的提问是否进行了成功的处理
				alert(res.message);//message表示后端返回给前端的信息
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
					parent.layer.close(index);
					parent.layui.table.reload("testTable",{page:{curr:1}});
			},"json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
}
</script>

<body>
	<center>
		<form class="layui-form" id="form2" name="form2"
			lay-filter="formTestFilter" method="post">
			<br /><br />
			<div class="layui-input-inline">
				宠物类别： <input type="text" id="productCategory" name="productCategory"
					value="${productCategory.productCategoryName}" class="layui-input">
			</div>
			<br /><br />
			<div class="layui-input-inline">
				父类：<br/>
				<select style="display: inline; width:182px; height: 38px;" id="ParentId" name="ParentId">
					<c:forEach items="${selectProductcategory}" var="category">	
						<c:if test="${productCategory.parentId eq 0}">
							<option selected="selected" value="${category.id}">顶层类</option>
						</c:if>
						<c:if test="${category.id eq productCategory.parentId}">
							<option selected="selected" value="${category.id}">${category.productCategoryName}</option>
						</c:if>
						<option value="${category.id}">${category.productCategoryName}</option>
					</c:forEach>
				</select>
			</div>
			<br /><br />
			<br /> <br /> <input type="button" class="layui-btn" value="提交"
				onclick="addst(${productCategory.id})" />
		</form>
	</center>
</body>
</html>
