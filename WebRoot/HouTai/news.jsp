<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
  <title>导购</title>
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
layui.use("table",function(){
	var table=layui.table;
	table.render({
		elem:"#newsid",
		id:"newsidfilter",
		method:"post",
		height:670,
		url:"../SelectServlet?method=SelectNews",
		toolbar : "#inputid",
		page : true,
		limit:10,
		cols:[[
			 {checkbox:true,width : 80},
			 {title:"导购名称",width : 100,templet:'<div>{{d.name}}</div>'},
			 {title:"导购图片",width : 100,templet:"<div><img src='../Img/{{d.productpic.picUrl}}'></img></div>"},
			 {title:"导购详情",width : 400,templet:'<div>{{d.details}}</div>'}
			 , {
					fixed : 'right',
					title : "",
					width : 300,
					
				}
		]]
	});
});
function zengjia() {
		index = layer.open({
			type : 2,
			title : '添加导购',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "800px", "600px" ],
			content : 'addNews.jsp'
			
		});
	}
	
	
	//删除
	function shanchu() {
		layui.use([ "table", "layer", "form" ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var form = layui.form;
			//获取表格的选中项		
			var checeds = table.checkStatus("newsidfilter");
			if (checeds.data.length >= 1) {
				layer.open({
					title : "您确定要删除吗？",
					btn : [ "确认删除", "取消" ],
					yes : function() {
						var a = "";
						for ( var j = 0; j < checeds.data.length; j++) {
							var data = checeds.data[j];
							a += data.nid + ",";
						}
						var id = a.substring(0, a.length - 1);
						var url = "../DeleteServlet?method=DeleteNews";
						$.post(url, {
							id : id,
						}, function(res) {//回调函数
							if (res.success)//success表示后端对我们的提问是否进行了成功的处理
								alert(res.message);//message表示后端返回给前端的信息
							location.href = "news.jsp";
						}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。

					}

				});
			}
		});

	}
</script>
<style>
 .layui-table-cell{
    width:400px;
    height:80px;
 }
</style>
  <body>
     <script type="text/html" id="inputid">
		 <button type="button" class="layui-btn layui-btn-radius layui-btn-sm " onclick="zengjia()">增加</button>  
         <button type="button" class="layui-btn layui-btn-radius layui-btn-sm " onclick="shanchu()">批量删除</button>
       
</script>
      <jsp:include page="public.jsp"></jsp:include> 
      
      <table id="newsid" lay-filter="newsidfilter"></table>
  </body>
</html>
