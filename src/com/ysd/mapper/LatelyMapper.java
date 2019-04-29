package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Lately;

public interface LatelyMapper {
	/**
	 * 最近浏览的添加
	 * @param lately
	 * @return
	 */
	int insertLately(Lately lately);
	
	/**
	 * 查看不同用户最近浏览是否有相同的商品
	 * @param lately 最近浏览的数据
	 * @return
	 */
	Lately selectLately(Lately lately);

	/**
	 * 查看该用户的所有最近浏览（给后面删除使用）
	 * @param userid 用户的id
	 * @return
	 */
	List<Lately> selectLatelyByUserid(int userid);
	/**
	 * 当用户的最近浏览超过五条时则删除时间排序最早的那一条的数据
	 * @param id 用户时间排序最早的数据
	 * @return
	 */
	Integer deleteLatelyByTime(int id);
	
	/**
	 * 修改最近浏览的这个商品的时间
	 * @param id
	 * @return
	 */
	Integer updateLately(int id);



}
