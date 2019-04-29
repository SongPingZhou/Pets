package com.ysd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;
import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.OrdersDetails;
import com.ysd.entity.Product;
import com.ysd.entity.ShoppingCart;
import com.ysd.entity.UserCustomers;
import com.ysd.mapper.AddressMapper;
import com.ysd.mapper.CommentsMapper;
import com.ysd.mapper.OrdersDetailsMapper;
import com.ysd.mapper.OrdersMapper;
import com.ysd.mapper.ProductMapper;
import com.ysd.mapper.ProductStoreMapper;
import com.ysd.mapper.ShoppingcartMapper;
import com.ysd.mapper.UserCustomersMapper;
import com.ysd.util.MybatisUtil;
@WebServlet("/ReceptionServlet")
public class ReceptionServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String index=request.getParameter("index");
		System.out.println(index);
		PrintWriter out = response.getWriter();
		SqlSession session=MybatisUtil.getSession(true);
		AddressMapper mapper1 = session.getMapper(AddressMapper.class);
		CommentsMapper mapper4 = session.getMapper(CommentsMapper.class);
		UserCustomersMapper umapper = session.getMapper(UserCustomersMapper.class);
		ShoppingcartMapper mapper67 = session.getMapper(ShoppingcartMapper.class);
		OrdersDetailsMapper mapper42 = session.getMapper(OrdersDetailsMapper.class);
		ProductStoreMapper storeMapper = session.getMapper(ProductStoreMapper.class);
		OrdersMapper mapper43 = session.getMapper(OrdersMapper.class);
		int i=0;
		if("1".equals(index)){//添加用户收获地址
			String arr = request.getParameter("arr");
			String[] split = arr.split(",");
			Address addre=new Address(0, Integer.parseInt(split[0]), split[1], 0, split[6], "中国", split[2], split[3], split[4], split[5], split[7], null);
			i = mapper1.InsterAddress(addre);
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("code", i);
			Gson gson=new Gson();
			String json=gson.toJson(map);
			out.write(json);
			}
			if("2".equals(index)){//通过用户的id二次去查用户的数据存到session中
					String userid=request.getParameter("userid");
				    request.getSession().setAttribute("selectUserCustomers",umapper.selectUserCustomers(Integer.parseInt(userid)));
					//登陆成功后把用户的评论存到session中
					request.getSession().setAttribute("selectUserPinLun", umapper.selectUserComments(Integer.parseInt(userid)));
					//登陆后查询地址存到session
					request.getSession().removeAttribute("selectUserAddress");
					request.getSession().setAttribute("selectUserAddress",umapper.selectUserAddress(Integer.parseInt(userid)));
					
					request.getRequestDispatcher("core/modify-information.jsp").forward(request, response);
				}
			if("3".equals(index)){
				int id=Integer.parseInt(request.getParameter("addid"));
				int deleteAddress = mapper1.deleteAddress(id);
				Map<String, Object> map=new HashMap<String, Object>();
				map.put("code", deleteAddress);
				Gson gson=new Gson();
				String json=gson.toJson(map);
				out.write(json);
			}
			if("4".equals(index)){
				String userid=request.getParameter("userid");
				String usercomment=request.getParameter("usercomment");
				int fen=Integer.parseInt(request.getParameter("fen"));
				int productId=Integer.parseInt(request.getParameter("productId"));
				String ordersid=request.getParameter("ordersid");
				int orderid=0;
				if(ordersid != null){
					orderid=Integer.parseInt(ordersid);
				}
				int gk=Integer.parseInt(request.getParameter("gk"));
				Comments comments=new Comments(productId, usercomment, fen,orderid, gk, 0, userid);
				Map<String, Object> map=new HashMap<String, Object>();
				map.put("code", mapper4.insertComment(comments));
				int Status= 7;//这里的7是用户评论后修改订单详情的状态为7时是改为已评论的状态
				int updateOrdersDetails = mapper42.updateOrdersDetails(Status, orderid);
				int  OrderId= mapper43.selectOrderid(orderid);
				int Statu=6;//根据自己符合所需的状态去查看
				OrdersDetails selectOrdersDetailsByOrderId = mapper42.selectOrdersDetailsByOrderId(Statu, OrderId);
				if(selectOrdersDetailsByOrderId==null){
					int updateOrderByStuatus = mapper43.updateOrderByStuatuss(Status, OrderId);
				}
				request.getSession().setAttribute("selectUserPinLun", umapper.selectUserComments(Integer.parseInt(userid)));
				request.getSession().setAttribute("selectOrders", umapper.selectOrders(Integer.parseInt(userid)));
				Gson gson=new Gson();
				String json=gson.toJson(map);
				out.write(json);
			}
			if("5".equals(index)){
				String userid=request.getParameter("userId");
				int ordersdeid=Integer.parseInt(request.getParameter("productId"));
				int Status=6;
				int updateOrdersDetails = mapper42.updateOrdersDetails(Status, ordersdeid);
				//根据订单详情的id去查所属订单
				int  orderid= mapper43.selectOrderid(ordersdeid);
				int Statu=4;
				OrdersDetails selectOrdersDetailsByOrderId = mapper42.selectOrdersDetailsByOrderId(Statu, orderid);
				if(selectOrdersDetailsByOrderId==null){
					OrdersMapper mapper3 = session.getMapper(OrdersMapper.class);
					int updateOrderByStuatus = mapper3.updateOrderByStuatuss(Status, orderid);
					request.getSession().setAttribute("selectUserPinLun", umapper.selectUserComments(Integer.parseInt(userid)));
				}
				//确认收获后转发到一个页面？
				request.getRequestDispatcher("core/my-order.jsp").forward(request, response);
			}
			//增加购物车购买数量
			if("6".equals(index)){
				int id= Integer.parseInt(request.getParameter("id"));
				int addShoppingcartSize = mapper67.addShoppingcartSize(id);
				String userid=request.getParameter("userid");
				if(userid!=null){
					request.getSession().setAttribute("selectShoppingCart", mapper67.selectShoppingCart(Integer.parseInt(userid)));
				}
			}
			//减少购物车购买数量
			if("7".equals(index)){
				int id= Integer.parseInt(request.getParameter("id"));
				int reduceShoppingcartSize = mapper67.reduceShoppingcartSize(id);
				String userid=request.getParameter("userid");
				if(userid!=null){
					request.getSession().setAttribute("selectShoppingCart", mapper67.selectShoppingCart(Integer.parseInt(userid)));
				}
			}
			if("8".equals(index)){
				int id=Integer.parseInt(request.getParameter("id"));
				int userId=Integer.parseInt(request.getParameter("userId"));
				Map<String, Object> map=new HashMap<String, Object>();
				map.put("code", mapper67.deleteShoppingcart(id));
				request.getSession().setAttribute("selectShoppingCart", mapper67.selectShoppingCart(userId));
				Gson gson=new Gson();
				String json =gson.toJson(map);
				out.write(json);
			}
			if("9".equals(index)){
				int uid=Integer.parseInt(request.getParameter("uid"));
				int orderid=Integer.parseInt(request.getParameter("orderid"));
				int productId=Integer.parseInt(request.getParameter("productId"));
				//订单详情的id
				int ordersdeid=Integer.parseInt(request.getParameter("ordersdeid"));
				
				OrdersDetails orderDeByid = mapper42.selectOrderDeByid(ordersdeid);
				OrdersDetails de= mapper42.selectOrdersDetailsByPidAndColorAndPicid(orderDeByid.getColor(),new String().valueOf(orderDeByid.getProductId()), new String().valueOf(orderDeByid.getOrderId()));
				int storeAdd = storeMapper.updateProductStoreAdd(de.getQuantity(), de.getProductpic().getId());
				mapper42.deleteOrdersDetails(orderid, productId);
				OrdersDetails selectOrderDe = mapper42.selectOrderDe(orderid);
				if(selectOrderDe==null){
					 mapper43.deleteOrdersByid(orderid);
				}
				request.getSession().setAttribute("selectOrders", umapper.selectOrders(uid));
				request.getRequestDispatcher("core/my-order.jsp").forward(request, response);
			}
			if("10".equals(index)){
				int userId=Integer.parseInt(request.getParameter("userId"));
				Map<String, Object> map=new HashMap<String, Object>();
				map.put("code", mapper67.DeleteShopping(userId));
				request.getSession().setAttribute("selectShoppingCart", mapper67.selectShoppingCart(userId));
				Gson gson=new Gson();
				String json =gson.toJson(map);
				out.write(json);
			}
			if("11".equals(index)){ 
				int id=Integer.parseInt(request.getParameter("addid"));
				int deleteAddress = mapper1.deleteAddress(id);
				Map<String, Object> map=new HashMap<String, Object>();
				map.put("code", deleteAddress);
				Gson gson=new Gson();
				String json=gson.toJson(map);
				out.write(json);
			}
			if("12".equals(index)){
				String userid = request.getParameter("userid");
				request.getSession().removeAttribute("selectUserAddress");
				request.getSession().setAttribute("selectUserAddress",umapper.selectUserAddress(Integer.parseInt(userid)));
				request.getRequestDispatcher("core/edit-address.jsp").forward(request, response);
			}
			out.flush();
			out.close();
	}

}
