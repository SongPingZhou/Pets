<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录 注册-宠物商城</title>
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/order.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=path %>/HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="<%=path %>/HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>
</head>
 <script type="text/javascript">
  function denglu(){
  	var loginname= $("#loginname").val();
  	var loginpwd=$("#loginpwd").val();
  		layui.use("layer",function(){
  			var layer=layui.layer;
  			if(loginname=="" || loginpwd==""){
  				layer.msg("用户或密码未填写完整");
  				return;
  			} 
  		});
  	$.post("DengLuServlet",{
	  	loginname:loginname,
	  	loginpwd:loginpwd
  	},function(res){//回调函数
		if(res.success)//success表示后端对我们的提问是否进行了成功的处理
			{
				 parent.layer.msg("登陆成功!", {time: 1000}, function () {
                            //重新加载父页面
                            window.location.href="IndexServlet";
                            //parent.location.reload();刷新当前页面
                        });
                        return;
			}else{
				 parent.layer.msg("登陆失败!");
			}
	},"json");
  }
 </script>
<body>

<jsp:include page="head.jsp" />
	
<div class="content container">
	<div class="blank10"></div>
	<div class="dl_zc">
		<div class="dl_zc_title">
			<h2 class="f_l">用户登陆</h2><div class="rt_bg f_r"></div>
		</div>
		<div class="dl-con" id="entry">
			<form id="formlogin" method="post" onsubmit="return false;">
			<div class="form" style="width:600px;">
			<c:if test="${name eq null}">
				<div class="item">
					<span class="label">用户名：</span>
					<div class="fl">
						<input type="text" id="loginname" name="loginname"  class="text" tabindex="1"  value="" />
						<label id="loginname_succeed" class="blank invisible"></label>
						<span class="clear"></span>
						<label id="loginname_error"></label>
					</div>
				</div><!--item end-->
			</c:if>
			<c:if test="${name ne null}">
				<div class="item">
					<span class="label">用户名：</span>
					<div class="fl">
						<input type="text" id="loginname" name="loginname"  class="text" tabindex="1"  value="${name}" />
						<label id="loginname_succeed" class="blank invisible"></label>
						<span class="clear"></span>
						<label id="loginname_error"></label>
					</div>
				</div><!--item end-->
			</c:if>
				<div class="item">
					<span class="label">密码：</span>
					<div class="fl">
						<input type="password" id="loginpwd" name="loginpwd" class="text" tabindex="2"/>
						<label id="loginpwd_succeed" class="blank invisible"></label>
						<label><a href="forgot-password.jsp" class="blue">忘记密码?</a></label>
						<span class="clear"></span>
						<label id="loginpwd_error"></label>
					</div>
				</div><!--item end-->
				<div class="item" id="autoentry">
					<span class="label">&nbsp;</span>
					<div class="fl">
						<label class="mar"><input type="checkbox" class="checkbox"  checked="checked" id="chkRememberUsername" name="chkRememberUsername"/>
						记住用户名</label>
					</div>
				</div><!--autoentry end-->
				<div class="item">
					<span class="label">&nbsp;</span>
					<input type="button" class="yellow_button yellow_button_02" onclick="denglu()"  id="loginsubmit" value="登录" tabindex="8" />
				</div><!--item end-->
			</div><!--form end-->
			<div id="guide">
				<h5>还不是宠物商城用户？</h5>
				<div class="content">现在免费注册成为宠物商城用户，便能立刻买走您心仪的宠物</div>			
				<a href="register.jsp" class="btn-personal">注册新用户</a>
			</div><!--guide end-->
			<span class="clear"></span>
			</form>
		</div><!--regist end-->
	</div><!--dl_zc end-->
	
	<div class="blank10"></div>
			
</div><!--content end-->
	
<div class="footer container">
	<jsp:include page="foot2.jsp" />
	<jsp:include page="foot1.jsp" />
</div><!--footer end-->

<script type="text/javascript" src="js/Validate.js"></script>
<script type="text/javascript" src="js/Validate.entry.js"></script>

<script src="js/lib.js" type="text/javascript"></script>
<script src="js/online.js" type="text/javascript"></script>
</body>
</html>