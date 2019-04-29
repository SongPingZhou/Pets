package com.ysd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.ysd.entity.User;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
import com.ysd.util.Result;
@WebServlet("/ZhaoPasswordServlet")
public class ZhaoPasswordServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		SqlSession session=MybatisUtil.getSession();
		UserMapper mapper=session.getMapper(UserMapper.class);
		String username=request.getParameter("username"); //用户名
		 String phone=request.getParameter("authcode");
		String pwd=request.getParameter("pwd")+""; //新密码  让输入的新密码跟 验证码匹配
		int pp=(Integer) request.getSession().getAttribute("p");//验证码
		String p=pp+"";
		//根据用户名和手机号去匹配
	
		User user=new User();
		user.setUsername(username);
		user.setExt1(phone);
		User selectUserUserNamePhone=mapper.selectUserUserNamePhone(user);
		if(selectUserUserNamePhone!=null){
			System.out.println("哈哈哈哈哈++++++++++++++++++++++++++++++++++++++++++++++++++++++");
			if(pwd.equals(p)){
				System.out.println("哈哈哈哈哈++++++++++++++++++++++++++++++++++++++++++++++++++++++");
				User u=new User(username, pwd);
				int i=mapper.updateUserUserPhone(u);
				session.commit();
				System.out.println(i);
				if(i>0) {
					out.println(Result.toClient(true, "注册成功"));
				}else{
					out.println(Result.toClient(true, "注册失败"));
				}
			}	
		}else{
			out.println(Result.toClient(false, "已被注册注册失败"));
		}
         session.close();
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
             doGet(request, response);
		
	}

	
	

}
