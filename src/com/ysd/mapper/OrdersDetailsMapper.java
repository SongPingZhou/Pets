package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.OrdersDetails;

public interface OrdersDetailsMapper {
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
	  List<OrdersDetails> selectOrdersDetails(Fenye fenye);
	  OrdersDetails selectOrdersDetailsByid(int id);
	  /**
	   * 前台显示不同用户的订单以及所有商品
	   * @param ordersDetails 传进了一个用户id还有订单详情对应的订单id
	   * @return 返回该订单的所有商品
	   */
	  List<OrdersDetails> selectAllOrdersDetails(int userid, int orderid,int Statu);
	  /**
	   * 根据用户的不同操作修改商品详情的状态
	   * @param Status 修改的状态
	   * @param productId 修改的宠物
	   * @return 返回1修改成功
	   */
	  int updateOrdersDetails(int Status,int ordersdeid);
	  /**
	   * 支付后修改订单状态
	   * @param Status
	   * @param ordersdeid 修改为单号
	   * @return
	   */
	  int updateOrdersDetai(String Status,String ordersdeid);
	  
	  /**
	   * 通过商品去查看所属的订单
	   * @param productId 商品id
	   * @return 返回所属订单的id
	   */
	  int selectOrdersDetailsByOrdersId(int productId);
	  /**
	   * 通过购买的商品去查看所属的订单（这里只需要获取订单的id就行）
	   * @param Status 查看的状态
	   * @param productId  商品的id 
	   * @return 返回订单详情的订单id
	   */
	  OrdersDetails selectOrdersDetailsByOrderId(int Status,int orderId);
	  /**
	   * 查询该用户下的所有符合状态的订单
	   * @param userid 用户的id 
	   * @param Statu 查询的状态
	   * @return 返回所有符合条件的查询结果
	   */
	  List<OrdersDetails> selectOrdersDetailsByUserid(int userid,int Statu);
	  
	  /**
	   * 取消某个订单下单个商品
	   * @param orderid 订单id
	   * @param productid 取消的商品id
	   * @return
	   */
	  int deleteOrdersDetails(int orderid,int productid);
	  
	  /**
	   * 查询orderid等于数组的所有数据
	   * @param id 一个用户的所有订单的id
	   * @return 返回该用户下的所有订单详情
	   */
	  List<OrdersDetails> selectOrdersDetailsByUserIdAndOrderId(int[] id);
	  
	  /**
	   * 删除订单时一起删除所有订单详情
	   * @param id
	   * @return
	   */
	  int deleteOrde(int id);
	  
	  /**
	   * 查询所属订单的订单详情
	   * @param orderid
	   * @return
	   */
	  List<OrdersDetails> selectOrdersDetailsByOid(int orderid);
	  
	  /**
	   * 查看删除的订单下的订单详情的数据，为库存表的恢复使用
	   * @param color 对应库存表的颜色
	   * @param pid 商品的id
	   * @param Orderid 订单的id
	   * @return
	   */
	  OrdersDetails selectOrdersDetailsByPidAndColorAndPicid(String color,String pid,String Orderid);
	  
	  
	  /**
	   * 查询是否有该订单下的订单详情
	   * @param orderId
	   * @return
	   */
	  OrdersDetails selectOrderDe(int orderId);
	  
	  
	  int insertOrdersDetails(OrdersDetails ordersDetails);
	  
	  
	  int selectOrderByid(int id);
	  
	  /**
	   * 查看订单详情的数据
	   * @param OrdersDeid
	   * @return
	   */
	  OrdersDetails selectOrderDeByid(int OrdersDeid);
	  
	  
	  /**
	   * 通过单号查询id
	   * @param ShipNum 快递单号
	   * @return 该单号的orderid
	   */
	  int selectOrderByShipNum(String ShipNum);
	  
}
