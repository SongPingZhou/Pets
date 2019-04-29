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
	 * ��ѯ����������������ʾ��ǰ̨��ҳ���ƽ��λ��
	 * @return
	 */
	List<Product> selectByClass();
	/**
	 * ���ݳ�����id��ѯ����
	 * @param id
	 * @return
	 */
	List<Product> selectAllProduct(int id);
	
	/**
	 * ��ѯ�����µ�������Ʒ
	 * @param id �������Ǹ�����
	 * @param parentid �����id
	 * @return
	 */
	List<Product> selectAllProductCateGorg(int id,int parentid);
	/**
	 *�������ʱ��ȥ��desc 
	 * @param index
	 * @return
	 */
	List<Product> selectAllProductByTimeAndClass(int index);
	
	/**
	 * ����Ĳ�ѯASC
	 * @param index
	 * @param parentid
	 * @return
	 */
	List<Product> selectAllProductByTimeAndClassByZiLeiASC(int parentid);
	/**
	 * ��ѯ���е���Ʒ
	 * @return
	 */
	List<Product> selectAllProductPets();
	
	/**
	 * ����ʱ��ȥ��ѯdesc
	 * @return
	 */
	List<Product> selectProductByTime();
	
	/**
	 * ���ݼ۸�Asc
	 * @return
	 */
	List<Product> selectProductBtAsc();
	/**
	 * ǰ̨��ҳ������
	 * @param productName ��������ģ����ѯ
	 * @return
	 */
	List<Product> selectProductSousuo(String productName);
	/**
	 * ��ѯ���й���ͼƬ 
	 * @return
	 */
	List<Product> selectdog();
	/**
	 * ��ѯ����è����Ƭ
	 */
	List<Product> selectcat();


	/**
	 * ��ѯ����
	 */
	List<Product> selectAll();
	/**
	 * ����id��ѯ����(������ͼƬֻ����ͼ)
	 * @param id jspҳ�洫������id���в�ѯչʾ������ҳ��
	 * @return
	 */
	Product selectProductById(int id);
	/**
	 * ��ѯ���г������ͼ
	 * @param id
	 * @return
	 */
	List<Productpic> selectProductPicPeiTu(int id);
	/**
	 * ��ǰ̨��ѯ��Ʒ����
	 * @param id ����id�鿴���ۣ�����
	 * @return
	 */
	List<Comments> selectCommentsByBody(int id);
	/**
	 * ����ǰ̨�ƽ��λ����ʾ�����Լ��������Ϣ
	 * @param id ��id��ǰ̨�ƽ���ʾ��λ��
	 * @return
	 */
	List<Resposition> selectRespositionById(int id);
	
	
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
	  List<Product> selectProduct(Fenye fenye);
	  /**
	   * �鿴������
	   * @return
	   */
	  List<Productcategory> selectProductCategory();
	  List<Productpic> selectProductPic();
	  /**
	   * ����id�鿴����
	   * @param id
	   * @return
	   */
	  Product selectProductByidOne(int id); 
	  /**
	   * ��ӳ���
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
	   * ��̨�Գ����һ���ָ�����
	   * @param productpic
	   * @return
	   */
	  int insertProductPic(Productpic productpic);
	  /**
	   * �޸ĳ���
	   * @param product
	   * @return
	   */
	  int updateProduct(Product product);
	  int updateProductPic(Productpic productpic);
	  /**
	   * ɾ������
	   * @param id
	   * @return
	   */
	  int deleteProduct(String[] id);
	  
	  /**
	   * ������Ʒ�����ȥ��ѯ
	   * @return
	   */
	  List<Product> selectByProductMarks();
	  
	  /**
	   * ������
	   * @param id �û���id
	   * @return
	   */
	  List<Lately> selectLately(int id );
	  
	  /**
	   * �û�����鿴�����û��������ߵ� ������Ʒ
	   * @return
	   */
	  List<Product> selectProductByLately();
	  
	  /**
	   * ���ռ۸�������
	   * @return
	   */
	  List<Product> selectProductByPriceDesc(int id);
	  
	  /**
	   * �����ʱ�䵹��
	   * @param parentid
	   * @return
	   */
	  List<Product> selectProductTimeDesc(int parentid);
	  
	  /**
	   * ��ѯ���г��������Թ��ƽ�ʱʹ��
	   * @return
	   */
	  List<Product> selectProductByName();
}
