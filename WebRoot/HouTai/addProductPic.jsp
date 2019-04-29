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

<title>My JSP 'addProductPic.jsp' starting page</title>

<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>
<%
	String id = request.getParameter("type1");
%>
<script type="text/javascript">
	var layer, upload,img;
	layui.use('upload', function() {
		var $ = layui.jquery, upload = layui.upload;
		upload.render({
			elem : '#test10',
			url : '../SaveImgServlet?method=doGet',
			done : function(res) {
				console.log(res);
				layer.alert(res.success + res.remark);
				img = res.remark;
			}
		});
	});
	function addst(){
		/* if(duoImg==""){
			layer.msg("亲！至少需要添加一张配图才能提交哦！");
		} */
		 var r = /^\+?[1-9][0-9]*$/;
		var kucun=$("#kucun").val();
		if(r.test(kucun)){
			
		}else{
			layui.layer.alert("请输入正确的库存数量！");
			return;
		}
		var ProductPicColor = $("#ProductPicColor").val();
		if(ProductPicColor==""){
			layui.layer.alert("亲！图片属于什么颜色呢！");
			return;
		}																			/* &duoImg="+duoImg+" */											
		var url = "../AddServlet?method=AddProductPic&img="+img+"&ProductPicColor="+ProductPicColor+"&kucun="+kucun+"&id="+<%=id%>;
			
			$.post(url, ProductPicColor, function(data) {//回调函数
				var data=eval("("+data+")");
				if(data.code>=1){
					alert("添加成功");
				}else{
					alert("添加失败");
				}
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index);
				parent.layui.table.reload("productidfilter", {
					page : {
						curr : 1
					}
				});
			});
	}
</script>
<script type="text/javascript">
/* var duoImg="";
layui.use('upload', function() {
var $ = layui.jquery, upload = layui.upload;
	upload.render({
	    elem: '#test2'
	    ,url: '../SaveImgServlet?method=doPost'
	    ,multiple: true
	    ,before: function(obj){
	      //预读本地文件示例，不支持ie8
	      obj.preview(function(index, file, result){
	        $('#demo2').append('<img src="'+ result +'" style="width:80px;height:80px;" alt="'+ file.name +'" class="layui-upload-img">');
	      });
	    }
	    ,done: function(res){
	     duoImg+=res.remark+",";
	    }
	  });
	  }); */
</script>
<body>
	<input type="text" style="display: none" value="<%=id%>">
	<center>
			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 30px;">
				<legend>可拖拽上传配图片</legend>
			</fieldset>
			<div class="layui-upload-drag" id="test10">
				<i class="layui-icon"></i>
				<p>点击上传，或将文件拖拽到此处</p>
			</div>
			<!-- <fieldset class="layui-elem-field layui-field-title" style=" margin-top: 30px;">
			  <legend>上传多张配图</legend>
			</fieldset>
			<div class="layui-upload">
			  <button type="button" class="layui-btn" id="test2">多图片上传</button> 
			  <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
			    预览图：
			    <div class="layui-upload-list" id="demo2"></div>
			 </blockquote>
			</div> -->
			<br/><br/>
			<div class="layui-input-inline">
					 颜色: <br/><br/>
					<input type="text"id="ProductPicColor" name="ProductPicColor" class="layui-input">
			</div>
			<br/>
			<br/>
			<div class="layui-input-inline">
					 库存数量: <br/><br/>
					<input type="text"id="kucun" name="kucun" class="layui-input">
			</div>
			<br/>
			<br/>
			<input type="button" class="layui-btn" value="提交" onclick="addst()" />
			<br/>
	</center>
</body>
<style>
.layui-input-inline .layui-input {
	width: 180px;
}
</style>
</html>
