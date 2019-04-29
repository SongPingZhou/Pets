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

import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.util.MybatisUtil;
@WebServlet("/MeowStarPeoperServlet")
public class MeowStarPeoperServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//ͨ�����ͷ���ĳ�������벻ͬ��if��ȡ����
		int index=Integer.parseInt(request.getParameter("index"));
		SqlSession session=MybatisUtil.getSession();
		//ÿһ�������඼Ҫ��ʾ���г���������ƶ���ȫ�ֵ�
		ProductcategoryMapper mapper = session.getMapper(ProductcategoryMapper.class);
		List<Productcategory> list = mapper.selectProduct();
		request.setAttribute("list", list);
		List<Product> selectAllProdct=null;
		 ProductMapper productMapper=session.getMapper(ProductMapper.class);
		if(index !=0 ){ 
			//���time����ֵ��
			String time=request.getParameter("time");
			String productcateids=request.getParameter("productcateid");
			if(time==null){
				String productcateid=request.getParameter("productcateid");
				if(productcateid==null){
					selectAllProdct = productMapper.selectAllProduct(index);
				}
				if(productcateid !=null){
					selectAllProdct=productMapper.selectAllProductCateGorg(index,Integer.parseInt(productcateid));
				}
			}
			if("1".equals(time) && productcateids==""){
				selectAllProdct=productMapper.selectAllProductByTimeAndClass(index);
				request.setAttribute("xindex", 2);
			}
			if("1".equals(time) && productcateids!=""){
				selectAllProdct=productMapper.selectAllProductByTimeAndClassByZiLeiASC(Integer.parseInt(productcateids));
				request.setAttribute("xindex", 2);
			}
			if("2".equals(time)){
				selectAllProdct=productMapper.selectProductByLately();
			}
			if("3".equals(time) && productcateids==""){
				selectAllProdct=productMapper.selectProductByPriceDesc(index);
			}
			if("3".equals(time) && productcateids!=""){
				selectAllProdct=productMapper.selectProductTimeDesc(Integer.parseInt(productcateids));
			}
		}else{
			//timeûֵ
			String time=request.getParameter("time");
			if(time==null){
				selectAllProdct=productMapper.selectAllProductPets();
			}
			if("2".equals(time)){
				selectAllProdct=productMapper.selectProductByTime();
			}
			if("1".equals(time)){
				selectAllProdct=productMapper.selectProductBtAsc();
			}
		}
		String productcateid=request.getParameter("productcateid");
		 
		request.setAttribute("productcateid",productcateid);
		 
		//����Եĳ�����ת����ҳ��
		request.setAttribute("index", index);
		request.getSession().setAttribute("selectAllProdct", selectAllProdct);
		request.getRequestDispatcher("women.jsp").forward(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
