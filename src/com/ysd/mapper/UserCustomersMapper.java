package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.Orders;
import com.ysd.entity.User;
import com.ysd.entity.UserCustomers;

public interface UserCustomersMapper {
	 /**
	   * 查询单个的用户详细信息在前台显示
	   * @param id
	   * @return
	   */
	  UserCustomers selectUserCustomers(int id);
	  /**
	   * 通过用户的id去查找用户的所有收货地址
	   * @param id 是用户的id
	   * @return 返回一个用户的信息以及所有收货地址
	   */
	  List<Address> selectUserAddress(int id);
	  /**
	   * 查询用户的评论
	   * @param id 用户id
	   * @return 返回用户的信息和该用户对那个商品的评论
	   */
	  List<Comments> selectUserComments(int id);
	  /**
	   * 用户登陆后查询用户的所有订单
	   * @param id 用户id
	   * @return 返回用户的所有订单
	   */
	  List <Orders> selectOrders(int id); 
	  /**
	   * 用户订单的多个状态的搜索显示到前台
	   * @param order 传过来用户的id以及订单的状态
	   * @return 返回该用户指定状态的数据
	   */
	  List<Orders> selectOrdersByStats(Orders orders);
	  /**
	   * 前台用户修改自己详细信息
	   * @param customers 获取的是用户的新信息
	   * @return 返回1修改成功
	   */
	  int updateUsercustomers(UserCustomers customers);
}
