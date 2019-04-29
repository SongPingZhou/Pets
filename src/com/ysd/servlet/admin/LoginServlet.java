package com.ysd.servlet.admin;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ysd.util.Result;
@WebServlet("/LoginServlet")
public class LoginServlet extends BaseServlet {

public static final String name="aaa";
public static final String password="123";
//登录
	public void Login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain");
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		PrintWriter out =response.getWriter();
		if(username.equals(name)&&userpassword.equals(password)){
			request.getSession().setAttribute("name", name);
			out.print(Result.toClient(true, "登录成功"));
			//out.print(Result.toClient(true, name));
		}else{
			if(!username.equals(name)){
				out.print(Result.toClient(false, "用户名输入有误！"));
			}else if(!userpassword.equals(password)){
				out.print(Result.toClient(false, "密码输入有误！"));
			}else if(username==""||userpassword==""){
				out.print(Result.toClient(false, "用户名和密码不能为空！"));
			}
		}	
	}
	//退出登录
	public void Loginout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		HttpServletRequest req=(HttpServletRequest)request;
		HttpSession hs=req.getSession(true);
		hs.removeAttribute("name");
		hs.removeAttribute("password");
		out.print(Result.toClient(true, "退出成功"));
	}
}
