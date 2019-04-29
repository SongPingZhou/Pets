package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.News;
import com.ysd.entity.Product;

public interface NewMapper {
	/**
	 * ��ѯ��ҳnews
	 * @param news
	 * @return
	 */
	List<News> selectNews();
	/**
	 * ����id��ѯ
	 * @param id
	 * @return
	 */
	 News getById(int nid);//����idȥ��ȡ�������һ������,,,ͬʱҲ�ǻ�ȡ������ϸ�ķ���
	
	/**
	 * ����id��ѯ����(������ͼƬֻ����ͼ)
	 * @param id jspҳ�洫������id���в�ѯչʾ������ҳ��
	 * @return
	 */
	Product selectProductById(int id);
	/**
	 * ��ʾ����
	 * @return
	 */
	List<News> selectAllNews();
	
	
	int selectCount(Fenye fenye);
	List<News> selectNew(Fenye fenye);
	int insertNews(News news);
	int deleteNews(String[] id);

}
