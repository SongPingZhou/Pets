package com.ysd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;
import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.Lately;
import com.ysd.entity.News;
import com.ysd.entity.Orders;
import com.ysd.entity.OrdersDetails;
import com.ysd.entity.Product;
import com.ysd.entity.Productpic;
import com.ysd.entity.ShoppingCart;
import com.ysd.entity.User;
import com.ysd.entity.UserCustomers;
import com.ysd.mapper.AddressMapper;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.LatelyMapper;
import com.ysd.mapper.NewMapper;
import com.ysd.mapper.OrdersDetailsMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductPicMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.ShoppingcartMapper;
import com.ysd.mapper.UserCustomersMapper;
import com.ysd.mapper.UserMapper;
import com.ysd.servlet.admin.BaseServlet;
import com.ysd.util.MybatisUtil;
import com.ysd.util.Result;
@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String loginname=request.getParameter("loginname");
		String newpwd = request.getParameter("newpwd");
		int userid=Integer.parseInt(request.getParameter("userid"));
		User user=new User(userid, newpwd);
		SqlSession session=MybatisUtil.getSession(true);
		UserMapper mapper = session.getMapper(UserMapper.class);
		int updateUser = mapper.updateuserByPwd(user);
		PrintWriter out = response.getWriter();
		if(updateUser>0){
			request.getSession().setAttribute("name", loginname);
			out.println(Result.toClient(true, "成功"));
		}else {
			out.println(Result.toClient(false, "失败"));
		}
		out.flush();
		out.close();
	}
	//根据评分最低的让用户用积分兑换
	public void selectComments(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		SqlSession session=MybatisUtil.getSession(true);
		CommentsMapper mapper = session.getMapper(CommentsMapper.class);
		List<Comments> selectComments = mapper.selectCommentszhl();
		request.setAttribute("selectComments",selectComments);
		request.getRequestDispatcher("core/my-points.jsp").forward(request, response);
	}
	//订单详情去支付
	public void MyZhiFuServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int orderid=Integer.parseInt(request.getParameter("id"));
		SqlSession session=MybatisUtil.getSession(true);
		OrdersMapper mapper = session.getMapper(OrdersMapper.class);
		Orders ordersByid = mapper.selectOrdersByid(orderid);
		request.getSession().setAttribute("total", ordersByid.getTotalMoney());
		request.getSession().setAttribute("danhao", ordersByid.getShipNum());
		request.getRequestDispatcher("zhifu/index.jsp").forward(request, response);
	}
	public void SelectOrdersServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//根据状态查数据
		String status = request.getParameter("Status");
		int userid=Integer.parseInt(request.getParameter("userid"));
		SqlSession session=MybatisUtil.getSession();
		UserCustomersMapper mapper = session.getMapper(UserCustomersMapper.class);
		List<Orders> selectOrders =null;
			if("8".equals(status)){
				selectOrders = mapper.selectOrders(userid);
			}else{
				Orders orders =new  Orders();
				orders.setStatus(status);
				orders.setCustomerId(userid);
				selectOrders= mapper.selectOrdersByStats(orders);
			}
			request.getSession().removeAttribute("selectOrders");
			request.getSession().setAttribute("selectOrders", selectOrders);
			request.getRequestDispatcher("core/my-order.jsp").forward(request, response);
	}
	
	public void DeleteOrdersById(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int id=Integer.parseInt(request.getParameter("id"));
		
		SqlSession session=MybatisUtil.getSession(true);
		OrdersMapper mapper = session.getMapper(OrdersMapper.class);
		OrdersDetailsMapper mapper2 = session.getMapper(OrdersDetailsMapper.class);
		ProductStoreMapper mapper3 = session.getMapper(ProductStoreMapper.class);
		mapper.deleteOrdersByid(id);//删除订单
		//删除订单时查看该订单下的宠物的id以及该订单详情购买的数量和配图的id
		List<OrdersDetails> detailsByOid = mapper2.selectOrdersDetailsByOid(id);
		String peiid="";
		String Size="";
		String pid="";//产品的id用不到
		for (int j = 0; j < detailsByOid.size(); j++) {
			OrdersDetails ordersDetails = mapper2.selectOrdersDetailsByPidAndColorAndPicid(detailsByOid.get(j).getColor(),new String().valueOf(detailsByOid.get(j).getProductId()) ,new String().valueOf(detailsByOid.get(j).getOrderId()));
			peiid+=","+ordersDetails.getProductpic().getId();
			Size+=","+ordersDetails.getQuantity();
			pid+=","+ordersDetails.getProduct().getId();//产品的id用不到
		}
		peiid=peiid.substring(1, peiid.length());
		Size=Size.substring(1, Size.length());
		pid=pid.substring(1, pid.length());
		String[] peiidsplit = peiid.split(",");
		String[] Sizesplit = Size.split(",");
		String[] pidsplit = pid.split(",");//产品的id用不到
		
		for (int j = 0; j < peiidsplit.length; j++) {//对用户取消订单并把对应的库存数量的恢复
			mapper3.updateProductStoreAdd(Integer.parseInt(Sizesplit[j]), Integer.parseInt(peiidsplit[j]));
		}
		int i=mapper2.deleteOrde(id);//删除订单详情
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("code",i);
		Gson gson=new Gson();
		String json =gson.toJson(map);
		PrintWriter out = response.getWriter();
		out.write(json);
		out.flush();
		out.close();
	}
	public void SelectOrdersByuserIdAndOrderId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int orderId=Integer.parseInt(request.getParameter("orderId"));
		int userid=Integer.parseInt(request.getParameter("userid"));
		String statu = request.getParameter("statu");
		SqlSession session=MybatisUtil.getSession();
		OrdersDetailsMapper mapper = session.getMapper(OrdersDetailsMapper.class);
		request.getSession().setAttribute("selectAllOrdersDetails",mapper.selectAllOrdersDetails(userid,orderId,Integer.parseInt(statu)));
		request.setAttribute("statu", statu);
		request.getRequestDispatcher("core/my-ordersDetails.jsp").forward(request, response);
	}
	public void updateComment(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String index=request.getParameter("index");
		int productId=Integer.parseInt(request.getParameter("productId"));
		SqlSession session=MybatisUtil.getSession(true);
		CommentsMapper mapper = session.getMapper(CommentsMapper.class);
		//点赞
		if("1".equals(index)){
			int updateCommentByExt = mapper.updateCommentByExt(productId);
		}
		if("2".equals(index)){
			int updateCommentByExtReduce = mapper.updateCommentByExtReduce(productId);
		}
		request.getRequestDispatcher("core/my-ordersDetails.jsp").forward(request, response);
	}
	public void SelectOrdersDetails(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		int userid = Integer.parseInt(request.getParameter("userid"));
		OrdersDetailsMapper mapper = session.getMapper(OrdersDetailsMapper.class);
		String statu = request.getParameter("Status");
		request.getSession().setAttribute("selectAllOrdersDetail",mapper.selectOrdersDetailsByUserid(userid,Integer.parseInt(statu)));
		request.setAttribute("statu", statu);
		request.getRequestDispatcher("core/my-ordersDetailsTest.jsp").forward(request, response);
	}
	public void SelectOrdersAllDetails(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		int userid = Integer.parseInt(request.getParameter("userid"));
		OrdersDetailsMapper mapper = session.getMapper(OrdersDetailsMapper.class);
		OrdersMapper mapper2 = session.getMapper(OrdersMapper.class);
		List<Orders> selectByUser = mapper2.selectByUser(userid);
		int id[]=new int[selectByUser.size()];
		for(int i=0;i<selectByUser.size();i++){
			id[i]=selectByUser.get(i).getId();
		}
		List<OrdersDetails> selectOrdersDetailsByUserIdAndOrderId = mapper.selectOrdersDetailsByUserIdAndOrderId(id);
		request.getSession().setAttribute("selectAllOrdersDetail", selectOrdersDetailsByUserIdAndOrderId);
		request.getRequestDispatcher("core/my-ordersDetailsTest.jsp").forward(request, response);
	}
	public void UpdateUsercustomers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		String RealName=request.getParameter("RealName");
		String birthday=request.getParameter("userBirthday");
		String userEmail=request.getParameter("userEmail");
		String userTel=request.getParameter("userTel");
		String userRemark=request.getParameter("userRemark");
		UserCustomers customers=new UserCustomers(userId, RealName, birthday, userEmail, userTel, userRemark);
		SqlSession session=MybatisUtil.getSession(true);
		UserCustomersMapper mapper = session.getMapper(UserCustomersMapper.class);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("code", mapper.updateUsercustomers(customers));
		request.getSession().setAttribute("selectUserCustomers", mapper.selectUserCustomers(userId));
		Gson gson=new Gson();
		String json=gson.toJson(map);
		PrintWriter out = response.getWriter();
		out.write(json);
		out.flush();
		out.close();
	}
	//添加购物车
	public void AddShoppingcart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userid=Integer.parseInt(request.getParameter("userid"));
		int pid=Integer.parseInt(request.getParameter("pid"));
		int cartsize=Integer.parseInt(request.getParameter("cartsize"));
		String peiid=request.getParameter("peiid");
		ShoppingCart cart=new ShoppingCart(userid, pid, cartsize, peiid);
		SqlSession session=MybatisUtil.getSession(true);
		//用户购物车原有的宠物二次添加时只对其数量进行添加
		ShoppingcartMapper mapper = session.getMapper(ShoppingcartMapper.class);
		ShoppingCart shoppingCart = mapper.selectShoppingCartByUseridAndPeitu(userid, Integer.parseInt(peiid));
		int addShoppingcart=0;
		if(shoppingCart !=null){
			addShoppingcart=mapper.updateShopping(userid, Integer.parseInt(peiid), cartsize);
		}
		if(shoppingCart == null){
			addShoppingcart= mapper.AddShoppingcart(cart);
		}
		request.getSession().removeAttribute("selectOrders");
		request.getSession().setAttribute("selectShoppingCart", mapper.selectShoppingCart(userid));
		request.setAttribute("addShoppingcart", addShoppingcart);
	}
	//==========
	 public void SouSuoServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sousuo=request.getParameter("sousuo");
		SqlSession session=MybatisUtil.getSession(true);
		sousuo=new String(sousuo.getBytes("iso-8859-1"),"utf-8");
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		request.getSession().removeAttribute("selectAllProdct");
		request.getSession().setAttribute("selectAllProdct", mapper.selectProductSousuo(sousuo));
		request.getRequestDispatcher("women.jsp").forward(request, response);
	}
	 public void InsertLatelyServlet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		 SqlSession session=MybatisUtil.getSession(true);
		 LatelyMapper mapper = session.getMapper(LatelyMapper.class);	 
		 int productid=Integer.parseInt(request.getParameter("productid"));
		 int userid =Integer.parseInt(request.getParameter("userid"));	
		 Lately lately=new Lately(productid, userid);
		 Lately selectLately = mapper.selectLately(lately);
		 if(selectLately==null){//添加最近浏览时判断是否已经存在，如果不存在则添加
			 mapper.insertLately(lately);
			 List<Lately> byUserid = mapper.selectLatelyByUserid(userid);
			 if(byUserid.size()>5){
				 mapper.deleteLatelyByTime(byUserid.get(0).getId());
			 }
		 }else{//如果该用户同一个商品已经存在最近浏览了则修改最近浏览的时间为本次的最近浏览
			 mapper.updateLately(selectLately.getId());
		 }
			  session.commit();
			  session.close();
	 }

	//导购
	public void NewsServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		SqlSession session=MybatisUtil.getSession();
		NewMapper m = session.getMapper(NewMapper.class);
		String nid=request.getParameter("nid");
    	News getById=m.getById(Integer.parseInt(nid));
    	List<News> selectNews = m.selectAllNews();
    	News byId=null;
    	for(int i=Integer.parseInt(nid)+1;i<=selectNews.size()+Integer.parseInt(nid);i++){
    		byId= m.getById(i);
    		if(byId!=null){
    			request.setAttribute("snews", byId);
    			break;
    		}
    	}
    	for(int i=Integer.parseInt(nid)-1;i>0;i--){
    		byId= m.getById(i);
    		if(byId!=null){
    			request.setAttribute("xnews", byId);
    			break;
    		}
    	}
		request.setAttribute("getById", getById);
		request.getRequestDispatcher("News.jsp").forward(request, response);
	} 
	public void NewsByid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		SqlSession session=MybatisUtil.getSession();
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		
		String id=request.getParameter("id");
		Product selectProductById = mapper.selectProductById(Integer.parseInt(id));
		//进入详情页所显示相对应的宠物
		request.setAttribute("selectProductById", selectProductById);
		request.getRequestDispatcher("News.jsp").forward(request, response);
	}
	public void MyOrdersDetails(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession();
		ShoppingcartMapper mapper67 = session.getMapper(ShoppingcartMapper.class);
		String id=request.getParameter("picid");
		String[] cartid = id.split(",");
		List<ShoppingCart> ordersDetails = mapper67.selectShoppingCartByCartidAndUserId(cartid);
		request.getSession().setAttribute("MyShoppingCart", ordersDetails); 
		request.getSession().setAttribute("picid", id);
		request.getRequestDispatcher("core/edit-address.jsp").forward(request, response);
	}
	public void MyOrders(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession session=MybatisUtil.getSession(true);
		OrdersMapper mapperOrders = session.getMapper(OrdersMapper.class);
		UserCustomersMapper mapperO = session.getMapper(UserCustomersMapper.class);
		AddressMapper mapper = session.getMapper(AddressMapper.class);
		ShoppingcartMapper mapper2 = session.getMapper(ShoppingcartMapper.class);
		int userid=Integer.parseInt(request.getParameter("userid"));
		String carid=request.getParameter("carid");
		String kuaidi=request.getParameter("kd");
		kuaidi=new String(kuaidi.getBytes("ISO-8859-1"),"utf-8");
		int dizhi=Integer.parseInt(request.getParameter("radio"));
		String orderbody=request.getParameter("orderbody");
		orderbody=new String(orderbody.getBytes("ISO-8859-1"),"utf-8");
		Float totals=Float.parseFloat(request.getParameter("totals"));
		//查用户选中的收获地址添加到订单的地址中
		Address selectAddressByid = mapper.selectAddressByid(dizhi);
		Orders orders=new Orders();
		orders.setCustomerId(userid);
		orders.setTotalMoney(totals);
		orders.setShipName(kuaidi);
		orders.setShipCountry(selectAddressByid.getCountry());
		orders.setShipProvince(selectAddressByid.getProvince());
		orders.setShipCity(selectAddressByid.getCity());
		orders.setShipTown(selectAddressByid.getTown());
		orders.setShipAddress(selectAddressByid.getAddress());
		orders.setShipPostCode(selectAddressByid.getPostcode());
		orders.setExt2(orderbody);//用扩展字段当用户对订单的留言
		int orders2 = mapperOrders.insertOrders(orders);//产生一个未付款的订单
		if(orders2>0){//添加订单详情
			String productid=request.getParameter("productid");
			String picid=request.getParameter("picid");
			String detailssize=request.getParameter("detailssize");
			String xtotal=request.getParameter("xtotal");
			String[] pid = productid.split(",");
			String[] pcid = picid.split(",");
			String[] dsize = detailssize.split(",");
			String[] xjtotal = xtotal.split(",");
			String color="";
			ProductPicMapper picMapper = session.getMapper(ProductPicMapper.class);
			for (int i = 0; i < pcid.length; i++) {
				Productpic picByTuPian = picMapper.selectProductPicByTuPian(pcid[i]);
				color+=","+picByTuPian.getColor();
			}
			color=color.substring(1, color.length());
			
			String[] colors = color.split(",");
			OrdersMapper OrderByDescmapper = session.getMapper(OrdersMapper.class);
			int ordersid = OrderByDescmapper.selectOrderByDesc();//获取订单的id
		 
			OrdersDetailsMapper OrdersDetailsmapper = session.getMapper(OrdersDetailsMapper.class);
			OrdersDetails ordersDetails=new OrdersDetails();
			int details =0;
			for (int i = 0; i < dsize.length; i++) {
				ordersDetails.setOrderId(ordersid);
				ordersDetails.setUnitPrice(Double.parseDouble(xjtotal[i]));
				ordersDetails.setQuantity(Integer.parseInt(dsize[i]));
				ordersDetails.setColor(colors[i]);
				ordersDetails.setRemark(orderbody);
				ordersDetails.setExt1("2");//添加的状态
				ordersDetails.setProductId(Integer.parseInt(pid[i]));
				details+= OrdersDetailsmapper.insertOrdersDetails(ordersDetails);
			}
			if(details>0){//删除已经生成订单后的购物车数据
				String[] split = carid.split(",");
				for(int i=0;i<split.length;i++){
					int shoppingcart = mapper2.deleteShoppingcart(Integer.parseInt(split[i]));
				}
				
				request.getSession().setAttribute("selectShoppingCart", mapper2.selectShoppingCart(userid));
			}
			ProductStoreMapper storeMapper = session.getMapper(ProductStoreMapper.class);
			//生成订单同时还要减少库存数量
			for(int i=0;i<pcid.length;i++){
				storeMapper.updateProductStore(Integer.parseInt(dsize[i]),Integer.parseInt(pcid[i]));
			}
			
		}
		request.getSession().setAttribute("selectOrders", mapperO.selectOrders(userid)); 
	}
	public void ZhiFuServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Double total =Double.parseDouble(request.getParameter("totals"));
		SqlSession session=MybatisUtil.getSession();
		OrdersMapper ordersMapper = session.getMapper(OrdersMapper.class);
		String danhao = ordersMapper.selectOrdersByDanhao();
		request.getSession().setAttribute("total", total);
		request.getSession().setAttribute("danhao", danhao);
		request.getRequestDispatcher("zhifu/index.jsp").forward(request, response);
		
	}
	public void ZuiXinDongTai(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userid=Integer.parseInt(request.getParameter("userid"));
		SqlSession session=MybatisUtil.getSession();
		UserCustomersMapper umapper = session.getMapper(UserCustomersMapper.class);
		ShoppingcartMapper mappers = session.getMapper(ShoppingcartMapper.class);
		
		request.getSession().setAttribute("selectUserCustomers", umapper.selectUserCustomers(userid));
		request.getSession().setAttribute("selectUserPinLun", umapper.selectUserComments(userid));
		request.getSession().setAttribute("selectUserAddress", umapper.selectUserAddress(userid));
		request.getSession().setAttribute("selectOrders", umapper.selectOrders(userid));
		request.getSession().setAttribute("selectShoppingCart", mappers.selectShoppingCart(userid));
	}
	public void ZhiFuBiGuoServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String string =request.getParameter("dh");
		/*SqlSession session2=MybatisUtil.getSession(true);
		OrdersMapper mapper= session2.getMapper(OrdersMapper.class);
		OrdersDetailsMapper mapperDetail = session2.getMapper(OrdersDetailsMapper.class);
		//改以快递单号
		int i = mapperDetail.updateOrdersDetai("0",string);//修改订单的状态
		int orderid= mapperDetail.selectOrderByShipNum(string);
		int updateOrderByStuatus = mapper.updateOrderByStuatus(0, orderid);*/
		request.getSession().setAttribute("dh", string);
		request.getRequestDispatcher("zhifu/alipay.trade.page.pay.jsp").forward(request, response);
	}
}
