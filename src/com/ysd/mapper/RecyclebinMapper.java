package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Recyclebin;

public interface RecyclebinMapper {
	/**
	 * 分页查询回收站内容
	 * @param fy 分页的条件
	 * @return
	 */
	List<Recyclebin> selectRecyclebin(Fenye fy);
	
	/**
	 * 查询总条数
	 * @param fy
	 * @return
	 */
	int selectRecyclebinCount(Fenye fy);
	
	/**
	 * 数据恢复后从回收站删除数据
	 * @param id 回收站id
	 * @return
	 */
	int deleteRecyclebin(int id);
}
