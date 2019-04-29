package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.ShoppingCart;

public interface ShoppingcartMapper {
	
	/**��ǰ̨��
	 * ��ѯ�û��Ĺ��ﳵ����
	 * @param uid �û���id
	 * @return ����һ���û�����������
	 */
	List<ShoppingCart> selectShoppingCart(int uid);
	
	/**
	 * �û�ȥ����ʱ����Ӧ�Ķ����Ʒ���
	 * @param uid �û�id,
	 * @param cartid �û��������Ĺ��ﳵ��id(���)
	 * @return
	 */
	List<ShoppingCart> selectShoppingCartByCartidAndUserId(String[] cartid);
	/**
	 * ���ӹ��ﳵ����Ʒ����
	 * @param id ��Ҫ���ӵ���Ʒ��id
	 * @return ����1���ӳɹ�
	 */
	int addShoppingcartSize(int id);
	
	/**
	 * ���ٹ��������
	 * @param id ��Ҫ���ٵĳ���id
	 * @return ����1���ٳɹ�
	 */
	int reduceShoppingcartSize(int id);
	
	/**
	 * �û�ɾ�����ﳵ������
	 * @param id ���ﳵ������id
	 * @return ����1ɾ���ɹ�
	 */
	int deleteShoppingcart(int id);
	
	/**
	 * �Թ��ﳵ�������
	 * @param cart ���ﳵ��
	 * @return����1��ӳɹ�
	 */
	int AddShoppingcart(ShoppingCart cart);
	
	/**
	 * ����û��Ĺ��ﳵ
	 * @return
	 */
	int DeleteShopping(int id);
	
	/**
	 * ��ѯ�Ĺ��ﳵ�Ƿ�����ͬ�ĳ���еĻ����������������
	 * @param userid �û���id
	 * @param Ext2 �û���ѡ����ͼ��id
	 * @return
	 */
	ShoppingCart selectShoppingCartByUseridAndPeitu(int userid,int Ext2);
	
	/**
	 * ���ﳵ����Ѿ������������������һ�����
	 * @param userid �û���id
	 * @param Ext2 ��ͼ��id
	 * @param size Ҫ��ӵ�����
	 * @return
	 */
	int updateShopping(int userid,int Ext2,int size);
}
