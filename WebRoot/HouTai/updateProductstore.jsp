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

<title>库存修改页面</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>
</head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateProductstore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  <script type="text/javascript">
function addst(id){
		var url="UpdateServlet?method=UpdateProductStore&id="+id; 
		var data=$("#form2").serialize();
		$.post(url,data,function(res){//回调函数
			if(res.success)//success表示后端对我们的提问是否进行了成功的处理
				alert(res.message);//message表示后端返回给前端的信息
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
					parent.layer.close(index);
					parent.layui.table.reload("productStoreidfilter",{page:{curr:1}});
					
			},"json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
}
</script>
  <body>
  <center>
		<form class="layui-form" id="form2" name="form2"
			lay-filter="formTestFilter" method="post">
			<br /><br />
			<div class="layui-input-inline">
				库存量： <input type="text" id="QuantityInStock" name="QuantityInStock"
					value="${productstore.quantityInStock}" class="layui-input">
			</div>
			
			<br /> <br /> <input type="button" class="layui-btn" value="提交"
				onclick="addst(${productstore.id})" />
		</form>
	</center>
</body>
  </body>
</html>
