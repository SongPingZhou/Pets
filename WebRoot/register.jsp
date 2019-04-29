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
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
<script>
function zhuce(){
	          var username= $("#name").val();
  	             var pwd=$("#pwd").val();
  	             var pwd2=$("#pwd2").val();
  	             var authcode=$("#authcode").val();
  	             var yanzheng=$("#yanzheng").val();
  		layui.use("layer",function(){
  			var layer=layui.layer;
  			if(username=="" || pwd==""|| pwd2==""|| authcode==""|| yanzheng==""){
  				layer.msg("请填写完整");
  				return;
  			} 
  		});
  				
        $.post("ZhuCeServlet",{username:username,pwd:pwd,pwd2:pwd2,authcode:authcode,yanzheng:yanzheng},function(res){//回调函数
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
 if(authcode != ""){
 	alert("短信发送中......");
 }
 $.post("YanZhengServlet",{authcode:authcode});
} 
</script>
<body>
<jsp:include page="head.jsp" />

<div class="content container">
	
	<div class="blank10"></div>
	
	<div class="dl_zc">
		<div class="dl_zc_title">
			<h2 class="f_l">注册新用户</h2><div class="rt_bg f_r"></div>
		</div>
		<div class="dl-con" id="regist">
			<form id="formpersonal" method="post" onsubmit="return false;">
			<div class="form">
				<div class="tipinfo">注册成为网站新用户</div>
				<div class="item">
					<span class="label">用户名：</span>
					<div class="fl">
						<input type="text" id="name" name="name" class="text" tabindex="1" />
						<label id="username_succeed" class="blank"></label>
						<span class="clear"></span>
						<div id="username_error"></div>
					</div>
				</div><!--item end-->
				<div id="o-password">
					<div class="item">
						<span class="label">设置密码：</span>
						<div class="fl">
							<input type="password" id="pwd" name="pwd" class="text" tabindex="2"  />
							<label id="pwd_succeed" class="blank"></label>
							<input type="checkbox" class="checkbox" id="viewpwd" />
							<label class="ftx23" for="viewpwd">显示密码字符</label>
							<span class="clear"></span>
							<label class="hide" id="pwdstrength"><span class="fl">安全程度：</span><b></b></label>
							<label id="pwd_error"></label>
						</div>
					</div><!--item end-->
					<div class="item">
						<span class="label">确认密码：</span>
						<div class="fl">
							<input type="password" id="pwd2" name="pwd2" class="text" tabindex="3"/>
							<label id="pwd2_succeed" class="blank"></label>
							<span class="clear"></span>
							<label id="pwd2_error"></label>
						</div>
					</div><!--item end-->
				</div><!--o-password end-->
				
				
				<div class="item">
					<span class="label">手机号码：</span>
					<div class="fl">
						<input type="text" id="authcode" name="authcode" class="text " tabindex="3" autocomplete="off" MaxLength="11" />
					   <input type="button" class="layui-btn layui-btn-sm" id="registsubmit" onclick="huoqu()"  value="获取验证码" tabindex="11" /> 
					</div>
				</div><!--item end-->
				<div class="item">
					<span class="label">验证码：</span>
					<div class="fl">
						<input type="text" id="yanzheng" name="yanzheng" class="text text-1" tabindex="6" autocomplete="off" MaxLength="6" />
						
					</div>
				</div><!--item end-->
				<div class="item">
					<span class="label">&nbsp;</span>
					<input type="button" class="yellow_button yellow_button_03" id="registsubmit" onclick="zhuce()"  value="提交注册信息" tabindex="8" />
				</div><!--item end-->
			</div>
			</form>
		</div><!--regist end-->
	</div><!--dl_zc end-->
	
	<div class="blank10"></div>
			
</div><!--content end-->
<div class="footer container">
	<jsp:include page="foot2.jsp" />
	<jsp:include page="foot1.jsp" />
</div>
<script type="text/javascript" src="js/Validate.js"></script>
<script type="text/javascript" src="js/Validate.personal.js"></script>

<script src="js/lib.js" type="text/javascript"></script>
<script src="js/online.js" type="text/javascript"></script>
</body>
</html>