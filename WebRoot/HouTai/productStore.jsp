<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
  <title>库存</title>
 <link rel="stylesheet" href="layui(layui-v2.4.3)/css/layui.css"></link>
<script type="text/javascript" src="layui(layui-v2.4.3)/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

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
</head>
<script type="text/javascript">
layui.use("table",function(){
	var table=layui.table;
	table.render({
		elem:"#productStoreid",
		id:"productStoreidfilter",
		method:"post",
		url:"../SelectServlet?method=SelectProductStore",
		toolbar:"#inputid", 
		page:true, 
		cols:[[
			 {checkbox:true,width : 80},
			/*  {field:"id",title:"编号"}, */
			 {title:"产品编号",width : 100,templet:'<div>{{d.product.id}}</div>'},
			 {title:"商品类型名称",width : 100,templet:'<div>{{d.productcategory.productCategoryName}}</div>'},
			 {title:"商品名称",width : 100,templet:'<div>{{d.product.productName}}</div>'},
			  {title:"商品价格",width : 100,templet:'<div>{{d.product.SellPrice}}</div>'},
			 {title:"图片路径",width : 100,templet:"<div><img src='../Img/{{d.productpic.picUrl}}'></img></div>"},
			 {title:"上传时间",width : 100,templet:'<div>{{d.productpic.creaTime}}</div>'},
			
			 {title:"宠物身高",width : 100,templet:'<div>{{d.product.Size}}</div>'},
			 {title:"库存剩余量",width : 100,templet:'<div>{{d.QuantityInStock}}</div>'}
			 , {
					fixed : 'right',
					title : "操作",
					width : 300,
					toolbar : '#inputidx'
				}
		]]
	});
});
/*
查看：
1.获取选中数据的id
2.根据id查询详细信息
3.打开弹出层显示数据
*/
function searchStu(){
	var productCategoryName=$("#productCategoryName").val();
	var productName=$("#productName").val();
 	var  StartSellPrice=$("#StartSellPrice").val();
 	var  EndSellPrice=$("#EndSellPrice").val();
 	var  QuantityInStock=$("#QuantityInStock").val();
 	var  EndQuantityInStock=$("#EndQuantityInStock").val();
	layui.use("table",function(){ 
		var table=layui.table;
		table.reload("productStoreidfilter",{
			url:"../SelectServlet?method=SelectProductStore",
			where:{
				  productCategoryName:productCategoryName,
			 		productName:productName,
			 		StartSellPrice:StartSellPrice,
			 		EndSellPrice:EndSellPrice,
			 		QuantityInStock:QuantityInStock,
			 		EndQuantityInStock:EndQuantityInStock
			},
			page:{curr:1},
		});
	});
}

</script>
<style type="text/css">
input {
	width: 80px;
}
</style>	
<script type="text/html" id="inputidx">
  		<a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " lay-event="detail">查看</a>
        <a class="layui-btn layui-btn-radius layui-btn-normal layui-btn-sm " lay-event="edit">修改库存</a>
	</script>
<body>
<script type="text/html" id="inputid">
       
</script>
     <div class="container-scroller">
      <jsp:include page="public.jsp"></jsp:include> 
      <div> 
      <form id="search" method="post">
					 &nbsp;宠物类别:&nbsp;<input type="text"  name="productCategoryName"id="productCategoryName" size="10" />
					 &nbsp;宠物名称:&nbsp;<input type="text" name="productName" id="productName" size="10" />
					 &nbsp;价格 :&nbsp;<input type="text" placeholder="最低价" name="StartSellPrice" id="StartSellPrice" size="10" />
					 ~<input  placeholder="最高价" type="text" name="EndSellPrice" id="EndSellPrice" size="10" />
					  &nbsp;库存量 :&nbsp;<input type="text" placeholder="" name="QuantityInStock" id="QuantityInStock" size="10" />
					 ~<input  placeholder=""  type="text" name="EndQuantityInStock" id="EndQuantityInStock" size="10" />
				 	 <a href="javascript:searchEmployee()" class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-search'"
					onclick="searchStu()" plain="true">搜索</a>
			</form>
      <table id="productStoreid" lay-filter="productStoreidfilter"></table>
      </div>
</div>

  
</body>
<script type="text/javascript">
layui.use([ 'layer', 'table', 'element' ],
					function() {
						var layer = layui.layer //弹层
						, table = layui.table //表格
						, laypage = layui.laypage //分页
						, element = layui.element;//元素操作
						/* layer.msg('欢迎来到宠物类页面'); */

						element.on('tab(demo)', function(data) {
							layer.tips('切换了 ' + data.index + '：'
									+ this.innerHTML, this, {
								tips : 1
							});
						});

						//监听行工具事件
						table.on('tool(productStoreidfilter)',
										function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
											var data = obj.data //获得当前行数据
											, layEvent = obj.event; //获得 lay-event 对应的值
											if (layEvent == 'detail') {
												var id = obj.data.id;
												layer.open({
															title : "查看详细信息",
															type : 2,
															content : "../SelectByid?method=SelectProductstoreByid&id="
																	+ id,
															area : [ "600px",
																	"300px" ]
														});
											} else if (layEvent == 'edit') {
												var id = obj.data.id; //获得当前行数据
												layer
														.open({
															title : "修改",
															type : 2,
															content : "../UpdateByid?method=UpdateProductstoreByid&id="
																	+ id,
															area : [ "500px",
																	"500px" ],
														});

											}
										});
					});
function zengjia() {
		index = layer.open({
			type : 2,
			title : '添加宠物',
			shadeClose : true,
			shade : [ 0.8, '#393D49' ],
			maxmin : true,
			area : [ "570px", "500px" ],
			content : 'addProductStore.jsp'
			
		});
	}
</script>
</html>
