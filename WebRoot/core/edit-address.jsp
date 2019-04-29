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
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/order.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<link rel="stylesheet" href="<%=path %>/layui(layui-v2.4.3)/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="<%=path %>/layui(layui-v2.4.3)/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/layui(layui-v2.4.3)/layui.js"></script>
</head>
<script type="text/javascript">
		$("#distpicker5").distpicker({
	 	 autoSelect: false
		}); 
	 
	   function huoqu(){
	  
	    var userid=$("#userid").val();
		var username =$("#username").val();
		var index=document.getElementById("province10").selectedIndex;
		var	prov= document.getElementById("province10").options[index].innerHTML;
			index=document.getElementById("city10").selectedIndex;
		var city=document.getElementById("city10").options[index].innerHTML;
			index=document.getElementById("district10").selectedIndex;
		var country =document.getElementById("district10").options[index].innerHTML;
		var userAddress=document.getElementById("userAddress").value;
		var usertel=document.getElementById("usertel").value;
		var useryoubian=$("#useryoubian").val();
		var arr=userid+","+username+","+prov+","+city+","+country+","+userAddress+","+usertel+","+useryoubian;
		return arr;
	}
	
	function adduserstab(){
			 var uid=$("#userid").val();
		     var arr=huoqu(); 
		     layui.use("layer",function(){
			 var layer=layui.layer;
				$.post("ReceptionServlet?index=1",{arr:arr},function(data){
				var data=eval("("+data+")");
				if(data.code>0){
					layer.msg("添加成功");
					window.location.href="ReceptionServlet?index=12&userid="+uid;
				}
			});
		});
	}
	
	 function delAddress(a){
	    var uid=$("#userid").val();
		layui.use("layer",function(){
			var layer=layui.layer;
			$.post("ReceptionServlet?index=11",{addid:a},function(data){
				var data=eval("("+data+")");
				if(data.code>0){
					layer.msg("删除成功");
					window.location.href="ReceptionServlet?index=12&userid="+uid;
				}
		   });
		});
	} 
	
	
	function tijioadingdan(){
		var obj=document.getElementsByName("productid");
		var carid=$("#carid").val();
		var productid="";
		for(var i=0;i<obj.length;i++){
		    productid +=","+obj[i].value;
		}
		productid=productid.substring(1,productid.length);
		var objpic=document.getElementsByName("picid");
		var picid="";
		for(var i=0;i<objpic.length;i++){
		    picid +=","+objpic[i].value;
		}
		picid=picid.substring(1,picid.length);
		
		var objs=document.getElementsByName("detailssize");
		var detailssize="";
		for(var i=0;i<objs.length;i++){
		    detailssize +=","+objs[i].value;
		}
		detailssize=detailssize.substring(1,detailssize.length);
		var Objtotal=document.getElementsByName("xtotal");
		var xtotal="";
		for(var i=0;i<Objtotal.length;i++){
			xtotal+=","+Objtotal[i].value;
		}
		xtotal=xtotal.substring(1,xtotal.length);
		var userid=$("#userid").val();
		var kd= $('#test option:selected').text();
		var radio=$('input[name="radio"]:checked').val();
		var orderbody=$("#orderbody").val();
		var totals=document.getElementById("totalsd").innerText;
		
		if(undefined==radio){
			alert("请选择一个收获地址！");
			return;
		}
		$.post("UserServlet?method=MyOrders&kd="+kd+"&radio="+radio+"&orderbody="+orderbody+"&userid="+userid+"&totals="+totals+"&productid="+productid+"&picid="+picid+"&detailssize="+detailssize+"&xtotal="+xtotal+"&carid="+carid,function(){
			window.location.href="UserServlet?method=ZhiFuServlet&totals="+totals;
		});
	}
	function  chakan(id){
	layui.use([ 'layer', 'table', 'element' ],
	function(){
	
	var layer = layui.layer; //弹层
	   layer.open({
					title : "查看详细信息",
															type : 2,
															content : "../Pets/SelectByid?method=SelectAddressByid&id="
																	+ id,
															area : [ "600px",
																	"400px" ]
														});										
	});
	
	}
</script>
<body>
<input type="hidden" id="userid" value="${userid}" />
<input type="hidden" id="carid" value="${picid}" />
<div class="o_h container">
	<h1 class="f_l oh_logo"><a href="IndexServlet"><img src="<%=path %>/Img/logo.gif" style="width: 152px;height: 71px;" alt="麦路客网上购物商城" /></a></h1><!--oh_logo end-->
	<div class="f_r oh_mian">
		<div class="oh_dh">
			<div class="f_r l_bg"></div>
			<div class="f_r oh_dh_m"><a href="IndexServlet">首页</a><span>|</span><a href="core/my-order.jsp">我的订单</a></div>
			<div class="f_r r_bg"></div>
		</div><!--oh_dh end-->
		
		<div class="blank20"></div>  
		
		<div class="flow_step">
			<ul>
				<li class="step_10"></li>
				<li class="step_02">3.成功提交订单</li>
				<li class="step_08"></li>
				<li class="step_04">2.填写核对订单信息</li>
				<li class="step_09"></li>
				<li class="step_04">1.我的购物车</li>
				<li class="step_07"></li>
			</ul>
		</div><!--flow_step end-->
	</div><!--oh_mian end-->
	
	<div class="clear"></div>
	
</div><!--o_h end-->
	
<div class="content container">

	<div class="blank10"></div>
	
	<div class="dl_zc">
		<div class="dl_zc_title">
			<h2 class="f_l">填写核对订单信息</h2><div class="rt_bg f_r"></div>
		</div><!--dl_zc_title end-->
		<div class="d_z_content">
			<div class="order switchable">
				<div class="personal_r_t"></div>
					<div class="personal_r_m">
						<div class="personal_r_m_t">
							<h2>收货信息</h2>
						</div><!--personal_r_m_t end-->
						<div class="personal_r_m_m">
							<div class="order">
								<div class="ytx">
									<div class="now_address">
										<div class="now_address_t">
											<h3 class="f_l">我的地址</h3>
										</div><!--now_address_t end-->
										<div class="now_address_l">
											<ul>
											
											<c:forEach items="${selectUserAddress}" var="add">
												<li class="cur" id="ra1">
													<div class="f_l">
														<input type="text" style="display:none " id="addid" value="${add.id}" />
														<input type="radio" name="radio" id="${add.id}" value="${add.id}" />
														<label for="${add.id}"><strong>${add.name}</strong><span>${add.address}</span></label>
													</div>
													<div class="f_r"><button class="red" onclick="chakan(${add.id})">[查看]</button>&nbsp;&nbsp;&nbsp;<button class="red" onclick="delAddress(${add.id})">[删除]</button> </div>
												</li>
											</c:forEach>
											</ul>
										</div><!--now_address_l end-->
									</div><!--now_address end-->
									<div class="blank10"></div>
									<div class="now_address">
									<table>
										<tbody>
											<tr>
												<td width="76px" class="a-r"><span class="red">*</span>收货人：</td><td>
													<input type="text" name="username" value="" id="username" class="input-text" size="38" />
												</td>
											</tr>
											<tr>
												<td class="a-r"><span class="red">*</span>地区：</td><td>
												 <fieldset>
										            <form class="form-inline">
											            <div id="distpicker5">
													          <label class="sr-only" for="province10"></label>
													          <select class="form-control" id="province10"></select>
													        
													    
													          <label class="sr-only" for="city10"></label>
													          <select class="form-control" id="city10"></select>
													       
													        
													          <label class="sr-only" for="district10"></label>
													          <select class="form-control" id="district10"></select>
													      </div>
												      </form>
									            </fieldset>
												</td>
											</tr>
											<tr>
												<td class="a-r"><span class="red">*</span>收货地址：</td><td><input type="text" value="" name="userAddress" id="userAddress" class="input-text" size="60" /></td>
											</tr>
											<tr>
												<td class="a-r"><span class="red">*</span>联系方式：</td><td><input value="" type="text" name="usertel" id="usertel" class="input-text" size="38" />&nbsp;&nbsp;用于接收发货通知短信及送货前确认</td>
											</tr>
											<tr>
												<td class="a-r">邮政编码：</td><td><input type="text" value="" name="useryoubian" id="useryoubian" class="input-text" size="14" />&nbsp;&nbsp;有助于快速确定送货地址</td>
											</tr>
											<tr>
												<td></td>
												<td><a class="yellow_button yellow_button_03" onclick="adduserstab()" >新增收货人信息</a>
											    </td>
											</tr>
										</tbody>
									</table>
									</div>
								</div>
							</div><!--order end-->
						</div><!--comment end-->
					</div><!--personal_r_m end-->
				<div class="personal_r_b"></div>
			</div><!--order end-->
			<div class="order switchable">
				<div class="o_d_title">
				</div><!--o_d_title end-->
				<div class="address info-con">
					<ul>
						<li>选择物流公司！！！
						<select id="test" name="" style="height: 33px;">
							<option value="中通快递">中通快递</option>
							<option value="申通快递">申通快递</option>
							<option value="百世汇通">百世汇通</option>
							<option value="京东速递">京东速递</option>
						</select>
						</li>
					</ul>
				</div><!--address end-->
			</div><!--order end-->
			<div class="blank10"></div>
			<div class="order switchable">
				<div class="o_d_title">
					<h2 class="f_l">订单留言</h2>
				</div><!--o_d_title end-->
				<div class="address info-con">
					<textarea name="" id="orderbody" class="l_text" onblur="if(this.value==''){this.value='留言请在50字以内';this.className='l_text'}" onfocus="if(this.value=='留言请在50字以内'){this.value='';this.className='l_text_c';}">留言请在50字以内</textarea>
				</div><!--address end-->
			</div><!--order end-->
			<div class="blank10"></div>
			<div class="cate_list">
				<div class="cate_list_title">
					<!-- <h2 class="f_l">商品清单</h2><span class="f_r"><a href="#">回到购物车，修改商品>></a></span> -->
				</div><!--cate_list_title end-->
				<div class="cate_list_main">
					<table cellpadding="0" cellspacing="0" border="0" width="100%">
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
								<th width="10px">&nbsp;</th>
							</tr>
						</thead>
						<tbody> 
						<c:set var="row_total" value="0"></c:set>
							<c:forEach items="${MyShoppingCart}" var="details">
								<tr> <input type="hidden" id="" name="productid" value="${details.product.id}" />
									 <input type="hidden" id="" name="picid" value="${details.productpic.id}" />
									 <input type="hidden" id="" name="detailssize" value="${details.size}" />
									 <input type="hidden" id="" name="xtotal" value="${details.product.unitPrice * details.size}" />
									<td><a href="#"><img class="p_img" src="<%=path %>/Img/${details.productpic.picUrl}" style="height: 80px;width: 80px;" /></a></td>
									<td></td>
									 <c:set var="row_total" value="${row_total + details.product.unitPrice * details.size}" />
									<td><a href="#">${details.product.productName}</a></td>
									<td></td>
									<td>${details.productpic.color}</td>
									<td> ${details.product.unitPrice * details.size} 分</td>
									<td>&yen;${details.product.unitPrice}元</td>
									<td> ${details.size} </td>
									<td>&yen;<span id="total">${details.product.unitPrice * details.size}</span>元</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="7" style="border:none;">
									<table cellpadding="0" cellspacing="0" border="0" width="100%">
									
										<tr>
										<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
											<td colspan="4"><span class="total red">您共需要为订单支付：&yen;<span id="totalsd"><c:out value="${row_total}"></c:out></span>元</span></td>
										</tr>
									</table>
								</td>
							</tr>
						</tfoot>
					</table>
				</div><!--cate_list_main end-->
				<div class="blank20"></div>
					<div class="tj_info">
						<div class="f_r"><input type="image" onclick="tijioadingdan()" src="images/tj_dd_botton.gif" value="" /></div>
						<p class="f_r">请核对以上信息，确认无误后点击“提交订单”</p>
					</div><!--tj_info end-->
				<div class="blank20"></div>
			</div><!--cate_list end-->
		</div><!--d_z_content end-->
	</div><!--dl_zc end-->
	<div class="blank10"></div>
</div><!--content end-->
<div class="footer container">
	<jsp:include page="../foot1.jsp" /> 
</div><!--footer end-->
<script src="js/online.js" type="text/javascript"></script>	
<script type="text/javascript" src="<%=path %>/js/lian/distpicker.data.js"></script>
<script type="text/javascript" src="<%=path %>/js/lian/distpicker.js"></script>
<script type="text/javascript" src="<%=path %>/js/lian/main.js"></script>
</body>
</html>