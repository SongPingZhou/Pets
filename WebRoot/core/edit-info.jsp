<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="<%=path %>/images/favicon.ico" type="image/x-icon" />
<link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/personal.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=path %>/HouTai/layui(layui-v2.4.3)/css/layui.css" type="text/css"/>
<link href="<%=path %>/css/userdetail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="<%=path %>/js/public.js"></script>
<script type="text/javascript" src="<%=path %>/js/user.js"></script>
<script type="text/javascript" src="<%=path %>/HouTai/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/HouTai/layui(layui-v2.4.3)/layui.js"></script>
<script>
function zuixin(){
		var userid=$("#userId").val();
		$.post("UserServlet?method=ZuiXinDongTai",{userid:userid},function(){
			window.location.reload();
		});
	};
    function updatepwd(){
    	layui.use("layer",function(){
	    	var userId=$("#userId").val();
	    	var RealName=$("#RealName").val();
	    	var userEmail=$("#userEmail").val();
	    	var userBirthday=$(":input[name=userBirthday]").val();
	    	var userTel=$("#userTel").val();
	    	var userRemark=$("#userRemark").val();
	    	RealName=RealName.replace(/(^s*)|(s*$)/g, "");
	    	userEmail=userEmail.replace(/(^s*)|(s*$)/g, "");
	    	userBirthday=userBirthday.replace(/(^s*)|(s*$)/g, "");
	    	userTel=userTel.replace(/(^s*)|(s*$)/g, "");
	    	userRemark=userRemark.replace(/(^s*)|(s*$)/g, "");
	    	if(RealName==""|| userEmail=="" || userBirthday=="" || userTel=="" || userRemark==""){
	    		layer.alert("亲！请完整的填写信息哦！");
	    		return;
	    	}
	    	$.post("UserServlet?method=UpdateUsercustomers",{
	    		userId:userId,
	    		RealName:RealName,
	    		userEmail:userEmail,
	    		userBirthday:userBirthday,
	    		userTel:userTel,
	    		userRemark:userRemark
	    		},function(data){
	    		var data=eval("("+data+")");
	    		if(data.code>0){
	    			layer.alert("修改成功",{icon: 6,yes:function(){
	    				window.location.href="core/edit-info.jsp";
	    			}});
	    		}
	    		
	    	}); 
    	});
    }
</script>

<script>
	layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //常规用法
	  laydate.render({
	    elem: '#test1'
	  });
  </script>
</head>
<body>
<jsp:include page="../head.jsp" />

<div class="content container">
	<div class="breadcrumbs">
		<a href="IndexServlet">首页</a><span></span><a onclick="zuixin()">刷新最新动态</a><span>></span>编辑个人信息
	</div><!--breadcrumbs end-->	
<jsp:include page="../person.jsp" />
	<div class="f_r personal_r">
		<div class="personal_r_t"></div>
		<div class="personal_r_m">
			<div class="personal_r_m_t">
				<h2>编辑个人信息</h2>
			</div><!--personal_r_m_t end-->
			<div class="personal_r_m_m edit_info">
			<form method="post" action="" id="">
				<div class="blank10"></div>
				<div class="edit_info_t"><h3 class="f_l">个人基本信息</h3></div>
				<div class="edit_info_m">
					<table width="100%">
						<tbody>
							<tr><input type="hidden" id="userId" name="userId" value="${selectUserCustomers.id}" />
								<td align="right" width="140px"><span class="red">*</span> 姓名：</td>
								<td><input type="text" name="RealName" id="RealName" value="${selectUserCustomers.realName}" class="info_input info_input_170" /></td>
							</tr>
							<tr>
								<td align="right">账户：</td>
								<td><input type="text" name="userName" id="userName" value="${loginname}" readonly="readonly" class="info_input info_input_170" /></td>
							</tr>
							<tr>
								<td align="right">积分：</td>
								<td><input type="text" name="userName" id="userName" value="${selectUserCustomers.mark}" readonly="readonly" class="info_input info_input_170" /></td>
							</tr>
							<tr>
								<td align="right">出生年月：</td>
								<td>
								<input type="text" class="easyui-datebox"
									name="userBirthday" id="userBirthday" size="11" value="${selectUserCustomers.birthday}" editable="false" />
								<%-- <input type="text"  name="userBirthday" id="userBirthday" value="${selectUserCustomers.birthday}" placeholder="年-月-日" class="info_input info_input_170" />
								 --%></td>
							</tr>
							<tr>
								<td align="right"><span class="red">*</span> <span style="font-family:Arial;">Email</span>：</td>
								<td><input type="text" name="userEmail" id="userEmail" value="${selectUserCustomers.eamail}" class="info_input info_input_170" /></td>
							</tr>
							<tr>
								<td align="right"><span class="red">*</span> 手机：</td>
								<td><input type="text" name="userTel" id="userTel" value="${selectUserCustomers.mphone}" class="info_input info_input_170" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">备注：</td>
								<td><textarea name="userRemark" id="userRemark" class="l_text">${selectUserCustomers.remark}</textarea></td>
							</tr>
						</tbody>
					</table>
				</div><!--edit_info_m end-->
					<div class="change_password_button">
						<input type="button" onclick="updatepwd()" name="" value="提&nbsp;&nbsp;交" id="" class="yellow_button yellow_button_01" />
					</div><!--edit_info_button end-->
				<div class="blank10"></div>
				
			</form>	
			</div><!--edit_info end-->
		</div><!--personal_r_m end-->
		<div class="personal_r_b"></div>
	</div><!--personal_r end-->
	
	<div class="clear mb-10"></div>
	
</div><!--content end-->
	<div class="footer container">
	<jsp:include page="../foot2.jsp" /> 
	<jsp:include page="../foot1.jsp" /> 
</div><!--footer end-->
<!-- plugin -->
<script type="text/javascript" src="<%=path %>/js/lib.js"></script>
<!-- online -->
<script type="text/javascript" src="<%=path %>/js/online.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.4/themes/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
</body>
</html>