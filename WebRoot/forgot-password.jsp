<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/order.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/public.js"></script>

<script>
function zhuce(){
	             var username= $("#username").val();
  	             var authcode=$("#authcode").val();
  	             var pwd=$("#pwd").val();
  		layui.use("layer",function(){
  			var layer=layui.layer;
  			if(username=="" ||yanzheng==""||pwd==""){
  				layer.msg("请填写完整");
  				return;
  			} 
  		});
  				
        $.post("ZhaoPasswordServlet?",{username:username,authcode:authcode,pwd:pwd},function(res){//回调函数
		if(res.success)//success表示后端对我们的提问是否进行了成功的处理
			{
				 parent.layer.msg("注册成功!", {time: 1000}, function () {
                            //重新加载父页面
                            window.location.href="IndexServlet";
                            //parent.location.reload();刷新当前页面
                        });
                        return;
			}else{
			 parent.layer.msg("注册失败!");
			}
	},"json");
  }
 function huoqu(){
 var authcode=$("#authcode").val();
 if(!(/^1[34578]\d{9}$/.test(authcode))){ 
				 	alert("手机号不规范！！");
				 	return;
				 }
 $.post("YanZhengServlet?pass=1",{authcode:authcode});
} 
</script>


</head>
<body>
<jsp:include page="head.jsp" />
	
<div class="content container">
	<div class="blank10"></div>
	<div class="dl_zc">
		<div class="dl_zc_title">
			<h2 class="f_l">找回密码</h2><div class="rt_bg f_r"></div>
		</div>
		<div class="dl-con" id="entry">
			<form id="formpersonal" method="post" onsubmit="return false;" class="form">
			<div class="form" style="width:600px;">
				<div class="item">
					<span class="label">用户名：</span>
					<div class="fl">
						<input type="text" id="username" name="username" class="text" tabindex="1" />
					</div>
				</div><!--item end-->
				<div class="item">
					<span class="label">手机号码：</span>
					<div class="fl">
						<input type="text" id="authcode" name="authcode" class="text " tabindex="3" autocomplete="off" MaxLength="11" />
					   <input type="button" class="layui-btn layui-btn-sm" id="registsubmit" onclick="huoqu()"  value="获取验证码" tabindex="11" /> 
					</div>
				</div>
				<div class="item">
					<span class="label">新密码：</span>
					<div class="fl">
						<input type="text" id="pwd" name="pwd" class="text " tabindex="3" autocomplete="off" MaxLength="11" />
					</div>
				</div>
				<div class="item">
					<span class="label">&nbsp;</span>
					<input type="button" class="yellow_button yellow_button_03" id="registsubmit"   onclick="zhuce()" value="完&nbsp;&nbsp;成" tabindex="4" />
				</div><!--item end-->
				</div>
				<div id="guide">
				<h5>忘记密码可怕吗？</h5>
				<div class="content">当然不可怕！宠物商城帮您手机短信修改密码</div>			
				</div><!--guide end-->
				</form>
			</div>
		</div>
	<div class="blank10"></div>	
</div><!--content end-->
	
<div class="footer container">
	<jsp:include page="foot2.jsp" />
	<jsp:include page="foot1.jsp" />
</div><!--footer end-->

<script type="text/javascript" src="js/Validate.js"></script>
<script type="text/javascript" src="js/Validate.forget.js"></script>

<!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script>
</body>
</html>