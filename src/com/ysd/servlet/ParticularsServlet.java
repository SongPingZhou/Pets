package com.ysd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.ysd.entity.Comments;
import com.ysd.entity.Lately;
import com.ysd.entity.Product;
import com.ysd.entity.Productpic;
import com.ysd.entity.Resposition;
import com.ysd.mapper.ProductMapper;
import com.ysd.util.MybatisUtil;
@WebServlet("/ParticularsServlet")
public class ParticularsServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String ordersid = request.getParameter("orderId");
		int id = Integer.parseInt(request.getParameter("id").trim());
		//String 
		int position=Integer.parseInt(request.getParameter("position"));
		SqlSession session=MybatisUtil.getSession();
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		Product selectProductById = mapper.selectProductById(id);
		
		List<Productpic> selectProductPicPeiTu = mapper.selectProductPicPeiTu(id);
		
		List<Comments> selectCommentsByBody = mapper.selectCommentsByBody(id);
		
		List<Resposition> selectRespositionById = mapper.selectRespositionById(position);
		//详情页面的评论区的内容
		request.setAttribute("selectCommentsByBody", selectCommentsByBody);
		//进入详情页所显示相对应的宠物
		request.getSession().setAttribute("selectProductById", selectProductById);
		//详情页面的宠物配图
		request.getSession().setAttribute("selectProductPicPeiTu", selectProductPicPeiTu);
		//详情页面的推介宠物
		request.setAttribute("selectRespositionById", selectRespositionById);
		
		
		Object attribute = request.getSession().getAttribute("userid");
		
		if(ordersid !=null){
			request.setAttribute("ordersid", ordersid);
		}
		if(attribute !=null){
			System.out.println(attribute);
			
    		List<Lately> selectLately = mapper.selectLately(Integer.parseInt(String.valueOf(attribute)));
    		request.getSession().setAttribute("selectLately", selectLately);
		}
		
		request.getRequestDispatcher("product-details.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
