<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>推介物品</title>
<link rel="stylesheet" href="css/layui.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/layui.js"></script>
</head>
		<%
       	String type1=request.getParameter("type1");
       %>

<script type="text/javascript">
	$(function(){
		inittab();
		
	});
	function inittab(){
   	layui.use("table",function(){
   		var table=layui.table;
   		table.render({
   			elem:"#demo",
   			width:900,
   			id:"positionTest",
   			page:true,
   			toolbar : "#inputid",
   			where:{id:<%=type1%>
	},
										limit : 5,
										limits : [ 5, 10, 15 ],
										url : "../SelectServlet?method=SelectPosition",
										cols : [ [
												{
													checkbox : true,
													width : 100,
													fixed : "left"
												},
												{
													title : "宠物名称",
													width : 200,
													sort : true,
													fixed : "left",
													templet : '<div>{{d.productName}}</div>'
												},
												{
													title : "宠物图片",
													width : 100,
													sort : true,
													fixed : "left", 
													templet : "<div><img src='../Img/{{d.pro.picUrl}} '/></div>"
												},
												{
													field : "",
													title : "宠物售价",
													width : 150,
													sort : true,
													fixed : "left",
													templet : '<div>{{d.SellPrice}}</div>'
												},
												{
													field : "",
													title : "宠物市场价 ",
													width : 150,
													sort : true,
													fixed : "left",
													templet : '<div>{{d.UnitPrice}}</div>'
												}, {
													fixed : 'right',
													title : "操作",
													width : 194,
													toolbar : '#inputidx'
												} ] ]
									});
						});
	}
	
	
	
	function zengjia() {
		index = layer.open({
			type : 2,
			title : '添加推介',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "500px", "450px" ],
			content : 'addPosition.jsp?type='+<%=type1%>
			
		});
	}
		layui
			.use(
					[ 'layer', 'table', 'element' ],
					function() {
						var layer = layui.layer //弹层
						, table = layui.table //表格
						, laypage = layui.laypage //分页
						, element = layui.element;//元素操作
						/* layer.msg('欢迎来到宠物类页面'); */

						element.on('tab(demo)', function(data) {
							layer.tips('切换了 ' + data.index + '：'
									+ this.innerHTML, this, {
								tips : 1
							});
						});

	table
								.on(
										'tool(productidfilter)',
										function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
											var data = obj.data //获得当前行数据
											, layEvent = obj.event; //获得 lay-event 对应的值
											if (layEvent == 'del') {
												layer
														.confirm(
																'真的删除行么',
																function(index) {
																	var id = obj.data.id;
																	var url = "../DeleteServlet?method=DeletePosition";
																	$
																			.post(
																					url,
																					{
																						id : id,
																					},
																					function(
																							res) {//回调函数
																						if (res.success)//success表示后端对我们的提问是否进行了成功的处理
																							alert(res.message);//message表示后端返回给前端的信息
																						window.location.reload();
																					},
																					"json");
																	//obj.del(); 删除对应行（tr）的DOM结构
																	layer
																			.close(index);
																	//向服务端发送删除指令
																});
											}
						});
					});
</script>
<script type="text/html" id="inputidx">
 		<a class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
	</script>
	<script type="text/html" id="inputid">
        <button class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm" onclick="zengjia()" >增加</button>
	</script>
<body>
	<div class="container-scroller">
		<center>
			<table id="demo"  lay-filter="productidfilter"></table>
		</center>
	</div>
</body>
</html>
