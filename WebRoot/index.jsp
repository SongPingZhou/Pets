
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宠物旗舰店</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/fenye/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/fenye/jPages.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript">
$(function() {
	$("div.holder").jPages({
		containerID: "itemContainer",
		pause       : 4000,
        clickStop   : true,
		perPage: 5
	});
});
$(function() {
	$("div.holder").jPages({
		containerID: "itemContainers",
		pause       : 5000,
        clickStop   : true,
		perPage: 4
	});
});
</script>
</head>
<body>
<jsp:include page="head.jsp" />
<div class="content container">
	<div class="blank10"></div>
	<div class="f_l slide-banner">
		<ul class="slide-clip">
			<c:forEach items="${selectProductPic}" var="Pic" >
			<li> <img alt="" title="" src="Img/${Pic.picUrl }" width="731" height="312" /> </li>
	   </c:forEach>

		</ul>
		<ul class="slide-trigger">
			<li class="current"> </li>
			<li>  </li>
			<li>  </li>
			<li>  </li>
		</ul>
	</div><!--slide-banner end-->
	<div class="f_r sale_con">
		<div class="w_box mb-10">
			<div class="w_box_t">
				<div class="f_l w_box_t_l"></div>
				<h2 class="f_l red"><a href="NewFenye.jsp">导购信息</a></h2>
				<div class="f_r w_box_t_r"></div>
			</div><!--w_box_t end-->
			<div class="w_box_m sale">
				<ul  id="itemContainer">											
					<c:forEach items="${selectNews}" var="n" >
						<li>
							<dl>
								<dt><span>·</span><em class="red">[推荐]</em>&ensp;<a href="UserServlet?method=NewsServlet&nid=${n.nid}">${n.name}</a></dt>
							</dl>
						</li>
					</c:forEach>
				</ul>
				<div class="holder" style="display:none"></div>
			</div><!--w_box_m end-->
			<div class="w_box_b">
				<div class="f_l w_box_b_l"></div>
				<div class="f_r w_box_b_r"></div>
			</div><!--w_box_b end-->
		</div><!--w_box end-->
		<div class="promotions">
		<img src="images/m2.jpg" alt="喵喵喵" width="240" height="168" /></div><!--promotions end-->
	</div><!--sale_con end-->
	
	<div class="clear mb-10"></div>

	<div class="f_l sort_brand_l">
		<div class="w_box">
			<div class="w_box_t">
				<div class="f_l w_box_t_l"></div>
				<h2 class="f_l red">宠物分类</h2>
				<div class="f_r w_box_t_r"></div>
				<div class="f_r more"><a href="MeowStarPeoperServlet?index=0">查看所有分类>></a></div>
			</div><!--w_box_t end-->
			<div class="w_box_m cate_list">
				<ul>
				  <c:forEach items="${list}" var="li" >
					<li>
						<dl>
							<dt><a href="MeowStarPeoperServlet?index=${li.id}">${li.productCategoryName}</a></dt>
							<dd>
								   <c:forEach items="${list}" var="pro">
									<c:if test="${li.id == pro.parentId}">
										<span><a href="MeowStarPeoperServlet?index=${pro.parentId}&productcateid=${pro.id}">${pro.productCategoryName}</a></span>
									</c:if>
								</c:forEach>
							</dd>
						</dl>
					</li>
					</c:forEach> 
				</ul>
			</div><!--w_box_m end-->
			<div class="w_box_b">
				<div class="f_l w_box_b_l"></div>
				<div class="f_r w_box_b_r"></div>
			</div><!--w_box_b end-->
		</div><!--w_box end-->
	</div><!--sort_brand_l end-->
	
	<div class="f_r rank">
		<ul class="tabcon" id="itemContainers">
			 <c:forEach items="${selectByClass}" var="position" varStatus="status" >
				<li>
					<div class="p-name"><span class="f_l num">${status.index+1}</span><a href="/Pets/ParticularsServlet?id=${position.product.id}&position=3">${position.product.productName}</a></div>
					<div class="p-img"><a href="/Pets/ParticularsServlet?id=${position.product.id}&position=3" target="_blank"><img title="${position.product.productName}" src="Img/${position.productpic.picUrl}" lazyload="Img/${position.productpic.picUrl}" width="235" height="118" /></a></div>
				</li>
			</c:forEach> 
		</ul>
		<div class="holder" style="display:none"></div>
	</div><!--rank end-->
	
	<div class="clear mb-10"></div>

	<div class="subject subimg-01">
	<c:forEach items="${selectdog}" var="product" >
		<a href="/Pets/ParticularsServlet?id=${product.id}&position=3">${product.productName}</a><span>|
	</c:forEach>
	</div><!--subject end-->
	<div class="module mb-10 clearfix">
		<div class="f_l focusbrand">
			<div class="focuspic mb-10">
				 <img class="load_img" src="Img/d16.jpg" width="397" height="256" alt="" /> 
				<div class="clear mb-10"></div>
				 <img class="load_img" src="Img/d5.jpg" width="190" height="112" alt="" /> 
				 <img class="load_img" src="Img/d12.jpg" width="190" height="112" alt="" /> 
			</div><!--focuspic end-->
			<div class="brands">
				<div class="brand-head redborder">
					<h2 class="f_l">品牌推荐</h2><a class="f_r more" href="#"> </a>
				</div>
				<div class="brand-con news-brand bigTarget">
					<ul>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_baitu_134558.gif" width="100" height="32" alt="betu" /></li>
						 <li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_F4_181316.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_luodaier_105210.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_oudiren_111518.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_ousha_111151.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_yifen_175912.gif" width="100" height="32" alt="" /></li> 	
					</ul>
				</div>
			</div><!--brands end-->
		</div><!--focusbrand end-->
		<div class="f_l modpic news-modpic bigTarget">
			<ul>
				<c:forEach items="${selectdog}" var="product" >
					<li class="" pid="41815"><!-- picHover -->
						<a href="/Pets/ParticularsServlet?id=${product.id}"><img class="load_img" src="Img/${product.pro.picUrl}" lazyload="Img/${product.pro.picUrl}" width="180" height="180" alt="aa" /></a>
						<div class="p-name"><a rel="nofollow external" href="/Pets/ParticularsServlet?id=${product.id}&position=3">${product.productName}</a></div>
						<div class="p-price"><del title="市场价">￥${product.sellPrice}</del><strong title="麦路客价">${product.discountPrice}元</strong></div>
					</li>
				</c:forEach>
			</ul>
		</div><!--modpic end-->			
	</div><!--module end-->

	<div class="subject subimg-01">
	<c:forEach items="${selectcat}" var="cat">
		<a href="/Pets/ParticularsServlet?id=${cat.id}&position=3">${cat.productName}</a><span>|
	</c:forEach>
	</div><!--subject end--> 
	<div class="module mb-10 clearfix">
		<div class="f_l focusbrand">
			<div class="focuspic mb-10">
				 <img class="load_img" src="Img/c12.jpg"   width="397" height="256" alt="" /> 
				<div class="clear mb-10"></div>
				 <img class="load_img" src="Img/c1226.jpg"   width="190" height="112" alt="" /> 
				 <img class="load_img" src="Img/c1233.jpg"   width="190" height="112" alt="" /> 
			</div><!--focuspic end-->
			<div class="brands">
				<div class="brand-head redborder">
					<h2 class="f_l">品牌推荐</h2><a class="f_r more" href="#"> </a>
				</div>
				<div class="brand-con news-brand bigTarget">
					<ul>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_baitu_134558.gif" width="100" height="32" alt="betu" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_F4_181316.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_luodaier_105210.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_oudiren_111518.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_ousha_111151.gif" width="100" height="32" alt="" /></li>
						<li><img class="load_img" src="images/m1.jpg" lazyload="images/brand/logo_yifen_175912.gif" width="100" height="32" alt="" /></li> 	
					</ul>
				</div>
			</div><!--brands end-->
		</div><!--focusbrand end-->
		<div class="f_l modpic women-modpic bigTarget">
			<ul>
			<c:forEach items="${selectcat}" var="cat">
				<li class="picHover" pid="41815">
					<a href="/Pets/ParticularsServlet?id=${cat.id}"><img class="load_img" src="Img/${cat.pro.picUrl}" lazyload="Img/${cat.pro.picUrl}" width="180" height="180" alt="猫" /></a>
					<div class="p-name"><a rel="nofollow external" href="/Pets/ParticularsServlet?id=${cat.id}&position=3">${cat.productName}</a></div>
					<div class="p-price"><del title="市场价">¥${cat.sellPrice}元</del><strong title="麦路客价">&yen;${cat.discountPrice}元</strong></div>
				</li>
				</c:forEach>
			</ul>
		</div><!--modpic end-->			
	</div><!--module end-->

	
	
	
	
	<div class="f_l comment">
		<h2>热门评论</h2>
		<ul class="comment-con clearfix">
			<c:forEach items="${selectCommentsByExt2}" var="com">
				<li>
					<a href="/Pets/ParticularsServlet?id=${com.product.id}&position=3"><img class="p_img" src="Img/${com.productpic.picUrl}" lazyload="Img/${com.productpic.picUrl}" alt="${com.product.productName}" /></a>
					<dl>
						<dt>${com.listUser.username }</dt>
						<dd class="dis">${com.commentContent }</dd>
						<dd class="point">满意度：<span class="rate-point-s point5s-0${com.productMarks*2-1}">${com.productMarks}分</span></dd>
					</dl>
				</li>
			</c:forEach>
		</ul>
	</div><!--comment end-->
	
	<div class="f_r e-zine">
	<!-- 	<EMBED src="mp3/test.mp3" loop="true"  ontrols="smallconsole"  width="220" height="60"> -->
	</div>
	
	<div class="f_r weibo">
		<a class="tengxun" href="https://open.weibo.com/authentication" target="_blank">关注商城腾讯微博</a>
		<a class="wangyi" href="https://open.weibo.com/authentication" target="_blank">关注商城网易微博</a>
		<a class="souhu" href="https://open.weibo.com/authentication" target="_blank">关注商城搜狐微博</a>
		<a class="xinlang" href="https://open.weibo.com/authentication" target="_blank">关注商城新浪微博</a>
		<a class="tengxun" href="https://open.weibo.com/authentication" target="_blank">关注商城腾讯微博</a>
		<a class="wangyi" href="https://open.weibo.com/authentication" target="_blank">关注商城网易微博</a>
		<a class="souhu" href="https://open.weibo.com/authentication" target="_blank">关注商城搜狐微博</a>
		<a class="xinlang" href="https://open.weibo.com/authentication" target="_blank">关注商城新浪微博</a>
	</div>
	
	<div class="clear mb-10"></div>
	
	<div style="display:none;" class="ico" id="imgICO"></div>
	<div style="position:absolute;display:none;" id="detail"></div>
</div><!--content end-->

<div class="footer container">
	<jsp:include page="foot2.jsp" />
	<jsp:include page="foot1.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
<!-- index -->
<script type="text/javascript" src="js/index.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script> 
</body>
</html>