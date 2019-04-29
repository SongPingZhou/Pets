<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单详情</title>
 <link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/personal.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>

<script type="text/javascript" src="<%=path %>/js/user.js"></script>
<script>
	function zuixin(){
		var userid=$("#userid").val();
		$.post("UserServlet?method=ZuiXinDongTai",{userid:userid},function(){
			window.location.reload();
		});
	};
</script>
</head>
<body>
<jsp:include page="../head.jsp" />
<input type="text" id="userid" style="display: none;" value="${userid}" />
<div class="content container">
	<div class="breadcrumbs">
	<a href="IndexServlet">首页</a><span>></span><a href="core/my-order.jsp">我的订单</a><span>></span>我的详情
	</div><!--breadcrumbs end-->
	<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t coll_t">
				<h2>我的订单详情</h2>
			</div><!--personal_r_m_t end-->
			
			<div class="personal_r_m_m ">
				<div class="blank10"></div>
				<div class="coll yellow">
						<dl> 
						<dd><a href="UserServlet?method=SelectOrdersAllDetails&userid=${userid}" class="blue">我的所有商品<span class="yellow"></span></a></dd>
					</dl>
				</div><!--coll end-->
				<div class="coll_m">
					<table width="100%">
						<thead>
							<tr>
								<th width="30%" class="first">订单宠物</th>
								<th width="20%">收获地址</th>
								<th width="15%">订单数量</th>
								<th width="15%">颜色 </th>
								<th width="20%">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${selectAllOrdersDetails}" var="ordersde">
								<tr>
									<td class="first">
										<a href="/Pets/ParticularsServlet?id=${ordersde.product.id}&position=3"><img class="p_img" src="Img/${ordersde.productpic.picUrl}"></a>
										<a class="blue" href="/Pets/ParticularsServlet?id=${ordersde.product.id}&position=3">${ordersde.product.productName}</a>
									</td>
									<td><span>${ordersde.orders.shipAddress}</span></td>
									<td><b></b><span class="red">${ordersde.quantity}</span></td>
									<td><span class="red">${ordersde.productpic.color}</span></td>
									<td><span class="red">
										<c:if test="${statu eq 0}"><a href="ReceptionServlet?index=9&productId=${ordersde.product.id}&orderid=${ordersde.orders.id}&uid=${userid}&ordersdeid=${ordersde.id}" class="red">[取消订单]</a></c:if>
										<c:if test="${statu eq 2}"><a href="ReceptionServlet?index=9&productId=${ordersde.product.id}&orderid=${ordersde.orders.id}&uid=${userid}&ordersdeid=${ordersde.id}" class="red">[取消订单]</a></c:if>
										<c:if test="${statu eq 4}"><a href="ReceptionServlet?index=5&productId=${ordersde.id}&userId=${userid}" class="red">[确认收货]</a></c:if>
										<c:if test="${statu eq 6}"><a href="/Pets/ParticularsServlet?id=${ordersde.product.id}&position=3&orderId=${ordersde.id}" class="red">[前去评论]</a></c:if>
										<c:if test="${statu eq 7}"><a href="core/my-comments.jsp" class="red">[查看评论]</a></c:if>
									   </span>
								   </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div><!--coll_m end-->
				
				<div class="blank20"></div>
				
				<div class="coll_m">
				<!-- 	<div class="coll_m_t"><h3>也许您会对下列商品感兴趣</h3></div>
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
					</div> -->
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