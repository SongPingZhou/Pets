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
<title>宠物之家</title>
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
		<a href="index.jsp">首页</a><span>></span><a href="#">个人中心</a><span>></span>我的积分
	</div><!--breadcrumbs end-->
	<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t coll_t">
				<h2>我的积分</h2>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m ">
				<div class="blank10"></div>
				<div class="coll">
					您的积分是： <strong class="red" >${i.Mark}</strong> 分<a href="#" class="blue" style="margin-left:20px;">[进入折扣积分]</a>
				</div><!--coll end-->
				
				<div class="blank20"></div>
				
				<div class="coll_m">
					<div class="coll_m_t"><h3>积分兑换记录</h3></div>
					<table width="100%">
						<thead>
							<tr>
								<th width="50%" class="first">兑换商品</th><th width="20%">兑换时间</th><th width="15%">兑换金额</th><th width="15%">兑换积分</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="4">暂时没有积分兑换记录</td>
							</tr>
							<%-- <tr>
								<td class="first">
									<a href="#"><img class="p_img" src="images/3123.jpg"></a>
									<a class="blue" href="#">${c.product.productName }</a>
								</td>
								<td><span>2010-09-19 13:43:26</span></td>
								<td><b>&yen;</b><span class="red">30.51</span></td>
								<td><span class="red">3000分</span></td>
							</tr> --%>
							<c:forEach items="${selectComments}" var="ccc">
								<tr bgcolor="#f7f7f7">
								<td class="first">
									<a href="#"><img src="Img/${ccc.productpic.picUrl}"></a>
									<a class="blue" href="#">${ccc.product.productName}</a>
								</td>
								<td><span>2010-09-19 13:43:26</span></td>
								<td><b>&yen;</b><span class="red">30.51</span></td>
								<td><span class="red">8888分</span></td>
							</tr>
							</c:forEach>
							
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