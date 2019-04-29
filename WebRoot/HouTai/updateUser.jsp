<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>用户修改页面</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>
</head>

<script type="text/javascript">
function addst(id){
		var url="UpdateServlet?method=UpdateUser&id="+id;  
		var data=$("#form2").serialize();
	$.post(url,data,function(res){//回调函数
		if(res.success)//success表示后端对我们的提问是否进行了成功的处理
			alert(res.message);//message表示后端返回给前端的信息
			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
					parent.layer.close(index);
					parent.layui.table.reload("userfilter",{page:{curr:1}});
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
			<br /> <br />
			<div class="layui-input-inline">
				<label class="layui-form-label"> 用户名：</label> <input type="text"
					id="username" name="username" value="${user.username}"
					class="layui-input">
			</div>
			<div class="layui-input-inline">
				<label class="layui-form-label"> 密码：</label> <input type="text"
					id="userpassword" name="userpassword" value="${user.userpassword}"
					class="layui-input">
			</div>
			<br /> <br />
			<div class="layui-input-inline">
				<label class="layui-form-label">Ext1：</label> <input type="text"
					id="Ext1" name="Ext1" class="layui-input" value="${user.ext1}">
			</div>
			<div class="layui-input-inline">
				<label class="layui-form-label">Ext2：</label> <input type="text"
					id="Ext2" name="Ext2" class="layui-input" value="${user.ext2}">
			</div>
			<br /> <br /> <input type="button" class="layui-btn" value="提交"
				onclick="addst(${user.id})" /> <br /> <br />
		</form>
	</center>
</body>
</html>