package com.ysd.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.ysd.util.Result;
@WebServlet("/SaveImgServlet")
public class SaveImgServlet extends BaseServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		SmartUpload smart=new SmartUpload();
		smart.setCharset("utf-8");
		 smart.initialize(getServletConfig(), request, response);
		 PrintWriter out = response.getWriter();
		 try {
			smart.upload();
			smart.save("\\Img");//传到tomcat里
			smart.save("D:\\MyEclipse存储文件\\Pets\\WebRoot\\Img");
			String felenname=smart.getFiles().getFile(0).getFileName();
			out.print(Result.toClient(true, "已成功上传",felenname));
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//上传文件
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		SmartUpload smart=new SmartUpload();
		smart.setCharset("utf-8");
		 smart.initialize(getServletConfig(), request, response);
		 PrintWriter out = response.getWriter();
		 try {
			smart.upload();
			smart.save("\\Img");//（多图上传）
			smart.save("D:\\MyEclipse存储文件\\Pets\\WebRoot\\Img");
			String felenname=smart.getFiles().getFile(0).getFileName();
			out.print(Result.toClient(true, "test",felenname));
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//上传文件
		
		
	}

}
