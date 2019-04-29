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

<title>留言</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>

<script type="text/javascript">
	layui.use("table", function() {
		var table = layui.table;
		table.render({
			elem : "#commentsid",
			id : "commentsidfilter",
			method : "post",
			height : 620,
			url : "../SelectServlet?method=SelectComments",
			toolbar : "#inputid",
			width : 1160,
			page : true,
			cols : [ [ {
				checkbox : true,
				width : 80
			}, {
				field : "id",
				title : "编号",
				width : 80
			}, {
				title : "用户",
				width : 80,
				templet : '<div>{{d.user.username}}</div>'
			}, {
				title : "宠物名称",
				width : 100,
				templet : '<div>{{d.product.productName}}</div>'
			}, {
				field : "CommentContent",
				title : "评论内容",
				width : 150
			}, {
				field : "CommenTime",
				title : "评论时间",
				width : 100
			}, {
				field : "bodyPrc",
				title : "回复内容",
				width : 150
			}, {
				field : "ProductMarks",
				title : "宠物打分",
				width : 88
			}, {
				field : "Status",
				title : "是否公开评论",
				width : 100,
				templet : '#titleTpl'
			}, {
				fixed : 'right',
				title : "操作",
				width : 220,
				toolbar : '#inputidx'
			} ] ]
		});
	});
	//重载表格
	function state(n) {
		layui.use("table", function() {

			var table = layui.table;
			table.reload("commentsidfilter", {
				url : "../SelectServlet?method=SelectCommentsTypeByid",
				where : {
					bodyPrc : n
				}
			});
		});
	}
	

	/*
	 查看：
	 1.获取选中数据的id
	 2.根据id查询详细信息
	 3.打开弹出层显示数据
	 */

	function zengjia() {
		index = layer.open({
			type : 2,
			title : '增加',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "400px", "400px" ],
			offset : [ '100px', '400px' ],
			content : 'addComments.jsp',
			end : function(layer, index) {
			},
			cancel : function(index, layero) {
				layer.close(index);
				location.href = "comments.jsp";
			}
		});
	}
	function xiugai() {
		layui.use([ "table", "layer" ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var id = table.checkStatus("commentsidfilter").data[0].id;
			layer.open({
				title : "修改",
				type : 2,
				content : "../UpdateByid?method=UpdateCommentByid&id=" + id,
				area : [ "500px", "500px" ]
			});
		});
	}

	//删除
	function shanchu() {
		layui.use([ "table", "layer", "form" ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var form = layui.form;
			//获取表格的选中项		
			var checeds = table.checkStatus("commentsidfilter");
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
						var url = "../DeleteServlet?method=DeleteComments";
						$.post(url, {
							id : id,
						}, function(res) {//回调函数
							if (res.success)//success表示后端对我们的提问是否进行了成功的处理
								alert(res.message);//message表示后端返回给前端的信息
							location.href = "comments.jsp";
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
						, element = layui.element;//元素操作
						/* layer.msg('欢迎来到宠物类页面'); */

						//监听行工具事件
						table
								.on(
										'tool(commentsidfilter)',
										function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
											var data = obj.data //获得当前行数据
											, layEvent = obj.event; //获得 lay-event 对应的值
											if (layEvent == 'detail') {
												var id = obj.data.id;
												layer
														.open({
															title : "查看详细信息",
															type : 2,
															content : "../SelectByid?method=SelectCommentsByid&id="
																	+ id,
															area : [ "600px",
																	"400px" ]
														});
											} else if (layEvent == 'del') {
												layer
														.confirm(
																'真的删除行么',
																function(index) {
																	var id = obj.data.id;
																	var url = "../DeleteServlet?method=DeleteComments";
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
																						location.href = "comments.jsp";
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
															title : "回复",
															type : 2,
															content : "../UpdateByid?method=UpdateCommentByid&id="
																	+ id,
															area : [ "400px",
																	"300px" ],
														});
											}
										});
					});
</script>
<script type="text/html" id="titleTpl">
  {{#  if(d.Status==1){ }}
       公开
 {{#  } else { }}
        不公开 
  {{#  } }}
</script>
<script type="text/html" id="inputidx">
  		<a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " lay-event="detail">查看</a>
  		<a class="layui-btn layui-btn-radius layui-btn-warm layui-btn-sm " lay-event="edit">回复</a>
		<a class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
	</script>
<body>
	<script type="text/html" id="inputid">
        <button class="layui-btn layui-btn-radius layui-btn-danger layui-btn-sm" onclick="shanchu()">批量删除</button>
        <button type="button"  class="layui-btn layui-btn-radius layui-btn-warm layui-btn-sm" onclick="state(0)">已回复</button>	
		<button type="button" class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm layui-btn-sm" onclick="state('')">未回复</button>
</script>
	<div class="container-scroller">
		<jsp:include page="public.jsp"></jsp:include>
		<table id="commentsid" lay-filter="commentsidfilter"></table>
	</div>
</body>
</html>
