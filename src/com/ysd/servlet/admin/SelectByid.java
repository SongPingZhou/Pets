package com.ysd.servlet.admin;



import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.ibatis.session.SqlSession;


import com.google.gson.Gson;
import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.Orders;
import com.ysd.entity.OrdersDetails;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Productstore;
import com.ysd.entity.Resposition;
import com.ysd.entity.User;
import com.ysd.mapper.AddressMapper;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.OrdersDetailsMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.PositionsMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
@WebServlet("/SelectByid")
public class SelectByid extends BaseServlet{

	public void SelectUserByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
    	UserMapper mapper=session.getMapper(UserMapper.class);
    	String id=request.getParameter("id");
    	User user=mapper.selectUserByid(Integer.parseInt(id));
    	request.setAttribute("user",user);
    	request.getRequestDispatcher("HouTai/selectUser.jsp").forward(request, response);
	}
	public void SelectCommentsByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
	    	CommentsMapper mapper=session.getMapper(CommentsMapper.class);
	    	String id=request.getParameter("id");
	    	Comments comments=mapper.selectCommentsByid(Integer.parseInt(id));
	    	request.setAttribute("comments",comments);
	    	request.getRequestDispatcher("HouTai/selectComments.jsp").forward(request, response);
	}
	
	public void SelectProductCategoryByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			ProductcategoryMapper mapper=session.getMapper(ProductcategoryMapper.class);
	    	String id=request.getParameter("id");
	    	Productcategory productCategory=mapper.selectProductCategoryByid(Integer.parseInt(id));
	    	request.setAttribute("productCategory",productCategory);
	    	request.getRequestDispatcher("HouTai/selectProductCategory.jsp").forward(request, response);
	}
	public void SelectProductByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			ProductMapper mapper=session.getMapper(ProductMapper.class);
	    	String id=request.getParameter("id");
	    	Product product=mapper.selectProductByidOne(Integer.parseInt(id));
	    	request.setAttribute("product",product);
	    	request.getRequestDispatcher("HouTai/selectProduct.jsp").forward(request, response);
	}
	public void SelectOrdersByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			OrdersMapper mapper=session.getMapper(OrdersMapper.class);
	    	String OrderId=request.getParameter("id");
	    	List<OrdersDetails> orders=mapper.selectOrdersByidhou(Integer.parseInt(OrderId));
	    	request.setAttribute("orders",orders);
	    	request.getRequestDispatcher("HouTai/ordersGuanLi.jsp").forward(request, response);
	}
	public void SelectOrdersByida(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			OrdersMapper mapper=session.getMapper(OrdersMapper.class);
	    	String OrderId=request.getParameter("id");
	    	List<OrdersDetails> orders=mapper.selectOrdersByidhou(Integer.parseInt(OrderId));
	    	request.setAttribute("orders",orders);
	    	request.getRequestDispatcher("HouTai/ordersGuanLia.jsp").forward(request, response);
	}
	public void SelectOrdersDetailsByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			OrdersDetailsMapper mapper=session.getMapper(OrdersDetailsMapper.class);
	    	String id=request.getParameter("id");
	    	OrdersDetails ordersDetails=mapper.selectOrdersDetailsByid(Integer.parseInt(id));
	    	request.setAttribute("ordersDetails",ordersDetails);
	    	request.getRequestDispatcher("HouTai/selectOrdersDetails.jsp").forward(request, response);
	}
	public void SelectProductstoreByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			ProductStoreMapper mapper=session.getMapper(ProductStoreMapper.class);
	    	String id=request.getParameter("id");
	    	Productstore selectProductStoreByid = mapper.selectProductStoreByid(Integer.parseInt(id));
	    	request.setAttribute("selectProductStoreByid",selectProductStoreByid);
	    	request.getRequestDispatcher("HouTai/selectProductStore.jsp").forward(request, response);
	}
	public void SelectAddressByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			SqlSession session=MybatisUtil.getSession();
			AddressMapper mapper=session.getMapper(AddressMapper.class);
	    	String id=request.getParameter("id");
	    	Address selectAddressByid = mapper.selectAddressByidqian(Integer.parseInt(id));
	    	request.setAttribute("selectAddressByid",selectAddressByid);
	    	request.getRequestDispatcher("HouTai/selectAddress.jsp").forward(request, response);
	}

}
