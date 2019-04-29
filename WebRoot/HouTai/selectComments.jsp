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
<body>
	<center>
		<form class="layui-form" id="form2" name="form2"
			  method="post">
			<br />
			<div class="layui-input-inline">
				<label class="layui-form-label">宠物名称:</label> <input type="text"
					id="ProductId" name="ProductId"
					value="${comments.product.productName}" class="layui-input" readonly>
			</div>
			<div class="layui-input-inline">
				<label class="layui-form-label"> </label> 
				<label class="layui-form-label"> </label>
			</div>
			<br />
			<br />
			<div class="layui-input-inline">
				<label class="layui-form-label">评论时间:</label> <input type="text"
					id="CommenTime" name="CommenTime" class="layui-input"
					value="${comments.commenTime}" readonly>
			</div>
			<div class="layui-input-inline">
				<label class="layui-form-label">宠物打分:</label> <input type="text"
					id="ProductMarks" name="ProductMarks" class="layui-input"
					value="${comments.productMarks}" readonly>
			</div>
			<br />
			<br />
			<div class="layui-input-inline">
				<label class="layui-form-label"> 评论内容:</label> 
				<textarea id="bodyPrc" style="width: 315px;height: 40px;" name="bodyPrc" class="layui-input" readonly>${comments.commentContent}</textarea>
			</div>
			<br /> <br />
			<div class="layui-input-inline">
				<label class="layui-form-label">是否公开:</label> 
				<c:if test="${comments.status eq 1}">
					<input type="text" id="Status" name="Status" class="layui-input" value="公开" readonly>
				</c:if>
				<c:if test="${comments.status ne 1}">
					<input type="text" id="Status" name="Status" class="layui-input" value="不公开" readonly>
				</c:if>
			</div>
				<div class="layui-input-inline">
					<label class="layui-form-label"> 用户:</label> <input type="text"
						id="Ext1" name="Ext1" class="layui-input" value="${comments.user.username}" readonly>
				</div>
				<br/><br/>
				<div class="layui-input-inline">
					<div class="layui-form-item">
						<label class="layui-form-label"> 回复内容:</label> 
						<textarea  id="CommentContent" style="width: 315px;height: 70px;" name="CommentContent" class="layui-input" readonly>${comments.bodyPrc}</textarea>
					</div>
				</div>
			<br />
			<br />
			<br />
		</form>
	</center>
</body>
</html>
