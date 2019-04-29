package com.ysd.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CoreFilter extends HttpServlet implements javax.servlet.Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		String path=req.getRequestURI();
		HttpServletResponse reqs=(HttpServletResponse)response;
		String loginname=(String)req.getSession().getAttribute("loginname");
		String loginpwd=(String) req.getSession().getAttribute("loginpwd");
		if(path.indexOf("/Pets/login.jsp")>-1||path.indexOf("/Pets/CoreFilter")>-1||path.endsWith(".css")||path.endsWith(".js")||path.endsWith(".jpg")||path.endsWith(".png")||path.endsWith(".ico")||path.endsWith(".gif")){
			chain.doFilter(req, reqs);
		}else{
			if(loginname==null&&loginpwd==null){
				req.getRequestDispatcher("../login.jsp").forward(request, response);
			}else{
				chain.doFilter(req, reqs);
			}
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

}
