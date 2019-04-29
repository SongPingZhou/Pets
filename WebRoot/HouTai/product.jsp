<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>宠物</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.4/themes/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
</head>
<script type="text/javascript">
	$(function() {
		selectProduct();
	});
	function selectProduct() {
		layui.use("table", function() {
			var table = layui.table;
			table.render({
				elem : "#productid",
				id : "productidfilter",
				height : 620,
				method : "post",
				url : "../SelectServlet?method=SelectProduct",
				toolbar : "#inputid",
				page : true,
				cols : [ [ {
					checkbox : true,
					width : 80
				}, {
					field : "id",
					width : 100,
					title : "名称"
				}, {
					field : "productName",
					width : 100,
					title : "名称"
				}, {
					title : "图片",
					width : 100,
					templet : "<div><img src='../Img/{{d.picUrl}}'></div>"
				}, {
					field : "UnitPrice",
					title : "进价",
					width : 100
				}, {
					field : "SellPrice",
					title : "销售价格",
					width : 100
				}, {
					field : "DiscountPrice",
					title : "打折后价格",
					width : 100
				}, {
					field : "QuantityPerUnit",
					title : "上下架",
					templet : '#titleTpl',
					width : 100
				}, {
					field : "clicks",
					title : "是否推介到首页",
					templet : '#tuijian',
					width : 100
				}, {
					fixed : 'right',
					title : "操作",
					width : 300,
					toolbar : '#inputidx'
				} ] ]
			});
		});
	}
	/*
	 查看：
	 1.获取选中数据的id
	 2.根据id查询详细信息
	 3.打开弹出层显示数据
	 */
	

function searchStu(){
	var CategoryId=$("#CategoryId").val();
	var productName=$("#productName").val();
 	var  StartSellPrice=$("#StartSellPrice").val();
 	var  EndSellPrice=$("#EndSellPrice").val();
 	var  clicks=$("#clicks").val();
	layui.use("table",function(){ 
		var table=layui.table;
		table.reload("productidfilter",{
			url:"../SelectServlet?method=SelectProduct",
			where:{
				  CategoryId:CategoryId,
			 		productName:productName,
			 		StartSellPrice:StartSellPrice,
			 		EndSellPrice:EndSellPrice,
			 		clicks:clicks,
			},
			page:{curr:1},
		});
	});
}
	 
	 
	function zengjia() {
		index = layer.open({
			type : 2,
			title : '添加宠物',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "1000px", "600px" ],
			content : 'addProduct.jsp'
			
		});
	}
	//删除
	function shanchu() {
		layui.use([ "table", "layer", "form" ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var form = layui.form;
			//获取表格的选中项		
			var checeds = table.checkStatus("productidfilter");
			if (checeds.data.length >= 1) {
				layer.open({
					title : "您确定要删除吗？",
					btn : [ "确认删除", "取消" ],
					yes : function() {
						var a = "";
						for ( var j = 0; j < checeds.data.length; j++) {
							var data = checeds.data[j];
							a += data.id + ",";
						}
						var id = a.substring(0, a.length - 1);
						var url = "../DeleteServlet?method=DeleteProduct";
						$.post(url, {
							id : id,
						}, function(res) {//回调函数
							if (res.success)//success表示后端对我们的提问是否进行了成功的处理
								alert(res.message);//message表示后端返回给前端的信息
							location.href = "product.jsp";
						}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。

					}

				});
			}
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

						//监听行工具事件
						table
								.on(
										'tool(productidfilter)',
										function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
											var data = obj.data //获得当前行数据
											, layEvent = obj.event; //获得 lay-event 对应的值
											if (layEvent == 'detail') {
												var id = obj.data.id;
												layer
														.open({
															title : "查看详细信息",
															type : 2,
															content : "../SelectByid?method=SelectProductByid&id="
																	+ id,
															area : [ "1000px",
																	"600px" ]
														});
											} else if (layEvent == 'del') {
												layer
														.confirm(
																'真的删除行么',
																function(index) {
																	var id = obj.data.id;
																	var url = "../DeleteServlet?method=DeleteProduct";
																	$
																			.post(
																					url,
																					{
																						id : id,
																					},
																					function(res) {//回调函数
																						if (res.success)//success表示后端对我们的提问是否进行了成功的处理
																							alert(res.message);//message表示后端返回给前端的信息
																						location.href = "product.jsp";
																					},
																					"json");
																	//obj.del(); 删除对应行（tr）的DOM结构
																	layer.close(index);
																	//向服务端发送删除指令
																});
											} else if (layEvent == 'edit') {
												var id = obj.data.id; //获得当前行数据
												layer.open({
															title : "修改",
															type : 2,
															content : "../UpdateByid?method=UpdateProductByid&id="
																	+ id,
															area : [ "1000px",
																	"600px" ],
														});

											}else if(layEvent=='addtupian'){
													var id = obj.data.id; //获得当前行数据
													layer
														.open({
															title : "添加宠物图片",
															type : 2,
															content : "addProductPic.jsp?type1="+id,
															area : [ "1000px",
																	"600px" ],
														});
											}
										});
					});
					
	function huishou(){
		index = layer.open({
			type : 2,
			title : '回收站',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "1300px", "700px" ],
			content : 'selectRecyclebin.jsp'
		});
	}
</script>
<script type="text/html" id="inputidx">
  		<a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " lay-event="detail">查看</a>
  		<a class="layui-btn layui-btn-radius layui-btn-warm layui-btn-sm" lay-event="edit">编辑</a>
 		<a class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
		<a class="layui-btn layui-btn-radius  layui-btn-sm" lay-event="addtupian">添加图片</a>
	</script>
</script>
<script type="text/html" id="titleTpl">
  {{#  if(d.QuantityPerUnit==1){ }}
       上架
 {{#  } else { }}
        下架 
  {{#  } }}
</script>
<script type="text/html" id="tuijian">
  {{#  if(d.clicks==1){ }}
       推荐到首页
 {{#  } else { }}
    不推荐到首页
  {{#  } }}
</script>
<body>

	<script type="text/html" id="inputid">
        <button class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm" onclick="zengjia()" >增加</button>
        <button class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" onclick="shanchu()">批量删除</button>
		<button  id="testhuishou" class="layui-btn layui-btn-radius layui-btn-sm" onclick="huishou()" >回收站</button>
	</script>
	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		 
		  <div>
		 <form id="search" method="post">
					<!--  &nbsp;宠物类别:&nbsp;<input type="text"  name="CategoryId"id="CategoryId" size="10" /> -->
					 &nbsp;宠物名称:&nbsp;<input type="text" name="productName" id="productName" size="10" />
					 &nbsp;价格 :&nbsp;<input type="text" placeholder="最低价" name="StartSellPrice" id="StartSellPrice" size="10" />
					 ~<input  placeholder="最高价" type="text" name="EndSellPrice" id="EndSellPrice" size="10" />
					  &nbsp;上下架 :&nbsp;<input type="text" placeholder="" name="clicks" id="clicks" size="10" />
					
				 	 <a href="javascript:searchEmployee()" class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-search'"
					onclick="searchStu()" plain="true">搜索</a>
			</form>
		<table id="productid" lay-filter="productidfilter"></table>
	</div>
</div>


</body>
</html>
