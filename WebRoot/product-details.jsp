<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宠物商城的详细页面</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<link href="css/base.css" rel="stylesheet" type="text/css"/> 
<link href="css/detail.css" rel="stylesheet" type="text/css"/> 
<link rel="stylesheet" href="css/test.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.pager.js"></script>
<script type="text/javascript" src="js/zhonglin.js"></script>
<script type="text/javascript" src="layui(layui-v2.4.3)/jquery-1.8.2.min.js"></script>
<script>
$(function(){
	var userid=$("#userid").val();
	var pid=$("#pid").val();
	$.post("UserServlet?method=InsertLatelyServlet&userid="+userid+"&productid="+pid);
});
function comments(){
var userid=$("#userid").val();
		if(userid==""){
			alert("亲！请登录后再评价吧");
			window.location.href="login.jsp";
			return;
		}
	layui.use("layer",function(){
		
		var xx=$(".rater-star-result").text();
		var fen=xx.charAt(0);
		var usercomment=$("#usercomment").val();
		var userid=$("#userid").val();
		var productId=$("#pid").val();
		var ordersid=$("#ordersid").val();
		var gk= $("input[name='ss']:checked").val(); 
		$.post("ReceptionServlet?index=4",{
			fen:fen,
			usercomment:usercomment,
			userid:userid,
			productId:productId,
			gk:gk,
			ordersid:ordersid
		},function(data){
			  var data=eval("("+data+")");
				layer.msg("感谢您的评价");
		});
	});
}
	 $(function () {
        		$(".like").toggle(function(){
        		var productid=$(this).attr("da");
        		$(this).toggleClass('cs');
        			$.post("UserServlet?method=updateComment&index=1&productId="+productid);
        		},function (){	
        		var  productid=$(this).attr("da");
        		$(this).toggleClass('cs');
        			$.post("UserServlet?method=updateComment&index=2&productId="+productid);
        		});
        });
   var peiid=0;
   var peisize=0;
   function huoquid(id,size){
   		peiid=id;
   		peisize=size;
   		return;
   }
  function addCart(){
  	var cartsize=$("#cartsize").val();
  	var userid=$("#userid").val();
		if(userid==""){
			alert("亲！请登录后加入购物车把");
			window.location.href="login.jsp";
			return;
		}
  	var pid=$("#pid").val();
  	var result=document.getElementById('result').innerHTML;
  	if(result=='未选择'){
  		alert("请选择宠物颜色后再加入购物车吧！");
  		return;
  	}
  	if(cartsize>peisize){
  		alert("亲您能少购买一些吗？我们没有那么多！");
  		return;
  	}
  	$.post("UserServlet?method=AddShoppingcart",{
  		userid:userid,
  		pid:pid,
  		cartsize:cartsize,
  		peiid:peiid
  	},function(){
  		window.location.href="core/cart.jsp?chenggong=1";
  	});
  }
</script>
<style type="">
.like{ font-size:20px;  color:#ccc; cursor:pointer;}
.cs{color:#f00;}
</style>
</head>
<body>
<c:if test="${ordersid ne null}">
	<input type="hidden" id="ordersid" value="${ordersid}" />
</c:if>
<input type="text" style="display: none" id="userid" value="${userid}" />
<input type="hidden" id="pid" value="${selectProductById.id}" />
<jsp:include page="head.jsp" />
<div class="content container">
	<div class="breadcrumbs">
	</div><!--breadcrumbs end-->
	<div class="line-border mb-10"></div>
	<div class="area_l g_z preview">
		<div class="f_l smallImg">
			<div class="scrollbutton smallImgUp"></div>
			<div id="imageMenu">
				<ul>
					<li id="onlickImg"><img src="Img/${selectProductById.pro.picUrl}" width="68" height="68" alt="" /></li>
					<c:forEach items="${selectProductPicPeiTu}" var="peitu">
						<li><img src="Img/${peitu.picUrl}" width="68" height="68" /></li>
					</c:forEach>
				</ul>
			</div>
			<div class="scrollbutton smallImgDown"></div>
		</div><!--smallImg end-->
		
		<div id="vertical" class="bigImg f_r">
			<img src="Img/${selectProductById.pro.picUrl}" width="400" height="460" title="丝袜美腿" id="midimg">
			<div style="display:none;" id="winSelector"></div>
		</div><!--bigImg end-->
	</div><!--preview end-->
	<div class="area_r g_f" id="application">
	<form action="" method="get">
		<h2 class="con-title">${selectProductById.productName}</h2>
		<ul class="goods_main">
			<li class="pingpai">宠物重量：${selectProductById.weight}kg<span>萌宠身高：${selectProductById.size}cm</span></li>
			<li class="price">本店价：<span class="number red">￥${selectProductById.unitPrice}</span>市场价：<em class="yuanjia">￥${selectProductById.sellPrice}</em></li>
		</ul><!--goods_main end-->
		<div class="goods_choose">
			<div class="choose_color">
				<div>毛色：<strong class="red">${selectProductById.pro.color}</strong></div>
				<ul class="m_p clearfix">
					<c:forEach items="${selectProductPicPeiTu}" var="peitu">
						<li><img src="Img/${peitu.picUrl}" alt="${peitu.color}" width="68" height="68" class="pic cur" /></li>
					</c:forEach>
				</ul>
			</div><!--choose_color end-->
			<div class="choose_size" id="sample">
				<div class="choose_size_t size_li"></div><!--choose_size_t end-->
				<div class="choose_size_m" id="tip_size">
					<ul>
						<c:forEach items="${selectProductPicPeiTu}" var="peitu">
							<li>
								<input type="radio" name="size" value="${peitu.color}" id="" />
								<a href="javascript:void(0);" onclick="huoquid(${peitu.id},${peitu.productstore.quantityInStock});" class="size_radioToggle"><span class="value">${peitu.color}</span>剩余${peitu.productstore.quantityInStock}个</a>
							</li>
						</c:forEach>
					</ul>
				</div><!--choose_size_m end-->
				<div class="choose_title">
					<ul>
						<li class="size_li">颜色：<strong id="result" class="red">未选择</strong></li>
						<li>宠物单价：<strong class="red" id="price_item_1">￥${selectProductById.unitPrice}</strong></li>
					</ul>
				</div><!--choose_title end-->
			</div><!--choose_size end-->
		</div><!--goods_choose end-->
		<p class="coin-con"><span class="f_l"><b class="red style-p">↑</b>以上是您选择的商品样式信息</span><span class="f_r">您的当前积分：<b class="red">3000</b>积分</span></p>
		<div class="pay-tab">
			<ul class="pay-btn">
				<li class="current"><span>购买商品</span></li>
				<!-- <li><span>折扣积分兑换</span></li>
				<li class="last"><span>全额积分兑换</span></li>  -->
			</ul>
			<!-- <div class="pay-con">
				<div class="items"></div>
			</div> -->
			 <div class="dt-if1-m">
				 <dl class="dt-ifm-box3">
	                	<dt>数量</dt>
	                    <dd>
	                    	<a class="box3-left" href="JavaScript:;">-</a>
	                        <input type="text" id="cartsize" value="1">
	                    	<a class="box3-right" href="JavaScript:;">+</a>
	                    </dd>
	                    <div style="clear:both;">		</div>
	                </dl>
                <div class="dt-ifm-box4">
                	<input type="button" onclick="addCart()" class="btn2" style="width: 100px;height: 33px;" value="加入购物车 " />  
                </div>
            </div>
		</div><!--pay-tab end-->
	</form>
	</div><!--right end-->
		
	<div class="share-zoompic">
		<div class="big_pic">
			<div class="full-souce">商品满意度：<span class="rate-point-s point5s-08">4.5分</span></div>
			<!-- <a class="pic_zoom" href="goods-zoom.jsp" target="_blank">放大查看</a> -->
			<!-- <a href="login-register.jsp?height=439&amp;width=600&amp;modal=false" title="您尚未登录" class="favorites thickbox">加入收藏</a> -->
		</div><!--big_pic end-->
	  	<div class="share-con">
		<span class="tit">分享有礼：</span>
		<a title="复制链接" href="javascript:copyText(window.location.href)"><span class="copylink"></span></a>
		<a title="分享到腾讯微博" href="javascript:void(0)" onclick="postToWb();"><span class="tengxunweibo"></span></a>
		<a title="分享到新浪微博" href="javascript:void(0);"><span class="xinlang"></span></a>
		<a title="分享到搜狐微博" href="javascript:void((function(s,d,e,r,l,p,t,z,c){var f='http://t.sohu.com/third/post.jsp?',u=z||d.location,p=['&url=',e(u),'&title=',e(t||d.title),'&content=',c||'gb2312','&pic=',e(p||'')].join('');function%20a(){if(!window.open([f,p].join(''),'mb',['toolbar=0,status=0,resizable=1,width=660,height=470,left=',(s.width-660)/2,',top=',(s.height-470)/2].join('')))u.href=[f,p].join('');};if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);else%20a();})(screen,document,encodeURIComponent,'','','','','','utf-8'));"><span class="sohu"></span></a>
		<a title="分享到网易微博" href="javascript:void(0);"><span class="wangyi"></span></a>
		<a title="分享到Qzone空间" href="javascript:void(0);"><span class="qqzone"></span></a>
		<a title="分享到朋友社区" href="javascript:void(0);" onclick="window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?to=pengyou&url='+encodeURIComponent(document.location.href));return false;"><span class="qqpengyou"></span></a>
		<a title="分享到人人网" href="javascript:void(0);"><span class="renren"></span></a>
		<a title="分享到开心网" href="javascript:void(0);"><span class="kaixin"></span></a>
		<a title="分享到淘江湖" href="javascript:void(0);"><span class="taojianghu"></span></a>
		<a title="分享到豆瓣" href="javascript:void(0);"><span class="douban"></span></a>
		<a title="分享到百度收藏" href="javascript:void(0);"><span class="baidusoucang"></span></a>
		</div>  
	</div>	

	<div class="del_tab clearfix">
		<div class="area_l prodel">
			<c:if test="${userid ne null}">
				<div class="liulan">
					<div class="liulan_t"><h3 class="f_l">你最近浏览的商品</h3><a class="f_r clearRec" href="javascript:void(0)">清空</a></div>
					<div class="liulan_product">
						<ul>
						 <c:forEach items="${selectLately}" var="selectLately">
							<li class="clearfix">
								<a href="/Pets/ParticularsServlet?id=${selectLately.productid}&position=3"><img src="Img/${selectLately.productpic.picUrl}" class="p_img" alt="${selectLately.product.productName}" width="68" height="68" /></a>
								<span><a href="/Pets/ParticularsServlet?id=${selectLately.productid}&position=3" class="red">${selectLately.product.productName}</a></span><span class="yellow">${selectLately.product.sellPrice}</span><span></span>
							</li>
				     	</c:forEach> 
						</ul>	
					</div>
				</div><!--liulan end-->
			</c:if>
		</div><!--left end-->
		<div class="area_r tab-con">
			<div class="blank10"></div>
			
			<div class="tab-show" id="box-info">
				<div class="tab">
					<ul>
						<li class="current"><span>顾客评论</span></li>
						<li><span>宠物描叙</span></li>
						<li><span>支付方式</span></li>
						<li><span>店家推介</span></li>
					</ul>
				</div><!--tab end-->
				<div class="tabcon">
					<!--items end-->
					<div class="items hide">
						<div class="questions">
							<h3>顾客评论<span>共${fn:length(selectCommentsByBody)}条评论。<a href="#">查看全部</a></span></h3>
							<div class="discusslist">
								<ul>
									<c:if test="${fn:length(selectCommentsByBody) eq 0}">
										<li>
											<div class="dis-content" align="center">
												<p>抱歉该商品暂无评论！</p>
											</div>
										</li>
									</c:if>
									<c:forEach items="${selectCommentsByBody}" var="comments">
										<li>
											<div class="dis-content">
												<div class="lower">
													<span class="tit">${comments.listUser.username}</span>
													<span class="rate-point-s point5s-0${comments.productMarks*2-1}"></span>
													<span class="date"><span class="like" onclick="test(${comments.id})" da="${comments.id}" >&#10084;</span>&nbsp;&nbsp;&nbsp;${comments.commenTime}</span>												</div>
												<p>${comments.commentContent}</p>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div><!--discusslist end-->
						</div><!--questions end-->
						<div class="no-content"></div><!-- 暂时没有顾客评论此商品 no-content end-->
						<c:if test="${ordersid ne null}">
						<div class="quiz">
							<h3>我要评论<span class="tip">购买过此商品的顾客，在收到商品后才可以对该商品发表评论。<!-- 评论后获得<b class="yellow">20</b>点积分</span> --></h3>
							<div class="quiz_content">
								<form action="" method="post">
									<div class="goods-comm">
										<div class="goods-comm-stars">
											<span class="star_l">商品满意度：</span>
											<div id="rate-comm-1" class="rate-comm"></div>
										</div>
									</div>
									<div class="l_text">
										<label class="m_flo">内  容：</label>
										<textarea name="area" id="usercomment" class="text"></textarea>
										<span class="tr">
											公开评论<input name="ss" type="radio"  value="1" checked="checked"/> 
											不公开评论<input name="ss" type="radio"  value="2" /> 
										 </span>
									</div>
									<button class="btm" onclick="comments()" type="submit"></button>
								</form>
							</div><!--quiz_content end-->
						</div><!--quiz end-->
						</c:if>
					</div><!--items end-->
					<div class="items hide">
						<div class="questions"><br />
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${selectProductById.description}
						</div><!-- questions end  -->
						<div class="no-content"><!-- 暂时没有买家提问此商品 --></div><!--no-content end-->
						<div class="quiz">
							<h3>我要提问</h3>
							<div class="quiz_content">
								<form action="" method="post">
									<ul>
										<li class="cate_l">
											<dl class="clearfix">
												<dt>问题类型：</dt>
												<dd><label for="cc"><input type="radio" name="1" value="Cube" checked="checked" id="cc"/>尺码问题</label></dd>
												<dd><label for="sy"><input type="radio" name="1" value="function" id="sy" />使用方法</label></dd>
												<dd><label for="sp"><input type="radio" name="1" value="Materail" id="sp">商品材质</label></dd>
												<dd><label for="qt"><input type="radio" name="1" value="Other" id="qt">其他</label></dd>
											</dl>
										</li>
										<li class="l_text">
											<label class="m_flo">内  容：</label><textarea name="area" id="" class="text"></textarea>
											<span class="tr">字数限制为5-200个</span>										    </li>
									</ul>
									<button class="btm" type="submit"></button>
								</form>
							</div> 
						</div> 
					</div><!--items end-->
								
					
					
					<div class="items hide">
						<ul> 
							<li class="item-payment-way2"> 
								<div class="section-box">
									<ol class="trade-flow">
										<li>选择商品</li>
										<li>付款到支付宝</li>
										<li>
											<ul>
												<li><ol><li>验货满意</li><li>通知支付宝付款给卖家</li><li>完成</li></ol></li>
												<li><ol><li>验货不满意</li><li>退货</li><li>退款</li></ol></li>
											</ul>
										</li>
									</ol>
									<p>
									使用支付宝“收货满意后，卖家才能拿到钱”保障您的交易安全，让您购物没有后顾之忧！										</p>
									<h5>支付宝为您提供以下付款方式：均可享受担保交易</h5>
									<ul class="payment-list clearfix">
										<li>
											<table class="eshop">
												<caption>在网上支付</caption>
												<colgroup>
													<col class="col-payment" />
													<col class="col-desc" />
													<col class="col-fee" />
													<col class="col-link" />
												</colgroup>
												<thead>
													<tr>
														<td>付款方式</td>
							
														<td>介绍</td>
														<td class="col-center">手续费</td>
														<td>说明</td>
													</tr>
												</thead>
												<tbody>
													<tr>
							
														<td><a href="http://abc.alipay.com/paymentAccount.jsp?src=yy_content_tbdetail_01" title="" target="_blank"><b>支付宝余额</b></a></td>
														<td>用自己支付宝账户余额的钱付款</td>
														<td class="col-center">无</td>
														<td><a href="http://abc.alipay.com/paymentAccount.jsp?src=yy_content_tbdetail_01" title="" target="_blank">详细</a></td>
													</tr>
													<tr>
														<td><a href="http://abc.alipay.com/paymentKatong.jsp?src=yy_content_tbdetail_02" title="" target="_blank"><b>支付宝卡通</b></a></td>
							
														<td>用绑定了“支付宝”的银行卡付款</td>
														<td class="col-center">无</td>
														<td><a href="http://abc.alipay.com/paymentKatong.jsp?src=yy_content_tbdetail_02" title="" target="_blank">详细</a></td>
													</tr>
													<tr>
														<td><a href="http://abc.alipay.com/paymentBank.jsp?src=yy_content_tbdetail_03" title="" target="_blank"><b>网上银行</b></a></td>
														<td>用开通“网上银行”的银行卡付款</td>
							
														<td class="col-center">无</td>
														<td><a href="http://abc.alipay.com/paymentBank.jsp?src=yy_content_tbdetail_03" title="" target="_blank">详细</a></td>
													</tr>
													<tr>
														<td><a href="http://abc.alipay.com/paymentCard.jsp?src=yy_content_tbdetail_04" title="" target="_blank"><b>信用卡</b></a></td>
														<td>用您的“信用卡”付款</td>
														<td class="col-center">无</td>
							
														<td><a href="http://abc.alipay.com/paymentCard.jsp?src=yy_content_tbdetail_04" title="" target="_blank">详细</a></td>
													</tr>
													<tr>
														<td><a href="http://abc.alipay.com/paymentVoucher.jsp?src=yy_content_tbdetail_05" title="" target="_blank"><b>消费卡</b></a></td>
														<td>用神州行话费充值卡或百联ok超市卡充值付款</td>
														<td class="col-center">2-5%</td>
														<td><a href="http://abc.alipay.com/paymentVoucher.jsp?src=yy_content_tbdetail_05" title="" target="_blank">详细</a></td>
													</tr>
												</tbody>
											</table>
										</li>
										<li class="last">
											<table class="eshop">
												<caption>不在网上支付</caption>
												<colgroup>
													<col class="col-payment" />
													<col class="col-desc" />
													<col class="col-fee" />
													<col class="col-link" />
												</colgroup>
												<thead>
													<tr>
														<td>付款方式</td>
														<td>介绍</td>
														<td class="col-center">手续费</td>
														<td>说明</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a href="http://abc.alipay.com/paymentCash.jsp?src=yy_content_tbdetail_06" title="" target="_blank"><b>刷卡支付</b></a></td>
														<td>去便利店的拉卡拉自助终端刷卡付款</td>
														<td class="col-center">1%</td>
														<td><a href="http://abc.alipay.com/paymentCash.jsp?src=yy_content_tbdetail_06" title="" target="_blank">详细</a></td>
													</tr>
													<tr>
														<td><a href="http://abc.alipay.com/paymentCash.jsp?src=yy_content_tbdetail_07" title="" target="_blank"><b>现金支付</b></a></td>
														<td>去邮政、淘一站等支付宝授权网点付现金</td>
														<td class="col-center">1%</td>
														<td><a href="http://abc.alipay.com/paymentCash.jsp?src=yy_content_tbdetail_07" title="" target="_blank">详细</a></td>
													</tr>
													<tr>
														<td><a href="http://abc.alipay.com/paymentCoa.jsp?src=yy_content_tbdetail_08" title="" target="_blank"><b>货到付款</b></a></td>
														<td>收到货物时，再付钱给快递人员</td>
														<td class="col-center">3%</td>
														<td><a href="http://abc.alipay.com/paymentCoa.jsp?src=yy_content_tbdetail_08" title="" target="_blank">详细</a></td>
													</tr>
												</tbody>
											</table>
										</li>
									</ul>
								</div>
							</li>
							<li id="cod-info">
								<div class="section-box">
									<dl class="cod-explain">
										<dt class="point">货到付款服务:</dt>
										<dd>
											就是买家收到货，验货后再付款。是麦路客商城为了降低买家网上购物的门槛的支付方式。使用货到付款服务，买家需要向物流公司支付一定的代收货款费用。
											<br/>
										</dd>
										<dt>配送服务公司:</dt>
										<dd>
											<a href="http://www.sto.cn/" target="_blank">申通快递</a><br/>
											<a href="http://www.fedex.com/cn/" target="_blank">联邦快递</a><br/>
											<a href="http://www.sf-express.com/" target="_blank">顺丰速运</a>											</dd>
										<dt>买家服务保障:</dt>
										<dd>1、无须网银，支付更方便<br/>2、见货再付款，交易更安全<br/>3、商品交易享受消费者保障服务。<br/>4、麦路客推荐物流商运输，运送更放心。</dd>
									</dl>
								</div>
							</li>
						</ul> 
					</div><!--items end-->
					<div class="items hide">
						
					<div class="hot_cate">
				<div class="hot_tit"><h2 class="f_l">店家推介</h2><div class="hot-btn hot-prev"></div><div class="hot-btn hot-next"></div></div>
				<div class="hot_list">
					<ul>
						<c:forEach items="${selectRespositionById}" var="position">
							<li>
								<div class="p_pic"><a href="/Pets/ParticularsServlet?id=${position.product.id}&position=3"><img src="Img/${position.productpic.picUrl}" class="p_img" width="150" height="205" /></a></div>							
								<div class="p_name"><a href="/Pets/ParticularsServlet?id=${position.product.id}&position=3">${position.product.productName}</a></div>
								<div class="p_price"><span class="cost">${position.product.unitPrice}</span><span class="num">¥${position.product.sellPrice}</span></div>
							</li>
						</c:forEach>
					</ul>
				</div><!--hot_list end-->
			</div><!--hot_cate end-->	
					</div>
					
					
				</div><!--tabcon end-->
			</div><!--tab-show end-->
			
			<div class="blank10"></div>
					
		</div><!--right end-->
		
	</div><!--del_tab end-->
	<!-- 浮动的图片 -->
	<div id="bigView" style="display:none;"><img src="" style="width: 900px;height: 900px;" /></div><!--bigView end-->
	
	<div class="blank10"></div>
	
</div><!--content end-->
	
<div class="footer container">
	
	<jsp:include page="foot1.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="js/thickbox.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
<script type="text/javascript" src="js/detail.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script>
</body>
</html>
