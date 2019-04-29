package com.ysd.servlet.admin;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/BaseServlet")
public class BaseServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String methodName = request.getParameter("method");
        Class c = this.getClass();
        Method method = null;
        try {
            method = c.getMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
        } catch (Exception e){
            throw new RuntimeException("你调用的这个方法" + methodName +
                    "(HttpServletRequest,HttpServletResponse)哈哈");
        }
        try{
            method.invoke(this,request, response);
        }catch(Exception e){
            System.out.println("" + methodName + "");
            throw new RuntimeException(e);
        }
		
	}
}
