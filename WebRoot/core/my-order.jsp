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
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
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
  function delOrder(id){
    var userid=$("#userid").val();
	layui.use("layer",function(){
	var layer=layui.layer;
		$.post("UserServlet?method=DeleteOrdersById",{id:id},function(data){
			var data=eval("("+data+")");
			if(data.code>0){
				layer.msg("取消订单成功");
				window.location.href="UserServlet?method=SelectOrdersServlet&userid="+userid+"&Status=8";
			}
		});
	});
	
}  
function zhifu(id){
	$.post("UserServlet?method=MyZhiFuServlet",{id:id},function(){
		window.location.href="zhifu/index.jsp";
	});
}
/*分页使用*/
$(function() {
	$("div.holder").jPages({
		containerID: "itemContainer",
		/* pause       : 4000, */
        clickStop   : true,
        previous: "←上一页",
		next: "下一页→",
		perPage:5
	});
});
</script>
</head>
<body>
<jsp:include page="../head.jsp" />	
<div class="content container">
	<div class="breadcrumbs">
	<input type="text" id="userid" style="display: none;" value="${userid}" />
		<a href="IndexServlet">首页</a><span>></span><a onclick="zuixin()">刷新最新动态</a><span>></span>我的订单
	</div><!--breadcrumbs end-->
	<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m" style="width: 773px; height: 361px;">
			<div class="personal_r_m_t coll_t">
				<h2><a href="UserServlet?method=SelectOrdersServlet&userid=${userid}&Status=8" class="blue">全部订单：</a></h2>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m ">
				<div class="blank10"></div>
				<div class="coll yellow">
					<dl> 
						<dd><a href="UserServlet?method=SelectOrdersServlet&userid=${userid}&Status=0" class="blue">未发货<span class="yellow"></span></a></dd> 
						<dd><a href="UserServlet?method=SelectOrdersServlet&userid=${userid}&Status=2" class="blue">未付款<span class="yellow"></span></a></dd> 
						<dd><a href="UserServlet?method=SelectOrdersServlet&userid=${userid}&Status=4" class="blue">未收货<span class="yellow"></span></a></dd> 
						<dd><a href="UserServlet?method=SelectOrdersServlet&userid=${userid}&Status=6" class="blue">未评价<span class="yellow"></span></a></dd>
						<dd><a href="UserServlet?method=SelectOrdersServlet&userid=${userid}&Status=7" class="blue">已评价<span class="yellow"></span></a></dd>   
					</dl>
				</div><!--coll end-->
				
				<div class="blank20"></div>
				
				<div class="coll_m">
					<table width="100%">
						<thead>
							<tr>
								<th>订单编号</th><th>下单时间</th><th>快递</th><th>金额</th><th>邮编</th><th>操作</th>
							</tr>
						</thead>
						<tbody id="itemContainer">
							<c:forEach items="${selectOrders}" var="orders">
								<tr>
									<td><a href="UserServlet?method=SelectOrdersByuserIdAndOrderId&userid=${userid}&orderId=${orders.id}&statu=${orders.status}" class="blue">${orders.shipNum}</a></td>
									<td><span>${orders.orderDate}</span></td>
									<td>${orders.shipName }</td>
									<td><span class="red">￥${orders.totalMoney}元</span></td>
									<td>${orders.shipPostCode}</td>
									<td>
									<c:if test="${orders.status eq 2}"> <a onclick="zhifu(${orders.id})" class="yellow">[支付]</a>|<a onclick="delOrder(${orders.id})" class="blue">[取消订单]</a> </c:if>
									<c:if test="${orders.status eq 0}"> <a onclick="delOrder(${orders.id})" class="blue">[取消订单]</a></c:if>																								<!--  -->			
									<c:if test="${orders.status eq 4}"> <a href="UserServlet?method=SelectOrdersByuserIdAndOrderId&userid=${userid}&orderId=${orders.id}&statu=${orders.status}" class="blue">[查看]</a></c:if>
									<c:if test="${orders.status eq 6}"><a href="UserServlet?method=SelectOrdersByuserIdAndOrderId&userid=${userid}&orderId=${orders.id}&statu=${orders.status}" class="red">[查看]</a></c:if> 
									<c:if test="${orders.status eq 7}"><a href="UserServlet?method=SelectOrdersByuserIdAndOrderId&userid=${userid}&orderId=${orders.id}&statu=${orders.status}" class="red">[查看]</a></c:if> 
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div><!--coll_m end-->
			</div><!--comment end-->
			<div class="holder" ></div>
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