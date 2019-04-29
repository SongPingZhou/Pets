<%@page import="com.ysd.entity.Productcategory"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>宠物类别</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
</head>
<script type="text/javascript">
	function zengjia() {
		index = layer.open({
			type : 2,
			title : '添加宠物类',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "400px", "400px" ],
			content : 'addProductCategory.jsp',
			cancel : function(index, layero) {
				layer.close(index);
				location.href = "productCategory.jsp";
			}
		});
	}

	function shanchu() {
		layui
				.use(
						[ "table", "layer", "form" ],
						function() {
							var table = layui.table;
							var layer = layui.layer;
							var form = layui.form;
							//获取表格的选中项		
							var checeds = table
									.checkStatus("productCategoryidfilter");
							if (checeds.data.length >= 1) {
								layer
										.open({
											title : "您确定要删除吗？",
											btn : [ "确认删除", "取消" ],
											yes : function() {
												var a = "";
												for ( var j = 0; j < checeds.data.length; j++) {
													var data = checeds.data[j];
													a += data.id + ",";
												}
												var id = a.substring(0,
														a.length - 1);
												var url = "../DeleteServlet?method=DeleteProductCategory";
												$
														.post(
																url,
																{
																	id : id,
																},
																function(res) {//回调函数
																	if (res.success)//success表示后端对我们的提问是否进行了成功的处理
																		alert(res.message);//message表示后端返回给前端的信息
																	location.href = "productCategory.jsp";
																}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
											}
										});
							}
						});
	}
</script>

<script type="text/html" id="inputidx">
        <button class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm" onclick="zengjia()" >增加</button>
</script>
<body>
	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		<table id="demo" lay-filter="test"></table>
	</div>
	<script type="text/html" id="inputid">
  		<a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " lay-event="detail">查看</a>
  		<a class="layui-btn layui-btn-radius layui-btn-warm layui-btn-sm " lay-event="edit">编辑</a>
 		<a class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
	</script>
	<script type="text/javascript">
		layui
				.use(
						[ 'layer', 'table', 'element' ],
						function() {
							var layer = layui.layer //弹层
							, table = layui.table //表格
							, laypage = layui.laypage //分页
							, element = layui.element;//元素操作
							console.log(table);
							layer.msg('欢迎来到宠物类页面');

							element.on('tab(demo)', function(data) {
								layer.tips('切换了 ' + data.index + '：'
										+ this.innerHTML, this, {
									tips : 1
								});
							});
							//表格实例
							table
									.render({
										elem : "#demo",
										height : 620,
										id : "testTable",
										url : "../SelectServlet?method=SelectProductCategory",
										page : true,
										toolbar : '#inputidx',
										method : "post",
										width : "800px",
										cols : [ [ {
											field : "id",
											title : "编号",
											width : 200,
											sort : true
										}, {
											field : "productCategoryName",
											width : 300,
											title : "宠物类别"
										}, {
											field : "leiName",
											width : 300,
											title : "父类",
											templet:function(d){
												if(d.ParentId==0){
													return "顶层类";
												}
												return d.leiName;
											}
											}, {
											fixed : 'right',
											title : "操作",
											width : 300,
											toolbar : '#inputid'
										} ] ]
									});
							//监听行工具事件
							table
									.on(
											'tool(test)',
											function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
												var data = obj.data //获得当前行数据
												, layEvent = obj.event; //获得 lay-event 对应的值
												if (layEvent == 'detail') {
													var id = obj.data.id;
													layer
															.open({
																title : "查看宠物类",
																type : 2,
																content : "../SelectByid?method=SelectProductCategoryByid&id="
																		+ id,
																area : [
																		"400px",
																		"350px" ]
															});
												} else if (layEvent == 'del') {
													layer
															.confirm(
																	'真的删除行么',
																	function(
																			index) {
																		var id = obj.data.id;
																		var url = "../DeleteServlet?method=DeleteProductCategory";
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
																							location.href = "productCategory.jsp";
																						},
																						"json");
																		//obj.del(); 删除对应行（tr）的DOM结构
																		layer
																				.close(index);
																		//向服务端发送删除指令
																	});
												} else if (layEvent == 'edit') {
													var data = obj.data.id; //获得当前行数据
													layer
															.open({
																title : "修改",
																type : 2,
																content : "../UpdateByid?method=UpdateProductCategoryByid&id="
																		+ data,
																area : [
																		"400px",
																		"350px" ],
															});

												}
											});
							//分页
							laypage.render({
								elem : 'pageDemo' //分页容器的id
								,
								count : 100 //总页数
								,
								skin : '#1E9FFF' //自定义选中色值
								//,skip: true //开启跳页
								,
								jump : function(obj, first) {
									if (!first) {
										layer.msg('第' + obj.curr + '页', {
											offset : 'b'
										});
									}
								}
							});

						});
	</script>
</body>
</html>
