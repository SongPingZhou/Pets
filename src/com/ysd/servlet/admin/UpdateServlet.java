package com.ysd.servlet.admin;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;



import com.google.gson.Gson;
import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.Fenye;
import com.ysd.entity.Orders;
import com.ysd.entity.OrdersDetails;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Productpic;
import com.ysd.entity.Productstore;
import com.ysd.entity.User;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.OrdersDetailsMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductPicMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
import com.ysd.util.Result;
@WebServlet("/UpdateServlet")
public class UpdateServlet extends BaseServlet {

	
	public void UpdateUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
    	UserMapper mapper=session.getMapper(UserMapper.class);
		String id=request.getParameter("id");
    	String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		String Ext1=request.getParameter("Ext1");
		String Ext2=request.getParameter("Ext2");
		User user=new User(Integer.parseInt(id),username,userpassword,Ext1,Ext2);
    	int i=mapper.updateUser(user);
    	session.commit();
    	if(i>0) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	public void UpdateComments(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
    	CommentsMapper mapper=session.getMapper(CommentsMapper.class);
		String id=request.getParameter("id");
		String CommentContent=request.getParameter("CommentContent");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String CommenTime = sdf.format(new Date());

		Comments comments=new Comments(Integer.parseInt(id),CommentContent,CommenTime);
    	int i=mapper.updateComments(comments);
    	session.commit();
    	if(i>0) {
			out.println(Result.toClient(true, "回复成功"));
		}
         session.close();
	
	}
	public void UpdateProductCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		ProductcategoryMapper mapper=session.getMapper(ProductcategoryMapper.class);
		String id=request.getParameter("id");
		String productCategory=request.getParameter("productCategory");     
		String ParentId=request.getParameter("ParentId");
		String Ext1=request.getParameter("Ext1");
		String Ext2=request.getParameter("Ext2");
		Productcategory productCategory1=new Productcategory(Integer.parseInt(id),productCategory,Integer.parseInt(ParentId),Ext1, Ext2);
    	int i=mapper.updateProductCategory(productCategory1);
    	session.commit();
    	if(i>0) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	public void UpdateProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		ProductMapper mapper=session.getMapper(ProductMapper.class);
		String id=request.getParameter("id");//商品主键
		String CategoryId=request.getParameter("CategoryId");     
		String productName=request.getParameter("productName");
		String UnitPrice=request.getParameter("UnitPrice");
		String SellPrice=request.getParameter("SellPrice");
		String DiscountPrice=request.getParameter("DiscountPrice");
		String QuantityPerUnit=request.getParameter("QuantityPerUnit");
		String clicks=request.getParameter("clicks");
		String weight=request.getParameter("weight");
		String Size=request.getParameter("Size");
		String color=request.getParameter("color");
		String Description=request.getParameter("Description");
		String Ext1=request.getParameter("Ext1");
		String Ext2=request.getParameter("Ext2");
		String picUrl=request.getParameter("img");
		Product product=new Product(Integer.parseInt(id), Integer.parseInt(CategoryId), productName,Float.parseFloat(UnitPrice) ,Float.parseFloat(SellPrice) ,Float.parseFloat(DiscountPrice) , Integer.parseInt(QuantityPerUnit), Integer.parseInt(clicks), weight, Size, color, Description, Ext1, Ext2);
		int i=mapper.updateProduct(product);    
		Productpic  productpic=new Productpic(Integer.parseInt(id), picUrl);
		int j=mapper.updateProductPic(productpic);
    	session.commit();
    	if(i+j>0) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	public void SelectOrdersTypeByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		OrdersMapper mapper=session.getMapper(OrdersMapper.class);
    	Fenye fenye=new Fenye();
    	String page=request.getParameter("page");
    	String limit=request.getParameter("limit");
    	String Sta=request.getParameter("Sta");
    	fenye.setSta(Integer.parseInt(Sta));
    	fenye.setLimit(Integer.parseInt(limit));
    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
    	
    	List<User> user= mapper.selectUser();
    	request.getSession().setAttribute("user", user);
    	Map<String, Object> map=new HashMap<String, Object>();
    	map.put("code", 0);
    	map.put("msg", "");
    	map.put("count", mapper.selectCount(fenye));
    	map.put("data", mapper.selectOrdersTypeByid(fenye));
    	Gson gson=new Gson();
    	String json=gson.toJson(map);
    	PrintWriter out=response.getWriter();
    	out.write(json);
    	out.flush();
    	out.close();   
	}
	public void UpdateOrders(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		OrdersMapper mapper=session.getMapper(OrdersMapper.class);
		String id=request.getParameter("id");
		String Status=request.getParameter("Status");     
		Orders orders=new Orders(Integer.parseInt(id),Status);
    	int i=mapper.updateOrders(orders);
    	session.commit();
    	if(i>0) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	public void UpdateOrdersAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		OrdersMapper mapper=session.getMapper(OrdersMapper.class);
		String id=request.getParameter("id");
		String OrderDate=request.getParameter("OrderDate");     
		String username=request.getParameter("username");     
		String tel=request.getParameter("tel");     
		String TotalMoney=request.getParameter("TotalMoney");     
		String Status=request.getParameter("Status");     
		String ShipName=request.getParameter("ShipName");     
		String ShipNum=request.getParameter("ShipNum");     
		String ShipDate=request.getParameter("ShipDate");     
		String ShipCountry=request.getParameter("ShipCountry");     
		String ShipProvince=request.getParameter("ShipProvince");     
		String ShipCity=request.getParameter("ShipCity");     
		String ShipTown=request.getParameter("ShipTown");     
		String ShipAddress=request.getParameter("ShipAddress");     
		String ShipPostCode=request.getParameter("ShipPostCode");     
		String Ext2=request.getParameter("Ext2"); 
		String productName=request.getParameter("productName"); 
		String Remark=request.getParameter("Remark"); 
		String orderId=request.getParameter("orderId"); 
		String productId=request.getParameter("productId");
		String color=request.getParameter("color");
		User  user=new User(Integer.parseInt(id), username);
	    int i=mapper.updateUser(user);  
		Orders orders=new Orders(OrderDate, Integer.parseInt(id), Float.parseFloat(TotalMoney), Status, ShipName, ShipNum, ShipDate, ShipCountry, ShipProvince, ShipCity, ShipTown, ShipAddress, ShipPostCode, Ext2);
    	int j=mapper.updateOrders(orders);
    	Address address=new Address(Integer.parseInt(id),tel);
    	int a=mapper.updateAddress(address);
    	Product product=new Product(Integer.parseInt(productId), productName);
    	int p=mapper.updateProduct(product);
    	OrdersDetails  ordersDetails=new  OrdersDetails(Integer.parseInt(orderId), color,Integer.parseInt(productId));
    	int or=mapper.updateOrdersDetails(ordersDetails);
    	session.commit();
    	if(i+j+a+p+or>4) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	public void UpdateProductPic(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		ProductPicMapper mapper=session.getMapper(ProductPicMapper.class);
		String id=request.getParameter("id");
		String picUrl=request.getParameter("img");   
		System.out.println(picUrl);
		Productpic Productpic=new Productpic(Integer.parseInt(id),picUrl,0);
    	int i=mapper.updateProductPic(Productpic);
    	session.commit();
    	if(i>0) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	public void UpdateOrdersDetailsFahuo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession(true);
		OrdersMapper mapper=session.getMapper(OrdersMapper.class);
		OrdersDetailsMapper mapper2 = session.getMapper(OrdersDetailsMapper.class);
		String id=request.getParameter("id");
		OrdersDetails o=new OrdersDetails(Integer.parseInt(id));
    	int i=mapper.updateOrdersDetailss(o);
    	if(i>0){
    		int orderid = mapper2.selectOrderByid(Integer.parseInt(id));
    		OrdersDetails selectOrdersDetailsByOrderId = mapper2.selectOrdersDetailsByOrderId(0, orderid);
    		if(selectOrdersDetailsByOrderId==null){
    			mapper.updateOrderByStuatuss(4, orderid);
    		}
    	}
    	    	if(i>0) {
    				out.println(Result.toClient(true, "发货成功"));
    			}
    	         session.close();
	}
	public void UpdateOrdersDetials(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		OrdersMapper mapper=session.getMapper(OrdersMapper.class);
		String id=request.getParameter("id");
		String Quantity=request.getParameter("Quantity");     
		String color=request.getParameter("color");
		String ProductId=request.getParameter("ProductId");
	
		OrdersDetails orders=new OrdersDetails();
		orders.setColor(color);
		orders.setQuantity(Integer.parseInt(Quantity));
		orders.setId(Integer.parseInt(id));
		orders.setProductId(Integer.parseInt(ProductId));
    	int i=mapper.updateOrderss(orders);
    	session.commit(); 
    	if(i>0) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	public void UpdateProductStore(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		ProductStoreMapper mapper=session.getMapper(ProductStoreMapper.class);
		String id=request.getParameter("id");
		String QuantityInStock=request.getParameter("QuantityInStock");   
	    
		Productstore ProductStore=new Productstore();
		ProductStore.setId(Integer.parseInt(id));
		ProductStore.setQuantityInStock(Integer.parseInt(QuantityInStock));
    	int i=mapper.updateProductStorehou(ProductStore);
    	session.commit();
    	if(i>0) {
			out.println(Result.toClient(true, "修改成功"));
		}
         session.close();
	
	}
	
}
