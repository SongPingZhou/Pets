package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.User;
import com.ysd.entity.UserCustomers;


public interface UserMapper {
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
	  List<User> selectUser(Fenye fenye);
	  /**
	   * ͨ��id��ѯ�����û�
	   * @param id
	   * @return
	   */
	  User selectUserByid(int id);
	  /**
	   * ����û�
	   * @param user
	   * @return
	   */
	  int insertUser(User user);
	  /**
	   * �޸��û�
	   * @param user
	   * @return
	   */
	  int updateUser(User user);
	  /**
	   * ��������ɾ���û�
	   * @param id
	   * @return
	   */
	  int deleteUser(String[] id);
	  /**
	   * ��ȡ��ǰ̨�Ķ��û�����������ݿ���бȶԡ��Ƿ����;
	   * @param user
	   * @return
	   */
	  User selectUserByUser(User user);
	  /**
	   * �û��޸�����
	   * @param user
	   * @return
	   */
	  int updateuserByPwd(User user);
	  
	  /**
	   * ��ѯ��ע������û�
	   * @return
	   */
	  User selectNewUser();
	  
	  /**
	   * �����û�������ռλ��
	   * @param id
	   * @return
	   */
	  int insertNewusercustomers(int id);
	  
	  
	  User  selectUserUserName(User user);
	  
	  int insertUserUserName(User user);

	  
	  User  selectUserUserNamePhone(User user);
	  
	  int updateUserUserPhone(User user);

	 
}
