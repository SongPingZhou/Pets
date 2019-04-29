package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Product;
import com.ysd.entity.Productpic;

public interface ProductPicMapper {
	/**
	 * 添加配图片
	 * @param pic
	 * @return
	 */
	int insertProductPic(Productpic pic);
	/**
	 * 添加配图
	 * @param dpic
	 * @return
	 */
	//int insertDProductPic(Productpic dpic);
	

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
		  List<Productpic> selectProductPic(Fenye fenye); 
		  Productpic selectProductPicByid(int id);
		  int updateProductPic(Productpic Productpic);
	
		  /**
		   * 根据id去查对应的图片颜色
		   * @param id
		   * @return
		   */
		  Productpic selectProductPicByTuPian(String id);
	  
		  /**
		   * 查询新增的配图id为配图添加相应的库存
		   * @return
		   */
		int selectProductpicByDesc();
		 //前台轮播
		List<Productpic>  selectProductPicqian();

}
