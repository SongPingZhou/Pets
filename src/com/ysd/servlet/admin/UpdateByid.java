package com.ysd.servlet.admin;


import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.ibatis.session.SqlSession;


import com.ysd.entity.Comments;
import com.ysd.entity.Orders;
import com.ysd.entity.OrdersDetails;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Productpic;
import com.ysd.entity.Productstore;
import com.ysd.entity.User;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductPicMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
@WebServlet("/UpdateByid")
public class UpdateByid extends BaseServlet {

	public void UpdateUserByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
    	UserMapper mapper=session.getMapper(UserMapper.class);
    	String id=request.getParameter("id");
    	User user=mapper.selectUserByid(Integer.parseInt(id));
    	request.setAttribute("user",user);
    	request.getRequestDispatcher("HouTai/updateUser.jsp").forward(request, response);
	}

	public void UpdateCommentByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
    	CommentsMapper mapper=session.getMapper(CommentsMapper.class);
    	String id=request.getParameter("id");
    	Comments comments=mapper.selectCommentsByid(Integer.parseInt(id));
    	request.setAttribute("comments",comments);
    	request.getRequestDispatcher("HouTai/updateComments.jsp").forward(request, response);
	}
	public void UpdateProductCategoryByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ProductcategoryMapper mapper=session.getMapper(ProductcategoryMapper.class);
    	String id=request.getParameter("id");
    	Productcategory productCategory=mapper.selectProductCategoryByid(Integer.parseInt(id));
    	request.setAttribute("productCategory",productCategory);
    	request.getRequestDispatcher("HouTai/updateProductCategory.jsp").forward(request, response);
	}
	public void UpdateProductByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ProductMapper mapper=session.getMapper(ProductMapper.class);
    	String id=request.getParameter("id");
    	Product product=mapper.selectProductByidOne(Integer.parseInt(id));
    	request.setAttribute("product",product);
    	request.getRequestDispatcher("HouTai/updateProduct.jsp").forward(request, response);
	}
	public void UpdateOrdersByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		OrdersMapper mapper=session.getMapper(OrdersMapper.class);
    	String id=request.getParameter("id");
    	 List<OrdersDetails> orders=mapper.selectOrdersByidhou(Integer.parseInt(id));
    	request.setAttribute("orders",orders);
    	request.getRequestDispatcher("HouTai/updateOrders.jsp").forward(request, response);
	}
	public void UpdateOrdersAllByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		OrdersMapper mapper=session.getMapper(OrdersMapper.class);
    	String id=request.getParameter("id");
    	 OrdersDetails  orders=mapper.selectOrdersDetaisByid(Integer.parseInt(id));
    	request.setAttribute("orders",orders);
    	request.getRequestDispatcher("HouTai/updateOrdersAll.jsp").forward(request, response);
	}
	public void UpdateProductPicByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ProductPicMapper mapper=session.getMapper(ProductPicMapper.class);
    	String id=request.getParameter("id");
    	Productpic Productpic=mapper.selectProductPicByid(Integer.parseInt(id));
    	request.setAttribute("Productpic",Productpic);
    	request.getRequestDispatcher("HouTai/updateProductPic.jsp").forward(request, response);
	}
	public void UpdateProductstoreByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ProductStoreMapper mapper=session.getMapper(ProductStoreMapper.class);
    	String id=request.getParameter("id");
    	Productstore productstore=mapper.selectProductstoreOne(Integer.parseInt(id));
    	request.setAttribute("productstore",productstore);
    	request.getRequestDispatcher("HouTai/updateProductstore.jsp").forward(request, response);
	}
}
