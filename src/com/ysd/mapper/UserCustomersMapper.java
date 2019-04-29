package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Address;
import com.ysd.entity.Comments;
import com.ysd.entity.Orders;
import com.ysd.entity.User;
import com.ysd.entity.UserCustomers;

public interface UserCustomersMapper {
	 /**
	   * ��ѯ�������û���ϸ��Ϣ��ǰ̨��ʾ
	   * @param id
	   * @return
	   */
	  UserCustomers selectUserCustomers(int id);
	  /**
	   * ͨ���û���idȥ�����û��������ջ���ַ
	   * @param id ���û���id
	   * @return ����һ���û�����Ϣ�Լ������ջ���ַ
	   */
	  List<Address> selectUserAddress(int id);
	  /**
	   * ��ѯ�û�������
	   * @param id �û�id
	   * @return �����û�����Ϣ�͸��û����Ǹ���Ʒ������
	   */
	  List<Comments> selectUserComments(int id);
	  /**
	   * �û���½���ѯ�û������ж���
	   * @param id �û�id
	   * @return �����û������ж���
	   */
	  List <Orders> selectOrders(int id); 
	  /**
	   * �û������Ķ��״̬��������ʾ��ǰ̨
	   * @param order �������û���id�Լ�������״̬
	   * @return ���ظ��û�ָ��״̬������
	   */
	  List<Orders> selectOrdersByStats(Orders orders);
	  /**
	   * ǰ̨�û��޸��Լ���ϸ��Ϣ
	   * @param customers ��ȡ�����û�������Ϣ
	   * @return ����1�޸ĳɹ�
	   */
	  int updateUsercustomers(UserCustomers customers);
}
