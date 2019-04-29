<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta charset="utf-8">
<title>html5响应式后台登录界面模板</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- CSS -->
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/login.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/tooltips.js"></script>
<script type="text/javascript" src="js/login.js"></script>

</head>
<script type="text/javascript">
	function login() {
		var data = $("#login_form").serialize();
		$.post("../LoginServlet?method=Login", data, function(res) {
			if (res.success) {
				alert("登录成功");
				location.href = "index.jsp";
			} else {
				alert(res.message);
			}
		}, 'json');
	}
</script>
<body>

	<div class="page-container">
		<div class="main_box">
			<div class="login_box">
				<div class="login_logo">
					<img src="images/logo.png">
				</div>
				<div class="login_form">
					<form action="index.jsp" id="login_form" method="post">
						<div class="form-group">
							<label for="j_username" class="t">用户名：</label> <input id="email"
								value="" name="username" id="username" type="text"
								class="form-control x319 in" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="j_password" class="t">密 码：</label> <input
								id="password" value="" name="userpassword" id="userpassword"
								type="password" class="password form-control x319 in">
						</div>
						<div class="form-group">
							<label for="j_captcha" class="t">验证码：</label> <input
								id="j_captcha" name="j_captcha" type="text"
								class="form-control x164 in"> <img id="captcha_img"
								alt="点击更换" title="点击更换" src="images/captcha.jpeg" class="m">
						</div>
						<div class="form-group">
							<label class="t"></label> <label for="j_remember" class="m">
								<input id="j_remember" type="checkbox" value="true">&nbsp;记住登陆账号!</label>
						</div>
						<div class="form-group ">
							<label class="t"></label> <input type="button"
								value="&nbsp;登&nbsp;录&nbsp;" onclick="login()"
								class="btn btn-default btn-lg"> <input type="reset"
								value="&nbsp;重&nbsp;置&nbsp;" class="btn btn-default btn-lg">
						</div>
					</form>
				</div>
			</div>
			<div class="bottom">
				Copyright &copy; 2014 - 2015 <a href="#">系统登陆</a>
			</div>
		</div>
	</div>

	<!-- Javascript -->

	<script src="js/supersized.3.2.7.min.js"></script>
	<script src="js/supersized-init.js"></script>
	<script src="js/scripts.js"></script>
	<div style="text-align:center;">
		<p>
			来源:<a href="http://www.aspku.com/" target="_blank">源码之家</a>
		</p>
	</div>
</body>
</html>