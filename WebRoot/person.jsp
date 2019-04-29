<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
  </head>
  
  <body>
     <div class="f_l personal_l">
		<h2><a href="core/edit-info.jsp" title="我的麦路客">我的宠物商城</a></h2>
		<div class="personal_l_m" id="personal_list">
			<dl>
				<dt class="current"><div><b class="f_l"></b>帐户管理</div></dt>
				<dd>
					<a href="core/my-order.jsp" class="current">我的订单</a>
				</dd>
			</dl>
			<dl>
				<dt class="current"><div><b class="f_l"></b>个人信息管理</div></dt>
				<dd>
					<a href="core/edit-info.jsp">编辑个人信息</a>
					<a href="core/change-password.jsp">修改密码</a>
					<a href="core/modify-information.jsp">修改送货信息</a>
				</dd>
			</dl>
			<dl>
				<dt class="current"><div><b class="f_l"></b>商品评论与问答</div></dt>
				<dd>
					<a href="core/my-comments.jsp">我的评论</a>
				</dd>
			</dl>
		</div><!--personal_l_m end-->
		<div class="personal_l_b"></div>
	</div><!--personal_l end-->
  </body>
</html>
