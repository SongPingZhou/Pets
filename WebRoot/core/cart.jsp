<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录 注册</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/order.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script language="javascript" src="<%=path %>/js/suning_btn.js"></script>
<script>
function aadd(id){
	$.post("ReceptionServlet?index=6&id="+id+"&userid=${userid}"
		 //window.location.reload();
	);
}
function rreduce(id){
	$.post("ReceptionServlet?index=7&id="+id+"&userid=${userid}");
}
var price=0;
function aa(id){
	 if($("input[type='checkbox']").is(':checked')){
	 	var b=document.getElementById("total_item_"+id).innerHTML;
		 b= b.substring(1,b.length-1);
		 price=Number(b)+Number(price);
		 document.getElementById('total').innerHTML = '';
		document.getElementById('total').append(price);
	 }else{ 
		var b=document.getElementById("total_item_"+id).innerHTML;
		 b= b.substring(1,b.length-1);
		 price=Number(price)-Number(b);
		 document.getElementById('total').innerHTML = '';
		 document.getElementById('total').append(price);
	}
}
function delcart(id){
		var userId=$("#userId").val();
		layui.use("layer",function(){
	 				$.post("ReceptionServlet?index=8",{id:id,userId:userId},function(data){
	 					var data=eval("("+data+")");
	 					if(data.code>0){
	 						layer.msg("删除成功");
	 						window.location.reload();
	 					}
	 				});	
	});
}
function delAllcart(){
	var userId=$("#userId").val();
	layui.use("layer",function(){
		layer.alert("你确定要清空购物车吗？",function(){
			$.post("ReceptionServlet?index=10",{userId:userId},function(data){
					var data=eval("("+data+")");
 				layer.closeAll();
				window.location.href="core/cart.jsp";
			});
			
		});
	});
}

function jiesuan(){
	var obj=document.getElementsByName("checkbox");
	var check_val=[];
	for(k in obj){
		if(obj[k].checked){
			check_val.push(obj[k].value);
		}
	}
	var id=check_val;
	if(id==""){
		alert("请选择要结算的商品");
		return;
	}
	$.post("UserServlet?method=MyOrdersDetails&picid="+id,function(){
		window.location.href="core/edit-address.jsp";
	});
	
}
</script>
</head>
<body>
<input type="hidden" id="userId" value="${userid}" />

<jsp:include page="../head.jsp" />
<div class="o_h container">
	<div class="clear"></div>
</div><!--o_h end-->
<div class="cat_content container">
	<div class="blank10"></div>
	<% 
		String aa=request.getParameter("chenggong"); 
	%>
		 <% if("1".equals(aa)){ %>
			<jsp:include page="../chenggong.jsp" />
		 <%} %>
		<c:if test="${zhifu eq 1}">
			<jsp:include page="../ZhiFuChengGong.jsp" />
		</c:if>
	<div class="cat_title">
		<h2 class="f_l"><img src="images/cat.gif" title="购物车" /></h2>
		<div class="f_r"><strong class="red">温馨提示</strong>：涉及到花费积分购买只能单笔进行。</div>
	</div><!--cat_title end-->
	<div class="cat_list">
		<table cellpadding="0" cellspacing="0" border="0">
			<thead>
				<tr>
					<th width="10px">&nbsp;</th>
					<th></th>
					<th colspan="2">商品名称</th>
					<th>颜色</th>
					<th>赠送积分</th>
					<th>单价</th>
					<th>数量</th>
					<th colspan="2">小计</th>
					<th>操作</th>
					<th width="10px">&nbsp;</th>
				</tr>
			</thead>
			<tbody>
			 
				<c:if test="${fn:length(selectShoppingCart) eq 0}">
						<tr>
							<td colspan="10">
								<p class="no_cat">您的购物车还是空的，赶紧行动吧！您可以：<br />马上去 <a href="IndexServlet" class="red">挑选商品</a></p>
							</td>
						</tr>
					</c:if>
				<c:forEach items="${selectShoppingCart}" var="cart">
					<tr>
						<td style="border:none;">&nbsp;</td>
						<td><input type="checkbox" name="checkbox" onclick="aa(${cart.id})"  value="${cart.id}"  /> </td>
						<td colspan="2"><a href="/Pets/ParticularsServlet?id=${cart.product.id}&position=3"><img src="Img/${cart.productpic.picUrl}" class="p_img" style="width: 80px;height:80px; " /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Pets/ParticularsServlet?id=${cart.product.id}&position=3">${cart.product.productName }</a></td>
						<td>${cart.productpic.color}</td>
						<td><span id="total_points_1"></span>分</td>
						<td><b>&yen;</b><span id="price_item_1">${cart.product.unitPrice}</span></td>
						<td>
							<div class="text-number" style="width: 100px">
								<a class="reduce" onclick="javascript:setAmount.reduce('#qty_item_${cart.id}');rreduce(${cart.id})" href="javascript:void(0)">-</a>
								<input type="text" name="qty_item_1" value="${cart.size}" id="qty_item_${cart.id}" onkeyup="setAmount.modify('#qty_item_${cart.id}')" class="text" />
								<a class="add"  onclick="javascript:setAmount.add('#qty_item_${cart.id}');aadd(${cart.id})"  href="javascript:void(0)">+</a>
							</div>
						</td>
						<td colspan="2"><span id="total_item_${cart.id}">0</span></td>
						<td><a onclick="delcart(${cart.id})" class="red">删除</a></td>
						<td style="border:none;">&nbsp;</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td style="border:none;">&nbsp;</td>
					<td colspan="10"> 
						<table cellpadding="0" cellspacing="0" border="0">
							<td>产品数量总计：<span class="red">${fn:length(selectShoppingCart)}件</span></td>
							<td>赠送积分总计：<span class="red" id="pointsTotal"></span>分</td>
							 <td>已选金额总计：<span class="red" id="total">0</span></td> 
							<td align="right">产品金额总计：<span class="red"><span id="cashTotal">129.00</span><input type="text" name="cash-total" id="cash-total" value="" style="display:none;" /></span></td>
						</table>
					</td>
					<td style="border:none;">&nbsp;</td>
				</tr>
				<tr>
					<td style="border:none;">&nbsp;</td>
					<td colspan="10" style="border:none;">
						<table cellpadding="0" cellspacing="0" border="0">
							<td width="110px"><a href="IndexServlet"><img alt="继续购物" src="images/jx_pay.gif" /></a></td>
							<td><a onclick="delAllcart()"><img alt="清空购物车" src="images/delete_pay.gif" /></a></td>
							<td></td>
							<td align="right"><a onclick="jiesuan()"><img alt="去结算" src="images/go_pay.gif" /></a></td>
						</table>
					</td>
					<td style="border:none;">&nbsp;</td>
				</tr>
			</tfoot>	
		</table>
	</div><!--cat_list end-->
	<div class="line mb-10"></div>
</div><!--cat_content end-->
	
<div class="footer container">
	<jsp:include page="../foot2.jsp" />	
</div><!--footer end-->

<script type="text/javascript" src="<%=path %>/js/calculation.js"></script>
<script type="text/javascript" src="<%=path %>/js/online.js"></script>
</body>
</html>