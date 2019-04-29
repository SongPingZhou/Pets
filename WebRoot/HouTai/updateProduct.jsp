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
var layer, upload,img;
	layui.use('upload', function() {
		var $ = layui.jquery, upload = layui.upload;
		upload.render({
			elem : '#test10',
			url : 'SaveImgServlet?method=doGet',
			done : function(res) {
				console.log(res);
				layer.alert(res.success + res.remark);
				img = res.remark;
			}
		});
	});



function addst(id){
		if(typeof(img)=='undefined'){
			img=$("#immg").val();
		}
		var url="UpdateServlet?method=UpdateProduct&id="+id+"&img="+img;   
		var data=$("#form2").serialize();
	$.post(url,data,function(res){//回调函数
		if(res.success)//success表示后端对我们的提问是否进行了成功的处理
			layui.layer.alert(res.message);//message表示后端返回给前端的信息
			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
					parent.layer.close(index);
					parent.layui.table.reload("productidfilter",{page:{curr:1}});
	},"json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
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
			<input type="hidden" id="immg" value="${product.picUrl}" />
    			<br/>
    			<br/>
	           <div class="layui-input-inline">
		           <div class="layui-form-item">
						<!-- <fieldset class="layui-elem-field layui-field-title"
						style="margin-top: 30px;">
						<legend>替换主图</legend>
					    </fieldset> -->
						<div class="layui-upload-drag" id="test10">
							<i class="layui-icon"></i>
							<p>点击上传，或将文件拖拽到此处</p>
						</div>
					</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">宠物类别</label>
						<div class="layui-input-block">
							<select style="display: inline; height: 38px;" id="CategoryId" name="CategoryId">
								<c:forEach items="${productCategory}" var="productCategory">
									<c:if test="${product.categoryId eq productCategory.id}">
										<option selected="selected" value="${product.categoryId}">${productCategory.productCategoryName}</option>
									</c:if>
									<option value="${productCategory.id}">${productCategory.productCategoryName}</option>
								</c:forEach>
							</select>
						</div>
				</div>
			</div>
          
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">宠物名称: </label> 
					<input type="text" id="productName" name="productName" value="${product.productName}" class="layui-input">
				</div>
			</div>
			<br/>
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">宠物进价: </label> 
					<input type="text" id="UnitPrice" name="UnitPrice" class="layui-input" value="${product.unitPrice}">
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">售价: </label> 
					<input type="text" id="SellPrice" name="SellPrice" class="layui-input" value="${product.sellPrice}">
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">打折价:</label> 
					<input type="text" id="DiscountPrice" name="DiscountPrice" class="layui-input" value="${product.discountPrice}">
				</div>
			</div>
			<br />
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">宠物上下架:</label> 
						<select id="QuantityPerUnit"  name="QuantityPerUnit" style="display: inline; height: 38px;" >
							<c:if test="${product.quantityPerUnit eq 1}">
								<option value="1">上架</option>
								<option value="0">下架</option>
							</c:if>
							<c:if test="${product.quantityPerUnit eq 0}">
								<option value="0">下架</option>
								<option value="1">上架</option>
							</c:if>
						</select>
				</div>
			</div>
			
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label">是否推介: </label> 
					<select id="clicks" name="clicks" style="display: inline; height: 38px;" >
							<c:if test="${product.clicks eq 1}">
								<option value="${product.clicks}">推介到首页</option>
								<option value="0">不推介到首页</option>
							</c:if>
							<c:if test="${product.clicks eq 0}">
								<option value="1">推介到首页</option>
								<option value="${product.clicks}">不推介到首页</option>
							</c:if>
						</select>
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 宠物重量: </label> 
					<input type="text" id="weight" name="weight" class="layui-input" value="${product.weight}">
				</div>
			</div>
			<br/>
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> 宠物身高: </label> 
					<input type="text" id="Size" name="Size" class="layui-input" value="${product.size}">
				</div>
			</div>
			<div class="layui-input-inline">
				<div class="layui-form-item">
					<label class="layui-form-label"> </label> 
					<%-- <input type="text" id="color" name="color" class="layui-input" value="${product.color}"> --%>
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
					<label class="layui-form-label">详细描叙:</label> 
					<textarea id="Description" name="Description" style="width: 700px;height: 70px;" class="layui-input" >${product.description}</textarea>
				</div>
			</div>
			<br/>
			<br /> <input type="button" style="width: 120px;" class="layui-btn" value="提交"
				onclick="addst(${product.id})" /> <br /> <br />
		</form>
	</center>
</body>
</html>
