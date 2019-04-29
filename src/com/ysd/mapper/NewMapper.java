package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.News;
import com.ysd.entity.Product;

public interface NewMapper {
	/**
	 * 查询首页news
	 * @param news
	 * @return
	 */
	List<News> selectNews();
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	 News getById(int nid);//根据id去获取所点击的一条对象,,,同时也是获取新闻详细的方法
	
	/**
	 * 根据id查询宠物(这里查的图片只有主图)
	 * @param id jsp页面传过来的id进行查询展示到详情页面
	 * @return
	 */
	Product selectProductById(int id);
	/**
	 * 显示所有
	 * @return
	 */
	List<News> selectAllNews();
	
	
	int selectCount(Fenye fenye);
	List<News> selectNew(Fenye fenye);
	int insertNews(News news);
	int deleteNews(String[] id);

}
