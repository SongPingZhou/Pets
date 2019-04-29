<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>成功加入购物车</title>
<link rel="stylesheet" type="text/css" href="css/zhong.css" />
<link rel="stylesheet" type="text/css" href="css/xq.css" />
<link rel="stylesheet" type="text/css" href="css/xqqq.css" />
<script type="text/javascript" src="js/chenggong/index/jQuery.js"></script>
<script type="text/javascript" src="js/chenggong/index/zhonglin.js"></script>
<script type="text/javascript" src="js/chenggong/index/zhongling2.js"></script>
</head>
<%-- <jsp:include page="header.jsp"> --%>
<body style="position:relative;">
    <!--内容开始-->
    <div class="zl2-cgjr w1200">
    	<div class="zl2-cgjrl f-l">
        	<h3>商品已成功加入购物车！</h3>
            <p>商品数量有限，请您尽快下单并付款！</p>
        </div>
        <div class="zl2-cgjrr f-l">
            <p>您还可以<a href="IndexServlet">继续购物</a></p>
        </div>
        <div style="clear:both;"></div>
    </div>
   <%--  <jsp:include page="foot.jsp"> --%>
</body>
</html>



