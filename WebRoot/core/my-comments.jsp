<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宠物商城</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/personal.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<link rel="stylesheet" href="../js/fenye/fenye.css" type="text/css"></link>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>
<script type="text/javascript" src="<%=path %>/js/user.js"></script>
 <script type="text/javascript" src="../js/fenye/jquery-1.8.3.min.js"></script>
 <script type="text/javascript" src="../js/fenye/jPages.js"></script>
<script>
	 function zuixin(){
		var userid=$("#userid").val();
		$.post("UserServlet?method=ZuiXinDongTai",{userid:userid},function(){
			window.location.reload();
		});
	};
</script>
<script type="text/javascript">
/*分页使用*/
$(function() {
	$("div.holder").jPages({
		containerID: "itemContainer",
		/* pause       : 4000, */
        clickStop   : true,
        previous: "←上一页",
		next: "下一页→",
		perPage:2
	});
});
</script>
</head>

<body>
 <input type="hidden" id="userid" value="${userid}" />
<jsp:include page="../head.jsp"/>
<div class="content container">
	<div class="breadcrumbs">
		<a href="IndexServlet">首页</a><span>></span><a onclick="zuixin()">刷新最新动态</a><span>></span>我的评论
	</div><!--breadcrumbs end-->
<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t">
				<h2>我的评论</h2>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m comment" >
				<ul id="itemContainer">
					<c:forEach items="${selectUserPinLun}" var="pl">
						<li>
							<div class="comment_con clearfix">
								<div class="f_l comment_con_l">
									<a href="/Pets/ParticularsServlet?id=${pl.product.id}&position=3" title="8888"><img src="Img/${pl.product.picUrl}" alt="天鹅绒活力撞色中筒袜" class="p_img" /></a>
									<span><a href="/Pets/ParticularsServlet?id=${pl.product.id}&position=3" class="blue">${pl.product.productName}</a></span>
									<span class="h_red">￥${pl.product.unitPrice}元</span>
								</div><!--comment_con_l end-->
								<div class="f_l comment_con_r clearfix" style="width:320px;">
									<div class="f_l arrow"></div>
									<div class="f_l comment_con_k">
										<div class="comment_con_k_t"><div class="f_l comment_con_k_t_l"></div><div class="f_l comment_con_k_t_m"></div><div class="f_r comment_con_k_t_r"></div></div><!--comment_con_k_t end-->
										<div class="comment_con_m">
											<div class="pl_full"><h3 class="f_l">商品满意度</h3><span class="f_l rate-point-s point5s-0${pl.productMarks*2-1}">${pl.productMarks}分</div>
											<div class="pl_con">
												<p>${pl.commentContent }</p>
											</div>
											<div class="pl_con">
												<div class="tit"><strong class="f_l red">商家回复：</strong><span class="f_r date"></span></div>
												<c:if test="${pl.bodyPrc eq null}">
													<div class="dis"><p>商家还为对您进行回复</p></div>
												</c:if>
												<c:if test="${pl.bodyPrc ne null}">
													<div class="dis"><p>${pl.bodyPrc}</p></div>
												</c:if>
											</div>
										</div><!--comment_con_m end-->
										<div class="comment_con_k_b"><div class="f_l comment_con_k_b_l"></div><div class="f_l comment_con_k_b_m"></div><div class="f_r comment_con_k_b_r"></div></div><!--comment_con_k_b end-->
									</div><!--comment_con_k end-->
								</div><!--comment_con_r end-->
							</div><!--comment_con end-->
						</li>
					</c:forEach>
				</ul>
				<div class="holder" ></div>
			</div><!--comment end-->
		</div><!--personal_r_m end-->
		<div class="personal_r_b"></div>
	</div><!--personal_r end-->
	
	<div class="clear mb-10"></div>
	
</div><!--content end-->
	
<div class="footer container">
	<jsp:include page="../foot1.jsp" />
	<jsp:include page="../foot2.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="<%=path %>/js/lib.js"></script>
<!-- online -->
<script type="text/javascript" src="<%=path %>/js/online.js"></script>
</body>
</html>