<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>宠物类别增加页面</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>
<script type="text/javascript">
	function checkForm() {
		var productCategory = $("#productCategory").val();
		if (productCategory == "") {
			alert("宠物类名不能为空");
			return false;
		} else {
			return true;
		}
	}
	function addst() {
		if (checkForm()) {
			var url = "../AddServlet?method=AddProductCategory";
			var data = $("#form2").serialize();
			$.post(url, data, function(res) {//回调函数
				if (res.success)//success表示后端对我们的提问是否进行了成功的处理
					alert(res.message);//message表示后端返回给前端的信息
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index);
				parent.layui.table.reload("testTable", {
					page : {
						curr : 1
					}
				});
			}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
		} else {
			alert("请吧数据填写完整！");
		}

	}
</script>
<style type="text/css">
input {
	width: 80px;
}
</style>
<body>
	<center>
		<form class="layui-form" id="form2" name="form2" align="center"
			lay-filter="formTestFilter" method="post">
			<br/>
			<br/>
			<div class="layui-input-inline">
				宠物类名： <input type="text" id="productCategory" name="productCategory"
					class="layui-input">
			</div>
			<br /><br/>
					
			<div class="layui-input-inline">
				所属类：  <br/><select style="display: inline; height: 38px; width: 182px;" id="ParentId" name="ParentId">
							<option id="positiid" value="0">顶层类</option>
							<c:forEach items="${selectProductcategory}" var="p">
								<option id="positiid" value="${p.id}">${p.productCategoryName}</option>
							</c:forEach>
					</select>
			</div>
			<br />
			<br /> <br> <input type="button" class="layui-btn" value="提交"
				onclick="addst()" />
		</form>
	</center>
</body>
</html>
