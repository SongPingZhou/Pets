package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.OrdersDetails;

public interface OrdersDetailsMapper {
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
	  List<OrdersDetails> selectOrdersDetails(Fenye fenye);
	  OrdersDetails selectOrdersDetailsByid(int id);
	  /**
	   * ǰ̨��ʾ��ͬ�û��Ķ����Լ�������Ʒ
	   * @param ordersDetails ������һ���û�id���ж��������Ӧ�Ķ���id
	   * @return ���ظö�����������Ʒ
	   */
	  List<OrdersDetails> selectAllOrdersDetails(int userid, int orderid,int Statu);
	  /**
	   * �����û��Ĳ�ͬ�����޸���Ʒ�����״̬
	   * @param Status �޸ĵ�״̬
	   * @param productId �޸ĵĳ���
	   * @return ����1�޸ĳɹ�
	   */
	  int updateOrdersDetails(int Status,int ordersdeid);
	  /**
	   * ֧�����޸Ķ���״̬
	   * @param Status
	   * @param ordersdeid �޸�Ϊ����
	   * @return
	   */
	  int updateOrdersDetai(String Status,String ordersdeid);
	  
	  /**
	   * ͨ����Ʒȥ�鿴�����Ķ���
	   * @param productId ��Ʒid
	   * @return ��������������id
	   */
	  int selectOrdersDetailsByOrdersId(int productId);
	  /**
	   * ͨ���������Ʒȥ�鿴�����Ķ���������ֻ��Ҫ��ȡ������id���У�
	   * @param Status �鿴��״̬
	   * @param productId  ��Ʒ��id 
	   * @return ���ض�������Ķ���id
	   */
	  OrdersDetails selectOrdersDetailsByOrderId(int Status,int orderId);
	  /**
	   * ��ѯ���û��µ����з���״̬�Ķ���
	   * @param userid �û���id 
	   * @param Statu ��ѯ��״̬
	   * @return �������з��������Ĳ�ѯ���
	   */
	  List<OrdersDetails> selectOrdersDetailsByUserid(int userid,int Statu);
	  
	  /**
	   * ȡ��ĳ�������µ�����Ʒ
	   * @param orderid ����id
	   * @param productid ȡ������Ʒid
	   * @return
	   */
	  int deleteOrdersDetails(int orderid,int productid);
	  
	  /**
	   * ��ѯorderid�����������������
	   * @param id һ���û������ж�����id
	   * @return ���ظ��û��µ����ж�������
	   */
	  List<OrdersDetails> selectOrdersDetailsByUserIdAndOrderId(int[] id);
	  
	  /**
	   * ɾ������ʱһ��ɾ�����ж�������
	   * @param id
	   * @return
	   */
	  int deleteOrde(int id);
	  
	  /**
	   * ��ѯ���������Ķ�������
	   * @param orderid
	   * @return
	   */
	  List<OrdersDetails> selectOrdersDetailsByOid(int orderid);
	  
	  /**
	   * �鿴ɾ���Ķ����µĶ�����������ݣ�Ϊ����Ļָ�ʹ��
	   * @param color ��Ӧ�������ɫ
	   * @param pid ��Ʒ��id
	   * @param Orderid ������id
	   * @return
	   */
	  OrdersDetails selectOrdersDetailsByPidAndColorAndPicid(String color,String pid,String Orderid);
	  
	  
	  /**
	   * ��ѯ�Ƿ��иö����µĶ�������
	   * @param orderId
	   * @return
	   */
	  OrdersDetails selectOrderDe(int orderId);
	  
	  
	  int insertOrdersDetails(OrdersDetails ordersDetails);
	  
	  
	  int selectOrderByid(int id);
	  
	  /**
	   * �鿴�������������
	   * @param OrdersDeid
	   * @return
	   */
	  OrdersDetails selectOrderDeByid(int OrdersDeid);
	  
	  
	  /**
	   * ͨ�����Ų�ѯid
	   * @param ShipNum ��ݵ���
	   * @return �õ��ŵ�orderid
	   */
	  int selectOrderByShipNum(String ShipNum);
	  
}
