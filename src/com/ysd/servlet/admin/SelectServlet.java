package com.ysd.servlet.admin;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;
import com.ysd.entity.Fenye;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.User;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.NewMapper;
import com.ysd.mapper.OrdersDetailsMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.PositionsMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductPicMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.mapper.RecyclebinMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
@WebServlet("/SelectServlet")
public class SelectServlet extends BaseServlet{
    //用户
	public void SelectUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
    	UserMapper mapper=session.getMapper(UserMapper.class);
    	Fenye fenye=new Fenye();
    	String page=request.getParameter("page");
    	String limit=request.getParameter("limit");
    	fenye.setLimit(Integer.parseInt(limit));
    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
    	
    	Map<String, Object> map=new HashMap<String, Object>();
    	map.put("code", 0);
    	map.put("msg", "");
    	map.put("count", mapper.selectCount(fenye));
    	map.put("data", mapper.selectUser(fenye));
    	Gson gson=new Gson();
    	String json=gson.toJson(map);
    	PrintWriter out=response.getWriter();
    	out.write(json);
    	out.flush();
    	out.close();   
	}
	//留言
	public void SelectComments(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		CommentsMapper mapper=session.getMapper(CommentsMapper.class);
    	Fenye fenye=new Fenye();
    	String page=request.getParameter("page");
    	String limit=request.getParameter("limit");
    	fenye.setLimit(Integer.parseInt(limit));
    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
    	Map<String, Object> map=new HashMap<String, Object>();
    	map.put("code", 0);
    	map.put("msg", "");
    	map.put("count", mapper.selectCount(fenye));
    	map.put("data", mapper.selectComments(fenye));
    	Gson gson=new Gson();
    	String json=gson.toJson(map);
    	PrintWriter out=response.getWriter();
    	out.write(json);
    	out.flush();
    	out.close();   
	}
	public void SelectCommentsTypeByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		CommentsMapper mapper=session.getMapper(CommentsMapper.class);
    	Fenye fenye=new Fenye();
    	String page=request.getParameter("page");
    	String limit=request.getParameter("limit");
    	String bodyPrc=request.getParameter("bodyPrc");
        fenye.setBodyPrc(bodyPrc);
    	fenye.setLimit(Integer.parseInt(limit));
    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
    	Map<String, Object> map=new HashMap<String, Object>();
    	map.put("code", 0);
    	map.put("msg", "");
    	map.put("count", mapper.selectCount(fenye));
    	map.put("data", mapper.SelectCommentsTypeByid(fenye));
    	Gson gson=new Gson();
    	String json=gson.toJson(map);
    	PrintWriter out=response.getWriter();
    	out.write(json);
    	out.flush();
    	out.close();   
	}
	//宠物类别
	public void SelectProductCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ProductcategoryMapper mapper=session.getMapper(ProductcategoryMapper.class);
    	Fenye fenye=new Fenye();
    	String page=request.getParameter("page");
    	String limit=request.getParameter("limit");
    	fenye.setLimit(Integer.parseInt(limit));
    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
    	//进入类页面把所有类查出来
    	request.getSession().setAttribute("selectProductcategory",mapper.selectProductcategory());
    	Map<String, Object> map=new HashMap<String, Object>();
    	map.put("code", 0);
    	map.put("msg", "");
    	map.put("count", mapper.selectCount(fenye));
    	map.put("data", mapper.selectProductCategory(fenye));
    	Gson gson=new Gson();
    	String json=gson.toJson(map);
    	PrintWriter out=response.getWriter();
    	out.write(json);
    	out.flush();
    	out.close();   
	}
	//宠物
		public void SelectProduct(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			ProductMapper mapper=session.getMapper(ProductMapper.class);
	    	Fenye fenye=new Fenye();
	    	
	    	
	    	String CategoryId=request.getParameter("CategoryId");
	    	String productName=request.getParameter("productName");
	    	String StartSellPrice=request.getParameter("StartSellPrice");
	    	String EndSellPrice=request.getParameter("EndSellPrice");
	    	String clicks=request.getParameter("clicks");
	 
	    	if(!"".equals(StartSellPrice)&&StartSellPrice!=null) {
	    		   fenye.setStartSellPrice(Float.parseFloat(StartSellPrice));
	    	}
	    	if(!"".equals(EndSellPrice)&&EndSellPrice!=null) {
	    		   fenye.setEndSellPrice(Float.parseFloat(EndSellPrice));
	    	}
	    	if(!"".equals(clicks)&&clicks!=null) {
	    		   fenye.setClicks(Integer.parseInt(clicks));
	    	}
	    	if(!"".equals(CategoryId)&&CategoryId!=null) {
	    		   fenye.setCategoryId(Integer.parseInt(CategoryId));
	    	}
	      
	        fenye.setProductName(productName);

	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	List<Productcategory> productCategory= mapper.selectProductCategory();
	    	request.getSession().setAttribute("productCategory", productCategory);
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectCount(fenye));
	    	map.put("data", mapper.selectProduct(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}
		public void SelectOrders(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			OrdersMapper mapper=session.getMapper(OrdersMapper.class);
	    	Fenye fenye=new Fenye();
	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
	    	String CustomerId=request.getParameter("CustomerId");
	    	String Status=request.getParameter("Status");
	    	String ShipName=request.getParameter("ShipName");
	    	String ShipNum=request.getParameter("ShipNum");
	    	String OrderDate=request.getParameter("OrderDate");
	    	String s_ebirthday=request.getParameter("s_ebirthday");
	    	String ShipProvince=request.getParameter("ShipProvince");
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	fenye.setStatus(Status);
	    	fenye.setShipName(ShipName);
	    	fenye.setShipNum(ShipNum);
	    	fenye.setOrderDate(OrderDate);
	    	fenye.setS_ebirthday(s_ebirthday);
	    	fenye.setShipProvince(ShipProvince);
	    	fenye.setCustomerId(CustomerId);
	    	List<User> user= mapper.selectUser();
	    	request.getSession().setAttribute("user", user);
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectCount(fenye));
	    	map.put("data", mapper.selectOrders(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}
		public void SelectOrdersGuanLi(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			OrdersMapper mapper=session.getMapper(OrdersMapper.class);
	    	Fenye fenye=new Fenye();
	    	String OrderId=request.getParameter("OrderId");
	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
	    	fenye.setOrderId(Integer.parseInt(OrderId));
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectCountGuanLi(fenye));
	    	map.put("data", mapper.selectOrdersGuanLi(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}
		public void SelectOrdersGuanLia(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			OrdersMapper mapper=session.getMapper(OrdersMapper.class);
	    	Fenye fenye=new Fenye();
	    	String OrderId=request.getParameter("OrderId");
	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
	    	fenye.setOrderId(Integer.parseInt(OrderId));
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectCountGuanLi(fenye));
	    	map.put("data", mapper.selectOrdersGuanLia(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}
		public void SelectOrdersDetails(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			OrdersDetailsMapper mapper=session.getMapper(OrdersDetailsMapper.class);
	    	Fenye fenye=new Fenye();
	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
	    	String StartPrice=request.getParameter("StartPrice");
	    	String EndPrice=request.getParameter("EndPrice");
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	if(!"".equals(StartPrice)&&StartPrice!=null) {
	    		fenye.setStartPrice(Float.parseFloat(StartPrice));
	    	}
	    	if(!"".equals(EndPrice)&&EndPrice!=null) {
	    		fenye.setEndPrice(Float.parseFloat(EndPrice));
	    	}
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectCount(fenye));
	    	map.put("data", mapper.selectOrdersDetails(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}
		public void SelectPositions(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			PositionsMapper mapper = session.getMapper(PositionsMapper.class);
			
			Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", 0);
	    	map.put("data", mapper.selectPositions());
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();
		}
		public void SelectPosition(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			int id= Integer.parseInt(request.getParameter("id"));
			SqlSession session =MybatisUtil.getSession();
			PositionsMapper mapper = session.getMapper(PositionsMapper.class);
			int selectPositionsByidCount = mapper.selectPositionsByidCount(id);
			List<Product> selectPositionsByid = mapper.selectPositionsByid(id);
			ProductMapper mapper1 = session.getMapper(ProductMapper.class);
	    	request.getSession().setAttribute("byName", mapper1.selectProductByName());
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("code", 0);
			map.put("msg", "");
			map.put("count", selectPositionsByidCount);
			map.put("data", selectPositionsByid);
			Gson gson=new Gson();
			String json=gson.toJson(map);
			PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close(); 
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
		public void SelectProductStore(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			  
			    SqlSession session =MybatisUtil.getSession();
			    ProductStoreMapper mapper = session.getMapper(ProductStoreMapper.class);
			    Fenye fenye=new Fenye();
		    	String page=request.getParameter("page");
		    	String limit=request.getParameter("limit");
		    	String productCategoryName=request.getParameter("productCategoryName");
		    	String productName=request.getParameter("productName");
		    	String StartSellPrice=request.getParameter("StartSellPrice");
		    	String EndSellPrice=request.getParameter("EndSellPrice");
		    	String QuantityInStock=request.getParameter("QuantityInStock");
		    	String EndQuantityInStock=request.getParameter("EndQuantityInStock");
		    	if(!"".equals(StartSellPrice)&&StartSellPrice!=null) {
		    		   fenye.setStartSellPrice(Float.parseFloat(StartSellPrice));
		    	}
		    	if(!"".equals(EndSellPrice)&&EndSellPrice!=null) {
		    		   fenye.setEndSellPrice(Float.parseFloat(EndSellPrice));
		    	}
		    	if(!"".equals(QuantityInStock)&&QuantityInStock!=null) {
		    		  fenye.setQuantityInStock(Integer.parseInt(QuantityInStock));
		    	}
		    	if(!"".equals(EndQuantityInStock)&&EndQuantityInStock!=null) {
		    		  fenye.setEndQuantityInStock(Integer.parseInt(EndQuantityInStock));
		    	}
		        fenye.setProductCategoryName(productCategoryName);
		        fenye.setProductName(productName);
		      
		    	fenye.setLimit(Integer.parseInt(limit));
		    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
		    	
			    Map<String, Object> map=new HashMap<String, Object>();
			   
		    	map.put("code", 0);
		    	map.put("msg", "");
		    	map.put("count", mapper.selectCount(fenye));
		    	map.put("data", mapper.selectProductStore(fenye));
		    	Gson gson=new Gson();
		    	String json=gson.toJson(map);
		    	PrintWriter out=response.getWriter();
		    	out.write(json);
		    	out.flush();
		    	out.close();   
		}
		public void SelectProductPic(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			ProductPicMapper mapper=session.getMapper(ProductPicMapper.class);
	    	Fenye fenye=new Fenye();
	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectCount(fenye));
	    	map.put("data", mapper.selectProductPic(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}
		public void SelectRecyclebin(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			RecyclebinMapper mapper = session.getMapper(RecyclebinMapper.class);
			Fenye fenye=new Fenye();
	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectRecyclebinCount(fenye));
	    	map.put("data", mapper.selectRecyclebin(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}
		public void SelectNews(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			NewMapper mapper=session.getMapper(NewMapper.class);
	    	Fenye fenye=new Fenye();
	    	String page=request.getParameter("page");
	    	String limit=request.getParameter("limit");
			ProductMapper mapper1 = session.getMapper(ProductMapper.class);
	    	request.getSession().setAttribute("byName", mapper1.selectProductByName());
	    	
	    	fenye.setLimit(Integer.parseInt(limit));
	    	fenye.setPage((Integer.parseInt(page)-1)*Integer.parseInt(limit));
	    	Map<String, Object> map=new HashMap<String, Object>();
	    	map.put("code", 0);
	    	map.put("msg", "");
	    	map.put("count", mapper.selectCount(fenye));
	    	map.put("data", mapper.selectNew(fenye));
	    	Gson gson=new Gson();
	    	String json=gson.toJson(map);
	    	PrintWriter out=response.getWriter();
	    	out.write(json);
	    	out.flush();
	    	out.close();   
		}

}
