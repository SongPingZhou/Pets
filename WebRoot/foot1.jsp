<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'foot1.jsp' starting page</title>
    


  </head>
  
  <body>
    <div class="copyright">
		<a href="help/about.jsp" target="_blank">关于宠物商城</a><span>|</span><a href="help/contact.jsp" target="_blank">联系商城</a><span>|</span><a href="help/job.jsp" target="_blank">加入宠物商城</a><span>|</span><a href="sort.jsp" target="_blank">网站地图</a><span>|</span><a href="help/complainting.jsp" target="_blank">投诉与建议</a><span>|</span><a href="help/links.jsp" target="_blank">友情链接</a><br />
		Copyright&nbsp;&nbsp;©&nbsp;&nbsp;2009-2011&nbsp;&nbsp;<a title="宠物商城" href="http://www.mailuke.com/">www.mailuke.com</a>&nbsp;&nbsp;宠物商城版权所有<span>|</span><a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备10031526号</a><br />
		<a href="#" target="_blank"><img src="images/beian.gif" width="128" height="47" alt="经营性网站备案中心" /></a><a href="#" target="_blank"><img src="images/trustA.gif" width="119" height="47" alt="A级-信用企业" /></a><a href="#" target="_blank"><img src="images/alipay.gif" width="123" height="40" alt="支付宝-特约商家" /></a>
	</div><!--copyright end-->
	
  </body>
</html>
