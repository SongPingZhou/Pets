package com.ysd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;
import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.Orders;
import com.ysd.entity.ShoppingCart;
import com.ysd.entity.User;
import com.ysd.entity.UserCustomers;
import com.ysd.mapper.ShoppingcartMapper;
import com.ysd.mapper.UserCustomersMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
import com.ysd.util.Result;
@WebServlet("/DengLuServlet")
public class DengLuServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String t=request.getParameter("t");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		if(t==null){
			String loginname = request.getParameter("loginname");
			String loginpwd = request.getParameter("loginpwd");
			User user=new User(loginname, loginpwd);
			SqlSession session=MybatisUtil.getSession();
			UserMapper mapper = session.getMapper(UserMapper.class);
			User selectUserByUser = mapper.selectUserByUser(user);
			PrintWriter out=response.getWriter();
			UserCustomersMapper umapper = session.getMapper(UserCustomersMapper.class);
			ShoppingcartMapper mappers = session.getMapper(ShoppingcartMapper.class);
			int use=0;
			if(selectUserByUser!=null){
				use=1;
				//用户的基本信息
				request.getSession().setAttribute("selectUserCustomers", umapper.selectUserCustomers(selectUserByUser.getId()));
				//登陆成功后把用户的评论存到session中
				request.getSession().setAttribute("selectUserPinLun", umapper.selectUserComments(selectUserByUser.getId()));
				//登陆后查询地址存到session
				request.getSession().setAttribute("selectUserAddress", umapper.selectUserAddress(selectUserByUser.getId()));
				//登陆后把用户的订单存到session中
				request.getSession().setAttribute("selectOrders", umapper.selectOrders(selectUserByUser.getId()));
				//用户登陆获取相应的购物车数据存到session中
				request.getSession().setAttribute("selectShoppingCart", mappers.selectShoppingCart(selectUserByUser.getId()));
				//存用户的用户名,密码,id(忘记存成类了)
				request.getSession().setAttribute("loginname", loginname);
				request.getSession().setAttribute("loginpwd",loginpwd );
				request.getSession().setAttribute("userid", selectUserByUser.getId());
			}
	    	if(use>0){
				out.println(Result.toClient(true, "成功"));
			}
	    	if(selectUserByUser==null){
				out.println(Result.toClient(false, "失败"));
			}
	    	 session.commit();
	         session.close();
		}else{
			//用户退出操作清空所有session
			HttpSession session=request.getSession();
			PrintWriter out=response.getWriter();
			session.invalidate();
			out.println(Result.toClient(true, "成功"));
		}
		
		
	}

}
