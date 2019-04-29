package com.ysd.mapper;

import java.util.List;

import com.ysd.entity.Fenye;
import com.ysd.entity.Positions;
import com.ysd.entity.Product;
import com.ysd.entity.Resposition;

public interface PositionsMapper {
	/**
	 * 查询所有推介的位置
	 * @return
	 */
	List<Positions> selectPositions();
	/**
	 * 根据推介的位置查询所有被推介的宠物
	 * @param id
	 * @return
	 */
	List<Product> selectPositionsByid(int id);
	/**
	 * 查改区域有多少条数据
	 * @param id
	 * @return
	 */
	int selectPositionsByidCount(int id);
	/**
	 * 添加推介位置
	 * @param poid
	 * @param pid
	 * @param weight
	 * @return
	 */
	int insertPositions(Resposition resposition);
	/**
	 * 从推介表删除的商品
	 * @param pid 商品id
	 * @return 
	 */
	int deleteRePositions(int pid);
}
