package com.ysd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.ysd.entity.User;
import com.ysd.mapper.UserMapper;
import com.ysd.test.test1;
import com.ysd.util.MybatisUtil;
import com.ysd.util.Result;
@WebServlet("/ZhuCeServlet")
public class ZhuCeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		SqlSession session=MybatisUtil.getSession();
		UserMapper mapper=session.getMapper(UserMapper.class);
		String username=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		String yanzheng=request.getParameter("yanzheng")+"";
		 String phone=request.getParameter("authcode");
		/*int yanzhengma=0;
		if(yanzheng!=""){
			 yanzhengma=Integer.parseInt(yanzheng);
		}*/
		int pp=(Integer) request.getSession().getAttribute("p");
		String p=pp+"";
  
        System.out.println(pp+"dfsasdfasdsafddsfadfs");
    //    System.out.println(pp+"sdddd++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
		User user=new User(username);
		User selectUserUserName=mapper.selectUserUserName(user);
		if(selectUserUserName==null){
			System.out.println(yanzheng);
			System.out.println(p);
			if(yanzheng.equals(p)){
				System.out.println(yanzheng);
				System.out.println(p);
				User u=new User(username,pwd,phone);
				int i=mapper.insertUserUserName(u);
				
				if(i>0){
					User selectNewUser = mapper.selectNewUser();
					int insertNewusercustomers = mapper.insertNewusercustomers(selectNewUser.getId());
				}
				
				session.commit();
				System.out.println(i);
				if(i>0) {
					out.println(Result.toClient(true, "×¢²á³É¹¦"));
				}else{
					out.println(Result.toClient(true, "×¢²áÊ§°Ü"));
				}
			}
		}else{
			out.println(Result.toClient(false, "ÒÑ±»×¢²á×¢²áÊ§°Ü"));
		}
         session.close();
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
        doGet(request, response);
		
	}

}
