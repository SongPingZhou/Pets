package com.ysd.servlet.admin;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.NewMapper;
import com.ysd.mapper.PositionsMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.mapper.RecyclebinMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
import com.ysd.util.Result;
@WebServlet("/DeleteServlet")
public class DeleteServlet extends BaseServlet {

	public void DeleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
    	UserMapper mapper=session.getMapper(UserMapper.class);
    	PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
	    String[] arr=id.split(",");
		int i =mapper.deleteUser(arr);
		session.commit();
		if(i>0) {
			out.println(Result.toClient(true, "É¾³ý³É¹¦"));
		}else {
			out.println(Result.toClient(true, "É¾³ýÊ§°Ü"));
		}
        session.close();
	}
	public void DeleteComments(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
    	CommentsMapper mapper=session.getMapper(CommentsMapper.class);
    	PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
	    String[] arr=id.split(",");
		int i =mapper.deleteComments(arr);
		session.commit();
		if(i>0) {
			out.println(Result.toClient(true, "É¾³ý³É¹¦"));
		}else {
			out.println(Result.toClient(true, "É¾³ýÊ§°Ü"));
		}
        session.close();
	}
	public void DeleteProductCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ProductcategoryMapper mapper=session.getMapper(ProductcategoryMapper.class);
    	PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
	    String[] arr=id.split(",");
		int i =mapper.deleteProductCategory(arr);
		session.commit();
		if(i>0) {
			out.println(Result.toClient(true, "É¾³ý³É¹¦"));
		}else {
			out.println(Result.toClient(true, "É¾³ýÊ§°Ü"));
		}
        session.close();
	}
	public void DeleteProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ProductMapper mapper=session.getMapper(ProductMapper.class);
    	PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
	    String[] arr=id.split(",");
		int i =mapper.deleteProduct(arr);
		session.commit();
		if(i>0) {
			out.println(Result.toClient(true, "É¾³ý³É¹¦"));
		}else {
			out.println(Result.toClient(true, "É¾³ýÊ§°Ü"));
		}
        session.close();
	}
	public void DeleteRecyclebin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession(true);
		String id=request.getParameter("id");
		PrintWriter out=response.getWriter();
		RecyclebinMapper mapper = session.getMapper(RecyclebinMapper.class);
		int i = mapper.deleteRecyclebin(Integer.parseInt(id));
		if(i>0) {
			out.println(Result.toClient(true, "É¾³ý³É¹¦"));
		}else {
			out.println(Result.toClient(true, "É¾³ýÊ§°Ü"));
		}
        session.close();
	}
	public void DeletePosition(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
		SqlSession session=MybatisUtil.getSession(true);
		PositionsMapper mapper = session.getMapper(PositionsMapper.class);
		int i = mapper.deleteRePositions(Integer.parseInt(id));
		session.commit();
		if(i>0) {
			out.println(Result.toClient(true, "É¾³ý³É¹¦"));
		}else {
			out.println(Result.toClient(true, "É¾³ýÊ§°Ü"));
		}
        session.close();
	}
	public void DeleteNews(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
		SqlSession session=MybatisUtil.getSession(true);
		NewMapper mapper = session.getMapper(NewMapper.class);
	    String[] arr=id.split(",");
	    int i = mapper.deleteNews(arr);
		session.commit();
		if(i>0) {
			out.println(Result.toClient(true, "É¾³ý³É¹¦"));
		}else {
			out.println(Result.toClient(true, "É¾³ýÊ§°Ü"));
		}
        session.close();
	}

}

