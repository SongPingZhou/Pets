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
<title>用户</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>
<script type="text/javascript">
	layui.use("table", function() {
		var table = layui.table;
		table.render({
			elem : "#userid",
			id : "userfilter",
			method : "post",
			height : 620,
			url : "../SelectServlet?method=SelectUser",
			toolbar : "#inputid",
			width : 1190,
			page : true,
			cols : [ [ {
				checkbox : true,
				width : 130
			}, {
				field : "id",
				title : "编号",
				width : 150
			}, {
				field : "username",
				title : "用户名",
				width : 150
			}, {
				field : "userpassword",
				title : "用户密码",
				width : 150
			}, {
				field : "Ext1",
				title : "Ext1",
				width : 150
			}, {
				fixed : 'right',
				title : "操作",
				width : 330,
				toolbar : '#inputidx'
			} ] ]
		});
	});
	function zengjia() {
		index = layer.open({
			type : 2,
			title : '增加',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "400px", "400px" ],
			content : 'addUser.jsp',
			end : function(layer, index) {
			},
			cancel : function(index, layero) {
				layer.close(index);
				location.href = "user.jsp";
			}
		});
	}

	//删除
	function shanchu() {
		layui.use([ "table", "layer", "form" ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var form = layui.form;
			//获取表格的选中项		
			var checeds = table.checkStatus("userfilter");
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
						var url = "../DeleteServlet?method=DeleteUser";
						$.post(url, {
							id : id,
						}, function(res) {//回调函数
							if (res.success)//success表示后端对我们的提问是否进行了成功的处理
								alert(res.message);//message表示后端返回给前端的信息
							location.href = "user.jsp";
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
						layer.msg('这里是查看所有用户的页面');

						element.on('tab(demo)', function(data) {
							layer.tips('切换了 ' + data.index + '：'
									+ this.innerHTML, this, {
								tips : 1
							});
						});

						//监听行工具事件
						table
								.on(
										'tool(userfilter)',
										function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
											var data = obj.data //获得当前行数据
											, layEvent = obj.event; //获得 lay-event 对应的值
											if (layEvent == 'selectUser') {
												var id = obj.data.id; //获得当前行数据
												layer
														.open({
															title : "查看用户",
															type : 2,
															content : "../SelectByid?method=SelectUserByid&id="
																	+ id,
															area : [ "400px",
																	"300px" ],
														});
											} else if (layEvent == 'del') {
												layer
														.confirm(
																'真的删除行么',
																function(index) {
																	var id = obj.data.id;
																	var url = "../DeleteServlet?method=DeleteUser";
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
																						location.href = "user.jsp";
																					},
																					"json");
																	//obj.del(); 删除对应行（tr）的DOM结构
																	layer
																			.close(index);
																	//向服务端发送删除指令
																});
											} else if (layEvent == 'edit') {
												var id = obj.data.id; //获得当前行数据
												layer
														.open({
															title : "修改",
															type : 2,
															content : "../UpdateByid?method=UpdateUserByid&id="
																	+ id,
															area : [ "500px",
																	"280px" ],
														});

											}
										});
					});
</script>
<script type="text/html" id="inputidx">
<a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm" lay-event="selectUser">查看</a>
<a class="layui-btn layui-btn-radius layui-btn-warm layui-btn-sm" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
	</script>
<body>
	<script type="text/html" id="inputid">
        <a class="layui-btn layui-btn-radius layui-btn-warm layui-btn-sm" onclick="zengjia()" >增加</a>
        <a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm" onclick="shanchu()">批量删除</a>
</script>
	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		<table id="userid" lay-filter="userfilter"></table>
	</div>
</body>
</html>
