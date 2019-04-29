<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>订单管理</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>
</head>
    <base href="<%=basePath%>">  
    <title>My JSP 'ordersGuanLi.jsp' starting page</title>
  </head>
  <script type="text/javascript">
      $(function() {
		select();
	});
	function select() {
	 var OrderId= document.getElementById("OrderId").value;
		layui.use("table", function() {
			var table = layui.table;
			table.render({
				elem : "#ordersGuanLiid",
				id : "ordersGuanLiidfilter",
				method : "post",
				height : 900,
				url : "../Pets/SelectServlet?method=SelectOrdersGuanLi&OrderId="+OrderId,
				toolbar : "#inputid",
				width : 1250,
				page : true,
				cols : [ [ {
					checkbox : true,
					width : 200
				},  {
					title : "商品名称",
					width : 225,
					templet : '<div>{{d.product.productName}}</div>'
				}, {
					title : "图片",
					width : 100,
					templet : "<div><img src='../Pets/Img/{{d.productpic.picUrl}}'></div>"
				}, {
					title : "商品颜色",
					width : 200,
					templet : '<div>{{d.Color}}</div>'
				}, {
					title : "购买数量",
					width : 200,
					templet : '<div>{{d.Quantity}}</div>'
				},{
					fixed : 'right',
					title : "操作",
					width : 300,
					toolbar : '#inputidx'
				}

				] ]
			});
		});
	}
  
  
  
  
  layui.use([ 'layer', 'table', 'element' ], function() {
		var layer = layui.layer //弹层
		, table = layui.table //表格
		, element = layui.element;//元素操作
		/* layer.msg('欢迎来到宠物类页面'); */

		//监听行工具事件 
		table.on('tool(ordersGuanLiidfilter)', function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
			var data = obj.data //获得当前行数据
			, layEvent = obj.event; //获得 lay-event 对应的值
			
			if (layEvent == 'edit') {
					var id = obj.data.id; //获得当前行数据
					 
					url= "../Pets/UpdateServlet?method=UpdateOrdersDetailsFahuo&id=" + id;
					$.post(url,function(res){//回调函数
				if(res.success)//success表示后端对我们的提问是否进行了成功的处理
					alert(res.message);//message表示后端返回给前端的信息				
					
			},"json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
			
			
			
			}  else if (layEvent == 'edi') {
				var id = obj.data.id; //获得当前行数据
			 
				layer
						.open({
							title : "修改",
							type : 2,
							content : "../UpdateByid?method=UpdateOrdersDetailsAllByid&id="
									+ id,
							area : [ "500px",
									"500px" ],
						});

			}
			
		});
	});

  
  </script>
  <script type="text/html" id="inputidx">
  	    <a class="layui-btn layui-btn-radius layui-btn-sm " id="btnTest" lay-event="edit">发货</a>
	</script>
  <body>
  <center>
 <table id="ordersGuanLiid" lay-filter="ordersGuanLiidfilter"></table>
 <div style="display:none;"><input  id="OrderId" value="${orders[0].orderId}"> </div>
 </center>
  </body>                             
</html>
