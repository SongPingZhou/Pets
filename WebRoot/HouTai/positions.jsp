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

<title>推荐位置</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>

</head>
<style type="text/css">
.layui-table-cell {
	height: auto;
	line-height: 100px;
}
</style>
<script type="text/javascript">
	$(function() {
		selectPositions();
	});
	function selectPositions() {
		layui.use("table", function() {
			var table = layui.table;
			table.render({
				elem : "#demo",
				id : "testTabel",
				height : 620,
				method : "post",
				url : "../SelectServlet?method=SelectPositions",
				toolbar : "#inputid",
				cols : [ [ {
					checkbox : true
				}, {
					field : "position",
					title : "推介的位置",
					templet : '#tuijian'
				} ] ]
			});
		});
	}
	function huoqu() {
		var id = 0;
		layui.use("table", function() {
			var table = layui.table;
			var chced = table.checkStatus("testTabel");
			id = chced.data[0].id;
		});
		return id;
	}
	function chakanStu() {
		var id = huoqu();
		layui.use("layer", function() {
			var layer = layui.layer;
			layer.open({
				title : "查看被推荐的页面",
				type : 2,
				content : "resPosition.jsp?type1=" + id,
				area : [ "1100px", "600px" ],
			});
		});
	}
</script>
<script type="text/html" id="tuijian">
 {{#  if(d.position==2){ }}
    首页的导购信息下的推介<img  src="images/qq.png" />
  {{#  } else{ }}
    详情页面的店家推荐区域<img  src="images/ee.jpg" />
  {{#  } }}
 	
</script>
<body>
	<script type="text/html" id="inputid">
  		<button class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " onclick="chakanStu()">查看推介商品</button>
	</script>
	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		<table id="demo" lay-filter="productidfilter"></table>
	</div>
</body>
</html>
