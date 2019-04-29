package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Address;
import com.ysd.entity.Fenye;
import com.ysd.entity.Orders;
import com.ysd.entity.OrdersDetails;
import com.ysd.entity.Product;
import com.ysd.entity.User;

public interface OrdersMapper {
	/**
	 * 查询总条数
	 * @param fenye
	 * @return
	 */
	  int selectCount(Fenye fenye);
	/**
	 * 分页查询所有
	 * @param fenye
	 * @return
	 */
	  List<Orders> selectOrders(Fenye fenye);
	  
	  List<User> selectUser();
	  List<Orders> selectOrdersTypeByid(Fenye fenye);
	  /**
	   * 修改发货状态的（修改前的查询）
	   * @param id
	   * @return
	   */
	  Orders selectOrdersByid(int id);
	  
	  
	  /**
	   * 用户点击去结算直接生成一批未付款的订单
	   * @param orders 该订单的订单数据 同时还要增加订单详情的数据
	   * @return
	   */
	  int insertOrders(Orders orders);
	  /**
	   * 修改发货状态
	   * @param orders
	   * @return
	   */
	  int updateUser(User user);
	  int updateOrders(Orders orders);
	  int updateAddress(Address address);
	  int updateProduct(Product product);
	  int updateOrdersDetails(OrdersDetails ordersDetails);
	  int deleteOrders(String[] id);
	
	  
	  
	  
	  /**
	   * 前台用户取消单条订单（某种意义上叫做删除）
	   * @param id
	   * @return
	   */
	  int deleteOrdersByid(int id);
	  
	  /**
	   * 修改订单详情的状态，
	   * @param OrderId 指定要修改的哪一个订单
	   * @param Status 修该成什么样的状态
	   * @return
	   */
	  int updateOrderByStuatus(int Status,int OrderId);
	  
	  
	  int updateOrderByStuatuss(int Status,int OrderId);
	  
	  /**
	   * 查询用户下的所有订单的id
	   * @param userid 用户id
	   * @return 返回一堆id
	   */
	  List<Orders> selectByUser(int userid);
	  
	   /**
	    * 查询生成的最后一个订单的id
	    * @return
	    */
	  int selectOrderByDesc();
	  int  selectCountGuanLi(Fenye fenye);
	  List<OrdersDetails> selectOrdersGuanLi(Fenye fenye);
	  List<OrdersDetails> selectOrdersGuanLia(Fenye fenye);
	  List<OrdersDetails>  selectOrdersByidhou(int id);
	  int updateOrdersDetailss(OrdersDetails ordersDetails);
		 OrdersDetails selectOrdersDetaisByid(int userid);
		  int updateOrderss(OrdersDetails orders);
	  
		  //根据订单详情id去查订单id
		  int selectOrderid(int ordersid);
		  
		  /**
		   * 前台支付页面显示订单的单号
		   * @return 返回订单单号
		   */
		  String selectOrdersByDanhao();
}
