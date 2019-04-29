<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>付款码</title>

</head>
<body>
			<div>
			 <span>订单号：${requestScope.orderNo}</span><br/>
			 <span>订单金额：${requestScope.totalAmount}</span>
			</div>
			<div>
			<span>请扫描下面二维码进行支付</span>
			<br/>
			<span><img alt="" src="${pageContext.request.contextPath}/${requestScope.fileName}"/></span>
			</div>
</body>
</html>