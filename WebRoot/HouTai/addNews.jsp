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

<title>导购增加页面</title>
<link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>
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
	function checkForm() {
		var name = document.getElementById("name").value;
		var pid = document.getElementById("pid").value;
		var details =$("iframe").contents().find("body").html();
		if (name == "" || pid == "" || details == "") {
			alert("所有内容必须填写完整！");
			return false;
		} else {
			return true;
		}
	}
	function addst() {
		if (checkForm()) {
			var url = "../AddServlet?method=AddNews";
			var data = $("#form2").serialize();
			$.post(url, data, function(res) {//回调函数
				if (res.success)//success表示后端对我们的提问是否进行了成功的处理
					//alert(res.remark);//message表示后端返回给前端的信息
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index);
				parent.layui.table.reload("newsidfilter", {
					page : {
						curr : 1
					}
				});
			}, "json"); //JSON是一种传递对象的语法，对象可以是name/value对，数组和其他对象。
		}
	}
</script>
<script>
layui.use('layedit', function(){
  var layedit = layui.layedit;
  layedit.build('details'); //建立编辑器
});
</script>
  <body>
    <center>
		<form class="layui-form" id="form2" name="form2"
			lay-filter="formTestFilter" method="post">
			<br /> <br />
			
			<div class="layui-input-inline">
				<div class="layui-form-item"><br/>
					 导购标题: 
					<input type="text" id="name" name="name" class="layui-input">
				</div>
			</div>
			<div class="layui-input-inline">
				被导购的宠物：  <br/>
					<select style="display: none; height: 38px; " id="pid" name="pid">
							<c:forEach items="${byName}" var="p">
								<option id="pid" value="${p.id}">${p.productName}</option>
							</c:forEach>
					</select>
			</div>
			<br/>
			<div class="layui-input-inline">
				<div class="layui-form-item"><br/>
					 导购内容: 
					<!-- <input type="text" id="details" style="" name="details" class="layui-input"> -->
					<textarea id="details" name="details" style="display: none; width: 700px;height: 70px;"></textarea>
				</div>
			</div>
			<br /> <br /> <input type="button" style="width: 120px;" class="layui-btn" value="提交" onclick="addst()" /> 
		</form>
	</center>
  </body>
</html>
