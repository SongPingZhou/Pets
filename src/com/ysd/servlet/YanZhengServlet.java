package com.ysd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import com.miaodiyun.httpApiDemo.IndustrySMS;
import com.ysd.test.test1;
@WebServlet("/YanZhengServlet")
public class YanZhengServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		 String phone=request.getParameter("authcode");
		 String pass=request.getParameter("pass");
		 System.out.println(phone);
		 IndustrySMS.setTo(phone);
		 int i= (int)((Math.random()*9+1)*100000);
		 String smsContent = "���������Ѿ�ҵ��������֤��Ϊ"+i+"������30��������ȷ���룬��Ǳ��˲���������Դ˶��š�";
		 IndustrySMS.setSmsContent(smsContent);
		 IndustrySMS.execute();
		//int p=test1.Phone(phone); //��ȡ��֤���i
		  System.out.println(i+"-----------------------------------------------");
		  request.getSession().setAttribute("p", i);
		/*response.sendRedirect("ZhuCeServlet?p="+p);*/
		  if(pass==null){
			  request.getRequestDispatcher("ZhuCeServlet").forward(request, response);
		  }
		  if("1".equals(pass)){
			  request.getRequestDispatcher("ZhaoPasswordServlet").forward(request, response);
		  }
		 
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
           doGet(request, response);
		
	}

}
