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
<link rel="stylesheet" href="<%=path %>/js/fenye/fenye.css" type="text/css"></link>
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>
<script type="text/javascript" src="<%=path %>/js/user.js"></script>
<script type="text/javascript" src="<%=path %>/js/fenye/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/fenye/jPages.js"></script>
<script>
	function zuixin(){
		var userid=$("#userid").val();
		$.post("UserServlet?method=ZuiXinDongTai",{userid:userid},function(){
			window.location.reload();
		});
	};
	
	/*分页使用*/
$(function() {
	$("div.holder").jPages({
		containerID: "itemContainer",
		/* pause       : 4000, */
        clickStop   : true,
        previous: "←上一页",
		next: "下一页→",
		perPage:3
	});
});
</script>
</head>
<body>
<jsp:include page="../head.jsp" />
<input type="text" id="userid" style="display: none;" value="${userid}" />
<div class="content container">
	<div class="breadcrumbs">
		<a href="IndexServlet">首页</a><span>></span><a onclick="zuixin()">刷新最新动态</a><span>></span>我的积分
	</div> 
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
						<dd><a href="UserServlet?method=SelectOrdersDetails&userid=${userid}&Status=0" class="blue">未发货<span class="yellow"></span></a></dd>
						<dd><a href="UserServlet?method=SelectOrdersDetails&userid=${userid}&Status=2" class="blue">未付款<span class="yellow"></span></a></dd>
						<dd><a href="UserServlet?method=SelectOrdersDetails&userid=${userid}&Status=4" class="blue">未收货<span class="yellow"></span></a></dd>
						<dd><a href="UserServlet?method=SelectOrdersDetails&userid=${userid}&Status=6" class="blue">未评价<span class="yellow"></span></a></dd>
						<dd><a href="UserServlet?method=SelectOrdersDetails&userid=${userid}&Status=7" class="blue">已评价<span class="yellow"></span></a></dd>   
					</dl>
				</div><!--coll end-->
				<div class="coll_m">
					<table width="100%">
						<thead>
							<tr>
								<th width="30%" class="first">订单宠物</th>
								<th width="20%">收获地址</th>
								<th width="15%">订单数量</th>
								<th width="15%">颜色</th>
								<th width="20%">操作</th>
							</tr>
						</thead>
						<tbody id="itemContainer">
							<c:forEach items="${selectAllOrdersDetail}" var="ordersde">
								<tr>
									<td class="first">
										<a href="/Pets/ParticularsServlet?id=${ordersde.productId}&position=3"><img class="p_img" src="Img/${ordersde.productpic.picUrl}"></a>
										<a class="blue" href="/Pets/ParticularsServlet?id=${ordersde.product.id}&position=3">${ordersde.product.productName}</a>
									</td>
										<td><span>${ordersde.orders.shipAddress}</span></td>
									<td><b></b><span class="red">${ordersde.quantity}</span></td>
									<td><span class="red">${ordersde.productpic.color}</span></td>
									<td><span class="red">
										<c:if test="${ordersde.ext1 ne null}">
											<c:if test="${ordersde.ext1 eq 0}"><a href="ReceptionServlet?index=9&productId=${ordersde.product.id}&orderid=${ordersde.orders.id}&uid=${userid}&ordersdeid=${ordersde.id}" class="red">[取消订单]</a></c:if>
											<c:if test="${ordersde.ext1 eq 2}"><a href="ReceptionServlet?index=9&productId=${ordersde.product.id}&orderid=${ordersde.orders.id}&uid=${userid}&ordersdeid=${ordersde.id}" class="red">[取消订单]</a></c:if>
											<c:if test="${ordersde.ext1 eq 4}"><a href="ReceptionServlet?index=5&ordersdeid=${ordersde.id}&userId=${userid}" class="red">[确认收货]</a></c:if>
											<c:if test="${ordersde.ext1 eq 6}"><a href="/Pets/ParticularsServlet?id=${ordersde.product.id}&position=3&ordersid=${ordersde.id}" class="red">[前去评论]</a></c:if>
											<c:if test="${ordersde.ext1 eq 7}"><a href="core/my-comments.jsp" class="red">[查看评论]</a></c:if>
										</c:if>
									   </span>
								   </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div><!--coll_m end-->
				<div class="holder" ></div>
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