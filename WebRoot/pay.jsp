<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="p_number">
	<div class="f_l add_chose">
		<a class="reduce" onClick="setAmount.reduce('#qty_item_1')" href="javascript:void(0)">-</a>
		<input type="text" name="qty_item_1" value="1" id="qty_item_1" onKeyUp="setAmount.modify('#qty_item_1')" class="text" />
		<a class="add" onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)">+</a>
	</div>
	<div class="f_l buy">总价：<span class="total-font red" id="total_item_1">￥89.00</span><input type="text" name="total_price" id="total_price" value="" style="display:none;" /><span class="jifen">购买商品可获得：<b id="total_points" class="red">18</b>积分</span></div>
</div><!--p_number end-->	
<div class="choose_size_b">
	<div class="f_l add_collect"><a href="login-register.html?keepThis=true&amp;TB_iframe=true&amp;height=439&amp;width=600" title="您尚未登录" class="collection thickbox"></a></div>
	<div class="f_l add_cat"><a href="#" class="cat_btm"></a></div>							
</div><!--choose_size_b end-->