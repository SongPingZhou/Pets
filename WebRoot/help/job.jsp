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
<title>加入宠物之家</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<link href="../css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/info.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
</head>
<body>
<jsp:include page="../head.jsp" />
<div class="content container">
	<div class="breadcrumbs"><a href="../index.jsp">首页</a><span>></span>加入宠物之家</div><!--breadcrumbs end-->
	<ul class="f_l reference">
		<li><a href="help/about.jsp">关于宠物之家</a></li>
		<li><a href="help/contact.jsp">联系宠物之家</a></li>
		<li><a class="current" href="help/job.jsp">加入宠物之家</a></li>
		<li><a href="sort.jsp">网站地图</a></li>
		<li><a href="help/complainting.jsp">投诉与建议</a></li>
		<li class="last"><a href="help/links.jsp">友情链接</a></li>
	</ul>
	<div class="f_r reference-con">
		<h2 class="link_tit">加入宠物之家</h2>
		<dl class="hrtext clearfix">
			<dt>职能类： </dt>
			<dd><a href="#zn01">1.行政专员</a></dd>
		</dl>
		<dl class="hrtext clearfix">
			<dt>市场类： </dt>
			<dd><a href="#sc01">1.采购助理</a></dd>
		</dl>
		<dl class="hrtext clearfix">
			<dt>技术类： </dt>
			<dd><a href="#js01">1.SEO技术岗位人员</a></dd>
			<dd><a href="#js02">2.程序开发工程师</a></dd>
			<dd><a href="#js03">3.Web前端开发工程师</a></dd>
			<dd><a href="#js04">4.网站编辑</a></dd>
		</dl>
		<h3 class="tit01">行政专员<a name="zn01"></a></h3>
		<dl class="mar-left">
			<dt>岗位职责:</dt>
			<dd>1、协助行政人事部做好后勤保障工作，包括办公用品采购及发放等事务；<br />2、确定并安排会议时间；<br />3、负责会议材料的整理、存档工作；<br />4、完成上级安排的其他工作任务。 </dd>
			<dt>任职要求：</dt>
			<dd>1、物流、行政管理等相关专业本科、大专以上学历；<br />2、具有一定的工区管理经验、知识；<br />3、2年以上相关工作经验；<br />4、考虑问题细致、具备解决突发事件的能力；熟悉办公资产维护与保养流程；<br />5、工作细致认真，谨慎细心，热情，积极主动；工作效率高，责任心强，具有团队精神；保密意识强；<br />6、有良好的职业道德和职业操守，责任感强。 </dd>
		</dl>
		<h3 class="tit01">采购助理 <a name="sc01"></a></h3>
		<dl class="mar-left">
			<dt>岗位职责:</dt>
			<dd>1、负责公司所有商品的采购.销售；<br />2、负责与供应商的接洽.谈判，控制采购费用.降低采购成本；<br />3、负责满足公司销售需求，保证商品的合理库存；<br />4、收集.整理商品信息；<br />5、负责供应商信息的管理和维护。</dd>
			<dt>任职要求：</dt>
			<dd>1、负责公司采购工作，制定采购计划及相关预算，优化采购流程，完成本部门各项任务指标；<br />2、与主要供应商进行谈判，对供应商进行管理考核，维护供货商体系和关系；<br />3、组织完成本部门商品的市场调查，分析.改善及丰富相关商品品类；<br />4、准确为新商品进行价格定位并决定订单数量；<br />5、相关部门的沟通协调工作。</dd>
		</dl>
		<h3 class="tit01">SEO技术岗位人员<a name="js01"></a></h3>
		<dl class="mar-left">
			<dt>岗位职责：</dt>
			<dd>1、负责专题广告的优化，按阶段汇报优化监控结果和研究结果，并跟踪新产品的推广；<br /> 2、能监控网站关键字，监控和研究竞争对手及其他网站相关做法，并制定相关策略和方案持续调优；<br /> 3、和第三方网站进行流量、数据、反向链接或服务的交换，或战略合作联盟，增加网站的流量和知名度；<br /> 4、制定并组织实施公司网站及网络产品的SEO优化方案，负责优化网页结构，保证网站SEO技术水平、网站PR值、alexa排名保持行业的领先地位。
	   		</dd>
			<dt>任职要求：</dt>
			<dd>1、大专以上学历，能针对关键词优化进行合理内容设计。熟悉Google(包括Google海外)、baidu、Yahoo(包括 yahoo海外)的优化手法以及操作过数家成功案例；<br /> 2、掌握百度、google、yahoo等搜索引擎的基本排名规律；并精通以上各类搜索引擎的优化,包括站内优化、站外优化及内外部链接优化等；精通各种SEO推广手段，并在搜索引擎上的关键词排名给予显示；<br />3、有较强的数据分析能力，能定期对相关数据进行有效分析；<br />4、有较强的创新意识，有较好的知识分享意识，有很好的团队合作精神；<br /> 5、要求附上相关作品的成功案例，如果是操作过大项目的肯定会优先考虑录用。 </dd>
		</dl>
		<h3 class="tit01">程序开发工程师<a name="js02"></a></h3>
		<dl class="mar-left">
			<dt>岗位职责：</dt>
			<dd>1、根据系统设计，参与程序编码、白盒测试等工作；<br />2、及时修正程序出现的问题； <br />3、及时响应业务需求变更；<br />4、定期进行项目维护和升级； <br />5、负责业务系统技术支持和管理工作；<br />6、负责开发文档编写工作。 
	   		</dd>
			<dt>任职要求：</dt>
			<dd>1、熟练掌握C#或JAVA；<br />2、熟练掌握SQL语言；<br />3、有过2年以上相关软件的开发经验；<br />4、具有良好的沟通能力和团队合作精神； <br />5、可承受一定的工作压力并在指定的时间内完成高质量的程序。 </dd>
		</dl>
		<h3 class="tit01">Web前端开发工程师<a name="js03"></a></h3>
		<dl class="mar-left">
			<dt>岗位职责：</dt>
			<dd>1、负责网站的Javascript开发工作；<br />2、使用Javascript实现复杂的功能和界面效果；<br />3、精通HTML DOM对象的Javascript编程，熟悉对象化Javascript编程，了解浏览器的内部机制；<br />4、熟练使用并理解jquery、ext等多种JavaScript框架，精通跨多浏览器的JavaScript脚本编写；<br />5、熟悉HTTP协议及W3C相关互联网规范，熟练掌握HTML、XHTML、XML、CSS、DIV、AJAX等页面技术；<br />6、具有较强的自主学习能力，具有高度责任心，较高的职业化态度；<br />7、热爱本职工作，善于思考，有很强的责任心，较强的执行力和学习能力，对自己的工作精益求精。  
	   		</dd>
		</dl>
		<h3 class="tit01">网站编辑<a name="js04"></a></h3>
		<dl class="mar-left">
			<dt>岗位职责：</dt>
			<dd>1. 负责网站相关栏目/频道的信息搜集、编辑、审校等工作；<br />2. 完成信息内容的策划和日常更新与维护；<br />3. 收集、研究和处理客户的意见和反馈信息；<br />4. 加强与内部相关部门和组织外部的沟通与协作。   
	   		</dd>
			<dt>任职要求：</dt>
			<dd>1. 编辑、新闻、中文、互联网等相关专业大专或以上学历；<br />2. 有电子商务、淘宝网店、网站内容编辑领域从业经验者优先；<br />3. 熟练操作常用的网页制作软件能读懂简单的HTML语言和网络搜索工具，了解网站运行及维护的相关知识，负责页面内容更新；<br />4. 良好的文字功底，软文写作能力比较高，较强的语言组织和信息采编能力；<br />5. 擅于沟通，性格温和，并且可以完成领导交给的其他工作。</dd>
		</dl>
	</div>
	<div class="clear mb-10"></div>
</div><!--content end-->
	
<div class="footer container">
	<jsp:include page="../foot2.jsp" />
	<jsp:include page="../foot1.jsp" />
</div><!--footer end-->

<!-- plugin -->
<script type="text/javascript" src="js/lib.js"></script>
<!-- index -->
<script type="text/javascript" src="js/index.js"></script>
<!-- online -->
<script type="text/javascript" src="js/online.js"></script> 	
</body>
</html>
