package com.ysd.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;



import com.google.gson.Gson;

import com.ysd.entity.Comments;
import com.ysd.entity.News;
import com.ysd.entity.Orders;
import com.ysd.entity.Positions;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Productpic;
import com.ysd.entity.Productstore;
import com.ysd.entity.Resposition;
import com.ysd.entity.User;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.NewMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.PositionsMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductPicMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.ProductcategoryMapper;
import com.ysd.mapper.RecyclebinMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.util.MybatisUtil;
import com.ysd.util.Result;
@WebServlet("/AddServlet")
public class AddServlet extends BaseServlet {
	public void AddUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession();
    	UserMapper mapper=session.getMapper(UserMapper.class);
    	String username=request.getParameter("username");     
		String userpassword=request.getParameter("userpassword");
		String Ext1=request.getParameter("Ext1");
		String Ext2=request.getParameter("Ext2"); 
		User user=new User(0, username, userpassword, Ext1, Ext2);
        int i=mapper.insertUser(user);
        
        System.out.println(i);
        session.commit();
        	if(i>0) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}
	public void AddComments(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession();
    	CommentsMapper mapper=session.getMapper(CommentsMapper.class);
    	String ProductId=request.getParameter("ProductId");     
		String CommentContent=request.getParameter("CommentContent");
		String CommenTime=request.getParameter("CommenTime");
		String bodyPrc=request.getParameter("bodyPrc");
		String ProductMarks=request.getParameter("ProductMarks");
		String ServiceMarks=request.getParameter("ServiceMarks");
		String Status=request.getParameter("Status");
		String Reply=request.getParameter("Reply");
		String Ext1=request.getParameter("Ext1");
		String Ext2=request.getParameter("Ext2");
		
		Comments comments=new Comments(0,Integer.parseInt(ProductId), CommentContent, CommenTime, bodyPrc, Integer.parseInt(ProductMarks), Integer.parseInt(ServiceMarks), Integer.parseInt(Status),Integer.parseInt(Reply), Ext1, Ext2);
        int i=mapper.insertComments(comments);
        session.commit();
        	if(i>0) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}
	public void AddProductCategory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession();
    	ProductcategoryMapper mapper=session.getMapper(ProductcategoryMapper.class);
    	String productCategory=request.getParameter("productCategory");     
		String ParentId=request.getParameter("ParentId");
		String Ext1=request.getParameter("Ext1");
		String Ext2=request.getParameter("Ext2");
		Productcategory productCategory1=new Productcategory(0,productCategory,Integer.parseInt(ParentId),Ext1, Ext2);
        int i=mapper.insertProductCategory(productCategory1);
        System.out.println(i);
        session.commit();
        	if(i>0) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}
	public void AddProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession();
    	ProductMapper mapper=session.getMapper(ProductMapper.class);
    	String CategoryId=request.getParameter("CategoryId");     
		String productName=request.getParameter("productName");
		/*String picUrl=request.getParameter("picUrl");*/
		String UnitPrice=request.getParameter("UnitPrice");
		String SellPrice=request.getParameter("SellPrice");
		String DiscountPrice=request.getParameter("DiscountPrice");
		String QuantityPerUnit=request.getParameter("QuantityPerUnit");
		String clicks=request.getParameter("clicks");
		String weight=request.getParameter("weight");
		String Size=request.getParameter("Size");
		String color=request.getParameter("color");
		String Description=request.getParameter("Description");
		String Ext1=request.getParameter("Ext1");
		String Ext2=request.getParameter("Ext2");
		String    picUrl=request.getParameter("img");
		Product product=new Product(0, Integer.parseInt(CategoryId), productName,Float.parseFloat(UnitPrice) ,Float.parseFloat(SellPrice) ,Float.parseFloat(DiscountPrice) , Integer.parseInt(QuantityPerUnit), Integer.parseInt(clicks), weight, Size, color, Description, Ext1, Ext2);
		int i=mapper.insertProduct(product);
		Productpic productpic=new Productpic(0,product.getId(), picUrl,0);
		int j=mapper.insertProductPic(productpic);
        session.commit();
        	if(i+j>1) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}

	public void AddProductStore(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession();
    	ProductStoreMapper mapper=session.getMapper(ProductStoreMapper.class);
		String CategoryId=request.getParameter("CategoryId");
		String productName=request.getParameter("productName");
		String SellPrice=request.getParameter("SellPrice");
		String creaTime=request.getParameter("creaTime");
		/*String PicType=request.getParameter("PicType");*/
		String Size=request.getParameter("Size");
		String QuantityInStock=request.getParameter("QuantityInStock");
		String    picUrl=request.getParameter("img");
	/*	Productcategory  productcategory=new Productcategory(0, productCategoryName);
		int i=mapper.insertProductCategory(productcategory);*/
		Product  product=new Product(0,Integer.parseInt(CategoryId), productName,Float.parseFloat(SellPrice),Size);
		int j=mapper.insertProduct(product);
		Productpic productpic=new Productpic(0,product.getId(), picUrl,0,creaTime);
		int pc=mapper.insertProductPic(productpic);
		Productstore productstore=new Productstore(0,productpic.getId(), Integer.parseInt(QuantityInStock));
        int ps=mapper.insertProductStore(productstore);
		session.commit();
        	if(j+pc+ps>3) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}
	
	
	
	public void AddOrders(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession();
    	OrdersMapper mapper=session.getMapper(OrdersMapper.class);
    	String OrderDate=request.getParameter("OrderDate");     
		String CustomerId=request.getParameter("CustomerId");
		String TotalMoney=request.getParameter("TotalMoney");
		String Status=request.getParameter("Status");
		String ShipName=request.getParameter("ShipName");
		String ShipNum=request.getParameter("ShipNum");
		String ShipDate=request.getParameter("ShipDate");
		String ShipCountry=request.getParameter("ShipCountry");
		String ShipProvince=request.getParameter("ShipProvince");
		String ShipCity=request.getParameter("ShipCity");
		String ShipTown=request.getParameter("ShipTown");
		String ShipAddress=request.getParameter("ShipAddress");
		String ShipPostCode=request.getParameter("ShipPostCode");
		String Ext2=request.getParameter("Ext2");
		Orders orders=new Orders(0, OrderDate, Integer.parseInt(CustomerId), Double.parseDouble(TotalMoney), Status, ShipName, ShipNum, ShipDate, ShipCountry, ShipProvince, ShipCity, ShipTown, ShipAddress, ShipPostCode, Ext2);
        int i=mapper.insertOrders(orders);
        System.out.println(i);
        session.commit();
        	if(i>0) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}
	public void AddProductPic(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession();
    	int id=Integer.parseInt(request.getParameter("id"));
    	String img=request.getParameter("img");
    	int kucun=Integer.parseInt(request.getParameter("kucun"));
    	
    	//String duoImg=request.getParameter("duoImg");
    	String ProductPicColor=request.getParameter("ProductPicColor");
    	//获取jsp传的汉字的解析
    	ProductPicColor=new String(ProductPicColor.getBytes("iso-8859-1"),"utf-8");
    	ProductPicMapper mapper = session.getMapper(ProductPicMapper.class);
    	ProductStoreMapper storeMapper = session.getMapper(ProductStoreMapper.class);
    	Productpic pic=new Productpic(id, img, ProductPicColor);		
    	int insertProductPic=0;
    	if(!img.equals("undefined") && !"undefined".equals(img)){
    		insertProductPic= mapper.insertProductPic(pic);
    	}
    	int peituid = mapper.selectProductpicByDesc();
    	int storeSize = storeMapper.insertProductStoreSize(peituid, kucun);
    	/*String[] split = duoImg.split(",");
    	int insertDProductPic=0;
    	if(split.length!=0){
    		for (int i = 0; i < split.length; i++) {
    			Productpic dpic=new Productpic(id, split[i], ProductPicColor);
    			insertDProductPic= mapper.insertDProductPic(dpic);
			}
    	}*/
    	session.commit();
    	Map<String, Object> map=new HashMap<String, Object>();
    	map.put("code",  storeSize);
    	Gson gson=new Gson();
    	String json = gson.toJson(map);
    	out.write(json);
    	out.flush();
    	out.close();
	}
	public void AddPosition(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession(true);
    	PositionsMapper mapper = session.getMapper(PositionsMapper.class);
    	String position=request.getParameter("position");     
		String qz=request.getParameter("qz");
		String positionid=request.getParameter("positionid");
		Resposition resposition=new Resposition(Integer.parseInt(positionid), Integer.parseInt(position), Integer.parseInt(qz));
		int i = mapper.insertPositions(resposition);
        System.out.println(i);
        session.commit();
        	if(i>0) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}
	//回收站的恢复servlet
	public void AddProductTestServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String product = request.getParameter("product");
		String[] split = product.split(",");
		Product product2=new Product();
		product2.setId(Integer.parseInt(split[0]));
		product2.setCategoryId(Integer.parseInt(split[1]));
		product2.setProductName(split[2]);
		product2.setUnitPrice(Float.parseFloat(split[3]));
		product2.setSellPrice(Float.parseFloat(split[4]));
		product2.setDiscountPrice(Float.parseFloat(split[5]));
		product2.setQuantityPerUnit(Integer.parseInt(split[6]));
		product2.setClicks(Integer.parseInt(split[7]));
		product2.setWeight(split[8]);
		product2.setSize(split[9]);
		product2.setColor(split[10]); 
		product2.setDescription(split[11]);
		SqlSession session=MybatisUtil.getSession(true);
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		int i = mapper.insertProductByHuiFu(product2);
		RecyclebinMapper mapper2 = session.getMapper(RecyclebinMapper.class);
		if(i>0){//数据恢复后删除回收站的数据
			mapper2.deleteRecyclebin(Integer.parseInt(split[0]));
		}
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("code", i);
    	Gson gson=new Gson();
    	String json=gson.toJson(map);
    	PrintWriter out=response.getWriter();
    	out.write(json);
    	out.flush();
    	out.close(); 
	}
	public void AddNews(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
    	SqlSession session=MybatisUtil.getSession(true);
    	NewMapper mapper = session.getMapper(NewMapper.class);
    	String name=request.getParameter("name");     
		String pid=request.getParameter("pid");
		String details=request.getParameter("details");
		News news=new News();
		news.setName(name);
		news.setPid(Integer.parseInt(pid));
		news.setDetails(details);
	
		int i = mapper.insertNews(news);
        System.out.println(i);
        session.commit();
        	if(i>0) {
    			out.println(Result.toClient(true, "添加成功"));
    		}else {
    			out.println(Result.toClient(true, "添加失败"));
    		}
        session.close();
	}

}
