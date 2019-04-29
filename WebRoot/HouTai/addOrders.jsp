<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
  <title>订单增加页面</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>
 <script type="text/javascript">
  function checkForm(){
    var CustomerId=document.getElementById("CustomerId").value;
    var ShipName=document.getElementById("ShipName").value;
    var ShipNum=document.getElementById("ShipNum").value;
		if(CustomerId==""||ShipName==""||ShipNum==""){
		alert("不能为空");
			return false;
		}else{
			return true;
		}
    }
		function addst(){
			if(checkForm()){
				var url="../AddServlet?method=AddOrders"
				var data=$("#form2").serialize();
			$.post(url,data,function(res){//回调函数
				if(res.success)//success表示后端对我们的提问是否进行了成功的处理
					alert(res.message);//message表示后端返回给前端的信息
			},"json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
			}else{
				alert("请填写完整");
			}
	}
  </script> 
  <body>
    <form class="layui-form" id="form2" name="form2" lay-filter="formTestFilter" method="post" >
	                <div class="layui-input-inline">
	                 下单时间：
	                	<input type="text" id="OrderDate" name="OrderDate"  class="layui-input">
	                </div>
	                  <br/>
	            
	                 <div class="layui-form-item">
			<label class="layui-form-label">客户</label>
			<div class="layui-input-block">
				<select style="display: inline;" id="CustomerId"  name="CustomerId">
					<c:forEach items="${user}" var="user">
						<option value="${user.id }">${user.username }</option>
					</c:forEach>
				</select>
			</div> 
		</div>
	                  <br/>
	                <div class="layui-input-inline">
	            总金额
	                	<input type="text" id="TotalMoney" name="TotalMoney"  class="layui-input"  >
	                </div>
	               <br/>
	                <div class="layui-input-inline">
	            订单状态
	                    <input type="text" id="Status" name="Status"  class="layui-input"  >
	                </div>
	                <br/>
	                   <div class="layui-input-inline">
	           快递公司名
	                    <input type="text" id="ShipName" name="ShipName"  class="layui-input"  >
	                </div>
	                <br/>   
	                 <div class="layui-input-inline">
	             快递单号
	                    <input type="text" id="ShipNum" name="ShipNum"  class="layui-input"  >
	                </div>
	                <br/>   
	                 <div class="layui-input-inline">
	           快递时间
	                    <input type="text" id="ShipDate" name="ShipDate"  class="layui-input" >
	                </div>
	                <br/>   
	                 <div class="layui-input-inline">
	         国家
	                    <input type="text" id="ShipCountry" name="ShipCountry"  class="layui-input"  >
	                </div>
	                <br/>  
	               <div class="layui-input-inline">
	         省份
	                    <input type="text" id="ShipProvince" name="ShipProvince"  class="layui-input"  >
	                </div>
	                <br/>  
	                 <div class="layui-input-inline">
	           城市
	                    <input type="text" id="ShipCity" name="ShipCity"  class="layui-input"  >
	                </div>
	                <br/>  
	                 <div class="layui-input-inline">
	             县区
	                    <input type="text" id="ShipTown" name="ShipTown"  class="layui-input" >
	                </div>
	                <br/>  
	                 <div class="layui-input-inline">
	              详细地址
	                    <input type="text" id="ShipAddress" name="ShipAddress"  class="layui-input"  >
	                </div>
	                <br/>  
	                 <div class="layui-input-inline">
	             邮编
	                    <input type="text" id="ShipPostCode" name="ShipPostCode"  class="layui-input" >
	                </div>
	                <br/>  
	                  <div class="layui-input-inline">
	           拓展
	                    <input type="text" id="Ext2" name="Ext2"  class="layui-input"  >
	                </div>
	                <br/>  
	                 <div class="layui-input-inline  layui-form-label"> 
	                	<input type="button"  class="layui-btn" value="提交"  onclick="addst()" />
	                </div>
	        </form>
  </body>
</html>
