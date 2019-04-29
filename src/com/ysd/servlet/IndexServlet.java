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
import com.ysd.entity.News;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Resposition;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.NewMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductPicMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.util.MybatisUtil;
@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		SqlSession session=MybatisUtil.getSession();
		ProductcategoryMapper mapper = session.getMapper(ProductcategoryMapper.class);
		ProductMapper productMapper=session.getMapper(ProductMapper.class);
		//查询热门评论用的
		CommentsMapper mapper2 = session.getMapper(CommentsMapper.class);
		//导购信息
		NewMapper mapper3 = session.getMapper(NewMapper.class);
		//新增的宠物狗显示到最前面
		request.getSession().setAttribute("selectdog", productMapper.selectdog());
		//新增的宠物猫显示到最前面
		request.getSession().setAttribute("selectcat",productMapper.selectcat());
		
		request.getSession().setAttribute("selectByClass", productMapper.selectRespositionById(2));
		
		request.getSession().setAttribute("list",  mapper.selectProduct());
		
		request.getSession().setAttribute("selectNews",mapper3.selectNews());
		
		request.setAttribute("selectCommentsByExt2", mapper2.selectCommentsByExt2());
		//轮播图片
		ProductPicMapper mapper4 = session.getMapper(ProductPicMapper.class);
		request.setAttribute("selectProductPic", mapper4.selectProductPicqian());

		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
		
	}

}
