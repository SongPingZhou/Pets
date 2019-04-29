
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宠物</title>
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/personal.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/userdetail.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/order.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=path %>/layui(layui-v2.4.3)/css/layui.css" type="text/css"/>
<script type="text/javascript" src="<%=path %>/js/jquery-3.2.1.js"></script>
<%-- <script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script> --%>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>
<script type="text/javascript" src="<%=path %>/js/user.js"></script> 
<script type="text/javascript" src="<%=path %>/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript">
	function zuixin(){
		var userid=$("#userid").val();
			$.post("UserServlet?method=ZuiXinDongTai",{userid:userid},function(){
				window.location.reload();
			});
		};
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
					window.location.href="ReceptionServlet?index=2&userid="+uid;
				}else{
					layer.msg("添加失败");
				}
			});
		});
	}
	
	 function delAddress(a){
	    var uid=$("#userid").val();
		layui.use("layer",function(){
			var layer=layui.layer;
			$.post("ReceptionServlet?index=3",{addid:a},function(data){
				var data=eval("("+data+")");//servlet没有写;
				if(data.code>0){
					layer.msg("删除成功");
					window.location.href="ReceptionServlet?index=2&userid="+uid;
				}else{
					layer.msg("删除失败");
				}
		   });
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
															area : [ "500px",
																	"300px" ]
														});										
	});
	
	}

</script>
</head>
<body>
	<jsp:include page="../head.jsp" />
	<div class="content container">
	<div class="breadcrumbs">
		<a href="IndexServlet">首页</a><span>></span><a onclick="zuixin()">刷新最新动态</a><span>></span>我的收获地址
	</div><!--breadcrumbs end-->
	<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t">
				<h2>修改送货信息</h2>
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
								<input type="text" style="display:none " id="userid" value="${userid}" />
								<c:forEach items="${selectUserAddress}" var="add">
									<li class="cur" id="ra1">
										<div class="f_l">
											<input type="text" style="display:none " id="addid" value="${add.id}" />
											<label for="rad1"><strong>${add.name}</strong><span>${add.address}</span></label>
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
									<!-- <td></td><td height="50px"><a class="yellow" href="#">[添加到常用地址]</a></td> -->
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
	</div><!--personal_r end-->
	
	<script language="javascript" src="js/jquery.checkboxes.js"></script>
	
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
<script type="text/javascript" src="<%=path %>/js/lian/distpicker.data.js"></script>
<script type="text/javascript" src="<%=path %>/js/lian/distpicker.js"></script>
<script type="text/javascript" src="<%=path %>/js/lian/main.js"></script>
</html>