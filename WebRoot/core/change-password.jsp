<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改个人密码</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/personal.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>
<script type="text/javascript" src="<%=path %>/js/user.js"></script>
</head>
<script type="text/javascript">
function zuixin(){
		var userid=$("#userid").val();
		$.post("UserServlet?method=ZuiXinDongTai",{userid:userid},function(){
			window.location.reload();
		});
	};
	function updatepwd(){
		var tset=$("#tset").val();
		var lodpwd=$("#lodpwd").val();
		var newpwd=$("#newpwd").val();
		var newspwd=$("#newspwd").val();
		var userid=$("#userid").val();
		var loginname=$("#loginname").val();
		layui.use("layer",function(){
			var layer=layui.layer;
			if(lodpwd != tset){
				layer.msg("旧密码错误!");
				return ;
			}
			if(newpwd == ''){
				layer.msg("请输入新密码！");
				return ;
			}
			if(newpwd != newspwd){
				layer.msg("两次新密码不一致!");
				return ;
			}
			$.post("UserServlet?method=doGet",{
				newpwd:newpwd,
				userid:userid,
				loginname:loginname,
				},function(res){
					if(res.success)//success表示后端对我们的提问是否进行了成功的处理
			{
				 parent.layer.msg("修改成功!",{time:1000},function() {
                            window.location.href="login.jsp";
                            //parent.location.reload();刷新当前页面
                        });
                        return;
			};
			},"json");
		});
	}
</script>
<body>
<jsp:include page="../head.jsp" />
<input type="text" style="display: none" id="tset" value="${loginpwd}" />
<input type="text" style="display: none" id="userid" value="${userid}" />
<input type="text" style="display: none" id="loginname" value="${loginname}" />
<div class="content container">
	<div class="breadcrumbs">
		<a href="IndexServlet">首页</a><span>></span><a onclick="zuixin()">刷新最新动态</a><span>></span>修改密码
	</div><!--breadcrumbs end-->
<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t">
				<h2>修改密码</h2>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m">
				<div class="change_password">
				
					<form id="" method="post" action="">
						<table width="100%">
							<tr>
								<td colspan="2" height="30px"></td>
							</tr>
							<tr>
								<td align="right" width="260px">我的旧密码：</td>
								<td><input type="password" placeholder="旧密码" name=""  value="" id="lodpwd" class="info_input info_input_200" /></td>
							</tr>
							<tr>
								<td align="right">请输入新密码：</td>
								
								<td><input type="password" placeholder="新密码" name="" value="" id="newpwd" class="info_input info_input_200" /></td>
							</tr>
							<tr>
								<td align="right">请再次输入新密码：</td>
								<td><input type="password" placeholder="确认新密码" name="" value="" id="newspwd" class="info_input info_input_200" /></td>
							</tr>
						</table>
						<div class="blank20"></div>
						<div class="change_password_button">
							<input type="button" onclick="updatepwd()" name="" value="确&nbsp;&nbsp;定" id="" class="yellow_button yellow_button_01" />
						</div><!--edit_info_button end-->
						<div class="blank20"></div>
					</form>
				</div><!--change_password end-->
			</div><!--comment end-->
		</div><!--personal_r_m end-->
		<div class="personal_r_b"></div>
	</div><!--personal_r end-->
	
	<div class="clear mb-10"></div>
	
</div><!--content end-->
	
<div class="footer container">
	<jsp:include page="../foot2.jsp" /> 
	<jsp:include page="../foot1.jsp" /> 
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script>	

</body>
</html>