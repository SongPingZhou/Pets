<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<link href="css/base.css" rel="stylesheet" type="text/css" />
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css" type="text/css"></link>
	<!-- <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>	 -->
	<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
  </head>
  <script type="text/javascript">
  function tuichu(){
  	layui.use(["layer","table"],function(){
  		var layer=layui.layer;
  		var tabe=layui.table;
  			 $.post("DengLuServlet",{t:1},function(res){
  				if(res.success){
  					parent.layer.msg("成功退出",{time:1000},function(){
  						window.location.href="IndexServlet";
  					});
  				}
  			},"json");  
  		});
  	}
  	function sousuo(){
  		var sousuo=$("#sousuo").val();
  		$.post("UserServlet?method=SouSuoServlet&sousuo="+sousuo,function(){
  			window.location.href="women.jsp";
  		});
  	}
  </script>
  <body>
   <div class="side_con">
	<div class="l_m">
		<div class="f_l l_m_l">
				<c:if test="${loginname eq null}">
					您好,欢迎来宠物商城！<a href="login.jsp" class="huise">[登录]</a>
					<a href="register.jsp" class="huise">[免费注册]</a>
				</c:if>
				<c:if test="${loginname ne null}">
					您好:<a href="core/edit-info.jsp" class="huise">[${loginname }]</a>欢迎来宠物商城！
				</c:if>
			&nbsp;
		</div><!--l_m_l end-->
		<div class="f_r l_m_r">
			<ul class="clearfix">
				<!-- <li class="collect"><a onclick="bookmark();" href="javascript:void(0);">加入收藏</a></li> -->
				<li><a href="core/my-order.jsp" class="yellow">我的订单</a></li>
				<li class="my-mesaer">
					<a href="core/edit-info.jsp">个人中心<span class="arrow"></span></a>
					<ul id="my-list">
						<li><a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-xs" href="core/my-order.jsp">我的订单</a></li>
						<li><a  href="core/my-comments.jsp">我的评论</a></li>
						<li><a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-xs" href="my-favorites.jsp" >我的收藏</a></li>
						<!-- <li><a href="core/my-points.jsp">我的积分</a></li> -->
						<c:if test="${loginname ne null}"><li><a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-xs" onclick="tuichu()" >退出</a></li></c:if>
					</ul>
				</li>
			</ul>
		</div><!--l_m_r end-->
	</div><!--l_m end-->
</div><!--side_con end-->
<div class="header container">
	<div class="l_s">
		<a title="萌宠店" class="f_l logo" href="IndexServlet"><img src="Img/logo.gif" alt="萌宠店" width="152" height="71" /></a>
		<div class="f_l l_s_l">
				<div class="f_l input_l"><input type="text" id="sousuo" class="sb_input text" value=""></div>
				<div class="f_l input_r"><button type="button" onclick="sousuo()">搜萌宠</button></div>
		</div><!--l_s_l end-->
		<ul class="f_r l_s_r">
		
		<iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=2&num=1" width="650" height="70" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
		
		
		</ul><!--l_s_r end-->
	</div><!--l_s end-->
	<div class="site-nav">
		<div class="floor_nav">
			<ul class="floors">
				<li id="floor_0"><a class="track" title="首页" href="/Pets/IndexServlet">首页</a></li>
				<li id="floor_1"><a class="track" title="汪星人" href="/Pets/MeowStarPeoperServlet?index=1">汪星人</a></li>
				<li id="floor_2"><a class="track" title="喵星人" href="/Pets/MeowStarPeoperServlet?index=2">喵星人</a></li>
				<li id="floor_3"><a class="track" title="宠物龟" href="/Pets/MeowStarPeoperServlet?index=3">宠物龟</a></li>
				<li id="floor_4"><a class="track" title="宠物蛇" href="/Pets/MeowStarPeoperServlet?index=4">宠物蛇</a></li>
				<li id="floor_5"><a class="track" title="宠物兔" href="/Pets/MeowStarPeoperServlet?index=6">宠物兔</a></li>
				<li id="floor_6"><a class="track" title="宠物鼠" href="/Pets/MeowStarPeoperServlet?index=5">宠物鼠</a></li>
				<li id="floor_7"><a class="track" title="所有宠物" href="/Pets/MeowStarPeoperServlet?index=0">所有宠物</a></li>
			</ul>
			<div class="buy_cart">
				<a class="gocart" href="core/cart.jsp">购物车
					<c:if test="${selectShoppingCart eq null}">
						<b class="yellow">0</b>件
					</c:if>
					<c:if test="${selectShoppingCart ne null}">
						<b class="yellow">${fn:length(selectShoppingCart)}</b>件
					</c:if>
				</a>
				<a class="gopay" href="core/cart.jsp">去结账</a>
			</div>
		</div>	<!--floor_nav end-->
	</div><!--site-nav end-->
</div><!--header end-->
  </body>
</html>
