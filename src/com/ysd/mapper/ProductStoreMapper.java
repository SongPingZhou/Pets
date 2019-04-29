package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Productpic;
import com.ysd.entity.Productstore;


public interface ProductStoreMapper {
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
	  List<Productstore> selectProductStore(Fenye fenye);
	  /**
	   * 通过id去查一个商品得库存
	   * @param id
	   * @return
	   */
	  Productstore selectProductStoreByid(int id);
	
	  int insertProductCategory(Productcategory productcategory);
	  int insertProduct(Product product);
	  int insertProductStore(Productstore productStore);
	  int insertProductPic(Productpic productpic);
	  
	 /**
	  * 前台生成订单后要同时减少相应的库存数量
	  * @param size 所要减少的数量
	  * @param peid 所要减少的商品配图的id
	  * @return 
	  */
	  int updateProductStore(int size,int peid);
	  
	  /**
	   * 为配图添加库存
	   * @param picid 配图id
	   * @param Size 添加的数量
	   * @return
	   */
	  int insertProductStoreSize(int picid,int Size);
	  
	  /**
	   * 前台用户取消未付款的订单后对库存数量的恢复
	   * @param size 用户当时购买的数量
	   * @param peid 要恢复的库存id
	   * @return
	   */
	  int updateProductStoreAdd(int size,int peid);
	  
	  /**
	   * 修改库存量的查询
	   * @param id
	   * @return
	   */
	  Productstore selectProductstoreOne(int id);
	  
	  int updateProductStorehou(Productstore productStore);

}
