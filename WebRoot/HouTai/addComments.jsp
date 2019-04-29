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

<title>用户增加页面</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>

<script type="text/javascript">
	function checkForm() {
		var ProductId = document.getElementById("ProductId").value;
		var CommentContent = document.getElementById("CommentContent").value;
		var CommenTime = document.getElementById("CommenTime").value;
		var Status = document.getElementById("Status").value;
		var Reply = document.getElementById("Reply").value;
		if (ProductId == "" || CommentContent == "" || CommenTime == ""
				|| Status == "" || Reply == "") {
			alert("不能为空");
			return false;
		} else {
			return true;
		}
	}
	function addst() {
		if (checkForm()) {
			var url = "../AddServlet?method=AddComments"
			var data = $("#form2").serialize();
			$.post(url, data, function(res) {//回调函数
				if (res.success)//success表示后端对我们的提问是否进行了成功的处理
					alert(res.message);//message表示后端返回给前端的信息
			}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
		} else {
			alert("请填写完整");
		}

	}
</script>
<body>
	<form class="layui-form" id="form2" name="form2"
		lay-filter="formTestFilter" method="post">
		<div class="layui-input-inline">
			宠物编号： <input type="text" id="ProductId" name="ProductId"
				class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			评论内容： <input type="text" id="CommentContent" name="CommentContent"
				class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			评论时间 <input type="text" id="CommenTime" name="CommenTime"
				class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			评论图片 <input type="text" id="bodyPrc" name="bodyPrc"
				class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			宠物打分 <input type="text" id="ProductMarks" name="ProductMarks"
				class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			服务打分 <input type="text" id="ServiceMarks" name="ServiceMarks"
				class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			是否公开评论 <input type="text" id="Status" name="Status"
				class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			是否恢复 <input type="text" id="Reply" name="Reply" class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			Ext1 <input type="text" id="Ext1" name="Ext1" class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline">
			Ext2 <input type="text" id="Ext2" name="Ext2" class="layui-input">
		</div>
		<br />
		<div class="layui-input-inline  layui-form-label">
			<input type="button" class="layui-btn" value="提交" onclick="addst()" />
		</div>
	</form>
</body>
</html>
