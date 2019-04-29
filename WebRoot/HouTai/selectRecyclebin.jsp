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
<script type="text/javascript">
	$(function(){
		inittab();
	});
	function inittab(){
   	layui.use("table",function(){
   		var table=layui.table;
   		table.render({
   			elem:"#demoss",
   			width:1100,
   			id:"testhuishou",
   			page:true,
										limit : 5,
										limits : [ 5, 10, 15 ],
										url : "../SelectServlet?method=SelectRecyclebin",
										cols :[ [ {
													checkbox : true,
													width : 73
												}, {
													field : "id",
													title : "id",
													width :  73
												}, {
													field : "CategoryId",
													title : "父类",
													width : 73
												}, {
													field : "productName",
													title : "名称",
													width : 73
												}, {
													field : "UnitPrice",
													title : "售价",
													width : 73
												}, {
													field : "SellPrice",
													title : "市场价",
													width : 73
												}, {
													field : "DiscountPrice",
													title : "描叙",
													width : 73
												}, {
													field : "QuantityPerUnit",
													title : "上下架",
													width : 73
												}, {
													field : "clicks",
													title : "是否推介",
													width : 73
												}, {
													field : "weight",
													title : "重量",
													width : 73
												}, {
													field : "Size",
													title : "身高",
													width : 73
												}, {
													field : "color",
													title : "颜色",
													width : 73
												}, {
													field : "Description",
													title : "描叙",
													width : 73
												}, {
													fixed : 'right',
													title : "操作",
													width : 100,
													toolbar : '#inputidx'
												} ] ]
									});
						});
	}
		function huoqu(){
		   var id=0;var CategoryId=0;var productName=0;var UnitPrice=0;var SellPrice=0;var DiscountPrice=0;var QuantityPerUnit=0;var  clicks=0;var  weight=0;var Size=0;var color=0;var Description=0;
		   layui.use("table",function(){
		   		var table=layui.table;
		   		var chced=table.checkStatus("testhuishou");
		   		id=chced.data[0].id;
		   		CategoryId=chced.data[0].CategoryId;
		   		productName=chced.data[0].productName;
		   		UnitPrice=chced.data[0].UnitPrice;
		   		SellPrice=chced.data[0].SellPrice;
		   		DiscountPrice=chced.data[0].DiscountPrice;
		   		QuantityPerUnit=chced.data[0].QuantityPerUnit;
		   		clicks=chced.data[0].clicks;
		   		weight=chced.data[0].weight;
		   		Size=chced.data[0].Size;
		   		color=chced.data[0].color;
		   		Description=chced.data[0].Description;
	   		});
   		var arr=id+","+CategoryId+","+productName+","+UnitPrice+","+SellPrice+","+DiscountPrice+","+QuantityPerUnit+","+clicks+","+weight+","+Size+","+color+","+Description;
  	 	return arr;
   }
   function AddSelect(){
   var product=huoqu();
   layui.use("layer",function(){
   var layer=layui.layer;
   	layer.confirm("您确定要恢复已删除的数据吗？",{
   	btn:["确定","我在想想"],
   	btn2:function(index,layero){
   	}
   	},function(index){
   		$.post("../AddServlet?method=AddProductTestServlet",{product:product},function(data){
   		var data=eval("("+data+")");
   			if(data.code>1){
   				alert("恢复成功");
   			}
   			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			parent.layer.close(index);
			inittab("");
   		});
   	});
   });
   }
   
   
   layui.use([ 'layer', 'table', 'element' ],function() {
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
						//监听行工具事件
						table.on('tool(productidfilter)',function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
											var data = obj.data //获得当前行数据
											, layEvent = obj.event; //获得 lay-event 对应的值
											if (layEvent == 'del') {
											layer.confirm('移除后将不可恢复！',
															function(index) {
																var id = obj.data.id;
																var url = "../DeleteServlet?method=DeleteRecyclebin";
																$.post(url,{id : id,},function(res) {//回调函数
																		if (res.success)//success表示后端对我们的提问是否进行了成功的处理
																			alert(res.message);//message表示后端返回给前端的信息
																		window.location.reload();
																	},"json");
																//obj.del(); 删除对应行（tr）的DOM结构
																layer.close(index);
																//向服务端发送删除指令
															});
											}
										});
					});
</script>
<script type="text/html" id="inputidx">
 		<a class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" lay-event="del">移除</a>
	</script>
<body>
	<div class="container-scroller">
		<center>
		<br/>
			<button class="layui-btn layui-btn-sm" onclick="AddSelect()">恢复</button> 
			<table id="demoss"  lay-filter="productidfilter"></table>
		</center>
	</div>
</body>
</html>
