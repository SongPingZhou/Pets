<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>图片页面</title>
<link rel="stylesheet" href="HouTai/layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="HouTai/js/jquery-1.8.2.min.js"></script>
</head>
  <script type="text/javascript">
var layer, upload,img;
	layui.use('upload', function() {
		var $ = layui.jquery, upload = layui.upload;
		upload.render({
			elem : '#test10',
			url : 'SaveImgServlet?method=doGet',
			done : function(res) {
				console.log(res);
				layer.alert(res.success + res.remark);
				img = res.remark;
			}
		});
	});
  function addst(id){
		var url="UpdateServlet?method=UpdateProductPic&id="+id+"&img="+img; 
		var data=$("#form2").serialize();
	$.post(url, data, function(res) {//回调函数
				if (res.success)//success表示后端对我们的提问是否进行了成功的处理
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index);
				parent.layui.table.reload("productpicidfilter", {
					page : {
						curr : 1
					}
				});
			}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
}
  
  </script>
  <body>
  <center>
  <form class="layui-form" id="form2" name="form2"
			lay-filter="formTestFilter" method="post">
			<img alt="" src="Img/${Productpic.picUrl} ">
          <div class="layui-input-inline">
				<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 30px;">
				<legend>可拖拽上传替换轮播图片</legend>
			    </fieldset>
			<div class="layui-upload-drag" id="test10">
				<i class="layui-icon"></i>
				<p>点击上传，或将文件拖拽到此处</p>
			</div>
			</div>
			<br />
			<br /> <input type="button" class="layui-btn" value="提交"
				onclick="addst(${Productpic.id})" />
	</form>
	</center>
  </body>
</html>
