package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Product;
import com.ysd.entity.Productpic;

public interface ProductPicMapper {
	/**
	 * �����ͼƬ
	 * @param pic
	 * @return
	 */
	int insertProductPic(Productpic pic);
	/**
	 * �����ͼ
	 * @param dpic
	 * @return
	 */
	//int insertDProductPic(Productpic dpic);
	

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
		  List<Productpic> selectProductPic(Fenye fenye); 
		  Productpic selectProductPicByid(int id);
		  int updateProductPic(Productpic Productpic);
	
		  /**
		   * ����idȥ���Ӧ��ͼƬ��ɫ
		   * @param id
		   * @return
		   */
		  Productpic selectProductPicByTuPian(String id);
	  
		  /**
		   * ��ѯ��������ͼidΪ��ͼ�����Ӧ�Ŀ��
		   * @return
		   */
		int selectProductpicByDesc();
		 //ǰ̨�ֲ�
		List<Productpic>  selectProductPicqian();

}
