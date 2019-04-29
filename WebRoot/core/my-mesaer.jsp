<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>麦路客商城-中国专业的网上销售女装、男装、童装、鞋子、配饰购物商</title>
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
		<a href="index.jsp">首页</a><span>></span>我的麦路客
	</div><!--breadcrumbs end-->
<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t coll_t">
				<p class="f_l">您好，<strong>q541374203</strong>。欢迎您回来！</p>
				<span class="f_r white">上一次登录时间：2010-9-17 11:11：02</span>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m">
				<div class="blank10"></div>
				<div class="coll yellow">
					<dl> 
						<dt>我的交易提醒：</dt> 
						<dd><a href="#" class="blue">待付款订单<span class="yellow">(0)</span></a></dd> 
						<dd><a href="#" class="blue">待确认收货订单<span class="yellow">(0)</span></a></dd> 
						<dd><a href="#" class="blue">待使用电子优惠券<span class="yellow">(0)</span></a></dd> 
					</dl>
				</div><!--coll end-->
				
				<div class="blank20"></div>
				
				<div class="coll_m">
					<div class="coll_m_t"><h3>最新订单</h3></div>
					<table width="100%">
						<thead>
							<tr>
								<th>订单编号</th><th>下单时间</th><th>支付方式</th><th>金额</th><th>订单状态</th><th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="6">暂时没有订单信息</td>
							</tr>
							<tr>
								<td><a href="#" class="blue">2010091947156</a></td>
								<td><span>2010-09-19 13:43:26</span></td>
								<td>支付宝</td>
								<td><span class="red">￥25.25元</span></td>
								<td>未确认,未付款,未发货</td>
								<td><a href="#" class="red">[查看]</a> | <a href="#" class="yellow">[支付]</a> | <a href="#" class="blue">[取消]</a></td>
							</tr>
							<tr bgcolor="#f7f7f7">
								<td><a href="#" class="blue">2010091947156</a></td>
								<td><span>2010-09-19 13:43:26</span></td>
								<td>货到付款</td>
								<td><span class="red">￥25.25元</span></td>
								<td>未确认,未付款,未发货</td>
								<td><a href="#" class="red">[查看]</a> | <a href="#" class="blue">[取消]</a></td>
							</tr>
						</tbody>
					</table>
				</div><!--coll_m end-->
				
				<div class="blank20"></div>
				
				<div class="coll_m">
					<div class="coll_m_t"><h3>也许您会对下列商品感兴趣</h3></div>
					<div class="coll_m_m">
						<ul class="clearfix">
							<li>
								<div class="p_pic"><a href="#" title="优雅镂空条纹针织衫"><img src="images/women/product/0001887.jpg" alt="优雅镂空条纹针织衫" /></a></div>
								<div class="p_name"><a href="#">雅镂空条纹针织衫</a></div>
								<div class="p_price"><span class="cost">¥40元</span><span class="num">¥57元</span></div>
							</li>
							<li>
								<div class="p_pic"><a href="#" title="经典高领长袖打底衫"><img src="images/women/product/0000665.jpg" alt="经典高领长袖打底衫" /></a></div>						
								<div class="p_name"><a href="#">经典高领长袖打底衫</a></div>
								<div class="p_price"><span class="cost">¥40元</span><span class="num">¥67元</span></div>
							</li>
							<li>
								<div class="p_pic"><a href="#" title="性感高弹网袜 黑色"><img src="images/women/product/0001355.jpg" alt="性感高弹网袜 黑色" /></a></div>						
								<div class="p_name"><a href="#">性感高弹网袜 黑色</a></div>
								<div class="p_price"><span class="cost">¥40元</span><span class="num">¥17元</span></div>
							</li>
							<li>
								<div class="p_pic"><a href="#" title="百搭果色天鹅绒九分连裤袜"><img src="images/women/product/0000946.jpg" alt="百搭果色天鹅绒九分连裤袜" /></a></div>							
								<div class="p_name"><a href="#">百搭果色天鹅绒九分连裤袜</a></div>
								<div class="p_price"><span class="cost">¥40元</span><span class="num">¥12元</span></div>
							</li>
						</ul>	
					</div>
				</div><!--coll_m end-->
				<div class="tipscore">
					<div class="tipclose" title="关闭"></div>
					<div class="tipscore-con">完善个人信息可获得10点积分</div>
					<div class="tipscore-button"><a class="btn" title="我知道了" href="#"></a><span class="iknow"><input type="checkbox" id="neverShow"><label for="neverShow">以后不再提示</label></span></div>
				</div><!--tipscore end-->
			</div><!--comment end-->
		</div><!--personal_r_m end-->
		<div class="personal_r_b"></div>
	</div><!--personal_r end-->
	
	<div class="clear mb-10"></div>
	
</div><!--content end-->
	
<div class="footer container">
	<jsp:include page="../foot1.jsp" />
	<jsp:include page="../foot2.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="<%=path %>/js/lib.js"></script>
<!-- online -->
<script type="text/javascript" src="<%=path %>/js/online.js"></script>
</body>
</html>