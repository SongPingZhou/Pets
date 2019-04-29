package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Productpic;
import com.ysd.entity.Productstore;


public interface ProductStoreMapper {
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
	  List<Productstore> selectProductStore(Fenye fenye);
	  /**
	   * ͨ��idȥ��һ����Ʒ�ÿ��
	   * @param id
	   * @return
	   */
	  Productstore selectProductStoreByid(int id);
	
	  int insertProductCategory(Productcategory productcategory);
	  int insertProduct(Product product);
	  int insertProductStore(Productstore productStore);
	  int insertProductPic(Productpic productpic);
	  
	 /**
	  * ǰ̨���ɶ�����Ҫͬʱ������Ӧ�Ŀ������
	  * @param size ��Ҫ���ٵ�����
	  * @param peid ��Ҫ���ٵ���Ʒ��ͼ��id
	  * @return 
	  */
	  int updateProductStore(int size,int peid);
	  
	  /**
	   * Ϊ��ͼ��ӿ��
	   * @param picid ��ͼid
	   * @param Size ��ӵ�����
	   * @return
	   */
	  int insertProductStoreSize(int picid,int Size);
	  
	  /**
	   * ǰ̨�û�ȡ��δ����Ķ�����Կ�������Ļָ�
	   * @param size �û���ʱ���������
	   * @param peid Ҫ�ָ��Ŀ��id
	   * @return
	   */
	  int updateProductStoreAdd(int size,int peid);
	  
	  /**
	   * �޸Ŀ�����Ĳ�ѯ
	   * @param id
	   * @return
	   */
	  Productstore selectProductstoreOne(int id);
	  
	  int updateProductStorehou(Productstore productStore);

}
