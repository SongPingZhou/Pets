package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Productcategory;

public interface ProductcategoryMapper {
	/**
	 * 所有类别
	 * @return
	 */
	List<Productcategory> selectProduct();
	
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
	  List<Productcategory> selectProductCategory(Fenye fenye);
	  Productcategory selectProductCategoryByid(int id);
	  int insertProductCategory(Productcategory productCategory);
	  int updateProductCategory(Productcategory productCategory);
	  int deleteProductCategory(String[] id);
	  
	  /**
	   * 所有类
	   * @return
	   */
	  List<Productcategory> selectProductcategory();
}
