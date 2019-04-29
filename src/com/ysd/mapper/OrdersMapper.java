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
	 * ��ѯ������
	 * @param fenye
	 * @return
	 */
	  int selectCount(Fenye fenye);
	/**
	 * ��ҳ��ѯ����
	 * @param fenye
	 * @return
	 */
	  List<Orders> selectOrders(Fenye fenye);
	  
	  List<User> selectUser();
	  List<Orders> selectOrdersTypeByid(Fenye fenye);
	  /**
	   * �޸ķ���״̬�ģ��޸�ǰ�Ĳ�ѯ��
	   * @param id
	   * @return
	   */
	  Orders selectOrdersByid(int id);
	  
	  
	  /**
	   * �û����ȥ����ֱ������һ��δ����Ķ���
	   * @param orders �ö����Ķ������� ͬʱ��Ҫ���Ӷ������������
	   * @return
	   */
	  int insertOrders(Orders orders);
	  /**
	   * �޸ķ���״̬
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
	   * ǰ̨�û�ȡ������������ĳ�������Ͻ���ɾ����
	   * @param id
	   * @return
	   */
	  int deleteOrdersByid(int id);
	  
	  /**
	   * �޸Ķ��������״̬��
	   * @param OrderId ָ��Ҫ�޸ĵ���һ������
	   * @param Status �޸ó�ʲô����״̬
	   * @return
	   */
	  int updateOrderByStuatus(int Status,int OrderId);
	  
	  
	  int updateOrderByStuatuss(int Status,int OrderId);
	  
	  /**
	   * ��ѯ�û��µ����ж�����id
	   * @param userid �û�id
	   * @return ����һ��id
	   */
	  List<Orders> selectByUser(int userid);
	  
	   /**
	    * ��ѯ���ɵ����һ��������id
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
	  
		  //���ݶ�������idȥ�鶩��id
		  int selectOrderid(int ordersid);
		  
		  /**
		   * ǰ̨֧��ҳ����ʾ�����ĵ���
		   * @return ���ض�������
		   */
		  String selectOrdersByDanhao();
}
