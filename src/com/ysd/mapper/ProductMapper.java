package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Comments;
import com.ysd.entity.Fenye;
import com.ysd.entity.Lately;
import com.ysd.entity.Positions;
import com.ysd.entity.Product;
import com.ysd.entity.Productcategory;
import com.ysd.entity.Productpic;
import com.ysd.entity.Resposition;

public interface ProductMapper {
	/**
	 * 查询符合条件的数据显示到前台首页的推介的位置
	 * @return
	 */
	List<Product> selectByClass();
	/**
	 * 根据宠物类id查询宠物
	 * @param id
	 * @return
	 */
	List<Product> selectAllProduct(int id);
	
	/**
	 * 查询子类下的所有商品
	 * @param id 隶属于那个父类
	 * @param parentid 子类的id
	 * @return
	 */
	List<Product> selectAllProductCateGorg(int id,int parentid);
	/**
	 *根据类的时间去查desc 
	 * @param index
	 * @return
	 */
	List<Product> selectAllProductByTimeAndClass(int index);
	
	/**
	 * 子类的查询ASC
	 * @param index
	 * @param parentid
	 * @return
	 */
	List<Product> selectAllProductByTimeAndClassByZiLeiASC(int parentid);
	/**
	 * 查询所有的商品
	 * @return
	 */
	List<Product> selectAllProductPets();
	
	/**
	 * 根据时间去查询desc
	 * @return
	 */
	List<Product> selectProductByTime();
	
	/**
	 * 根据价格Asc
	 * @return
	 */
	List<Product> selectProductBtAsc();
	/**
	 * 前台首页的搜索
	 * @param productName 根据名称模糊查询
	 * @return
	 */
	List<Product> selectProductSousuo(String productName);
	/**
	 * 查询所有狗和图片 
	 * @return
	 */
	List<Product> selectdog();
	/**
	 * 查询所有猫和照片
	 */
	List<Product> selectcat();


	/**
	 * 查询所有
	 */
	List<Product> selectAll();
	/**
	 * 根据id查询宠物(这里查的图片只有主图)
	 * @param id jsp页面传过来的id进行查询展示到详情页面
	 * @return
	 */
	Product selectProductById(int id);
	/**
	 * 查询所有宠物的配图
	 * @param id
	 * @return
	 */
	List<Productpic> selectProductPicPeiTu(int id);
	/**
	 * 在前台查询商品评论
	 * @param id 根据id查看评论（三表）
	 * @return
	 */
	List<Comments> selectCommentsByBody(int id);
	/**
	 * 根据前台推介的位置显示宠物以及宠物的信息
	 * @param id 此id是前台推介显示的位置
	 * @return
	 */
	List<Resposition> selectRespositionById(int id);
	
	
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
	  List<Product> selectProduct(Fenye fenye);
	  /**
	   * 查看宠物类
	   * @return
	   */
	  List<Productcategory> selectProductCategory();
	  List<Productpic> selectProductPic();
	  /**
	   * 根据id查看宠物
	   * @param id
	   * @return
	   */
	  Product selectProductByidOne(int id); 
	  /**
	   * 添加宠物
	   * @param product
	   * @return
	   */
	  int insertProduct(Product product);
	  /**
	   * 
	   * @param product
	   * @return
	   */
	  int insertProductByHuiFu(Product product);
	  /**
	   * 后台对宠物的一个恢复操作
	   * @param productpic
	   * @return
	   */
	  int insertProductPic(Productpic productpic);
	  /**
	   * 修改宠物
	   * @param product
	   * @return
	   */
	  int updateProduct(Product product);
	  int updateProductPic(Productpic productpic);
	  /**
	   * 删除宠物
	   * @param id
	   * @return
	   */
	  int deleteProduct(String[] id);
	  
	  /**
	   * 根据商品满意度去查询
	   * @return
	   */
	  List<Product> selectByProductMarks();
	  
	  /**
	   * 最近浏览
	   * @param id 用户的id
	   * @return
	   */
	  List<Lately> selectLately(int id );
	  
	  /**
	   * 用户点击查看所有用户满意度最高的 所有商品
	   * @return
	   */
	  List<Product> selectProductByLately();
	  
	  /**
	   * 按照价格倒叙排序
	   * @return
	   */
	  List<Product> selectProductByPriceDesc(int id);
	  
	  /**
	   * 子类的时间倒叙
	   * @param parentid
	   * @return
	   */
	  List<Product> selectProductTimeDesc(int parentid);
	  
	  /**
	   * 查询所有宠物名称以供推介时使用
	   * @return
	   */
	  List<Product> selectProductByName();
}
