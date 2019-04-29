<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'selectUser.jsp' starting page</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>
</head>
<style>
.layui-input-inline .layui-input {
	width: 100px;
}
</style>
<script type="text/javascript">
function addst(id){
		var url="UpdateServlet?method=UpdateOrdersDetials&id="+id;   
		var data=$("#form2").serialize();
		$.post(url,data,function(res){//回调函数
		if(res.success)//success表示后端对我们的提问是否进行了成功的处理
			alert(res.message);//message表示后端返回给前端的信息
			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
					parent.layer.close(index);
					parent.layui.table.reload("ordersidfilter",{page:{curr:1}});
	},"json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
}
</script>
<body>
	
	<form class="layui-form" id="form2" name="form2"
		lay-filter="formTestFilter" method="post">
		
		<div class="layui-input-inline">
			<label class="layui-form-label"> 颜色：</label> <input type="text"
				id="color" name="color" value="${orders.color}"
				class="layui-input">
		</div>
		
		<div class="layui-input-inline">
			<label class="layui-form-label"> 数量:</label> <input type="text"
				id="Quantity" name="Quantity" class="layui-input"
				value="${orders.quantity}">
		</div>
		
		<div style="display:none;">
		<div class="layui-input-inline" >
			<label class="layui-form-label"> id:</label> <input type="text"
				id="ProductId" name="ProductId" class="layui-input"
				value="${orders.productId}">
		</div>
		</div>
		<br /> <br /><center><input type="button" class="layui-btn" value="提交"
				onclick="addst(${orders.id})" /> <br /> <br />
	</form>
	
</body>
</html>
