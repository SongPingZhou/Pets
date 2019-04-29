<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宠物商城</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/personal.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>
<script type="text/javascript" src="<%=path %>/js/user.js"></script>
</head>
<body>
<jsp:include page="../head.jsp" />
<div class="content container">
	<div class="breadcrumbs">
		<a href="index.jsp">首页</a><span>></span><a href="#">我的麦路客</a><span>></span>我的问答
	</div><!--breadcrumbs end-->
	<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t">
				<h2>我的问答</h2>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m comment">
				<div class="comment_con clearfix">
					<div class="f_l comment_con_l">
						<a href="#" title="天鹅绒活力撞色中筒袜"><img src="images/3123.jpg" alt="天鹅绒活力撞色中筒袜" class="p_img" /></a>
						<span><a href="#" class="blue">天鹅绒活力撞色中筒袜</a></span>
						<span class="h_red">￥9.00元</span>
					</div><!--comment_con_l end-->
					<div class="f_l comment_con_r clearfix" style="width:320px;">
						<div class="f_l arrow"></div>
						<div class="f_l comment_con_k">
							<div class="comment_con_k_t"><div class="f_l comment_con_k_t_l"></div><div class="f_l comment_con_k_t_m"></div><div class="f_r comment_con_k_t_r"></div></div><!--comment_con_k_t end-->
							
							<div class="comment_con_m">
								<div class="pl_full"><p class="f_l"><strong class="red">（尺寸问题）</strong>我身高155cm,体重52KG，是穿m还是s呀?</p><span class="f_r date">2010-07-08 01:50</span></div>
								<div class="pl_con">
									<div class="tit"><strong class="f_l red">麦路客管理员：</strong><span class="f_r date">2010-07-08 05:50</span></div>
									<div class="dis"><p>亲 您这身材穿M号就足够啦^^</p></div>
								</div>
							</div><!--comment_con_m end-->
							
							<div class="comment_con_k_b"><div class="f_l comment_con_k_b_l"></div><div class="f_l comment_con_k_b_m"></div><div class="f_r comment_con_k_b_r"></div></div><!--comment_con_k_b end-->
						</div><!--comment_con_k end-->
					</div><!--comment_con_r end-->
				</div><!--comment_con end-->
				
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
<script type="text/javascript" src="<%=path %>/js/lib.js"></script>
<!-- online -->
<script type="text/javascript" src="<%=path %>/js/online.js"></script>
</body>
</html>