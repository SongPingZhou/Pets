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
<title>订单</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>





<style type="text/css">
input {
	width: 80px;
}
</style>
</head>
<script type="text/javascript">
	$(function() {
		select();
	});
	function select() {
		layui.use("table", function() {
			var table = layui.table;
			table.render({
				elem : "#ordersid",
				id : "ordersidfilter",
				method : "post",
				height : 620,
				url : "../SelectServlet?method=SelectOrders",
				toolbar : "#inputid",
				width : 1250,
				page : true,
				limit:10,
				cols : [ [ {
					checkbox : true,
					width : 80
				},  {
					title : "客户名称",
					width : 100,
					templet : '<div>{{d.user.username}}</div>'
				}, {
					field : "ShipName",
					title : "快递公司名",
					width : 100
				}, {
					field : "ShipNum",
					title : "快递单号",
					width : 100
				},{
					field : "OrderDate",
					title : "下单时间",
					width : 150
				}, {
					field : "TotalMoney",
					title : "总金额",
					width : 100
				}, {
					field : "Status",
					title : "订单状态",
					width : 100,
					templet : '#titleTpl'
				}, {
					field : "ShipDate",
					title : "快递时间",
					width : 150
				}, {
					fixed : 'right',
					title : "操作",
					width : 300,
					toolbar : '#inputidx'
				}

				] ]
			});
		});
	}
	function searchStu() {
		var CustomerId = $("#s_employeeNo").val();
		var Status = $("#s_sex").val();
		var ShipName = $("#ShipName").val();
		var ShipNum = $("#s_nationality").val();
		var OrderDate = $(":input[name=s_bbirthday]").val();
		var s_ebirthday = $(":input[name=s_ebirthday]").val();
		var ShipProvince = $("#s_education").val();
		layui.use("table", function() {
			var table = layui.table;
			table.reload("ordersidfilter", {
				url : "../SelectServlet?method=SelectOrders",
				where : {
					CustomerId : CustomerId,
					Status : Status,
					ShipName : ShipName,
					ShipNum : ShipNum,
					OrderDate : OrderDate,
					ShipProvince : ShipProvince,
					s_ebirthday : s_ebirthday
				},
				page : {
					curr : 1
				},
			});
		});
	}
	/*
	 查看：
	 1.获取选中数据的id
	 2.根据id查询详细信息
	 3.打开弹出层显示数据
	 */
	function chakanStu() {
		layui.use([ "table", "layer" ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var id = table.checkStatus("ordersidfilter").data[0].id;
			layer.open({
				title : "查看详细信息",
				type : 2,
				content : "../SelectByid?method=SelectOrdersByid&id=" + id,
				area : [ "500px", "500px" ]
			});
		});
	}

	function state(n) {
		layui.use("table", function() {
			var table = layui.table;
			table.reload("ordersidfilter", {
				url : "../SelectServlet?method=SelectOrdersTypeByid",
				where : {
					Sta : n
				}
			});
		});
	}
	function fahuo() {

		layui.use([ "table", "layer" ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var id = table.checkStatus("ordersidfilter").data[0].id;
			layer.open({
				title : "修改",
				type : 2,
				content : "../UpdateByid?method=UpdateOrdersByid&id=" + id,
				area : [ "50px", "200px" ]
			});
		});
	}

	layui.use([ 'layer', 'table', 'element' ], function() {
		var layer = layui.layer //弹层
		, table = layui.table //表格
		, element = layui.element;//元素操作
		/* layer.msg('欢迎来到宠物类页面'); */

		//监听行工具事件 
		table.on('tool(ordersididfilter)', function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
			var data = obj.data //获得当前行数据
			, layEvent = obj.event; //获得 lay-event 对应的值
			
			if (layEvent == 'detail') {
				var id = obj.data.id;
				layer.open({
					title : "订单管理",
					type : 2,
					content : "../SelectByid?method=SelectOrdersByid&id=" + id,
					area : [ "1100px", "600px" ]
				});
			}else if(layEvent == 'deta'){
			var id = obj.data.id;
				 
				layer.open({
					title : "订单管理",
					type : 2,
					content : "../SelectByid?method=SelectOrdersByida&id=" + id,
					area : [ "1100px", "600px" ]
				});
			
			
			} else if (layEvent == 'edit') {
			
				var id = obj.data.id; //获得当前行数据
				layer.open({
					title : "修改",
					type : 2,
					content : "../UpdateByid?method=UpdateOrdersByid&id=" + id,
					area : [ "300px", "200px" ],
				});
			}  else if (layEvent == 'edi') {
				var id = obj.data.id; //获得当前行数据
				layer
						.open({
							title : "修改",
							type : 2,
							content : "../UpdateByid?method=UpdateOrdersAllByid&id="
									+ id,
							area : [ "500px",
									"500px" ],
						});

			}
			
		});
	});
	
	
	//删除
	
</script>
<script type="text/html" id="inputidx">
        <a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " lay-event="deta">查看</a>
  		<a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " lay-event="detail">管理</a>
	</script>
<script type="text/html" id="titleTpl">
  {{#  if(d.Status==0){ }}
        未发货   
  {{#  } if(d.Status==2){ }}
       未付款
  {{#  } if(d.Status==4){ }}
       未收货
  {{#  } if(d.Status==6){ }}
       未评价
  {{#  } if(d.Status==7){ }}
       已评价
  {{#  } }}
</script>
<body>
	<script type="text/html" id="inputid">
		
        <button type="button" class="layui-btn layui-btn-radius layui-btn-sm " onclick="state(0)">未发货</button> 
</script>
	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		<div>
			<form id="search" method="post">
				&nbsp;客户名称:&nbsp;<input type="text" name="s_employeeNo"
					id="s_employeeNo" size="10" /> &nbsp;快递名:&nbsp;<input type="text"
					name="s_name" id="ShipName" size="10" /> &nbsp;发货状态:&nbsp;<select
					id="s_sex" name="s_sex" editable="false" panelHeight="auto">
					<option value="">--请选择--</option>
					<option value="0">未发货</option>
					<option value="2">未付款</option>
					<option value="4">未收货</option>
					<option value="6">未评价</option>
					<option value="7">已评价</option>
				</select> &nbsp;下单时间 :&nbsp;<input type="text" class="easyui-datebox"
					name="s_bbirthday" id="s_bbirthday" size="11" editable="false" />
				<input type="text" class="easyui-datebox" name="s_ebirthday"
					id="s_ebirthday" size="11" editable="false" /> &nbsp;快递单号 :&nbsp;<input
					type="text" name="s_nationality" id="s_nationality" size="10" />
				&nbsp;省份:&nbsp;
				<!-- <input type="text" name="s_education" id="s_education" size="10" /> -->
				<select id="s_education" name="s_education" editable="false"
					panelHeight="auto">
					<option value="">---------请选择--------</option>
					<option value="北京市">北京市</option>
					<option value="天津市">天津市</option>
					<option value="河北省">河北省</option>
					<option value="山西省">山西省</option>
					<option value="内蒙古自治区">内蒙古自治区</option>
					<option value="辽宁省">辽宁省</option>
					<option value="吉林省">吉林省</option>
					<option value="黑龙江省">黑龙江省</option>
					<option value="上海市">上海市</option>
					<option value="江苏省">江苏省</option>
					<option value="浙江省">浙江省</option>
					<option value="安徽省">安徽省</option>
					<option value="福建省">福建省</option>
					<option value="江西省">江西省</option>
					<option value="山东省">山东省</option>
					<option value="河南省">河南省</option>
					<option value="湖北省">湖北省</option>
					<option value="湖南省">湖南省</option>
					<option value="广东省">广东省</option>
					<option value="广西壮族自治区">广西壮族自治区</option>
					<option value="海南省">海南省</option>
					<option value="重庆市">重庆市</option>
					<option value="四川省">四川省</option>
					<option value="贵州省">贵州省</option>
					<option value="云南省">云南省</option>
					<option value="西藏自治区">西藏自治区</option>
					<option value="陕西省">陕西省</option>
					<option value="甘肃省">甘肃省</option>
					<option value="青海省">青海省</option>
					<option value="宁夏回族自治区">宁夏回族自治区</option>
					<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
					<option value="台湾省">台湾省</option>
					<option value="香港特别行政区">香港特别行政区</option>
					<option value="澳门特别行政区">澳门特别行政区</option>
				</select> <a href="javascript:searchEmployee()" class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-search'"
					onclick="searchStu()" plain="true">搜索</a>
			</form>
			<table id="ordersid" lay-filter="ordersididfilter"></table>
		</div>
	</div>
</body>
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

</html>
