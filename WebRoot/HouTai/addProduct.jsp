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

<title>宠物增加页面</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>
<script type="text/javascript">
var layer, upload,img;
	layui.use('upload', function() {
		var $ = layui.jquery, upload = layui.upload;
		upload.render({
			elem : '#test10',
			url : '../SaveImgServlet?method=doGet',
			done : function(res) {
				console.log(res);
				layer.alert(res.success +"-"+res.message+":"+ res.remark);
				img = res.remark;
			}
		});
	});
	function checkForm() {
		var CategoryId = document.getElementById("CategoryId").value;
		var productName = document.getElementById("productName").value;
		var UnitPrice = document.getElementById("UnitPrice").value;
		var QuantityPerUnit = document.getElementById("QuantityPerUnit").value;
		var clicks = document.getElementById("clicks").value;
		if (CategoryId == "" || productName == "" || UnitPrice == ""
				|| QuantityPerUnit == "" || clicks == "") {
			layui.layer.alert("请确保所有内容已经填完整了！");
			return false;
		} else {
			return true;
		}
	}
	function addst() {
		if (checkForm()) {
			var url = "../AddServlet?method=AddProduct&img="+img;
			var data = $("#form2").serialize();
			$.post(url, data, function(res) {//回调函数
				if (res.success)//success表示后端对我们的提问是否进行了成功的处理
					layui.layer.alert(res.remark);//message表示后端返回给前端的信息
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index);
				parent.layui.table.reload("productidfilter", {
					page : {
						curr : 1
					}
				});
			}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
		}
	}
</script>
<style>
.layui-input-inline .layui-input {
	width: 100px;
}
</style>
<body>
	<center>
		<form class="layui-form" id="form2" name="form2"
			lay-filter="formTestFilter" method="post">
			<br /> <br />
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">宠物类别:</label>
					<div class="layui-input-block">
						<select style="display: inline; height: 38px; " id="CategoryId" name="CategoryId">
							<c:forEach items="${productCategory}" var="productCategory">
								<option id="CategoryId" value="${productCategory.id}">${productCategory.productCategoryName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">名称:</label> 
					<input type="text" id="productName" name="productName" class="layui-input">
				</div>
			</div>
			
            <div class="layui-input-inline">
	            <div class="layui-form-item">
	            <label class="layui-form-label"></label> 
					<div class="layui-upload-drag" id="test10"  >
						<i class="layui-icon"></i>
						<p>点击上传图片，或将图片拖拽到此处</p>
					</div>
				</div>
			</div>
			<br />
			
			<div class="layui-input-inline">
				<div class="layui-form-item">
					 <label class="layui-form-label">进价:</label>
					 <input type="text" id="UnitPrice" name="UnitPrice" class="layui-input">
				</div>
			</div>
			
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">售价:</label> 
					<input type="text"id="SellPrice" name="SellPrice" class="layui-input">
				</div>
			</div>
			<div class="layui-input-inline">
				 <div class="layui-form-item">
				 	<label class="layui-form-label"> 折后价: </label>
				 	<input type="text" id="DiscountPrice" name="DiscountPrice" class="layui-input">
				 </div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">上下架:</label> 
						<select id="QuantityPerUnit" name="QuantityPerUnit" style="display: inline; height: 38px; ">
							<option value="1">上架</option>
							<option value="0">不上架</option>
						</select>
					<!-- <input type="text" id="QuantityPerUnit" name="QuantityPerUnit" class="layui-input"> -->
				</div>
			</div><br /><br />
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">是否推介:</label> 
					<select id="clicks" name="clicks" style="display: inline; height: 38px; ">
						<option value="1">推介首页</option>
						<option value="0">不推介首页</option>
					</select>
					<!-- <input type="text" id="clicks" name="clicks" class="layui-input"> -->
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					 <label class="layui-form-label">重量:</label>
					 <input type="text" id="weight" name="weight" class="layui-input">
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 身高: </label> 
					<input type="text"id="Size" name="Size" class="layui-input">
				</div>
			</div>
			  <div class="layui-input-inline">
				<div class="layui-form-item">
					 <label class="layui-form-label"> </label> 
					<!--<input type="text" id="color" name="color" value="NULL" class="layui-input"> -->
				</div>
			</div> - 
			<br/><br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 详细描叙:</label> 
					<textarea  id="Description" name="Description" style="width: 700px;height: 70px;" class="layui-input" ></textarea>
				</div>
			</div>
			<br />  
			<br /> <br /> <input type="button" style="width: 120px;" class="layui-btn" value="提交"
				onclick="addst()" /> 
		</form>
	</center>
</body>
</html>
