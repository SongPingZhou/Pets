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

<title>图片</title>
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
				elem : "#productpicid",
				id : "productpicidfilter",
				height : 620,
				method : "post",
				url : "../SelectServlet?method=SelectProductPic",
				toolbar : "#inputid",
				page : true,
				cols : [ [ {
					checkbox : true,
					width : 80
				}, {
					field : "picUrl",
					  width:"200px",
					title : "图片",
					templet : "<div><img src='../Img/{{d.picUrl}}'></div>"
				}, {
					field : "creaTime",
					width : 456,
					title : "上传时间"
				}, {
					fixed : 'right',
					title : "操作",
					width : 300,
					toolbar : '#inputidx'
				} ] ]
			});
		});
	}
//监听行工具事件
 layui.use([ 'layer', 'table', 'element' ], function() {
		var layer = layui.layer //弹层
		, table = layui.table //表格
		, element = layui.element;//元素操作
		/* layer.msg('欢迎来到宠物类页面'); */

		//监听行工具事件 
		table.on('tool(productpicidfilter)', function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
			var data = obj.data //获得当前行数据
			, layEvent = obj.event; //获得 lay-event 对应的值
			if (layEvent == 'edit') {
				var id = obj.data.id; //获得当前行数据
				layer.open({
					title : "修改",
					type : 2,
					content : "../UpdateByid?method=UpdateProductPicByid&id=" + id,
					area : [ "600px", "600px" ],
				});
			}
		});
	});
	
</script>
<script type="text/html" id="inputidx">
  		<a class="layui-btn layui-btn-radius layui-btn-warm layui-btn-sm" lay-event="edit">编辑</a>
</script>
<style>
 .layui-table-cell{
    width:400px;
    height:80px;
 }
</style>

<body>

	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		<table id="productpicid" lay-filter="productpicidfilter"></table>
	</div>



</body>
</html>
