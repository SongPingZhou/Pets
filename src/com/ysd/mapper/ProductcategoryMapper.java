package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Productcategory;

public interface ProductcategoryMapper {
	/**
	 * �������
	 * @return
	 */
	List<Productcategory> selectProduct();
	
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
	  List<Productcategory> selectProductCategory(Fenye fenye);
	  Productcategory selectProductCategoryByid(int id);
	  int insertProductCategory(Productcategory productCategory);
	  int updateProductCategory(Productcategory productCategory);
	  int deleteProductCategory(String[] id);
	  
	  /**
	   * ������
	   * @return
	   */
	  List<Productcategory> selectProductcategory();
}
